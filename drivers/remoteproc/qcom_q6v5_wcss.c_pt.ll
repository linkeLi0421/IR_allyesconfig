; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_q6v5_wcss.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_q6v5_wcss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wcss_data = type { ptr, i32, i32, i8, i8, ptr, ptr, i32, ptr, i8 }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.q6v5_wcss = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qcom_q6v5, i32, i32, ptr, i32, i32, i32, i8, %struct.qcom_rproc_glink, %struct.qcom_rproc_ssr }
%struct.qcom_q6v5 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i8, ptr, ptr }
%struct.qcom_rproc_glink = type { %struct.rproc_subdev, ptr, ptr, ptr, ptr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.qcom_rproc_ssr = type { %struct.rproc_subdev, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }

@__initcall__kmod_qcom_q6v5_wcss__288_1122_q6v5_wcss_driver_init6 = internal global ptr @q6v5_wcss_driver_init, section ".initcall6.init", align 4
@q6v5_wcss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6v5_wcss_probe, ptr @q6v5_wcss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6v5_wcss_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6v5_wcss_driver_exit = internal global ptr @q6v5_wcss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [64 x i8] c"qcom_q6v5_wcss.description=Hexagon WCSS Peripheral Image Loader\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [54 x i8] c"qcom_q6v5_wcss.file=drivers/remoteproc/qcom_q6v5_wcss\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [30 x i8] c"qcom_q6v5_wcss.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom-q6v5-wcss-pil\00", [45 x i8] zeroinitializer }, align 32
@q6v5_wcss_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-wcss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcss_ipq8074_res_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-wcss-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcss_qcs404_res_init }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@q6v5_wcss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to allocate rproc\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6v5_wcss_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/remoteproc/qcom_q6v5_wcss.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6v5_wcss_probe._entry_ptr = internal global ptr @q6v5_wcss_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"q6wcss\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qdsp6\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rmb\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,halt-regs\00", [17 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse qcom,halt-regs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"q6v5_wcss_init_mmio\00", [44 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_mmio._entry_ptr = internal global ptr @q6v5_wcss_init_mmio._entry, section ".printk_index", align 4
@q6v5_wcss_init_mmio._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_mmio._entry_ptr.13 = internal global ptr @q6v5_wcss_init_mmio._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 882, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire memory-region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"q6v5_alloc_memory_region\00", [39 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry_ptr = internal global ptr @q6v5_alloc_memory_region._entry, section ".printk_index", align 4
@q6v5_alloc_memory_region._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to map memory region: %pa+%pa\0A\00", [58 x i8] zeroinitializer }, align 32
@q6v5_alloc_memory_region._entry_ptr.19 = internal global ptr @q6v5_alloc_memory_region._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get xo clock\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"q6v5_wcss_init_clock\00", [43 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr = internal global ptr @q6v5_wcss_init_clock._entry, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gcc_abhs_cbcr\00", [18 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get gcc abhs clock\00", [35 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.26 = internal global ptr @q6v5_wcss_init_clock._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gcc_axim_cbcr\00", [18 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get gcc axim clock\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.30 = internal global ptr @q6v5_wcss_init_clock._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lcc_ahbfabric_cbc\00", [46 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get ahbfabric clock\0A\00", [33 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.34 = internal global ptr @q6v5_wcss_init_clock._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcsr_lcc_cbc\00", [19 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.22, ptr @.str.3, i32 940, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get csr cbcr clk\0A\00", [36 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.38 = internal global ptr @q6v5_wcss_init_clock._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lcc_abhs_cbc\00", [19 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.22, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ahbs_cbcr clk\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.42 = internal global ptr @q6v5_wcss_init_clock._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lcc_tcm_slave_cbc\00", [46 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.22, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get tcm cbcr clk\0A\00", [36 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.46 = internal global ptr @q6v5_wcss_init_clock._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lcc_abhm_cbc\00", [19 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.22, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get abhm cbcr clk\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.50 = internal global ptr @q6v5_wcss_init_clock._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lcc_axim_cbc\00", [19 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.22, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get axim cbcr clk\0A\00", [35 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.54 = internal global ptr @q6v5_wcss_init_clock._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcc_bcr_sleep\00", [18 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.22, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get bcr cbcr clk\0A\00", [36 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_clock._entry_ptr.58 = internal global ptr @q6v5_wcss_init_clock._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcss_aon_reset\00", [17 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail to acquire wcss_aon_reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"q6v5_wcss_init_reset\00", [43 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry_ptr = internal global ptr @q6v5_wcss_init_reset._entry, section ".printk_index", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wcss_reset\00", [21 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.3, i32 800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to acquire wcss_reset\0A\00", [34 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry_ptr.66 = internal global ptr @q6v5_wcss_init_reset._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcss_q6_reset\00", [18 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire wcss_q6_reset\0A\00", [63 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry_ptr.70 = internal global ptr @q6v5_wcss_init_reset._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcss_q6_bcr_reset\00", [46 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to acquire wcss_q6_bcr_reset\0A\00", [59 x i8] zeroinitializer }, align 32
@q6v5_wcss_init_reset._entry_ptr.74 = internal global ptr @q6v5_wcss_init_reset._entry.72, section ".printk_index", align 4
@wcss_ipq8074_res_init = internal constant { %struct.wcss_data, [60 x i8] } { %struct.wcss_data { ptr @.str.75, i32 421, i32 0, i8 1, i8 1, ptr null, ptr null, i32 0, ptr @q6v5_wcss_ipq8074_ops, i8 1 }, [60 x i8] zeroinitializer }, align 32
@wcss_qcs404_res_init = internal constant { %struct.wcss_data, [60 x i8] } { %struct.wcss_data { ptr @.str.98, i32 421, i32 1, i8 0, i8 0, ptr @.str.99, ptr @.str.97, i32 18, ptr @q6v5_wcss_qcs404_ops, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IPQ8074/q6_fw.mdt\00", [46 x i8] zeroinitializer }, align 32
@q6v5_wcss_ipq8074_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @q6v5_wcss_start, ptr @q6v5_wcss_stop, ptr null, ptr null, ptr null, ptr @q6v5_wcss_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr @q6v5_wcss_load, ptr null, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@q6v5_wcss_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcss_reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6v5_wcss_start\00", [16 x i8] zeroinitializer }, align 32
@q6v5_wcss_start._entry_ptr = internal global ptr @q6v5_wcss_start._entry, section ".printk_index", align 4
@q6v5_wcss_start._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcss_q6_reset failed\0A\00", [42 x i8] zeroinitializer }, align 32
@q6v5_wcss_start._entry_ptr.80 = internal global ptr @q6v5_wcss_start._entry.78, section ".printk_index", align 4
@q6v5_wcss_start._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@q6v5_wcss_start._entry_ptr.83 = internal global ptr @q6v5_wcss_start._entry.81, section ".printk_index", align 4
@q6v5_wcss_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xo cbcr enabling timed out (rc:%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"q6v5_wcss_reset\00", [16 x i8] zeroinitializer }, align 32
@q6v5_wcss_reset._entry_ptr = internal global ptr @q6v5_wcss_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@q6v5_wcss_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timed out on wait\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6v5_wcss_stop\00", [17 x i8] zeroinitializer }, align 32
@q6v5_wcss_stop._entry_ptr = internal global ptr @q6v5_wcss_stop._entry, section ".printk_index", align 4
@q6v5_qcs404_wcss_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.88, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"q6v5_qcs404_wcss_shutdown\00", [38 x i8] zeroinitializer }, align 32
@q6v5_qcs404_wcss_shutdown._entry_ptr = internal global ptr @q6v5_qcs404_wcss_shutdown._entry, section ".printk_index", align 4
@q6v5_qcs404_wcss_shutdown._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.88, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@q6v5_qcs404_wcss_shutdown._entry_ptr.90 = internal global ptr @q6v5_qcs404_wcss_shutdown._entry.89, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@q6v5_wcss_halt_axi_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port failed halt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"q6v5_wcss_halt_axi_port\00", [40 x i8] zeroinitializer }, align 32
@q6v5_wcss_halt_axi_port._entry_ptr = internal global ptr @q6v5_wcss_halt_axi_port._entry, section ".printk_index", align 4
@q6v5_wcss_powerdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't get SSCAON_STATUS rc:%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"q6v5_wcss_powerdown\00", [44 x i8] zeroinitializer }, align 32
@q6v5_wcss_powerdown._entry_ptr = internal global ptr @q6v5_wcss_powerdown._entry, section ".printk_index", align 4
@q6v5_q6_powerdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BHS_STATUS not OFF (rc:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"q6v5_q6_powerdown\00", [46 x i8] zeroinitializer }, align 32
@q6v5_q6_powerdown._entry_ptr = internal global ptr @q6v5_q6_powerdown._entry, section ".printk_index", align 4
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wcnss\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wcnss.mdt\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@q6v5_wcss_qcs404_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @q6v5_qcs404_wcss_start, ptr @q6v5_wcss_stop, ptr null, ptr null, ptr null, ptr @q6v5_wcss_da_to_va, ptr @qcom_register_dump_segments, ptr null, ptr null, ptr null, ptr @q6v5_wcss_load, ptr null, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@q6v5_qcs404_wcss_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcss clk_enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"q6v5_qcs404_wcss_start\00", [41 x i8] zeroinitializer }, align 32
@q6v5_qcs404_wcss_start._entry_ptr = internal global ptr @q6v5_qcs404_wcss_start._entry, section ".printk_index", align 4
@q6v5_qcs404_wcss_start._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.101, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@q6v5_qcs404_wcss_start._entry_ptr.103 = internal global ptr @q6v5_qcs404_wcss_start._entry.102, section ".printk_index", align 4
@q6v5_wcss_qcs404_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.104, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"q6v5_wcss_qcs404_power_on\00", [38 x i8] zeroinitializer }, align 32
@q6v5_wcss_qcs404_power_on._entry_ptr = internal global ptr @q6v5_wcss_qcs404_power_on._entry, section ".printk_index", align 4
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"q6v5_wcss_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1114, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1118, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"q6v5_wcss_of_match\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1107, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1014, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1051, i32 52 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 829, i32 59 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 836, i32 60 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 843, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 845, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 859, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 876, i32 40 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 882, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 891, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 903, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 907, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 911, i32 48 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 915, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 919, i32 48 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 923, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 928, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 932, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 936, i32 47 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 940, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 945, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 949, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 954, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 958, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 962, i32 52 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 966, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 970, i32 52 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 974, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 978, i32 48 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 982, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 991, i32 50 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 791, i32 64 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 793, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 798, i32 59 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 800, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 805, i32 63 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 807, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 812, i32 66 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 814, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [22 x i8] c"wcss_ipq8074_res_init\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1085, i32 31 }
@___asan_gen_.312 = private unnamed_addr constant [21 x i8] c"wcss_qcs404_res_init\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1094, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1086, i32 19 }
@___asan_gen_.318 = private unnamed_addr constant [22 x i8] c"q6v5_wcss_ipq8074_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 768, i32 31 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 248, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 254, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 281, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 175, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 715, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 576, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 583, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 523, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 620, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 693, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 763, i32 22 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1096, i32 19 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1100, i32 14 }
@___asan_gen_.405 = private unnamed_addr constant [21 x i8] c"q6v5_wcss_qcs404_ops\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 776, i32 31 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 471, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 481, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [39 x i8] c"../drivers/remoteproc/qcom_q6v5_wcss.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 352, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_q6v5_wcss_driver_exit, ptr @__initcall__kmod_qcom_q6v5_wcss__288_1122_q6v5_wcss_driver_init6, ptr @q6v5_alloc_memory_region._entry, ptr @q6v5_alloc_memory_region._entry.17, ptr @q6v5_alloc_memory_region._entry_ptr, ptr @q6v5_alloc_memory_region._entry_ptr.19, ptr @q6v5_q6_powerdown._entry, ptr @q6v5_q6_powerdown._entry_ptr, ptr @q6v5_qcs404_wcss_shutdown._entry, ptr @q6v5_qcs404_wcss_shutdown._entry.89, ptr @q6v5_qcs404_wcss_shutdown._entry_ptr, ptr @q6v5_qcs404_wcss_shutdown._entry_ptr.90, ptr @q6v5_qcs404_wcss_start._entry, ptr @q6v5_qcs404_wcss_start._entry.102, ptr @q6v5_qcs404_wcss_start._entry_ptr, ptr @q6v5_qcs404_wcss_start._entry_ptr.103, ptr @q6v5_wcss_driver_exit, ptr @q6v5_wcss_halt_axi_port._entry, ptr @q6v5_wcss_halt_axi_port._entry_ptr, ptr @q6v5_wcss_init_clock._entry, ptr @q6v5_wcss_init_clock._entry.24, ptr @q6v5_wcss_init_clock._entry.28, ptr @q6v5_wcss_init_clock._entry.32, ptr @q6v5_wcss_init_clock._entry.36, ptr @q6v5_wcss_init_clock._entry.40, ptr @q6v5_wcss_init_clock._entry.44, ptr @q6v5_wcss_init_clock._entry.48, ptr @q6v5_wcss_init_clock._entry.52, ptr @q6v5_wcss_init_clock._entry.56, ptr @q6v5_wcss_init_clock._entry_ptr, ptr @q6v5_wcss_init_clock._entry_ptr.26, ptr @q6v5_wcss_init_clock._entry_ptr.30, ptr @q6v5_wcss_init_clock._entry_ptr.34, ptr @q6v5_wcss_init_clock._entry_ptr.38, ptr @q6v5_wcss_init_clock._entry_ptr.42, ptr @q6v5_wcss_init_clock._entry_ptr.46, ptr @q6v5_wcss_init_clock._entry_ptr.50, ptr @q6v5_wcss_init_clock._entry_ptr.54, ptr @q6v5_wcss_init_clock._entry_ptr.58, ptr @q6v5_wcss_init_mmio._entry, ptr @q6v5_wcss_init_mmio._entry.12, ptr @q6v5_wcss_init_mmio._entry_ptr, ptr @q6v5_wcss_init_mmio._entry_ptr.13, ptr @q6v5_wcss_init_reset._entry, ptr @q6v5_wcss_init_reset._entry.64, ptr @q6v5_wcss_init_reset._entry.68, ptr @q6v5_wcss_init_reset._entry.72, ptr @q6v5_wcss_init_reset._entry_ptr, ptr @q6v5_wcss_init_reset._entry_ptr.66, ptr @q6v5_wcss_init_reset._entry_ptr.70, ptr @q6v5_wcss_init_reset._entry_ptr.74, ptr @q6v5_wcss_powerdown._entry, ptr @q6v5_wcss_powerdown._entry_ptr, ptr @q6v5_wcss_probe._entry, ptr @q6v5_wcss_probe._entry_ptr, ptr @q6v5_wcss_qcs404_power_on._entry, ptr @q6v5_wcss_qcs404_power_on._entry_ptr, ptr @q6v5_wcss_reset._entry, ptr @q6v5_wcss_reset._entry_ptr, ptr @q6v5_wcss_start._entry, ptr @q6v5_wcss_start._entry.78, ptr @q6v5_wcss_start._entry.81, ptr @q6v5_wcss_start._entry_ptr, ptr @q6v5_wcss_start._entry_ptr.80, ptr @q6v5_wcss_start._entry_ptr.83, ptr @q6v5_wcss_stop._entry, ptr @q6v5_wcss_stop._entry_ptr, ptr @q6v5_wcss_driver, ptr @.str, ptr @q6v5_wcss_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @wcss_ipq8074_res_init, ptr @wcss_qcs404_res_init, ptr @.str.75, ptr @q6v5_wcss_ipq8074_ops, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @q6v5_wcss_qcs404_ops, ptr @.str.100, ptr @.str.101, ptr @.str.104], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_mmio._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_alloc_memory_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_alloc_memory_region._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_clock._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_reset._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_reset._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_init_reset._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcss_ipq8074_res_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcss_qcs404_res_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_ipq8074_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_start._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_start._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_qcs404_wcss_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_qcs404_wcss_shutdown._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_halt_axi_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_powerdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_q6_powerdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_qcs404_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_qcs404_wcss_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_qcs404_wcss_start._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6v5_wcss_qcs404_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6v5_wcss_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6v5_wcss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6v5_wcss_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i98 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %halt_reg.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %ops = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call2 = tail call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef 372) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %7, align 4
  %version = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  %version9 = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 32
  %11 = ptrtoint ptr %version9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %version9, align 4
  %12 = load i32, ptr %version, align 4
  store i32 %12, ptr %version9, align 4
  %requires_force_stop = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %requires_force_stop to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %requires_force_stop, align 4, !range !219
  %requires_force_stop13 = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 33
  %15 = ptrtoint ptr %requires_force_stop13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %requires_force_stop13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %halt_reg.i) #8
  %16 = call ptr @memset(ptr %halt_reg.i, i32 0, i32 12)
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %18
  %add.i.i = add i32 %sub.i.i, %20
  %call2.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %18, i32 noundef %add.i.i) #8
  %reg_base.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2.i, ptr %reg_base.i, align 4
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end6.q6v5_wcss_init_mmio.exit.thread_crit_edge, label %if.end.i

if.end6.q6v5_wcss_init_mmio.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_mmio.exit.thread

if.end.i:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %version9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #8
  %call7.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5.i) #8
  %rmb_base.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %rmb_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i.q6v5_wcss_init_mmio.exit_crit_edge, label %if.then4.i.if.end14.i_crit_edge

if.then4.i.if.end14.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then4.i.q6v5_wcss_init_mmio.exit_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_mmio.exit

if.end14.i:                                       ; preds = %if.then4.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %27 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %q6v5_wcss_init_mmio.exit.thread.sink.split

of_parse_phandle.exit.i:                          ; preds = %if.end14.i
  %28 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool17.not.i = icmp eq ptr %29, null
  br i1 %tobool17.not.i, label %of_parse_phandle.exit.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge, label %if.end20.i

of_parse_phandle.exit.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_mmio.exit.thread.sink.split

if.end20.i:                                       ; preds = %of_parse_phandle.exit.i
  %call21.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %29) #8
  %halt_map.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 3
  %30 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call21.i, ptr %halt_map.i, align 4
  call void @of_node_put(ptr noundef nonnull %29) #8
  %31 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %halt_map.i, align 4
  %cmp.i65.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %if.end20.i.q6v5_wcss_init_mmio.exit_crit_edge, label %if.end27.i

if.end20.i.q6v5_wcss_init_mmio.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_mmio.exit

if.end27.i:                                       ; preds = %if.end20.i
  %33 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i, align 8
  %call30.i = call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.9, ptr noundef nonnull %halt_reg.i, i32 noundef 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end27.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge, label %q6v5_wcss_init_mmio.exit.thread122

if.end27.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_mmio.exit.thread.sink.split

q6v5_wcss_init_mmio.exit.thread122:               ; preds = %if.end27.i
  %35 = ptrtoint ptr %halt_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %halt_reg.i, align 4
  %halt_q6.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 4
  %37 = ptrtoint ptr %halt_q6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %halt_q6.i, align 4
  %arrayidx38.i = getelementptr inbounds [3 x i32], ptr %halt_reg.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx38.i, align 4
  %halt_wcss.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 5
  %40 = ptrtoint ptr %halt_wcss.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %halt_wcss.i, align 4
  %arrayidx39.i = getelementptr inbounds [3 x i32], ptr %halt_reg.i, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx39.i, align 4
  %halt_nc.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 6
  %43 = ptrtoint ptr %halt_nc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %halt_nc.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %halt_reg.i) #8
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  %of_node.i99 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %of_node.i99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i99, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i98) #8
  %48 = call ptr @memset(ptr %args.i.i98, i32 255, i32 72)
  %call.i.i100 = call i32 @__of_parse_phandle_with_args(ptr noundef %47, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.not.i.i101, label %of_parse_phandle.exit.i104, label %of_parse_phandle.exit.thread.i102

q6v5_wcss_init_mmio.exit.thread.sink.split:       ; preds = %if.end27.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge, %of_parse_phandle.exit.i.q6v5_wcss_init_mmio.exit.thread.sink.split_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %q6v5_wcss_init_mmio.exit.thread

q6v5_wcss_init_mmio.exit.thread:                  ; preds = %q6v5_wcss_init_mmio.exit.thread.sink.split, %if.end6.q6v5_wcss_init_mmio.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end6.q6v5_wcss_init_mmio.exit.thread_crit_edge ], [ -22, %q6v5_wcss_init_mmio.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %halt_reg.i) #8
  br label %free_rproc

q6v5_wcss_init_mmio.exit:                         ; preds = %if.end20.i.q6v5_wcss_init_mmio.exit_crit_edge, %if.then4.i.q6v5_wcss_init_mmio.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call7.i, %if.then4.i.q6v5_wcss_init_mmio.exit_crit_edge ], [ %32, %if.end20.i.q6v5_wcss_init_mmio.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %halt_reg.i) #8
  br label %free_rproc

of_parse_phandle.exit.thread.i102:                ; preds = %q6v5_wcss_init_mmio.exit.thread122
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i98) #8
  br label %if.end.thread.i

of_parse_phandle.exit.i104:                       ; preds = %q6v5_wcss_init_mmio.exit.thread122
  %49 = ptrtoint ptr %args.i.i98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args.i.i98, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i98) #8
  %tobool.not.i103 = icmp eq ptr %50, null
  br i1 %tobool.not.i103, label %of_parse_phandle.exit.i104.if.end.thread.i_crit_edge, label %if.end.i106

of_parse_phandle.exit.i104.if.end.thread.i_crit_edge: ; preds = %of_parse_phandle.exit.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %of_parse_phandle.exit.i104.if.end.thread.i_crit_edge, %of_parse_phandle.exit.thread.i102
  call void @of_node_put(ptr noundef null) #8
  br label %do.end.i107

if.end.i106:                                      ; preds = %of_parse_phandle.exit.i104
  %call2.i105 = call ptr @of_reserved_mem_lookup(ptr noundef nonnull %50) #8
  call void @of_node_put(ptr noundef nonnull %50) #8
  %tobool3.not.i = icmp eq ptr %call2.i105, null
  br i1 %tobool3.not.i, label %if.end.i106.do.end.i107_crit_edge, label %if.end5.i

if.end.i106.do.end.i107_crit_edge:                ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i107

do.end.i107:                                      ; preds = %if.end.i106.do.end.i107_crit_edge, %if.end.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.15) #11
  br label %free_rproc

