; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_wcnss.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_wcnss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wcnss_data = type { i32, i32, [2 x ptr], ptr, i32, i32 }
%struct.wcnss_vreg_info = type { ptr, i32, i32, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.qcom_wcnss = type { ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, ptr, [2 x ptr], i32, ptr, i32, %struct.completion, %struct.completion, i32, i32, ptr, i32, %struct.qcom_rproc_subdev, ptr }
%struct.qcom_rproc_subdev = type { %struct.rproc_subdev, ptr, ptr, ptr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@__initcall__kmod_qcom_wcnss_pil__290_684_wcnss_driver_init6 = internal global ptr @wcnss_driver_init, section ".initcall6.init", align 4
@wcnss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wcnss_probe, ptr @wcnss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wcnss_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wcnss_driver_exit = internal global ptr @wcnss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [83 x i8] c"qcom_wcnss_pil.description=Qualcomm Peripheral Image Loader for Wireless Subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"qcom_wcnss_pil.file=drivers/remoteproc/qcom_wcnss_pil\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"qcom_wcnss_pil.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-wcnss-pil\00", [17 x i8] zeroinitializer }, align 32
@wcnss_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,riva-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @riva_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pronto-v1-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pronto_v1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pronto-v2-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pronto_v2_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wcnss.mdt\00", [22 x i8] zeroinitializer }, align 32
@wcnss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PAS is not available for WCNSS\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wcnss_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/remoteproc/qcom_wcnss.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcnss_probe._entry_ptr = internal global ptr @wcnss_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@wcnss_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @wcnss_start, ptr @wcnss_stop, ptr null, ptr null, ptr null, ptr @wcnss_da_to_va, ptr @qcom_register_dump_segments, ptr null, ptr null, ptr null, ptr @wcnss_load, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wcnss_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to allocate remoteproc\0A\00", [33 x i8] zeroinitializer }, align 32
@wcnss_probe._entry_ptr.10 = internal global ptr @wcnss_probe._entry.8, section ".printk_index", align 4
@wcnss_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wcnss->iris_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdog\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fatal\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"handover\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop-ack\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wcnss\00", [26 x i8] zeroinitializer }, align 32
@wcnss_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no iris registered\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wcnss_start\00", [20 x i8] zeroinitializer }, align 32
@wcnss_start._entry_ptr = internal global ptr @wcnss_start._entry, section ".printk_index", align 4
@wcnss_start._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to authenticate image and release reset\0A\00", [48 x i8] zeroinitializer }, align 32
@wcnss_start._entry_ptr.24 = internal global ptr @wcnss_start._entry.22, section ".printk_index", align 4
@wcnss_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@wcnss_start._entry_ptr.27 = internal global ptr @wcnss_start._entry.25, section ".printk_index", align 4
@wcnss_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timed out on wait\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wcnss_stop\00", [21 x i8] zeroinitializer }, align 32
@wcnss_stop._entry_ptr = internal global ptr @wcnss_stop._entry, section ".printk_index", align 4
@wcnss_stop._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to shutdown: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcnss_stop._entry_ptr.32 = internal global ptr @wcnss_stop._entry.30, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@wcnss_alloc_memory_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory-region specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcnss_alloc_memory_region\00", [38 x i8] zeroinitializer }, align 32
@wcnss_alloc_memory_region._entry_ptr = internal global ptr @wcnss_alloc_memory_region._entry, section ".printk_index", align 4
@wcnss_alloc_memory_region._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@wcnss_alloc_memory_region._entry_ptr.39 = internal global ptr @wcnss_alloc_memory_region._entry.37, section ".printk_index", align 4
@wcnss_request_irq.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_wcnss_pil\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcnss_request_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no %s IRQ defined, ignoring\0A\00", [35 x i8] zeroinitializer }, align 32
@wcnss_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no %s IRQ defined\0A\00", [45 x i8] zeroinitializer }, align 32
@wcnss_request_irq._entry_ptr = internal global ptr @wcnss_request_irq._entry, section ".printk_index", align 4
@wcnss_request_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.41, ptr @.str.4, i32 485, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request %s IRQ failed\0A\00", [41 x i8] zeroinitializer }, align 32
@wcnss_request_irq._entry_ptr.46 = internal global ptr @wcnss_request_irq._entry.44, section ".printk_index", align 4
@wcnss_fatal_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fatal error received: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcnss_fatal_interrupt\00", [42 x i8] zeroinitializer }, align 32
@wcnss_fatal_interrupt._entry_ptr = internal global ptr @wcnss_fatal_interrupt._entry, section ".printk_index", align 4
@riva_data = internal constant { %struct.wcnss_data, [36 x i8] } { %struct.wcnss_data { i32 40, i32 180, [2 x ptr] zeroinitializer, ptr @.compoundliteral, i32 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pronto_v1_data = internal constant { %struct.wcnss_data, [36 x i8] } { %struct.wcnss_data { i32 4100, i32 4232, [2 x ptr] [ptr @.str.52, ptr @.str.53], ptr @.compoundliteral.54, i32 1, i32 2 }, [36 x i8] zeroinitializer }, align 32
@pronto_v2_data = internal constant { %struct.wcnss_data, [36 x i8] } { %struct.wcnss_data { i32 4100, i32 4232, [2 x ptr] [ptr @.str.52, ptr @.str.53], ptr @.compoundliteral.55, i32 1, i32 2 }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddmx\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddcx\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddpx\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.wcnss_vreg_info], [36 x i8] } { [3 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.49, i32 1050000, i32 1150000, i32 0, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.50, i32 1050000, i32 1150000, i32 0, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.51, i32 1800000, i32 1800000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mx\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [3 x %struct.wcnss_vreg_info], [36 x i8] } { [3 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.49, i32 950000, i32 1150000, i32 0, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.50, i32 0, i32 0, i32 0, i8 1 }, %struct.wcnss_vreg_info { ptr @.str.51, i32 1800000, i32 1800000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [3 x %struct.wcnss_vreg_info], [36 x i8] } { [3 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.49, i32 1287500, i32 1287500, i32 0, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.50, i32 0, i32 0, i32 0, i8 1 }, %struct.wcnss_vreg_info { ptr @.str.51, i32 1800000, i32 1800000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"wcnss_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 675, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 679, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"wcnss_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 667, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 520, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 534, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 538, i32 51 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"wcnss_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 322, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 546, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 559, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 561, i32 59 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 588, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 593, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 598, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 603, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 608, i32 39 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 614, i32 55 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 623, i32 48 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 224, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 251, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 260, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 296, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 305, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 87, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 496, i32 47 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 498, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 510, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 473, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 476, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 485, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 347, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [10 x i8] c"riva_data\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 104, i32 32 }
@___asan_gen_.221 = private unnamed_addr constant [15 x i8] c"pronto_v1_data\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 116, i32 32 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"pronto_v2_data\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 130, i32 32 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 109, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 110, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 111, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 120, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [35 x i8] c"../drivers/remoteproc/qcom_wcnss.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 120, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_wcnss_driver_exit, ptr @__initcall__kmod_qcom_wcnss_pil__290_684_wcnss_driver_init6, ptr @wcnss_alloc_memory_region._entry, ptr @wcnss_alloc_memory_region._entry.37, ptr @wcnss_alloc_memory_region._entry_ptr, ptr @wcnss_alloc_memory_region._entry_ptr.39, ptr @wcnss_driver_exit, ptr @wcnss_fatal_interrupt._entry, ptr @wcnss_fatal_interrupt._entry_ptr, ptr @wcnss_probe._entry, ptr @wcnss_probe._entry.8, ptr @wcnss_probe._entry_ptr, ptr @wcnss_probe._entry_ptr.10, ptr @wcnss_request_irq._entry, ptr @wcnss_request_irq._entry.44, ptr @wcnss_request_irq._entry_ptr, ptr @wcnss_request_irq._entry_ptr.46, ptr @wcnss_start._entry, ptr @wcnss_start._entry.22, ptr @wcnss_start._entry.25, ptr @wcnss_start._entry_ptr, ptr @wcnss_start._entry_ptr.24, ptr @wcnss_start._entry_ptr.27, ptr @wcnss_stop._entry, ptr @wcnss_stop._entry.30, ptr @wcnss_stop._entry_ptr, ptr @wcnss_stop._entry_ptr.32, ptr @wcnss_driver, ptr @.str, ptr @wcnss_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wcnss_ops, ptr @.str.9, ptr @wcnss_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @riva_data, ptr @pronto_v1_data, ptr @pronto_v2_data, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.compoundliteral, ptr @.str.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_start._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_stop._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_alloc_memory_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_alloc_memory_region._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_request_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_fatal_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pronto_v1_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pronto_v2_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wcnss_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcnss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @wcnss_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %r.i = alloca %struct.resource, align 4
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #9
  %0 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %fw_name, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %call1 = tail call zeroext i1 @qcom_scm_is_available() #9
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @qcom_scm_pas_supported(i32 noundef 6) #9
  br i1 %call2, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call7 = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %fw_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp sgt i32 %call7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, -22
  %or.cond = or i1 %cmp, %cmp8.not
  br i1 %or.cond, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %5 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_name, align 4
  %call12 = call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %4, ptr noundef nonnull @wcnss_ops, ptr noundef %6, i32 noundef 332) #9
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = call i32 @rproc_coredump_set_elf_info(ptr noundef nonnull %call12, i8 noundef zeroext 1, i16 noundef zeroext 0) #9
  %priv = getelementptr inbounds %struct.rproc, ptr %call12, i32 0, i32 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %8, align 4
  %rproc22 = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %rproc22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %rproc22, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %driver_data.i.i, align 4
  %start_done = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 18
  %12 = ptrtoint ptr %start_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %start_done, align 4
  %wait.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 18, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #9
  %stop_done = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 19
  %13 = ptrtoint ptr %stop_done to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %stop_done, align 4
  %wait.i193 = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 19, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i193, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #9
  %iris_lock = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 12
  call void @__mutex_init(ptr noundef %iris_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @wcnss_probe.__key) #9
  %call26 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.12) #9
  %call28 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call26) #9
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call28 to i32
  br label %free_rproc

if.end32:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #9
  %15 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %16 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %21 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end32
  %22 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35) #12
  br label %wcnss_alloc_memory_region.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull %r.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.wcnss_alloc_memory_region.exit.thread_crit_edge