if.end5.i:                                        ; preds = %if.end.i106
  %base.i = getelementptr inbounds %struct.reserved_mem, ptr %call2.i105, i32 0, i32 4
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.i, align 4
  %mem_phys.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 27
  %53 = ptrtoint ptr %mem_phys.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %mem_phys.i, align 4
  %54 = load i32, ptr %base.i, align 4
  %mem_reloc.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 28
  %55 = ptrtoint ptr %mem_reloc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mem_reloc.i, align 4
  %size.i = getelementptr inbounds %struct.reserved_mem, ptr %call2.i105, i32 0, i32 5
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %mem_size.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 30
  %58 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %mem_size.i, align 4
  %call9.i = call ptr @devm_ioremap_wc(ptr noundef %45, i32 noundef %52, i32 noundef %57) #8
  %mem_region.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 29
  %59 = ptrtoint ptr %mem_region.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i, ptr %mem_region.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end21

do.end15.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef %base.i, ptr noundef %size.i) #11
  br label %free_rproc

if.end21:                                         ; preds = %if.end5.i
  %60 = ptrtoint ptr %version9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %version9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp = icmp eq i32 %61, 1
  br i1 %cmp, label %if.then23, label %if.end21.if.end32_crit_edge

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then23:                                        ; preds = %if.end21
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %7, align 4
  %call.i109 = call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull @.str.20) #8
  %xo.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 7
  %64 = ptrtoint ptr %xo.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i109, ptr %xo.i, align 4
  %cmp.i.i110 = icmp ugt ptr %call.i109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i110, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.then23
  %cmp.not.i = icmp eq ptr %call.i109, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.free_rproc_crit_edge, label %if.then.i.q6v5_wcss_init_clock.exit_crit_edge

if.then.i.q6v5_wcss_init_clock.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then.i.free_rproc_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end7.i:                                        ; preds = %if.then23
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %7, align 4
  %call9.i111 = call ptr @devm_clk_get(ptr noundef %66, ptr noundef nonnull @.str.23) #8
  %gcc_abhs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 9
  %67 = ptrtoint ptr %gcc_abhs_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call9.i111, ptr %gcc_abhs_cbcr.i, align 4
  %cmp.i211.i = icmp ugt ptr %call9.i111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211.i, label %if.then12.i, label %if.end22.i

if.then12.i:                                      ; preds = %if.end7.i
  %cmp15.not.i = icmp eq ptr %call9.i111, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.not.i, label %if.then12.i.free_rproc_crit_edge, label %if.then12.i.q6v5_wcss_init_clock.exit_crit_edge

if.then12.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then12.i.free_rproc_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end22.i:                                       ; preds = %if.end7.i
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %7, align 4
  %call24.i = call ptr @devm_clk_get(ptr noundef %69, ptr noundef nonnull @.str.27) #8
  %gcc_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 10
  %70 = ptrtoint ptr %gcc_axim_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call24.i, ptr %gcc_axim_cbcr.i, align 4
  %cmp.i212.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212.i, label %if.then27.i, label %if.end37.i112

if.then27.i:                                      ; preds = %if.end22.i
  %cmp30.not.i = icmp eq ptr %call24.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp30.not.i, label %if.then27.i.free_rproc_crit_edge, label %if.then27.i.q6v5_wcss_init_clock.exit_crit_edge

if.then27.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then27.i.free_rproc_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end37.i112:                                    ; preds = %if.end22.i
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %7, align 4
  %call39.i = call ptr @devm_clk_get(ptr noundef %72, ptr noundef nonnull @.str.31) #8
  %ahbfabric_cbcr_clk.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 8
  %73 = ptrtoint ptr %ahbfabric_cbcr_clk.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call39.i, ptr %ahbfabric_cbcr_clk.i, align 4
  %cmp.i213.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213.i, label %if.then42.i, label %if.end52.i

if.then42.i:                                      ; preds = %if.end37.i112
  %cmp45.not.i = icmp eq ptr %call39.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.not.i, label %if.then42.i.free_rproc_crit_edge, label %if.then42.i.q6v5_wcss_init_clock.exit_crit_edge

if.then42.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then42.i.free_rproc_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end52.i:                                       ; preds = %if.end37.i112
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %7, align 4
  %call54.i = call ptr @devm_clk_get(ptr noundef %75, ptr noundef nonnull @.str.35) #8
  %lcc_csr_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 11
  %76 = ptrtoint ptr %lcc_csr_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call54.i, ptr %lcc_csr_cbcr.i, align 4
  %cmp.i214.i = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %if.then57.i, label %if.end67.i

if.then57.i:                                      ; preds = %if.end52.i
  %cmp60.not.i = icmp eq ptr %call54.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp60.not.i, label %if.then57.i.free_rproc_crit_edge, label %if.then57.i.q6v5_wcss_init_clock.exit_crit_edge

if.then57.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then57.i.free_rproc_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end67.i:                                       ; preds = %if.end52.i
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %7, align 4
  %call69.i = call ptr @devm_clk_get(ptr noundef %78, ptr noundef nonnull @.str.39) #8
  %ahbs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 12
  %79 = ptrtoint ptr %ahbs_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call69.i, ptr %ahbs_cbcr.i, align 4
  %cmp.i215.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215.i, label %if.then72.i, label %if.end82.i

if.then72.i:                                      ; preds = %if.end67.i
  %cmp75.not.i = icmp eq ptr %call69.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp75.not.i, label %if.then72.i.free_rproc_crit_edge, label %if.then72.i.q6v5_wcss_init_clock.exit_crit_edge

if.then72.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then72.i.free_rproc_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end82.i:                                       ; preds = %if.end67.i
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %7, align 4
  %call84.i = call ptr @devm_clk_get(ptr noundef %81, ptr noundef nonnull @.str.43) #8
  %tcm_slave_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 13
  %82 = ptrtoint ptr %tcm_slave_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call84.i, ptr %tcm_slave_cbcr.i, align 4
  %cmp.i216.i = icmp ugt ptr %call84.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216.i, label %if.then87.i, label %if.end97.i

if.then87.i:                                      ; preds = %if.end82.i
  %cmp90.not.i = icmp eq ptr %call84.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp90.not.i, label %if.then87.i.free_rproc_crit_edge, label %if.then87.i.q6v5_wcss_init_clock.exit_crit_edge

if.then87.i.q6v5_wcss_init_clock.exit_crit_edge:  ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then87.i.free_rproc_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end97.i:                                       ; preds = %if.end82.i
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %7, align 4
  %call99.i = call ptr @devm_clk_get(ptr noundef %84, ptr noundef nonnull @.str.47) #8
  %qdsp6ss_abhm_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 14
  %85 = ptrtoint ptr %qdsp6ss_abhm_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call99.i, ptr %qdsp6ss_abhm_cbcr.i, align 4
  %cmp.i217.i = icmp ugt ptr %call99.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217.i, label %if.then102.i, label %if.end112.i

if.then102.i:                                     ; preds = %if.end97.i
  %cmp105.not.i = icmp eq ptr %call99.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp105.not.i, label %if.then102.i.free_rproc_crit_edge, label %if.then102.i.q6v5_wcss_init_clock.exit_crit_edge

if.then102.i.q6v5_wcss_init_clock.exit_crit_edge: ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then102.i.free_rproc_crit_edge:                ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end112.i:                                      ; preds = %if.end97.i
  %86 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %7, align 4
  %call114.i = call ptr @devm_clk_get(ptr noundef %87, ptr noundef nonnull @.str.51) #8
  %qdsp6ss_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 16
  %88 = ptrtoint ptr %qdsp6ss_axim_cbcr.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call114.i, ptr %qdsp6ss_axim_cbcr.i, align 4
  %cmp.i218.i = icmp ugt ptr %call114.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218.i, label %if.then117.i, label %if.end127.i

if.then117.i:                                     ; preds = %if.end112.i
  %cmp120.not.i = icmp eq ptr %call114.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp120.not.i, label %if.then117.i.free_rproc_crit_edge, label %if.then117.i.q6v5_wcss_init_clock.exit_crit_edge

if.then117.i.q6v5_wcss_init_clock.exit_crit_edge: ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then117.i.free_rproc_crit_edge:                ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end127.i:                                      ; preds = %if.end112.i
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %7, align 4
  %call129.i = call ptr @devm_clk_get(ptr noundef %90, ptr noundef nonnull @.str.55) #8
  %lcc_bcr_sleep.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 19
  %91 = ptrtoint ptr %lcc_bcr_sleep.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call129.i, ptr %lcc_bcr_sleep.i, align 4
  %cmp.i219.i = icmp ugt ptr %call129.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219.i, label %if.then132.i, label %if.end27

if.then132.i:                                     ; preds = %if.end127.i
  %cmp135.not.i = icmp eq ptr %call129.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp135.not.i, label %if.then132.i.free_rproc_crit_edge, label %if.then132.i.q6v5_wcss_init_clock.exit_crit_edge

if.then132.i.q6v5_wcss_init_clock.exit_crit_edge: ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_clock.exit

if.then132.i.free_rproc_crit_edge:                ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

q6v5_wcss_init_clock.exit:                        ; preds = %if.then132.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then117.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then102.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then87.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then72.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then57.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then42.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then27.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then12.i.q6v5_wcss_init_clock.exit_crit_edge, %if.then.i.q6v5_wcss_init_clock.exit_crit_edge
  %call129.sink.i = phi ptr [ %call.i109, %if.then.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call9.i111, %if.then12.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call24.i, %if.then27.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call39.i, %if.then42.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call54.i, %if.then57.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call69.i, %if.then72.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call84.i, %if.then87.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call99.i, %if.then102.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call114.i, %if.then117.i.q6v5_wcss_init_clock.exit_crit_edge ], [ %call129.i, %if.then132.i.q6v5_wcss_init_clock.exit_crit_edge ]
  %.str.57.sink.i = phi ptr [ @.str.21, %if.then.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.25, %if.then12.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.29, %if.then27.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.33, %if.then42.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.37, %if.then57.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.41, %if.then72.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.45, %if.then87.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.49, %if.then102.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.53, %if.then117.i.q6v5_wcss_init_clock.exit_crit_edge ], [ @.str.57, %if.then132.i.q6v5_wcss_init_clock.exit_crit_edge ]
  %92 = ptrtoint ptr %call129.sink.i to i32
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull %.str.57.sink.i) #11
  br label %free_rproc