if.end.i.wcnss_alloc_memory_region.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_alloc_memory_region.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r.i, align 4
  %mem_reloc.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 21
  %28 = ptrtoint ptr %mem_reloc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mem_reloc.i, align 4
  %mem_phys.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 20
  %29 = ptrtoint ptr %mem_phys.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %mem_phys.i, align 4
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %15, align 4
  %sub.i.i = sub i32 1, %27
  %add.i.i = add i32 %31, %sub.i.i
  %mem_size.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 23
  %32 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i.i, ptr %mem_size.i, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %8, align 4
  %call10.i = call ptr @devm_ioremap_wc(ptr noundef %34, i32 noundef %27, i32 noundef %add.i.i) #9
  %mem_region.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 22
  %35 = ptrtoint ptr %mem_region.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call10.i, ptr %mem_region.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end36

do.end16.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %8, align 4
  %38 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.38, ptr noundef nonnull %r.i, i32 noundef %39) #12
  br label %wcnss_alloc_memory_region.exit.thread

wcnss_alloc_memory_region.exit.thread:            ; preds = %do.end16.i, %if.end.i.wcnss_alloc_memory_region.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.wcnss_alloc_memory_region.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -16, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #9
  br label %free_rproc

if.end36:                                         ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #9
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %call28, i32 %41
  %pmu_cfg = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 2
  %42 = ptrtoint ptr %pmu_cfg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %pmu_cfg, align 4
  %spare_offset = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %spare_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %spare_offset, align 4
  %add.ptr37 = getelementptr i8, ptr %call28, i32 %44
  %spare_out = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 3
  %45 = ptrtoint ptr %spare_out to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr37, ptr %spare_out, align 4
  %pd_names = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 2
  %46 = ptrtoint ptr %pd_names to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pd_names, align 4
  %tobool.not.i194 = icmp eq ptr %47, null
  br i1 %tobool.not.i194, label %if.end36.wcnss_init_pds.exit.thread214_crit_edge, label %if.end.i196

if.end36.wcnss_init_pds.exit.thread214_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_init_pds.exit.thread214

if.end.i196:                                      ; preds = %if.end36
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %8, align 4
  %call.i = call ptr @dev_pm_domain_attach_by_name(ptr noundef %49, ptr noundef nonnull %47) #9
  %arrayidx2.i = getelementptr %struct.qcom_wcnss, ptr %8, i32 0, i32 14, i32 0
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %arrayidx2.i, align 4
  %tobool.not.i.i195 = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i195, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then6.thread.i, label %for.inc18.i

if.then6.thread.i:                                ; preds = %if.end.i196
  br i1 %tobool.not.i.i195, label %if.then6.thread.i.lor.lhs.false_crit_edge, label %if.then6.thread.i.wcnss_init_pds.exit_crit_edge

if.then6.thread.i.wcnss_init_pds.exit_crit_edge:  ; preds = %if.then6.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_init_pds.exit

if.then6.thread.i.lor.lhs.false_crit_edge:        ; preds = %if.then6.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.body13.i:                                     ; preds = %if.end.1.i
  %51 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx2.i, align 4
  call void @dev_pm_domain_detach(ptr noundef %52, i1 noundef zeroext false) #9
  br i1 %tobool.not.i.1.i, label %for.body13.i.lor.lhs.false_crit_edge, label %for.body13.i.wcnss_init_pds.exit_crit_edge

for.body13.i.wcnss_init_pds.exit_crit_edge:       ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_init_pds.exit

for.body13.i.lor.lhs.false_crit_edge:             ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.inc18.i:                                      ; preds = %if.end.i196
  %arrayidx.1.i = getelementptr %struct.wcnss_data, ptr %call, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %54, null
  br i1 %tobool.not.1.i, label %for.inc18.i.wcnss_init_pds.exit.thread214_crit_edge, label %if.end.1.i

for.inc18.i.wcnss_init_pds.exit.thread214_crit_edge: ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_init_pds.exit.thread214

if.end.1.i:                                       ; preds = %for.inc18.i
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %8, align 4
  %call.1.i = call ptr @dev_pm_domain_attach_by_name(ptr noundef %56, ptr noundef nonnull %54) #9
  %arrayidx2.1.i = getelementptr %struct.qcom_wcnss, ptr %8, i32 0, i32 14, i32 1
  %57 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.1.i, ptr %arrayidx2.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %call.1.i, null
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i.1.i
  br i1 %spec.select.i.1.i, label %for.body13.i, label %if.end.1.i.wcnss_init_pds.exit.thread214_crit_edge

if.end.1.i.wcnss_init_pds.exit.thread214_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_init_pds.exit.thread214

wcnss_init_pds.exit.thread214:                    ; preds = %if.end.1.i.wcnss_init_pds.exit.thread214_crit_edge, %for.inc18.i.wcnss_init_pds.exit.thread214_crit_edge, %if.end36.wcnss_init_pds.exit.thread214_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end36.wcnss_init_pds.exit.thread214_crit_edge ], [ 1, %for.inc18.i.wcnss_init_pds.exit.thread214_crit_edge ], [ 2, %if.end.1.i.wcnss_init_pds.exit.thread214_crit_edge ]
  %num_pds.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 15
  %58 = ptrtoint ptr %num_pds.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.0.lcssa.i, ptr %num_pds.i, align 4
  br label %if.end44

wcnss_init_pds.exit:                              ; preds = %for.body13.i.wcnss_init_pds.exit_crit_edge, %if.then6.thread.i.wcnss_init_pds.exit_crit_edge
  %retval.0.i197.in = phi ptr [ %call.1.i, %for.body13.i.wcnss_init_pds.exit_crit_edge ], [ %call.i, %if.then6.thread.i.wcnss_init_pds.exit_crit_edge ]
  %retval.0.i197 = ptrtoint ptr %retval.0.i197.in to i32
  %59 = zext i32 %retval.0.i197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i197, label %wcnss_init_pds.exit.free_rproc_crit_edge [
    i32 0, label %wcnss_init_pds.exit.if.end44_crit_edge
    i32 -61, label %wcnss_init_pds.exit.lor.lhs.false_crit_edge
  ]

wcnss_init_pds.exit.lor.lhs.false_crit_edge:      ; preds = %wcnss_init_pds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

wcnss_init_pds.exit.if.end44_crit_edge:           ; preds = %wcnss_init_pds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

wcnss_init_pds.exit.free_rproc_crit_edge:         ; preds = %wcnss_init_pds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

lor.lhs.false:                                    ; preds = %wcnss_init_pds.exit.lor.lhs.false_crit_edge, %for.body13.i.lor.lhs.false_crit_edge, %if.then6.thread.i.lor.lhs.false_crit_edge
  %num_pd_vregs = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 5
  %60 = ptrtoint ptr %num_pd_vregs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_pd_vregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool42.not = icmp eq i32 %61, 0
  br i1 %tobool42.not, label %lor.lhs.false.free_rproc_crit_edge, label %lor.lhs.false.if.end44_crit_edge

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

lor.lhs.false.free_rproc_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