if.end27:                                         ; preds = %if.end127.i
  %call28 = call fastcc i32 @q6v5_wcss_init_regulator(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.end27.free_rproc_crit_edge

if.end27.free_rproc_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.end27.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %7, align 4
  %aon_reset_required.i = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 3
  %97 = ptrtoint ptr %aon_reset_required.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %aon_reset_required.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i114 = icmp eq i8 %98, 0
  br i1 %tobool.not.i114, label %if.end32.if.end8.i_crit_edge, label %if.then.i117

if.end32.if.end8.i_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i117:                                     ; preds = %if.end32
  %call.i.i115 = call ptr @__devm_reset_control_get(ptr noundef %96, ptr noundef nonnull @.str.60, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %wcss_aon_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 22
  %99 = ptrtoint ptr %wcss_aon_reset.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i115, ptr %wcss_aon_reset.i, align 4
  %cmp.i.i116 = icmp ugt ptr %call.i.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %if.then.i117.q6v5_wcss_init_reset.exit_crit_edge, label %if.then.i117.if.end8.i_crit_edge

if.then.i117.if.end8.i_crit_edge:                 ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i117.q6v5_wcss_init_reset.exit_crit_edge: ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_reset.exit

if.end8.i:                                        ; preds = %if.then.i117.if.end8.i_crit_edge, %if.end32.if.end8.i_crit_edge
  %call.i65.i = call ptr @__devm_reset_control_get(ptr noundef %96, ptr noundef nonnull @.str.63, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %wcss_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 23
  %100 = ptrtoint ptr %wcss_reset.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i65.i, ptr %wcss_reset.i, align 4
  %cmp.i66.i = icmp ugt ptr %call.i65.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %if.end8.i.q6v5_wcss_init_reset.exit_crit_edge, label %if.end19.i

if.end8.i.q6v5_wcss_init_reset.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_reset.exit

if.end19.i:                                       ; preds = %if.end8.i
  %wcss_q6_reset_required.i = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 4
  %101 = ptrtoint ptr %wcss_q6_reset_required.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %wcss_q6_reset_required.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool20.not.i = icmp eq i8 %102, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then21.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then21.i:                                      ; preds = %if.end19.i
  %call.i67.i = call ptr @__devm_reset_control_get(ptr noundef %96, ptr noundef nonnull @.str.67, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %wcss_q6_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 24
  %103 = ptrtoint ptr %wcss_q6_reset.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i67.i, ptr %wcss_q6_reset.i, align 4
  %cmp.i68.i = icmp ugt ptr %call.i67.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %if.then21.i.q6v5_wcss_init_reset.exit_crit_edge, label %if.then21.i.if.end33.i_crit_edge

if.then21.i.if.end33.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then21.i.q6v5_wcss_init_reset.exit_crit_edge:  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_reset.exit

if.end33.i:                                       ; preds = %if.then21.i.if.end33.i_crit_edge, %if.end19.i.if.end33.i_crit_edge
  %call.i69.i = call ptr @__devm_reset_control_get(ptr noundef %96, ptr noundef nonnull @.str.71, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %wcss_q6_bcr_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 25
  %104 = ptrtoint ptr %wcss_q6_bcr_reset.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i69.i, ptr %wcss_q6_bcr_reset.i, align 4
  %cmp.i70.i = icmp ugt ptr %call.i69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %if.end33.i.q6v5_wcss_init_reset.exit_crit_edge, label %if.end33.i.if.end36_crit_edge

if.end33.i.if.end36_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end33.i.q6v5_wcss_init_reset.exit_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %q6v5_wcss_init_reset.exit

q6v5_wcss_init_reset.exit:                        ; preds = %if.end33.i.q6v5_wcss_init_reset.exit_crit_edge, %if.then21.i.q6v5_wcss_init_reset.exit_crit_edge, %if.end8.i.q6v5_wcss_init_reset.exit_crit_edge, %if.then.i117.q6v5_wcss_init_reset.exit_crit_edge
  %.str.73.sink.i = phi ptr [ @.str.61, %if.then.i117.q6v5_wcss_init_reset.exit_crit_edge ], [ @.str.65, %if.end8.i.q6v5_wcss_init_reset.exit_crit_edge ], [ @.str.69, %if.then21.i.q6v5_wcss_init_reset.exit_crit_edge ], [ @.str.73, %if.end33.i.q6v5_wcss_init_reset.exit_crit_edge ]
  %wcss_q6_bcr_reset.sink.i = phi ptr [ %wcss_aon_reset.i, %if.then.i117.q6v5_wcss_init_reset.exit_crit_edge ], [ %wcss_reset.i, %if.end8.i.q6v5_wcss_init_reset.exit_crit_edge ], [ %wcss_q6_reset.i, %if.then21.i.q6v5_wcss_init_reset.exit_crit_edge ], [ %wcss_q6_bcr_reset.i, %if.end33.i.q6v5_wcss_init_reset.exit_crit_edge ]
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull %.str.73.sink.i) #11
  %107 = ptrtoint ptr %wcss_q6_bcr_reset.sink.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wcss_q6_bcr_reset.sink.i, align 4
  %109 = ptrtoint ptr %108 to i32
  %tobool34.not = icmp eq ptr %108, null
  br i1 %tobool34.not, label %q6v5_wcss_init_reset.exit.if.end36_crit_edge, label %q6v5_wcss_init_reset.exit.free_rproc_crit_edge

q6v5_wcss_init_reset.exit.free_rproc_crit_edge:   ; preds = %q6v5_wcss_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

q6v5_wcss_init_reset.exit.if.end36_crit_edge:     ; preds = %q6v5_wcss_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %q6v5_wcss_init_reset.exit.if.end36_crit_edge, %if.end33.i.if.end36_crit_edge
  %q6v5 = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 26
  %crash_reason_smem = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 1
  %110 = ptrtoint ptr %crash_reason_smem to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %crash_reason_smem, align 4
  %call37 = call i32 @qcom_q6v5_init(ptr noundef %q6v5, ptr noundef %pdev, ptr noundef nonnull %call2, i32 noundef %111, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.free_rproc_crit_edge

if.end36.free_rproc_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end40:                                         ; preds = %if.end36
  %glink_subdev = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 34
  call void @qcom_add_glink_subdev(ptr noundef nonnull %call2, ptr noundef %glink_subdev, ptr noundef nonnull @.str.6) #8
  %ssr_subdev = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 35
  call void @qcom_add_ssr_subdev(ptr noundef nonnull %call2, ptr noundef %ssr_subdev, ptr noundef nonnull @.str.6) #8
  %ssctl_id = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 7
  %112 = ptrtoint ptr %ssctl_id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ssctl_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool41.not = icmp eq i32 %113, 0
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %sysmon_name = getelementptr inbounds %struct.wcss_data, ptr %call, i32 0, i32 6
  %114 = ptrtoint ptr %sysmon_name to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sysmon_name, align 4
  %call44 = call ptr @qcom_add_sysmon_subdev(ptr noundef nonnull %call2, ptr noundef %115, i32 noundef %113) #8
  %sysmon = getelementptr inbounds %struct.q6v5_wcss, ptr %7, i32 0, i32 21
  %116 = ptrtoint ptr %sysmon to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call44, ptr %sysmon, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %call46 = call i32 @rproc_add(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.free_rproc_crit_edge

if.end45.free_rproc_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %117 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

free_rproc:                                       ; preds = %if.end45.free_rproc_crit_edge, %if.end36.free_rproc_crit_edge, %q6v5_wcss_init_reset.exit.free_rproc_crit_edge, %if.end27.free_rproc_crit_edge, %q6v5_wcss_init_clock.exit, %if.then132.i.free_rproc_crit_edge, %if.then117.i.free_rproc_crit_edge, %if.then102.i.free_rproc_crit_edge, %if.then87.i.free_rproc_crit_edge, %if.then72.i.free_rproc_crit_edge, %if.then57.i.free_rproc_crit_edge, %if.then42.i.free_rproc_crit_edge, %if.then27.i.free_rproc_crit_edge, %if.then12.i.free_rproc_crit_edge, %if.then.i.free_rproc_crit_edge, %do.end15.i, %do.end.i107, %q6v5_wcss_init_mmio.exit, %q6v5_wcss_init_mmio.exit.thread
  %ret.0 = phi i32 [ %retval.0.i, %q6v5_wcss_init_mmio.exit ], [ %92, %q6v5_wcss_init_clock.exit ], [ %call28, %if.end27.free_rproc_crit_edge ], [ %109, %q6v5_wcss_init_reset.exit.free_rproc_crit_edge ], [ %call37, %if.end36.free_rproc_crit_edge ], [ %call46, %if.end45.free_rproc_crit_edge ], [ %retval.0.i.ph, %q6v5_wcss_init_mmio.exit.thread ], [ -22, %do.end.i107 ], [ -16, %do.end15.i ], [ -517, %if.then.i.free_rproc_crit_edge ], [ -517, %if.then12.i.free_rproc_crit_edge ], [ -517, %if.then27.i.free_rproc_crit_edge ], [ -517, %if.then42.i.free_rproc_crit_edge ], [ -517, %if.then57.i.free_rproc_crit_edge ], [ -517, %if.then72.i.free_rproc_crit_edge ], [ -517, %if.then87.i.free_rproc_crit_edge ], [ -517, %if.then102.i.free_rproc_crit_edge ], [ -517, %if.then117.i.free_rproc_crit_edge ], [ -517, %if.then132.i.free_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end49, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_rproc ], [ 0, %if.end49 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.q6v5_wcss, ptr %3, i32 0, i32 26
  tail call void @qcom_q6v5_deinit(ptr noundef %q6v5) #8
  %call1 = tail call i32 @rproc_del(ptr noundef %1) #8
  tail call void @rproc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6v5_wcss_init_regulator(ptr nocapture noundef %wcss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wcss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wcss, align 4
  %call = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull @.str.59) #8
  %cx_supply = getelementptr inbounds %struct.q6v5_wcss, ptr %wcss, i32 0, i32 20
  %2 = ptrtoint ptr %cx_supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cx_supply, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @regulator_set_load(ptr noundef %call, i32 noundef 100000) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_q6v5_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 26
  %call = tail call i32 @qcom_q6v5_prepare(ptr noundef %q6v5) #8
  %wcss_reset = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %wcss_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wcss_reset, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.76) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wcss_q6_reset = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %wcss_q6_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wcss_q6_reset, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.79) #11
  br label %wcss_reset40

if.end9:                                          ; preds = %if.end
  %halt_map = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %halt_map, align 4
  %halt_nc = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %halt_nc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %halt_nc, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 31, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.wcss_q6_reset37_crit_edge

if.end9.wcss_q6_reset37_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %wcss_q6_reset37

if.end13:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %halt_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %halt_map, align 4
  %16 = ptrtoint ptr %halt_nc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %halt_nc, align 4
  %add16 = add i32 %17, 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool18.not = icmp eq i32 %call.i67, 0
  br i1 %tobool18.not, label %do.body21, label %if.end13.wcss_q6_reset37_crit_edge

if.end13.wcss_q6_reset37_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %wcss_q6_reset37

do.body21:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %18 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bootaddr, align 8
  %shr = lshr i64 %19, 4
  %conv = trunc i64 %shr to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %reg_base = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #8, !srcloc !221
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %26 = or i32 %25, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %26) #8, !srcloc !221
  %29 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %30, i32 56
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %32 = or i32 %31, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr16.i = getelementptr i8, ptr %34, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %32) #8, !srcloc !221
  %call17.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call17.i, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 173) #8
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  %add.ptr31245.i = getelementptr i8, ptr %36, i32 56
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31245.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %.mask246.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask246.i)
  %tobool.not247.i = icmp eq i32 %.mask246.i, 0
  br i1 %tobool.not247.i, label %do.body21.if.end61.i_crit_edge, label %do.body21.land.lhs.true.i_crit_edge

do.body21.land.lhs.true.i_crit_edge:              ; preds = %do.body21
  br label %land.lhs.true.i

do.body21.if.end61.i_crit_edge:                   ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

land.lhs.true.i:                                  ; preds = %if.then51.i.land.lhs.true.i_crit_edge, %do.body21.land.lhs.true.i_crit_edge
  %call38.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call38.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call38.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then51.i

if.then51.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %38 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base, align 4
  %add.ptr31.i = getelementptr i8, ptr %39, i32 56
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %.mask.i = and i32 %40, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.then51.i.if.end61.i_crit_edge, label %if.then51.i.land.lhs.true.i_crit_edge

if.then51.i.land.lhs.true.i_crit_edge:            ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then51.i.if.end61.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %add.ptr45.i = getelementptr i8, ptr %42, i32 56
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %.mask244.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask244.i)
  %tobool55.not.i = icmp eq i32 %.mask244.i, 0
  br i1 %tobool55.not.i, label %for.end.i.if.end61.i_crit_edge, label %q6v5_wcss_reset.exit

for.end.i.if.end61.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.end61.i:                                       ; preds = %for.end.i.if.end61.i_crit_edge, %if.then51.i.if.end61.i_crit_edge, %do.body21.if.end61.i_crit_edge
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 4
  %add.ptr65.i = getelementptr i8, ptr %45, i32 48
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  %47 = or i32 %46, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base, align 4
  %add.ptr74.i = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %47) #8, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #8
  %51 = or i32 %46, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base, align 4
  %add.ptr80.i = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %51) #8, !srcloc !221
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base, align 4
  %add.ptr84.i = getelementptr i8, ptr %55, i32 48
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %57 = and i32 %56, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base, align 4
  %add.ptr93.i = getelementptr i8, ptr %59, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %57) #8, !srcloc !221
  %60 = or i32 %57, 3072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_base, align 4
  %add.ptr99.i = getelementptr i8, ptr %62, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %60) #8, !srcloc !221
  %63 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base, align 4
  %add.ptr103.i = getelementptr i8, ptr %64, i32 176
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103.i) #8, !srcloc !222
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end61.i
  %val.1249.i = phi i32 [ %66, %if.end61.i ], [ %or122.i, %for.body.i.for.body.i_crit_edge ]
  %i.0248.i = phi i32 [ 19, %if.end61.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0248.i
  %or109.i = or i32 %shl.i, %val.1249.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %or109.i) #8
  %68 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base, align 4
  %add.ptr114.i = getelementptr i8, ptr %69, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 %67) #8, !srcloc !221
  %70 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base, align 4
  %add.ptr118.i = getelementptr i8, ptr %71, i32 176
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118.i) #8, !srcloc !222
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %or122.i = or i32 %73, %or109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748) #8
  %dec.i = add nsw i32 %i.0248.i, -1
  %cmp108.not.i = icmp eq i32 %i.0248.i, 0
  br i1 %cmp108.not.i, label %if.end27, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

q6v5_wcss_reset.exit:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.84, i32 noundef -110) #11
  br label %wcss_q6_reset37

if.end27:                                         ; preds = %for.body.i
  %77 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_base, align 4
  %add.ptr127.i = getelementptr i8, ptr %78, i32 48
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %80 = and i32 %79, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_base, align 4
  %add.ptr136.i = getelementptr i8, ptr %82, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136.i, i32 %80) #8, !srcloc !221
  %83 = and i32 %79, -12289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base, align 4
  %add.ptr142.i = getelementptr i8, ptr %85, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 %83) #8, !srcloc !221
  %86 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_base, align 4
  %add.ptr146.i = getelementptr i8, ptr %87, i32 20
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  %89 = and i32 %88, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_base, align 4
  %add.ptr155.i = getelementptr i8, ptr %91, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155.i, i32 %89) #8, !srcloc !221
  %92 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_base, align 4
  %add.ptr159.i = getelementptr i8, ptr %93, i32 32
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  %95 = or i32 %94, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_base, align 4
  %add.ptr168.i = getelementptr i8, ptr %97, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.i, i32 %95) #8, !srcloc !221
  %98 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_base, align 4
  %add.ptr172.i = getelementptr i8, ptr %99, i32 20
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %101 = and i32 %100, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg_base, align 4
  %add.ptr181.i = getelementptr i8, ptr %103, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.i, i32 %101) #8, !srcloc !221
  %call29 = tail call i32 @qcom_q6v5_wait_for_start(ptr noundef %q6v5, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call29)
  %cmp = icmp eq i32 %call29, -110
  br i1 %cmp, label %do.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.82) #11
  br label %cleanup

wcss_q6_reset37:                                  ; preds = %q6v5_wcss_reset.exit, %if.end13.wcss_q6_reset37_crit_edge, %if.end9.wcss_q6_reset37_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end9.wcss_q6_reset37_crit_edge ], [ %call.i67, %if.end13.wcss_q6_reset37_crit_edge ], [ -110, %q6v5_wcss_reset.exit ]
  %106 = ptrtoint ptr %wcss_q6_reset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wcss_q6_reset, align 4
  %call39 = tail call i32 @reset_control_assert(ptr noundef %107) #8
  br label %wcss_reset40

wcss_reset40:                                     ; preds = %wcss_q6_reset37, %do.end7
  %ret.1 = phi i32 [ %call2, %do.end7 ], [ %ret.0, %wcss_q6_reset37 ]
  %108 = ptrtoint ptr %wcss_reset to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wcss_reset, align 4
  %call42 = tail call i32 @reset_control_assert(ptr noundef %109) #8
  br label %cleanup

cleanup:                                          ; preds = %wcss_reset40, %do.end34, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.1, %wcss_reset40 ], [ -110, %do.end34 ], [ %call29, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %requires_force_stop = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %requires_force_stop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %requires_force_stop, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %q6v5 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 26
  %call = tail call i32 @qcom_q6v5_request_stop(ptr noundef %q6v5, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp = icmp eq i32 %call, -110
  br i1 %cmp, label %do.end, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %version = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  %halt_map.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %halt_map.i, align 4
  %halt_wcss.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %halt_wcss.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %halt_wcss.i, align 4
  tail call fastcc void @q6v5_wcss_halt_axi_port(ptr noundef %1, ptr noundef %9, i32 noundef %11) #8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %reg_base.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %15 = or i32 %14, 28672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 176
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  %21 = and i32 %20, 65535
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %23, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %21) #8, !srcloc !221
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %27 = and i32 %26, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %27) #8, !srcloc !221
  %ahbfabric_cbcr_clk.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %ahbfabric_cbcr_clk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ahbfabric_cbcr_clk.i, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  %lcc_csr_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %lcc_csr_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lcc_csr_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  %tcm_slave_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %tcm_slave_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tcm_slave_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %35) #8
  tail call void @clk_unprepare(ptr noundef %35) #8
  %qdsp6ss_abhm_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %qdsp6ss_abhm_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qdsp6ss_abhm_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  %qdsp6ss_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %qdsp6ss_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qdsp6ss_axim_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  tail call void @clk_unprepare(ptr noundef %39) #8
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %41, i32 60
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  %43 = and i32 %42, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %45, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %43) #8, !srcloc !221
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %47, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %51, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %49) #8, !srcloc !221
  %ahbs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 12
  %52 = ptrtoint ptr %ahbs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ahbs_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %53) #8
  tail call void @clk_unprepare(ptr noundef %53) #8
  %lcc_bcr_sleep.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %lcc_bcr_sleep.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcc_bcr_sleep.i, align 4
  tail call void @clk_disable(ptr noundef %55) #8
  tail call void @clk_unprepare(ptr noundef %55) #8
  %56 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %57, i32 32
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %59 = and i32 %58, -33619969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %61, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %59) #8, !srcloc !221
  %gcc_abhs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 9
  %62 = ptrtoint ptr %gcc_abhs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gcc_abhs_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %63) #8
  tail call void @clk_unprepare(ptr noundef %63) #8
  %wcss_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 23
  %64 = ptrtoint ptr %wcss_reset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wcss_reset.i, align 4
  %call68.i = tail call i32 @reset_control_assert(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end71.i

do.end71.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.76) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %68 = ptrtoint ptr %wcss_reset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wcss_reset.i, align 4
  %call73.i = tail call i32 @reset_control_deassert(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %q6v5_qcs404_wcss_shutdown.exit, label %do.end78.i

do.end78.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.76) #11
  br label %cleanup

q6v5_qcs404_wcss_shutdown.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %gcc_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 10
  %72 = ptrtoint ptr %gcc_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gcc_axim_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %73) #8
  tail call void @clk_unprepare(ptr noundef %73) #8
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %rmb_base.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %77 = or i32 %76, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr3.i38 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i38, i32 %77) #8, !srcloc !221
  %80 = and i32 %76, -10487553
  %81 = or i32 %80, 10485760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %81) #8, !srcloc !221
  %84 = or i32 %80, 44040192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr15.i39 = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i39, i32 %84) #8, !srcloc !221
  %call16.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call16.i, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 618) #8
  %87 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr30108.i = getelementptr i8, ptr %88, i32 12
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30108.i) #8, !srcloc !222
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  %and34109.i = and i32 %90, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and34109.i)
  %cmp35110.i = icmp eq i32 %and34109.i, 1024
  br i1 %cmp35110.i, label %if.else.for.end.i_crit_edge, label %if.else.land.lhs.true.i_crit_edge

if.else.land.lhs.true.i_crit_edge:                ; preds = %if.else
  br label %land.lhs.true.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then51.i.land.lhs.true.i_crit_edge, %if.else.land.lhs.true.i_crit_edge
  %call38.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call38.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call38.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then41.i, label %if.then51.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr45.i40 = getelementptr i8, ptr %92, i32 12
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i40) #8, !srcloc !222
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  br label %for.end.i

if.then51.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %95 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %96, i32 12
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !222
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  %and34.i = and i32 %98, 65535
  %cmp35.i = icmp eq i32 %and34.i, 1024
  br i1 %cmp35.i, label %if.then51.i.for.end.i_crit_edge, label %if.then51.i.land.lhs.true.i_crit_edge

if.then51.i.land.lhs.true.i_crit_edge:            ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then51.i.for.end.i_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then51.i.for.end.i_crit_edge, %if.then41.i, %if.else.for.end.i_crit_edge
  %val.0.i = phi i32 [ %94, %if.then41.i ], [ %90, %if.else.for.end.i_crit_edge ], [ %98, %if.then51.i.for.end.i_crit_edge ]
  %and54.i = and i32 %val.0.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and54.i)
  %cmp55.i = icmp eq i32 %and54.i, 1024
  br i1 %cmp55.i, label %if.end12, label %q6v5_wcss_powerdown.exit

q6v5_wcss_powerdown.exit:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.93, i32 noundef -110) #11
  br label %cleanup

if.end12:                                         ; preds = %for.end.i
  %wcss_aon_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 22
  %101 = ptrtoint ptr %wcss_aon_reset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wcss_aon_reset.i, align 4
  %call62.i = tail call i32 @reset_control_assert(ptr noundef %102) #8
  %103 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %104, i32 8
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %106 = and i32 %105, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  %107 = ptrtoint ptr %rmb_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmb_base.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %108, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %106) #8, !srcloc !221
  %wcss_reset.i41 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 23
  %109 = ptrtoint ptr %wcss_reset.i41 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wcss_reset.i41, align 4
  %call76.i = tail call i32 @reset_control_assert(ptr noundef %110) #8
  %111 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %halt_map.i, align 4
  %halt_q6.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 4
  %113 = ptrtoint ptr %halt_q6.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %halt_q6.i, align 4
  tail call fastcc void @q6v5_wcss_halt_axi_port(ptr noundef %1, ptr noundef %112, i32 noundef %114) #8
  %reg_base.i44 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 1
  %115 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %116, i32 32
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %118 = and i32 %117, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr3.i46 = getelementptr i8, ptr %120, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i46, i32 %118) #8, !srcloc !221
  %121 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr7.i = getelementptr i8, ptr %122, i32 48
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  %124 = or i32 %123, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  tail call void @arm_heavy_mb() #8
  %125 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr15.i47 = getelementptr i8, ptr %126, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i47, i32 %124) #8, !srcloc !221
  %127 = or i32 %123, 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr21.i = getelementptr i8, ptr %129, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %127) #8, !srcloc !221
  %130 = and i32 %127, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr27.i = getelementptr i8, ptr %132, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %130) #8, !srcloc !221
  %133 = and i32 %127, -3073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  tail call void @arm_heavy_mb() #8
  %134 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr33.i = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %133) #8, !srcloc !221
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12
  %i.0164.i = phi i32 [ 0, %if.end12 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %136 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr37.i = getelementptr i8, ptr %137, i32 176
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !222
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  %shl.i = shl nuw nsw i32 1, %i.0164.i
  %neg.i = xor i32 %shl.i, -1
  %and41.i = and i32 %139, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  tail call void @arm_heavy_mb() #8
  %140 = tail call i32 @llvm.bswap.i32(i32 %and41.i) #8
  %141 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr46.i = getelementptr i8, ptr %142, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %140) #8, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #8
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.end.i49, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i49:                                      ; preds = %for.body.i
  %144 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr50.i = getelementptr i8, ptr %145, i32 48
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  %147 = or i32 %146, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr59.i = getelementptr i8, ptr %149, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %147) #8, !srcloc !221
  %150 = and i32 %147, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !278
  tail call void @arm_heavy_mb() #8
  %151 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr65.i = getelementptr i8, ptr %152, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %150) #8, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748) #8
  %call66.i = tail call i64 @ktime_get() #8
  %add.i.i48 = add i64 %call66.i, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 691) #8
  %154 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr82165.i = getelementptr i8, ptr %155, i32 120
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82165.i) #8, !srcloc !222
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  %and86166.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86166.i)
  %tobool.not167.i = icmp eq i32 %and86166.i, 0
  br i1 %tobool.not167.i, label %for.end.i49.for.end105.i_crit_edge, label %for.end.i49.land.lhs.true.i51_crit_edge