if.end44:                                         ; preds = %lor.lhs.false.if.end44_crit_edge, %wcnss_init_pds.exit.if.end44_crit_edge, %wcnss_init_pds.exit.thread214
  %vregs = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 3
  %62 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vregs, align 4
  %num_vregs = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 4
  %64 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_vregs, align 4
  %num_pd_vregs45 = getelementptr inbounds %struct.wcnss_data, ptr %call, i32 0, i32 5
  %66 = ptrtoint ptr %num_pd_vregs45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_pd_vregs45, align 4
  %num_pds.i198 = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 15
  %68 = ptrtoint ptr %num_pds.i198 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_pds.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i199 = icmp eq i32 %69, 0
  %info.addr.0.idx.i = select i1 %tobool.not.i199, i32 0, i32 %67
  %info.addr.0.i = getelementptr %struct.wcnss_vreg_info, ptr %63, i32 %info.addr.0.idx.i
  %add.i = select i1 %tobool.not.i199, i32 %67, i32 0
  %num_vregs.addr.0.i = add i32 %add.i, %65
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_vregs.addr.0.i, i32 12) #9
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %if.end44.detach_pds_crit_edge, label %devm_kcalloc.exit.i, !prof !130

if.end44.detach_pds_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

devm_kcalloc.exit.i:                              ; preds = %if.end44
  %72 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %8, align 4
  %74 = extractvalue { i32, i1 } %70, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %73, i32 noundef %74, i32 noundef 3520) #9
  %tobool1.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool1.not.i, label %devm_kcalloc.exit.i.detach_pds_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.detach_pds_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vregs.addr.0.i)
  %cmp74.not.i = icmp eq i32 %num_vregs.addr.0.i, 0
  br i1 %cmp74.not.i, label %for.end.thread.i, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.075.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wcnss_vreg_info, ptr %info.addr.0.i, i32 %i.075.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 %i.075.i
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_vregs.addr.0.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %8, align 4
  %call6.i = call i32 @devm_regulator_bulk_get(ptr noundef %79, i32 noundef %num_vregs.addr.0.i, ptr noundef nonnull %call5.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.end.i.for.body12.i_crit_edge, label %for.end.i.detach_pds_crit_edge

for.end.i.detach_pds_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

for.end.i.for.body12.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body12.i

for.end.thread.i:                                 ; preds = %for.cond.preheader.i
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %8, align 4
  %call681.i = call i32 @devm_regulator_bulk_get(ptr noundef %81, i32 noundef 0, ptr noundef nonnull %call5.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call681.i)
  %tobool7.not82.i = icmp eq i32 %call681.i, 0
  br i1 %tobool7.not82.i, label %for.end.thread.i.if.end49_crit_edge, label %for.end.thread.i.detach_pds_crit_edge

for.end.thread.i.detach_pds_crit_edge:            ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

for.end.thread.i.if.end49_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.body12.i:                                     ; preds = %for.inc31.i.for.body12.i_crit_edge, %for.end.i.for.body12.i_crit_edge
  %i.177.i = phi i32 [ %inc32.i, %for.inc31.i.for.body12.i_crit_edge ], [ 0, %for.end.i.for.body12.i_crit_edge ]
  %max_voltage.i = getelementptr %struct.wcnss_vreg_info, ptr %info.addr.0.i, i32 %i.177.i, i32 2
  %82 = ptrtoint ptr %max_voltage.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_voltage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool14.not.i = icmp eq i32 %83, 0
  br i1 %tobool14.not.i, label %for.body12.i.if.end21.i_crit_edge, label %if.then15.i

for.body12.i.if.end21.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then15.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 %i.177.i, i32 1
  %84 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %consumer.i, align 4
  %min_voltage.i = getelementptr %struct.wcnss_vreg_info, ptr %info.addr.0.i, i32 %i.177.i, i32 1
  %86 = ptrtoint ptr %min_voltage.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %min_voltage.i, align 4
  %call20.i = call i32 @regulator_set_voltage(ptr noundef %85, i32 noundef %87, i32 noundef %83) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %for.body12.i.if.end21.i_crit_edge
  %load_uA.i = getelementptr %struct.wcnss_vreg_info, ptr %info.addr.0.i, i32 %i.177.i, i32 3
  %88 = ptrtoint ptr %load_uA.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %load_uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool23.not.i = icmp eq i32 %89, 0
  br i1 %tobool23.not.i, label %if.end21.i.for.inc31.i_crit_edge, label %if.then24.i

if.end21.i.for.inc31.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %consumer26.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 %i.177.i, i32 1
  %90 = ptrtoint ptr %consumer26.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %consumer26.i, align 4
  %call29.i = call i32 @regulator_set_load(ptr noundef %91, i32 noundef %89) #9
  br label %for.inc31.i

for.inc31.i:                                      ; preds = %if.then24.i, %if.end21.i.for.inc31.i_crit_edge
  %inc32.i = add nuw nsw i32 %i.177.i, 1
  %exitcond80.not.i = icmp eq i32 %inc32.i, %num_vregs.addr.0.i
  br i1 %exitcond80.not.i, label %for.inc31.i.if.end49_crit_edge, label %for.inc31.i.for.body12.i_crit_edge

for.inc31.i.for.body12.i_crit_edge:               ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.inc31.i.if.end49_crit_edge:                   ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %for.inc31.i.if.end49_crit_edge, %for.end.thread.i.if.end49_crit_edge
  %vregs.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 16
  %92 = ptrtoint ptr %vregs.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call5.i.i.i, ptr %vregs.i, align 4
  %num_vregs34.i = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 17
  %93 = ptrtoint ptr %num_vregs34.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %num_vregs.addr.0.i, ptr %num_vregs34.i, align 4
  %call50 = call fastcc i32 @wcnss_request_irq(ptr noundef %8, ptr noundef %pdev, ptr noundef nonnull @.str.13, i1 noundef zeroext false, ptr noundef nonnull @wcnss_wdog_interrupt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.detach_pds_crit_edge, label %if.end53

if.end49.detach_pds_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

if.end53:                                         ; preds = %if.end49
  %wdog_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 5
  %94 = ptrtoint ptr %wdog_irq to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call50, ptr %wdog_irq, align 4
  %call54 = call fastcc i32 @wcnss_request_irq(ptr noundef %8, ptr noundef %pdev, ptr noundef nonnull @.str.14, i1 noundef zeroext false, ptr noundef nonnull @wcnss_fatal_interrupt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.detach_pds_crit_edge, label %if.end57

if.end53.detach_pds_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

if.end57:                                         ; preds = %if.end53
  %fatal_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 6
  %95 = ptrtoint ptr %fatal_irq to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call54, ptr %fatal_irq, align 4
  %call58 = call fastcc i32 @wcnss_request_irq(ptr noundef %8, ptr noundef %pdev, ptr noundef nonnull @.str.15, i1 noundef zeroext true, ptr noundef nonnull @wcnss_ready_interrupt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.detach_pds_crit_edge, label %if.end61

if.end57.detach_pds_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

if.end61:                                         ; preds = %if.end57
  %ready_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 7
  %96 = ptrtoint ptr %ready_irq to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call58, ptr %ready_irq, align 4
  %call62 = call fastcc i32 @wcnss_request_irq(ptr noundef %8, ptr noundef %pdev, ptr noundef nonnull @.str.16, i1 noundef zeroext true, ptr noundef nonnull @wcnss_handover_interrupt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.detach_pds_crit_edge, label %if.end65

if.end61.detach_pds_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

if.end65:                                         ; preds = %if.end61
  %handover_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 8
  %97 = ptrtoint ptr %handover_irq to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call62, ptr %handover_irq, align 4
  %call66 = call fastcc i32 @wcnss_request_irq(ptr noundef %8, ptr noundef %pdev, ptr noundef nonnull @.str.17, i1 noundef zeroext true, ptr noundef nonnull @wcnss_stop_ack_interrupt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.detach_pds_crit_edge, label %if.end69

if.end65.detach_pds_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %detach_pds

if.end69:                                         ; preds = %if.end65
  %stop_ack_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 9
  %98 = ptrtoint ptr %stop_ack_irq to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call66, ptr %stop_ack_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool71.not = icmp eq i32 %call66, 0
  br i1 %tobool71.not, label %if.end69.if.end81_crit_edge, label %if.then72

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then72:                                        ; preds = %if.end69
  %stop_bit = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 11
  %call74 = call ptr @devm_qcom_smem_state_get(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %stop_bit) #9
  %state = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 10
  %99 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call74, ptr %state, align 4
  %cmp.i201 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then77, label %if.then72.if.end81_crit_edge

if.then72.if.end81_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %call74 to i32
  br label %detach_pds

if.end81:                                         ; preds = %if.then72.if.end81_crit_edge, %if.end69.if.end81_crit_edge
  %smd_subdev = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 24
  call void @qcom_add_smd_subdev(ptr noundef nonnull %call12, ptr noundef %smd_subdev) #9
  %call82 = call ptr @qcom_add_sysmon_subdev(ptr noundef nonnull %call12, ptr noundef nonnull @.str.19, i32 noundef 19) #9
  %sysmon = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 25
  %101 = ptrtoint ptr %sysmon to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call82, ptr %sysmon, align 4
  %cmp.i202 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %call82 to i32
  br label %detach_pds

if.end88:                                         ; preds = %if.end81
  %use_48mhz_xo = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 4
  %call90 = call ptr @qcom_iris_probe(ptr noundef %dev, ptr noundef %use_48mhz_xo) #9
  %iris = getelementptr inbounds %struct.qcom_wcnss, ptr %8, i32 0, i32 13
  %103 = ptrtoint ptr %iris to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call90, ptr %iris, align 4
  %cmp.i203 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %call90 to i32
  br label %detach_pds

if.end96:                                         ; preds = %if.end88
  %call97 = call i32 @rproc_add(ptr noundef nonnull %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end96.cleanup_crit_edge, label %remove_iris

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

remove_iris:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %iris to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %iris, align 4
  call void @qcom_iris_remove(ptr noundef %106) #9
  br label %detach_pds

detach_pds:                                       ; preds = %remove_iris, %if.then93, %if.then85, %if.then77, %if.end65.detach_pds_crit_edge, %if.end61.detach_pds_crit_edge, %if.end57.detach_pds_crit_edge, %if.end53.detach_pds_crit_edge, %if.end49.detach_pds_crit_edge, %for.end.thread.i.detach_pds_crit_edge, %for.end.i.detach_pds_crit_edge, %devm_kcalloc.exit.i.detach_pds_crit_edge, %if.end44.detach_pds_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end49.detach_pds_crit_edge ], [ %call54, %if.end53.detach_pds_crit_edge ], [ %call58, %if.end57.detach_pds_crit_edge ], [ %call62, %if.end61.detach_pds_crit_edge ], [ %call66, %if.end65.detach_pds_crit_edge ], [ %100, %if.then77 ], [ %102, %if.then85 ], [ %104, %if.then93 ], [ %call97, %remove_iris ], [ %call681.i, %for.end.thread.i.detach_pds_crit_edge ], [ -12, %if.end44.detach_pds_crit_edge ], [ %call6.i, %for.end.i.detach_pds_crit_edge ], [ -12, %devm_kcalloc.exit.i.detach_pds_crit_edge ]
  %107 = ptrtoint ptr %num_pds.i198 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_pds.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp4.not.i = icmp eq i32 %108, 0
  br i1 %cmp4.not.i, label %detach_pds.free_rproc_crit_edge, label %detach_pds.for.body.i208_crit_edge

detach_pds.for.body.i208_crit_edge:               ; preds = %detach_pds
  br label %for.body.i208

detach_pds.free_rproc_crit_edge:                  ; preds = %detach_pds
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

for.body.i208:                                    ; preds = %for.body.i208.for.body.i208_crit_edge, %detach_pds.for.body.i208_crit_edge
  %i.05.i = phi i32 [ %inc.i206, %for.body.i208.for.body.i208_crit_edge ], [ 0, %detach_pds.for.body.i208_crit_edge ]
  %arrayidx.i205 = getelementptr %struct.qcom_wcnss, ptr %8, i32 0, i32 14, i32 %i.05.i
  %109 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i205, align 4
  call void @dev_pm_domain_detach(ptr noundef %110, i1 noundef zeroext false) #9
  %inc.i206 = add nuw i32 %i.05.i, 1
  %111 = ptrtoint ptr %num_pds.i198 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_pds.i198, align 4
  %cmp.i207 = icmp ult i32 %inc.i206, %112
  br i1 %cmp.i207, label %for.body.i208.for.body.i208_crit_edge, label %for.body.i208.free_rproc_crit_edge

for.body.i208.free_rproc_crit_edge:               ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

for.body.i208.for.body.i208_crit_edge:            ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i208

free_rproc:                                       ; preds = %for.body.i208.free_rproc_crit_edge, %detach_pds.free_rproc_crit_edge, %lor.lhs.false.free_rproc_crit_edge, %wcnss_init_pds.exit.free_rproc_crit_edge, %wcnss_alloc_memory_region.exit.thread, %if.then30
  %ret.1 = phi i32 [ %14, %if.then30 ], [ -61, %lor.lhs.false.free_rproc_crit_edge ], [ %retval.0.i197, %wcnss_init_pds.exit.free_rproc_crit_edge ], [ %retval.0.i.ph, %wcnss_alloc_memory_region.exit.thread ], [ %ret.0, %detach_pds.free_rproc_crit_edge ], [ %ret.0, %for.body.i208.free_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end96.cleanup_crit_edge, %do.end16, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_rproc ], [ -12, %do.end16 ], [ -6, %do.end ], [ -517, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iris = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %iris to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iris, align 4
  tail call void @qcom_iris_remove(ptr noundef %3) #9
  %rproc = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rproc, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %5) #9
  %sysmon = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysmon, align 4
  tail call void @qcom_remove_sysmon_subdev(ptr noundef %7) #9
  %8 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc, align 4
  %smd_subdev = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 24
  tail call void @qcom_remove_smd_subdev(ptr noundef %9, ptr noundef %smd_subdev) #9
  %num_pds.i = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %num_pds.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.not.i = icmp eq i32 %11, 0
  br i1 %cmp4.not.i, label %entry.wcnss_release_pds.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.wcnss_release_pds.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_release_pds.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qcom_wcnss, ptr %1, i32 0, i32 14, i32 %i.05.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %13, i1 noundef zeroext false) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %14 = ptrtoint ptr %num_pds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pds.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.wcnss_release_pds.exit_crit_edge

for.body.i.wcnss_release_pds.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_release_pds.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

wcnss_release_pds.exit:                           ; preds = %for.body.i.wcnss_release_pds.exit_crit_edge, %entry.wcnss_release_pds.exit_crit_edge
  %16 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rproc, align 4
  tail call void @rproc_free(ptr noundef %17) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_pas_supported(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_set_elf_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcnss_request_irq(ptr noundef %wcnss, ptr noundef %pdev, ptr noundef %name, i1 noundef zeroext %optional, ptr noundef %thread_fn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %brmerge.demorgan = and i1 %cmp, %optional
  br i1 %brmerge.demorgan, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcnss_request_irq.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcnss_request_irq, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !131

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcnss_request_irq.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %name) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.43, ptr noundef %name) #12
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %call16 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev12, i32 noundef %call, ptr noundef null, ptr noundef %thread_fn, i32 noundef 8193, ptr noundef nonnull @.str.19, ptr noundef %wcnss) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %do.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.45, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end14.cleanup_crit_edge, %do.end11, %if.then6, %do.body
  %retval.0 = phi i32 [ %call, %do.end11 ], [ 0, %if.then6 ], [ %call16, %do.end21 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_wdog_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr inbounds %struct.qcom_wcnss, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  tail call void @rproc_report_crash(ptr noundef %1, i32 noundef 1) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_fatal_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !132
  %call = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 422, ptr noundef nonnull %len) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true2.if.end_crit_edge, label %do.end

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rproc = getelementptr inbounds %struct.qcom_wcnss, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rproc, align 4
  call void @rproc_report_crash(ptr noundef %8, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_ready_interrupt(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %start_done = getelementptr inbounds %struct.qcom_wcnss, ptr %dev, i32 0, i32 18
  tail call void @complete(ptr noundef %start_done) #9
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcnss_handover_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_stop_ack_interrupt(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_done = getelementptr inbounds %struct.qcom_wcnss, ptr %dev, i32 0, i32 19
  tail call void @complete(ptr noundef %stop_done) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_qcom_smem_state_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_add_sysmon_subdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_iris_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_iris_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %iris_lock = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %iris_lock, i32 noundef 0) #9
  %iris = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %iris to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iris, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_pds = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %num_pds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp92.not = icmp eq i32 %5, 0
  br i1 %cmp92.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20) #12
  br label %release_iris_lock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qcom_wcnss, ptr %1, i32 0, i32 14, i32 %i.093
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %9, i32 noundef 2147483647) #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.disable_pds_crit_edge, label %do.end11.i.i.i.i

if.then5.disable_pds_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pds

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  br label %disable_pds

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.093, 1
  %15 = ptrtoint ptr %num_pds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pds, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %num_vregs = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vregs, align 4
  %vregs = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vregs, align 4
  %call9 = tail call i32 @regulator_bulk_enable(i32 noundef %18, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.end.disable_pds_crit_edge

for.end.disable_pds_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pds

if.end12:                                         ; preds = %for.end
  %21 = ptrtoint ptr %iris to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iris, align 4
  %call14 = tail call i32 @qcom_iris_enable(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.disable_regulators_crit_edge

if.end12.disable_regulators_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_regulators

if.end17:                                         ; preds = %if.end12
  %spare_out.i = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %spare_out.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spare_out.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  %26 = or i32 %25, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %spare_out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spare_out.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %pmu_cfg.i = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #9, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 805306368) #9, !srcloc !139
  %use_48mhz_xo.i = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %use_48mhz_xo.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_48mhz_xo.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %..i = select i1 %tobool.not.i, i32 805306368, i32 905969664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %..i) #9, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %37 = or i32 %..i, -2147483648
  %38 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !139
  %40 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pmu_cfg.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not86.i = icmp eq i32 %43, 0
  br i1 %tobool18.not86.i, label %if.end17.while.end.i_crit_edge, label %if.end17.do.end23.i_crit_edge

if.end17.do.end23.i_crit_edge:                    ; preds = %if.end17
  br label %do.end23.i

if.end17.while.end.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %if.end17.do.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !147
  %44 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pmu_cfg.i, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %47 = and i32 %46, 65536
  %tobool18.not.i = icmp eq i32 %47, 0
  br i1 %tobool18.not.i, label %do.end23.i.while.end.i_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

do.end23.i.while.end.i_crit_edge:                 ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end23.i.while.end.i_crit_edge, %if.end17.while.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %..i) #9, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %50 = or i32 %..i, 134217728
  %51 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !139
  %53 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pmu_cfg.i, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %56 = and i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool46.not87.i = icmp eq i32 %56, 0
  br i1 %tobool46.not87.i, label %while.end.i.wcnss_configure_iris.exit_crit_edge, label %while.end.i.do.end52.i_crit_edge

while.end.i.do.end52.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end52.i

while.end.i.wcnss_configure_iris.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_configure_iris.exit

do.end52.i:                                       ; preds = %do.end52.i.do.end52.i_crit_edge, %while.end.i.do.end52.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !152
  %57 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmu_cfg.i, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %60 = and i32 %59, 1073741824
  %tobool46.not.i = icmp eq i32 %60, 0
  br i1 %tobool46.not.i, label %do.end52.i.wcnss_configure_iris.exit_crit_edge, label %do.end52.i.do.end52.i_crit_edge

do.end52.i.do.end52.i_crit_edge:                  ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

do.end52.i.wcnss_configure_iris.exit_crit_edge:   ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcnss_configure_iris.exit

wcnss_configure_iris.exit:                        ; preds = %do.end52.i.wcnss_configure_iris.exit_crit_edge, %while.end.i.wcnss_configure_iris.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %61 = and i32 %..i, 369098752
  %62 = ptrtoint ptr %pmu_cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pmu_cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #9, !srcloc !139
  tail call void @msleep(i32 noundef 20) #9
  %call18 = tail call i32 @qcom_scm_pas_auth_and_reset(i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %wcnss_configure_iris.exit
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.23) #12
  br label %disable_iris

if.end25:                                         ; preds = %wcnss_configure_iris.exit
  %start_done = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 18
  %call27 = tail call i32 @wait_for_completion_timeout(ptr noundef %start_done, i32 noundef 500) #9
  %ready_irq = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %ready_irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ready_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp28 = icmp sgt i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp eq i32 %call27, 0
  %or.cond = select i1 %cmp28, i1 %cmp29, i1 false
  br i1 %or.cond, label %do.end33, label %if.end25.disable_iris_crit_edge

if.end25.disable_iris_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_iris

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.26) #12
  %call35 = tail call i32 @qcom_scm_pas_shutdown(i32 noundef 6) #9
  br label %disable_iris

disable_iris:                                     ; preds = %do.end33, %if.end25.disable_iris_crit_edge, %do.end23
  %ret.0 = phi i32 [ %call18, %do.end23 ], [ -110, %do.end33 ], [ 0, %if.end25.disable_iris_crit_edge ]
  %70 = ptrtoint ptr %iris to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iris, align 4
  tail call void @qcom_iris_disable(ptr noundef %71) #9
  br label %disable_regulators

disable_regulators:                               ; preds = %disable_iris, %if.end12.disable_regulators_crit_edge
  %ret.1 = phi i32 [ %call14, %if.end12.disable_regulators_crit_edge ], [ %ret.0, %disable_iris ]
  %72 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_vregs, align 4
  %74 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vregs, align 4
  %call40 = tail call i32 @regulator_bulk_disable(i32 noundef %73, ptr noundef %75) #9
  br label %disable_pds

disable_pds:                                      ; preds = %disable_regulators, %for.end.disable_pds_crit_edge, %do.end11.i.i.i.i, %if.then5.disable_pds_crit_edge
  %i.091 = phi i32 [ %i.0.lcssa, %for.end.disable_pds_crit_edge ], [ %i.0.lcssa, %disable_regulators ], [ %i.093, %if.then5.disable_pds_crit_edge ], [ %i.093, %do.end11.i.i.i.i ]
  %ret.2 = phi i32 [ %call9, %for.end.disable_pds_crit_edge ], [ %ret.1, %disable_regulators ], [ %call.i, %if.then5.disable_pds_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  %i.194 = add i32 %i.091, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.194)
  %cmp4295 = icmp sgt i32 %i.194, -1
  br i1 %cmp4295, label %disable_pds.for.body43_crit_edge, label %disable_pds.release_iris_lock_crit_edge

disable_pds.release_iris_lock_crit_edge:          ; preds = %disable_pds
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_iris_lock

disable_pds.for.body43_crit_edge:                 ; preds = %disable_pds
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %disable_pds.for.body43_crit_edge
  %i.196 = phi i32 [ %i.1, %for.body43.for.body43_crit_edge ], [ %i.194, %disable_pds.for.body43_crit_edge ]
  %arrayidx45 = getelementptr %struct.qcom_wcnss, ptr %1, i32 0, i32 14, i32 %i.196
  %76 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx45, align 4
  %call.i89 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 5) #9
  %78 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx45, align 4
  %call49 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %79, i32 noundef 0) #9
  %i.1 = add nsw i32 %i.196, -1
  %cmp42 = icmp sgt i32 %i.196, 0
  br i1 %cmp42, label %for.body43.for.body43_crit_edge, label %for.body43.release_iris_lock_crit_edge

for.body43.release_iris_lock_crit_edge:           ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_iris_lock

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

release_iris_lock:                                ; preds = %for.body43.release_iris_lock_crit_edge, %disable_pds.release_iris_lock_crit_edge, %do.end
  %ret.3 = phi i32 [ -22, %do.end ], [ %ret.2, %disable_pds.release_iris_lock_crit_edge ], [ %ret.2, %for.body43.release_iris_lock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %iris_lock) #9
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %state = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %stop_bit = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %stop_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stop_bit, align 4
  %shl = shl nuw i32 1, %5
  %call = tail call i32 @qcom_smem_state_update_bits(ptr noundef nonnull %3, i32 noundef %shl, i32 noundef %shl) #9
  %stop_done = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 19
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %stop_done, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %10 = ptrtoint ptr %stop_bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stop_bit, align 4
  %shl9 = shl nuw i32 1, %11
  %call10 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %9, i32 noundef %shl9, i32 noundef 0) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %call12 = tail call i32 @qcom_scm_pas_shutdown(i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %do.end17

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %call12) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end11.if.end19_crit_edge
  ret i32 %call12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @wcnss_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mem_reloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_reloc, align 4
  %4 = trunc i64 %da to i32
  %conv1 = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp = icmp slt i32 %conv1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %conv1, %len
  %mem_size = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp3 = icmp ugt i32 %add, %6
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %mem_region = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 22
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
define internal i32 @wcnss_load(ptr nocapture noundef readonly %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %mem_region = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_region, align 4
  %mem_phys = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_phys, align 4
  %mem_size = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_size, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_wcnss, ptr %1, i32 0, i32 21
  %call = tail call i32 @qcom_mdt_load(ptr noundef %3, ptr noundef %fw, ptr noundef %5, i32 noundef 6, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %mem_reloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_phys, align 4
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size, align 4
  %call3 = tail call i32 @qcom_pil_info_store(ptr noundef nonnull @.str.19, i32 noundef %13, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_iris_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_shutdown(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_iris_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_state_update_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_pil_info_store(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_report_crash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_sysmon_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_smd_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_qcom_wcnss_pil__290_684_wcnss_driver_init6, !1, !"__initcall__kmod_qcom_wcnss_pil__290_684_wcnss_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 684, i32 1}
!2 = !{ptr @__exitcall_wcnss_driver_exit, !1, !"__exitcall_wcnss_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 686, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 687, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 679, i32 11}
!10 = !{ptr @wcnss_driver, !11, !"wcnss_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 675, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 520, i32 24}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 534, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wcnss_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wcnss_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 538, i32 51}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 546, i32 3}
!26 = !{ptr @wcnss_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wcnss_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @wcnss_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 559, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 561, i32 59}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 588, i32 39}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 593, i32 39}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 598, i32 39}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 603, i32 39}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 608, i32 39}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 614, i32 55}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 623, i32 48}
!47 = !{ptr @wcnss_ops, !48, !"wcnss_ops", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 322, i32 31}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 224, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wcnss_start._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @wcnss_start._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 251, i32 3}
!56 = !{ptr @wcnss_start._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wcnss_start._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 260, i32 3}
!60 = !{ptr @wcnss_start._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wcnss_start._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 296, i32 4}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wcnss_stop._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @wcnss_stop._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 305, i32 3}
!69 = !{ptr @wcnss_stop._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @wcnss_stop._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @init_completion.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/completion.h", i32 87, i32 2}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 496, i32 47}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 498, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @wcnss_alloc_memory_region._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @wcnss_alloc_memory_region._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 510, i32 3}
!83 = !{ptr @wcnss_alloc_memory_region._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wcnss_alloc_memory_region._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 473, i32 3}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @wcnss_request_irq.__UNIQUE_ID_ddebug289, !86, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 476, i32 3}
!92 = !{ptr @wcnss_request_irq._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wcnss_request_irq._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 485, i32 3}
!96 = !{ptr @wcnss_request_irq._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @wcnss_request_irq._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 347, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @wcnss_fatal_interrupt._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @wcnss_fatal_interrupt._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @wcnss_of_match, !104, !"wcnss_of_match", i1 false, i1 false}
!104 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 667, i32 34}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 109, i32 5}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 110, i32 5}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 111, i32 5}
!111 = !{ptr @riva_data, !112, !"riva_data", i1 false, i1 false}
!112 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 104, i32 32}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 120, i32 16}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 120, i32 22}
!117 = !{ptr @pronto_v1_data, !118, !"pronto_v1_data", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 116, i32 32}
!119 = !{ptr @pronto_v2_data, !120, !"pronto_v2_data", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/qcom_wcnss.c", i32 130, i32 32}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2148736209, i64 2148736214, i64 2148736227, i64 2148736271, i64 2148736305, i64 2148736326}
!132 = !{!"auto-init"}
!133 = !{i64 2148253813}
!134 = !{i64 738636, i64 738661, i64 738683, i64 738699, i64 738711, i64 738731, i64 738755, i64 738771, i64 738783}
!135 = !{i64 2148254001}
!136 = !{i64 4303088}
!137 = !{i64 2155227714}
!138 = !{i64 2155228011}
!139 = !{i64 4302670}
!140 = !{i64 2155228394}
!141 = !{i64 2155228935}
!142 = !{i8 0, i8 2}
!143 = !{i64 2155229996}
!144 = !{i64 2155230461}
!145 = !{i64 2155231107}
!146 = !{i64 2155231464}
!147 = !{i64 2155231306}
!148 = !{i64 2155231757}
!149 = !{i64 2155232222}
!150 = !{i64 2155232868}
!151 = !{i64 2155233225}
!152 = !{i64 2155233067}
!153 = !{i64 2155233600}