for.end.i49.land.lhs.true.i51_crit_edge:          ; preds = %for.end.i49
  br label %land.lhs.true.i51

for.end.i49.for.end105.i_crit_edge:               ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

land.lhs.true.i51:                                ; preds = %if.then103.i.land.lhs.true.i51_crit_edge, %for.end.i49.land.lhs.true.i51_crit_edge
  %call90.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call90.i, i64 %add.i.i48)
  %cmp3.i.i50 = icmp sgt i64 %call90.i, %add.i.i48
  br i1 %cmp3.i.i50, label %if.then93.i, label %if.then103.i

if.then93.i:                                      ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr97.i = getelementptr i8, ptr %159, i32 120
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97.i) #8, !srcloc !222
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  br label %for.end105.i

if.then103.i:                                     ; preds = %land.lhs.true.i51
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %162 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_base.i44, align 4
  %add.ptr82.i = getelementptr i8, ptr %163, i32 120
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #8, !srcloc !222
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  %and86.i = and i32 %165, 1
  %tobool.not.i52 = icmp eq i32 %and86.i, 0
  br i1 %tobool.not.i52, label %if.then103.i.for.end105.i_crit_edge, label %if.then103.i.land.lhs.true.i51_crit_edge

if.then103.i.land.lhs.true.i51_crit_edge:         ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i51

if.then103.i.for.end105.i_crit_edge:              ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

for.end105.i:                                     ; preds = %if.then103.i.for.end105.i_crit_edge, %if.then93.i, %for.end.i49.for.end105.i_crit_edge
  %val.0.i53 = phi i32 [ %161, %if.then93.i ], [ %157, %for.end.i49.for.end105.i_crit_edge ], [ %165, %if.then103.i.for.end105.i_crit_edge ]
  %and107.i = and i32 %val.0.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %q6v5_q6_powerdown.exit.thread, label %q6v5_q6_powerdown.exit

q6v5_q6_powerdown.exit.thread:                    ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %wcss_reset.i41 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wcss_reset.i41, align 4
  %call115.i = tail call i32 @reset_control_assert(ptr noundef %167) #8
  %wcss_q6_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 24
  %168 = ptrtoint ptr %wcss_q6_reset.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wcss_q6_reset.i, align 4
  %call116.i = tail call i32 @reset_control_assert(ptr noundef %169) #8
  br label %if.end17

q6v5_q6_powerdown.exit:                           ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.95, i32 noundef -110) #11
  br label %cleanup

if.end17:                                         ; preds = %q6v5_q6_powerdown.exit.thread, %q6v5_qcs404_wcss_shutdown.exit
  %q6v518 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 26
  %call19 = tail call i32 @qcom_q6v5_unprepare(ptr noundef %q6v518) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %q6v5_q6_powerdown.exit, %q6v5_wcss_powerdown.exit, %do.end78.i, %do.end71.i, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end17 ], [ -110, %q6v5_wcss_powerdown.exit ], [ -110, %q6v5_q6_powerdown.exit ], [ %call73.i, %do.end78.i ], [ %call68.i, %do.end71.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @q6v5_wcss_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mem_reloc = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 28
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
  %mem_size = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 30
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
  %mem_region = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_region, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_wcss_load(ptr nocapture noundef readonly %rproc, ptr noundef %fw) #2 align 64 {
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
  %mem_region = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_region, align 4
  %mem_phys = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_phys, align 4
  %mem_size = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_size, align 4
  %mem_reloc = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 28
  %call = tail call i32 @qcom_mdt_load_no_init(ptr noundef %3, ptr noundef %fw, ptr noundef %5, i32 noundef 0, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %mem_reloc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_phys, align 4
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size, align 4
  %call3 = tail call i32 @qcom_pil_info_store(ptr noundef nonnull @.str.97, i32 noundef %13, i32 noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_wait_for_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_request_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q6v5_wcss_halt_axi_port(ptr nocapture noundef readonly %wcss, ptr noundef %halt_map, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !281
  %add = add i32 %offset, 8
  %call = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call i32 @regmap_write(ptr noundef %halt_map, i32 noundef %offset, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add5 = add i32 %3, 10
  %add6 = add i32 %offset, 4
  %call734 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add6, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call734)
  %tobool8.not35 = icmp eq i32 %call734, 0
  br i1 %tobool8.not35, label %if.end.lor.lhs.false_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false10.for.end_crit_edge, label %if.end12

lor.lhs.false10.for.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12:                                         ; preds = %lor.lhs.false10
  call void @msleep(i32 noundef 1) #8
  %call7 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add6, ptr noundef nonnull %val) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12.lor.lhs.false_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %lor.lhs.false10.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end.for.end_crit_edge
  %call14 = call i32 @regmap_read(ptr noundef %halt_map, i32 noundef %add, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false16:                                  ; preds = %for.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %lor.lhs.false16.do.end_crit_edge, label %lor.lhs.false16.if.end19_crit_edge

lor.lhs.false16.if.end19_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

lor.lhs.false16.do.end_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false16.do.end_crit_edge, %for.end.do.end_crit_edge
  %9 = ptrtoint ptr %wcss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wcss, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.91) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %lor.lhs.false16.if.end19_crit_edge
  %call21 = call i32 @regmap_write(ptr noundef %halt_map, i32 noundef %offset, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load_no_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_pil_info_store(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6v5_qcs404_wcss_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %xo = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xo, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %cx_supply = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %cx_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx_supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disable_xo_clk_crit_edge

if.end.disable_xo_clk_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_xo_clk

if.end4:                                          ; preds = %if.end
  %q6v5 = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 26
  %call5 = tail call i32 @qcom_q6v5_prepare(ptr noundef %q6v5) #8
  %wcss_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %wcss_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wcss_reset.i, align 4
  %call.i43 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %8 = ptrtoint ptr %wcss_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wcss_reset.i, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %gcc_abhs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %gcc_abhs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gcc_abhs_cbcr.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.disable_cx_supply_crit_edge

if.end4.disable_cx_supply_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_cx_supply

if.end.i.i:                                       ; preds = %if.end4
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i44, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %disable_cx_supply

if.end.i44:                                       ; preds = %if.end.i.i
  %wcss_q6_bcr_reset.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %wcss_q6_bcr_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcss_q6_bcr_reset.i, align 4
  %call4.i = tail call i32 @reset_control_deassert(ptr noundef %13) #8
  %ahbfabric_cbcr_clk.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ahbfabric_cbcr_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ahbfabric_cbcr_clk.i, align 4
  %call.i324.i = tail call i32 @clk_prepare(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324.i)
  %tobool.not.i325.i = icmp eq i32 %call.i324.i, 0
  br i1 %tobool.not.i325.i, label %if.end.i328.i, label %if.end.i44.disable_gcc_abhs_cbcr_clk.i_crit_edge

if.end.i44.disable_gcc_abhs_cbcr_clk.i_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_gcc_abhs_cbcr_clk.i

if.end.i328.i:                                    ; preds = %if.end.i44
  %call1.i326.i = tail call i32 @clk_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i326.i)
  %tobool2.not.i327.i = icmp eq i32 %call1.i326.i, 0
  br i1 %tobool2.not.i327.i, label %if.end8.i, label %if.end.i328.i.disable_gcc_abhs_cbcr_clk.sink.split.i_crit_edge

if.end.i328.i.disable_gcc_abhs_cbcr_clk.sink.split.i_crit_edge: ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_gcc_abhs_cbcr_clk.sink.split.i

if.end8.i:                                        ; preds = %if.end.i328.i
  %lcc_csr_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %lcc_csr_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lcc_csr_cbcr.i, align 4
  %call.i332.i = tail call i32 @clk_prepare(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332.i)
  %tobool.not.i333.i = icmp eq i32 %call.i332.i, 0
  br i1 %tobool.not.i333.i, label %if.end.i336.i, label %if.end8.i.disable_ahbfabric_cbcr_clk.i_crit_edge

if.end8.i.disable_ahbfabric_cbcr_clk.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_ahbfabric_cbcr_clk.i

if.end.i336.i:                                    ; preds = %if.end8.i
  %call1.i334.i = tail call i32 @clk_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i334.i)
  %tobool2.not.i335.i = icmp eq i32 %call1.i334.i, 0
  br i1 %tobool2.not.i335.i, label %if.end12.i, label %if.end.i336.i.disable_ahbfabric_cbcr_clk.sink.split.i_crit_edge

if.end.i336.i.disable_ahbfabric_cbcr_clk.sink.split.i_crit_edge: ; preds = %if.end.i336.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_ahbfabric_cbcr_clk.sink.split.i

if.end12.i:                                       ; preds = %if.end.i336.i
  %ahbs_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %ahbs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ahbs_cbcr.i, align 4
  %call.i340.i = tail call i32 @clk_prepare(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340.i)
  %tobool.not.i341.i = icmp eq i32 %call.i340.i, 0
  br i1 %tobool.not.i341.i, label %if.end.i344.i, label %if.end12.i.disable_csr_cbcr_clk.i_crit_edge

if.end12.i.disable_csr_cbcr_clk.i_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_csr_cbcr_clk.i

if.end.i344.i:                                    ; preds = %if.end12.i
  %call1.i342.i = tail call i32 @clk_enable(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i342.i)
  %tobool2.not.i343.i = icmp eq i32 %call1.i342.i, 0
  br i1 %tobool2.not.i343.i, label %if.end16.i, label %if.end.i344.i.disable_csr_cbcr_clk.sink.split.i_crit_edge

if.end.i344.i.disable_csr_cbcr_clk.sink.split.i_crit_edge: ; preds = %if.end.i344.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_csr_cbcr_clk.sink.split.i

if.end16.i:                                       ; preds = %if.end.i344.i
  %tcm_slave_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %tcm_slave_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tcm_slave_cbcr.i, align 4
  %call17.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.disable_ahbs_cbcr_clk.i_crit_edge

if.end16.i.disable_ahbs_cbcr_clk.i_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_ahbs_cbcr_clk.i

if.end20.i:                                       ; preds = %if.end16.i
  %qdsp6ss_abhm_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %qdsp6ss_abhm_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qdsp6ss_abhm_cbcr.i, align 4
  %call21.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.disable_tcm_slave_cbcr_clk.i_crit_edge

if.end20.i.disable_tcm_slave_cbcr_clk.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_tcm_slave_cbcr_clk.i

if.end24.i:                                       ; preds = %if.end20.i
  %qdsp6ss_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %qdsp6ss_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qdsp6ss_axim_cbcr.i, align 4
  %call25.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.disable_abhm_cbcr_clk.i_crit_edge

if.end24.i.disable_abhm_cbcr_clk.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_abhm_cbcr_clk.i

if.end28.i:                                       ; preds = %if.end24.i
  %reg_base.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 56
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %29) #8, !srcloc !221
  %call33.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call33.i, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 350) #8
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr49360.i = getelementptr i8, ptr %33, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49360.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  %.mask361.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask361.i)
  %tobool53.not362.i = icmp eq i32 %.mask361.i, 0
  br i1 %tobool53.not362.i, label %if.end28.i.do.body81.i_crit_edge, label %if.end28.i.land.lhs.true.i_crit_edge

if.end28.i.land.lhs.true.i_crit_edge:             ; preds = %if.end28.i
  br label %land.lhs.true.i

if.end28.i.do.body81.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i

land.lhs.true.i:                                  ; preds = %if.then70.i.land.lhs.true.i_crit_edge, %if.end28.i.land.lhs.true.i_crit_edge
  %call57.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call57.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call57.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then70.i

if.then70.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %36, i32 56
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  %.mask.i = and i32 %37, 128
  %tobool53.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool53.not.i, label %if.then70.i.do.body81.i_crit_edge, label %if.then70.i.land.lhs.true.i_crit_edge

if.then70.i.land.lhs.true.i_crit_edge:            ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then70.i.do.body81.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %39, i32 56
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  %.mask359.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask359.i)
  %tobool74.not.i = icmp eq i32 %.mask359.i, 0
  br i1 %tobool74.not.i, label %for.end.i.do.body81.i_crit_edge, label %do.end79.i

for.end.i.do.body81.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i

do.end79.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.84, i32 noundef -110) #11
  br label %disable_cx_supply

do.body81.i:                                      ; preds = %for.end.i.do.body81.i_crit_edge, %if.then70.i.do.body81.i_crit_edge, %if.end28.i.do.body81.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 0) #8, !srcloc !221
  %45 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %46, i32 60
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  %48 = or i32 %47, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %50, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %48) #8, !srcloc !221
  %gcc_axim_cbcr.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %gcc_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gcc_axim_cbcr.i, align 4
  %call99.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %do.body81.i.disable_sleep_cbcr_clk.i_crit_edge

do.body81.i.disable_sleep_cbcr_clk.i_crit_edge:   ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_sleep_cbcr_clk.i

if.end102.i:                                      ; preds = %do.body81.i
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %54, i32 20
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  %56 = or i32 %55, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %58, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 %56) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base.i, align 4
  %add.ptr120.i = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 28673) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_base.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %62, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 28675) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 12291) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 4
  %add.ptr135.i = getelementptr i8, ptr %66, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i, i32 15363) #8, !srcloc !221
  br label %do.body138.i

do.body138.i:                                     ; preds = %do.body138.i.do.body138.i_crit_edge, %if.end102.i
  %idx.0363.i = phi i32 [ 28, %if.end102.i ], [ %dec.i, %do.body138.i.do.body138.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i, align 4
  %add.ptr144.i = getelementptr i8, ptr %68, i32 176
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144.i) #8, !srcloc !222
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  %shl.i = shl nuw i32 1, %idx.0363.i
  %or148.i = or i32 %70, %shl.i
  %71 = tail call i32 @llvm.bswap.i32(i32 %or148.i) #8
  %72 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i, align 4
  %add.ptr150.i = getelementptr i8, ptr %73, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150.i, i32 %71) #8, !srcloc !221
  %dec.i = add nsw i32 %idx.0363.i, -1
  %cmp137.not.i = icmp eq i32 %idx.0363.i, 0
  br i1 %cmp137.not.i, label %do.body152.i, label %do.body138.i.do.body138.i_crit_edge

do.body138.i.do.body138.i_crit_edge:              ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138.i

do.body152.i:                                     ; preds = %do.body138.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_base.i, align 4
  %add.ptr156.i = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156.i, i32 7171) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base.i, align 4
  %add.ptr161.i = getelementptr i8, ptr %77, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i, i32 3075) #8, !srcloc !221
  %78 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i, align 4
  %add.ptr165.i = getelementptr i8, ptr %79, i32 20
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  %81 = and i32 %80, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %83, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174.i, i32 %81) #8, !srcloc !221
  %84 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base.i, align 4
  %add.ptr178.i = getelementptr i8, ptr %85, i32 32
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  %87 = or i32 %86, 33619968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i, align 4
  %add.ptr187.i = getelementptr i8, ptr %89, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187.i, i32 %87) #8, !srcloc !221
  %lcc_bcr_sleep.i = getelementptr inbounds %struct.q6v5_wcss, ptr %1, i32 0, i32 19
  %90 = ptrtoint ptr %lcc_bcr_sleep.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lcc_bcr_sleep.i, align 4
  %call188.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i)
  %tobool189.not.i = icmp eq i32 %call188.i, 0
  br i1 %tobool189.not.i, label %do.body10, label %disable_core_gfmux_clk.i

disable_core_gfmux_clk.i:                         ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_base.i, align 4
  %add.ptr195.i = getelementptr i8, ptr %93, i32 32
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %95 = and i32 %94, -33619969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_base.i, align 4
  %add.ptr204.i = getelementptr i8, ptr %97, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.i, i32 %95) #8, !srcloc !221
  %98 = ptrtoint ptr %gcc_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gcc_axim_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %99) #8
  tail call void @clk_unprepare(ptr noundef %99) #8
  br label %disable_sleep_cbcr_clk.i

disable_sleep_cbcr_clk.i:                         ; preds = %disable_core_gfmux_clk.i, %do.body81.i.disable_sleep_cbcr_clk.i_crit_edge
  %ret.0.i = phi i32 [ %call99.i, %do.body81.i.disable_sleep_cbcr_clk.i_crit_edge ], [ %call188.i, %disable_core_gfmux_clk.i ]
  %100 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_base.i, align 4
  %add.ptr209.i = getelementptr i8, ptr %101, i32 60
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  %103 = and i32 %102, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_base.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %105, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218.i, i32 %103) #8, !srcloc !221
  %106 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_base.i, align 4
  %add.ptr222.i = getelementptr i8, ptr %107, i32 56
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr222.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  %109 = and i32 %108, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @arm_heavy_mb() #8
  %110 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_base.i, align 4
  %add.ptr231.i = getelementptr i8, ptr %111, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231.i, i32 %109) #8, !srcloc !221
  %112 = ptrtoint ptr %qdsp6ss_axim_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %qdsp6ss_axim_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %113) #8
  tail call void @clk_unprepare(ptr noundef %113) #8
  br label %disable_abhm_cbcr_clk.i

disable_abhm_cbcr_clk.i:                          ; preds = %disable_sleep_cbcr_clk.i, %if.end24.i.disable_abhm_cbcr_clk.i_crit_edge
  %ret.1.i = phi i32 [ %call25.i, %if.end24.i.disable_abhm_cbcr_clk.i_crit_edge ], [ %ret.0.i, %disable_sleep_cbcr_clk.i ]
  %114 = ptrtoint ptr %qdsp6ss_abhm_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %qdsp6ss_abhm_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %115) #8
  tail call void @clk_unprepare(ptr noundef %115) #8
  br label %disable_tcm_slave_cbcr_clk.i

disable_tcm_slave_cbcr_clk.i:                     ; preds = %disable_abhm_cbcr_clk.i, %if.end20.i.disable_tcm_slave_cbcr_clk.i_crit_edge
  %ret.2.i = phi i32 [ %call21.i, %if.end20.i.disable_tcm_slave_cbcr_clk.i_crit_edge ], [ %ret.1.i, %disable_abhm_cbcr_clk.i ]
  %116 = ptrtoint ptr %tcm_slave_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tcm_slave_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %117) #8
  tail call void @clk_unprepare(ptr noundef %117) #8
  br label %disable_ahbs_cbcr_clk.i

disable_ahbs_cbcr_clk.i:                          ; preds = %disable_tcm_slave_cbcr_clk.i, %if.end16.i.disable_ahbs_cbcr_clk.i_crit_edge
  %ret.3.i = phi i32 [ %call17.i, %if.end16.i.disable_ahbs_cbcr_clk.i_crit_edge ], [ %ret.2.i, %disable_tcm_slave_cbcr_clk.i ]
  %118 = ptrtoint ptr %ahbs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ahbs_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %119) #8
  br label %disable_csr_cbcr_clk.sink.split.i

disable_csr_cbcr_clk.sink.split.i:                ; preds = %disable_ahbs_cbcr_clk.i, %if.end.i344.i.disable_csr_cbcr_clk.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %119, %disable_ahbs_cbcr_clk.i ], [ %19, %if.end.i344.i.disable_csr_cbcr_clk.sink.split.i_crit_edge ]
  %ret.4.ph.i = phi i32 [ %ret.3.i, %disable_ahbs_cbcr_clk.i ], [ %call1.i342.i, %if.end.i344.i.disable_csr_cbcr_clk.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #8
  br label %disable_csr_cbcr_clk.i

disable_csr_cbcr_clk.i:                           ; preds = %disable_csr_cbcr_clk.sink.split.i, %if.end12.i.disable_csr_cbcr_clk.i_crit_edge
  %ret.4.i = phi i32 [ %call.i340.i, %if.end12.i.disable_csr_cbcr_clk.i_crit_edge ], [ %ret.4.ph.i, %disable_csr_cbcr_clk.sink.split.i ]
  %120 = ptrtoint ptr %lcc_csr_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lcc_csr_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %121) #8
  br label %disable_ahbfabric_cbcr_clk.sink.split.i

disable_ahbfabric_cbcr_clk.sink.split.i:          ; preds = %disable_csr_cbcr_clk.i, %if.end.i336.i.disable_ahbfabric_cbcr_clk.sink.split.i_crit_edge
  %.sink364.i = phi ptr [ %121, %disable_csr_cbcr_clk.i ], [ %17, %if.end.i336.i.disable_ahbfabric_cbcr_clk.sink.split.i_crit_edge ]
  %ret.5.ph.i = phi i32 [ %ret.4.i, %disable_csr_cbcr_clk.i ], [ %call1.i334.i, %if.end.i336.i.disable_ahbfabric_cbcr_clk.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink364.i) #8
  br label %disable_ahbfabric_cbcr_clk.i

disable_ahbfabric_cbcr_clk.i:                     ; preds = %disable_ahbfabric_cbcr_clk.sink.split.i, %if.end8.i.disable_ahbfabric_cbcr_clk.i_crit_edge
  %ret.5.i = phi i32 [ %call.i332.i, %if.end8.i.disable_ahbfabric_cbcr_clk.i_crit_edge ], [ %ret.5.ph.i, %disable_ahbfabric_cbcr_clk.sink.split.i ]
  %122 = ptrtoint ptr %ahbfabric_cbcr_clk.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ahbfabric_cbcr_clk.i, align 4
  tail call void @clk_disable(ptr noundef %123) #8
  br label %disable_gcc_abhs_cbcr_clk.sink.split.i

disable_gcc_abhs_cbcr_clk.sink.split.i:           ; preds = %disable_ahbfabric_cbcr_clk.i, %if.end.i328.i.disable_gcc_abhs_cbcr_clk.sink.split.i_crit_edge
  %.sink365.i = phi ptr [ %123, %disable_ahbfabric_cbcr_clk.i ], [ %15, %if.end.i328.i.disable_gcc_abhs_cbcr_clk.sink.split.i_crit_edge ]
  %ret.6.ph.i = phi i32 [ %ret.5.i, %disable_ahbfabric_cbcr_clk.i ], [ %call1.i326.i, %if.end.i328.i.disable_gcc_abhs_cbcr_clk.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink365.i) #8
  br label %disable_gcc_abhs_cbcr_clk.i

disable_gcc_abhs_cbcr_clk.i:                      ; preds = %disable_gcc_abhs_cbcr_clk.sink.split.i, %if.end.i44.disable_gcc_abhs_cbcr_clk.i_crit_edge
  %ret.6.i = phi i32 [ %call.i324.i, %if.end.i44.disable_gcc_abhs_cbcr_clk.i_crit_edge ], [ %ret.6.ph.i, %disable_gcc_abhs_cbcr_clk.sink.split.i ]
  %124 = ptrtoint ptr %gcc_abhs_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %gcc_abhs_cbcr.i, align 4
  tail call void @clk_disable(ptr noundef %125) #8
  tail call void @clk_unprepare(ptr noundef %125) #8
  br label %disable_cx_supply

do.body10:                                        ; preds = %do.body152.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %126 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %bootaddr, align 8
  %shr = lshr i64 %127, 4
  %conv = trunc i64 %shr to i32
  %128 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %129 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_base.i, align 4
  %add.ptr = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %128) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %132, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 32896) #8, !srcloc !221
  %133 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %134, i32 20
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %136 = and i32 %135, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %138, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %136) #8, !srcloc !221
  %call15 = tail call i32 @qcom_q6v5_wait_for_start(ptr noundef %q6v5, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call15)
  %cmp = icmp eq i32 %call15, -110
  br i1 %cmp, label %do.body10.disable_cx_supply_crit_edge, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10.disable_cx_supply_crit_edge:            ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_cx_supply

disable_cx_supply:                                ; preds = %do.body10.disable_cx_supply_crit_edge, %disable_gcc_abhs_cbcr_clk.i, %do.end79.i, %if.then3.i.i, %if.end4.disable_cx_supply_crit_edge
  %.str.82.sink = phi ptr [ @.str.100, %disable_gcc_abhs_cbcr_clk.i ], [ @.str.100, %do.end79.i ], [ @.str.100, %if.then3.i.i ], [ @.str.100, %if.end4.disable_cx_supply_crit_edge ], [ @.str.82, %do.body10.disable_cx_supply_crit_edge ]
  %ret.0 = phi i32 [ %ret.6.i, %disable_gcc_abhs_cbcr_clk.i ], [ -110, %do.end79.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end4.disable_cx_supply_crit_edge ], [ -110, %do.body10.disable_cx_supply_crit_edge ]
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull %.str.82.sink) #11
  %141 = ptrtoint ptr %cx_supply to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cx_supply, align 4
  %call24 = tail call i32 @regulator_disable(ptr noundef %142) #8
  br label %disable_xo_clk

disable_xo_clk:                                   ; preds = %disable_cx_supply, %if.end.disable_xo_clk_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.disable_xo_clk_crit_edge ], [ %ret.0, %disable_cx_supply ]
  %143 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %xo, align 4
  tail call void @clk_disable(ptr noundef %144) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %disable_xo_clk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %144, %disable_xo_clk ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %disable_xo_clk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body10.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_register_dump_segments(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !100, !101, !102, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !192, !194, !196, !198, !200, !201, !202, !203, !205, !206, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @__initcall__kmod_qcom_q6v5_wcss__288_1122_q6v5_wcss_driver_init6, !1, !"__initcall__kmod_qcom_q6v5_wcss__288_1122_q6v5_wcss_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1122, i32 1}
!2 = !{ptr @__exitcall_q6v5_wcss_driver_exit, !1, !"__exitcall_q6v5_wcss_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1124, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1125, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1118, i32 11}
!10 = !{ptr @q6v5_wcss_driver, !11, !"q6v5_wcss_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1114, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1014, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @q6v5_wcss_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @q6v5_wcss_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1051, i32 52}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 829, i32 59}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 836, i32 60}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 843, i32 7}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 845, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @q6v5_wcss_init_mmio._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @q6v5_wcss_init_mmio._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @q6v5_wcss_init_mmio._entry.12, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 859, i32 3}
!35 = !{ptr @q6v5_wcss_init_mmio._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 876, i32 40}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 882, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @q6v5_alloc_memory_region._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @q6v5_alloc_memory_region._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 891, i32 3}
!45 = !{ptr @q6v5_alloc_memory_region._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @q6v5_alloc_memory_region._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 903, i32 37}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 907, i32 4}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @q6v5_wcss_init_clock._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @q6v5_wcss_init_clock._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 911, i32 48}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 915, i32 4}
!58 = !{ptr @q6v5_wcss_init_clock._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @q6v5_wcss_init_clock._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 919, i32 48}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 923, i32 4}
!64 = !{ptr @q6v5_wcss_init_clock._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @q6v5_wcss_init_clock._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 928, i32 7}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 932, i32 4}
!70 = !{ptr @q6v5_wcss_init_clock._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @q6v5_wcss_init_clock._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 936, i32 47}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 940, i32 4}
!76 = !{ptr @q6v5_wcss_init_clock._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @q6v5_wcss_init_clock._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 945, i32 12}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 949, i32 4}
!82 = !{ptr @q6v5_wcss_init_clock._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @q6v5_wcss_init_clock._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 954, i32 10}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 958, i32 4}
!88 = !{ptr @q6v5_wcss_init_clock._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @q6v5_wcss_init_clock._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 962, i32 52}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 966, i32 4}
!94 = !{ptr @q6v5_wcss_init_clock._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @q6v5_wcss_init_clock._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 970, i32 52}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 974, i32 4}
!100 = !{ptr @q6v5_wcss_init_clock._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @q6v5_wcss_init_clock._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 978, i32 48}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 982, i32 4}
!106 = !{ptr @q6v5_wcss_init_clock._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @q6v5_wcss_init_clock._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 991, i32 50}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 791, i32 64}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 793, i32 4}
!114 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @q6v5_wcss_init_reset._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @q6v5_wcss_init_reset._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 798, i32 59}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 800, i32 3}
!121 = !{ptr @q6v5_wcss_init_reset._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @q6v5_wcss_init_reset._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 805, i32 63}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 807, i32 4}
!127 = !{ptr @q6v5_wcss_init_reset._entry.68, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @q6v5_wcss_init_reset._entry_ptr.70, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 812, i32 66}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 814, i32 3}
!133 = !{ptr @q6v5_wcss_init_reset._entry.72, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @q6v5_wcss_init_reset._entry_ptr.74, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @q6v5_wcss_of_match, !136, !"q6v5_wcss_of_match", i1 false, i1 false}
!136 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1107, i32 34}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1086, i32 19}
!139 = !{ptr @wcss_ipq8074_res_init, !140, !"wcss_ipq8074_res_init", i1 false, i1 false}
!140 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1085, i32 31}
!141 = !{ptr @q6v5_wcss_ipq8074_ops, !142, !"q6v5_wcss_ipq8074_ops", i1 false, i1 false}
!142 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 768, i32 31}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 248, i32 3}
!145 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @q6v5_wcss_start._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @q6v5_wcss_start._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 254, i32 3}
!150 = !{ptr @q6v5_wcss_start._entry.78, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @q6v5_wcss_start._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 281, i32 3}
!154 = !{ptr @q6v5_wcss_start._entry.81, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @q6v5_wcss_start._entry_ptr.83, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 175, i32 3}
!158 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @q6v5_wcss_reset._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @q6v5_wcss_reset._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 715, i32 4}
!163 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @q6v5_wcss_stop._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @q6v5_wcss_stop._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 576, i32 3}
!168 = !{ptr @q6v5_qcs404_wcss_shutdown._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @q6v5_qcs404_wcss_shutdown._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @q6v5_qcs404_wcss_shutdown._entry.89, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 583, i32 3}
!172 = !{ptr @q6v5_qcs404_wcss_shutdown._entry_ptr.90, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 523, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @q6v5_wcss_halt_axi_port._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @q6v5_wcss_halt_axi_port._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 620, i32 3}
!180 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @q6v5_wcss_powerdown._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @q6v5_wcss_powerdown._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 693, i32 3}
!185 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @q6v5_q6_powerdown._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @q6v5_q6_powerdown._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 763, i32 22}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1096, i32 19}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1100, i32 14}
!194 = !{ptr @wcss_qcs404_res_init, !195, !"wcss_qcs404_res_init", i1 false, i1 false}
!195 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 1094, i32 31}
!196 = !{ptr @q6v5_wcss_qcs404_ops, !197, !"q6v5_wcss_qcs404_ops", i1 false, i1 false}
!197 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 776, i32 31}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 471, i32 3}
!200 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @q6v5_qcs404_wcss_start._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @q6v5_qcs404_wcss_start._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @q6v5_qcs404_wcss_start._entry.102, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 481, i32 3}
!205 = !{ptr @q6v5_qcs404_wcss_start._entry_ptr.103, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/remoteproc/qcom_q6v5_wcss.c", i32 352, i32 3}
!208 = !{ptr @q6v5_wcss_qcs404_power_on._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @q6v5_wcss_qcs404_power_on._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i8 0, i8 2}
!220 = !{i64 2155298480}
!221 = !{i64 3096387}
!222 = !{i64 3096805}
!223 = !{i64 2155272343}
!224 = !{i64 2155272814}
!225 = !{i64 2155275290}
!226 = !{i64 2155276462}
!227 = !{i64 2155281610}
!228 = !{i64 2155283232}
!229 = !{i64 2155285465}
!230 = !{i64 2155285774}
!231 = !{i64 2155286799}
!232 = !{i64 2155287491}
!233 = !{i64 2155287800}
!234 = !{i64 2155288373}
!235 = !{i64 2155289065}
!236 = !{i64 2155289368}
!237 = !{i64 2155290060}
!238 = !{i64 2155291108}
!239 = !{i64 2155291417}
!240 = !{i64 2155291906}
!241 = !{i64 2155292598}
!242 = !{i64 2155292905}
!243 = !{i64 2155293597}
!244 = !{i64 2155293904}
!245 = !{i64 2155294596}
!246 = !{i64 2155294903}
!247 = !{i64 2155341285}
!248 = !{i64 2155341762}
!249 = !{i64 2155343909}
!250 = !{i64 2155345422}
!251 = !{i64 2155346242}
!252 = !{i64 2155346551}
!253 = !{i64 2155349027}
!254 = !{i64 2155350274}
!255 = !{i64 2155353029}
!256 = !{i64 2155354276}
!257 = !{i64 2155355247}
!258 = !{i64 2155355636}
!259 = !{i64 2155359430}
!260 = !{i64 2155359735}
!261 = !{i64 2155360910}
!262 = !{i64 2155361384}
!263 = !{i64 2155363206}
!264 = !{i64 2155363704}
!265 = !{i64 2155365891}
!266 = !{i64 2155366196}
!267 = !{i64 2155366886}
!268 = !{i64 2155367193}
!269 = !{i64 2155367885}
!270 = !{i64 2155368194}
!271 = !{i64 2155368683}
!272 = !{i64 2155369172}
!273 = !{i64 2155369661}
!274 = !{i64 2155370353}
!275 = !{i64 2155370653}
!276 = !{i64 2155372633}
!277 = !{i64 2155372942}
!278 = !{i64 2155373431}
!279 = !{i64 2155375938}
!280 = !{i64 2155376440}
!281 = !{!"auto-init"}
!282 = !{i64 2155302562}
!283 = !{i64 2155303809}
!284 = !{i64 2155308957}
!285 = !{i64 2155310579}
!286 = !{i64 2155312523}
!287 = !{i64 2155314993}
!288 = !{i64 2155316240}
!289 = !{i64 2155317211}
!290 = !{i64 2155317682}
!291 = !{i64 2155318094}
!292 = !{i64 2155318527}
!293 = !{i64 2155318960}
!294 = !{i64 2155319393}
!295 = !{i64 2155320599}
!296 = !{i64 2155321554}
!297 = !{i64 2155321815}
!298 = !{i64 2155322248}
!299 = !{i64 2155322961}
!300 = !{i64 2155323268}
!301 = !{i64 2155323960}
!302 = !{i64 2155324349}
!303 = !{i64 2155325041}
!304 = !{i64 2155325430}
!305 = !{i64 2155327906}
!306 = !{i64 2155329160}
!307 = !{i64 2155331915}
!308 = !{i64 2155333169}
!309 = !{i64 2155337070}
!310 = !{i64 2155334029}
!311 = !{i64 2155334742}
!312 = !{i64 2155335049}
