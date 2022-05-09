; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/hidma.c_pt.bc'
source_filename = "../drivers/dma/qcom/hidma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hidma_dev = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.dma_device, ptr, ptr, %struct.tasklet_struct }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.hidma_chan = type { i8, i8, [16 x i8], i32, i32, ptr, ptr, %struct.dma_chan, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.hidma_desc = type { %struct.dma_async_tx_descriptor, %struct.list_head, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.74, %union.anon.75, %union.anon.76 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.77, %struct.anon.78, %union.anon.79 }
%union.anon.77 = type { i32 }
%struct.anon.78 = type { i16, i32 }
%union.anon.79 = type { ptr }

@__param_str_nr_desc_prm = internal constant [17 x i8] c"hdma.nr_desc_prm\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nr_desc_prm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nr_desc_prm = internal constant %struct.kernel_param { ptr @__param_str_nr_desc_prm, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @nr_desc_prm } }, section "__param", align 4
@__UNIQUE_ID_nr_desc_prmtype237 = internal constant [31 x i8] c"hdma.parmtype=nr_desc_prm:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_desc_prm238 = internal constant [57 x i8] c"hdma.parm=nr_desc_prm:number of descriptors (default: 0)\00", section ".modinfo", align 1
@__initcall__kmod_hdma__239_966_hidma_driver_init6 = internal global ptr @hidma_driver_init, section ".initcall6.init", align 4
@hidma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hidma_probe, ptr @hidma_remove, ptr @hidma_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hidma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hidma_driver_exit = internal global ptr @hidma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [32 x i8] c"hdma.file=drivers/dma/qcom/hdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [20 x i8] c"hdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hidma\00", [26 x i8] zeroinitializer }, align 32
@hidma_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hidma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hidma-1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hidma-1.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@hidma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dmadev->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/qcom/hidma.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"desc-count\00", [21 x i8] zeroinitializer }, align 32
@hidma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 825, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"overriding number of descriptors as %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hidma_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidma_probe._entry_ptr = internal global ptr @hidma_probe._entry, section ".printk_index", align 4
@hidma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 840, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to set coherent mask to 64\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hidma_probe._entry_ptr.11 = internal global ptr @hidma_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-hidma\00", [21 x i8] zeroinitializer }, align 32
@hidma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 879, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HI-DMA engine driver registration complete\0A\00", [52 x i8] zeroinitializer }, align 32
@hidma_probe._entry_ptr.15 = internal global ptr @hidma_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA engine\00", [21 x i8] zeroinitializer }, align 32
@hidma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 370, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"channel alloc failed at %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hidma_alloc_chan_resources\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hidma_alloc_chan_resources._entry_ptr = internal global ptr @hidma_alloc_chan_resources._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hidma_terminate_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 483, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"channel did not pause\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hidma_terminate_channel\00", [40 x i8] zeroinitializer }, align 32
@hidma_terminate_channel._entry_ptr = internal global ptr @hidma_terminate_channel._entry, section ".printk_index", align 4
@hidma_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 561, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"channel did not stop\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hidma_pause\00", [20 x i8] zeroinitializer }, align 32
@hidma_pause._entry_ptr = internal global ptr @hidma_pause._entry, section ".printk_index", align 4
@hidma_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 584, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume the channel\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hidma_resume\00", [19 x i8] zeroinitializer }, align 32
@hidma_resume._entry_ptr = internal global ptr @hidma_resume._entry, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-hidma-msi\00", [17 x i8] zeroinitializer }, align 32
@hidma_request_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 723, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to request MSI irq, falling back to wired IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidma_request_msi\00", [46 x i8] zeroinitializer }, align 32
@hidma_request_msi._entry_ptr = internal global ptr @hidma_request_msi._entry, section ".printk_index", align 4
@hidma_chan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mchan->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chid\00", [27 x i8] zeroinitializer }, align 32
@hidma_create_sysfs_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@hidma_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 929, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HI-DMA engine removed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hidma_remove\00", [19 x i8] zeroinitializer }, align 32
@hidma_remove._entry_ptr = internal global ptr @hidma_remove._entry, section ".printk_index", align 4
@hidma_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 902, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HI-DMA engine shutdown\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hidma_shutdown\00", [17 x i8] zeroinitializer }, align 32
@hidma_shutdown._entry_ptr = internal global ptr @hidma_shutdown._entry, section ".printk_index", align 4
@hidma_shutdown._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.35, ptr @.str.2, i32 906, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@hidma_shutdown._entry_ptr.37 = internal global ptr @hidma_shutdown._entry.36, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"nr_desc_prm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 98, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"hidma_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 955, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 960, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"hidma_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 946, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 789, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 795, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 820, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 824, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 840, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 861, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 879, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 366, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 369, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 483, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 561, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 583, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 708, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 722, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 656, i32 50 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 649, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 621, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 929, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 902, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private constant [28 x i8] c"../drivers/dma/qcom/hidma.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 906, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_nr_desc_prm238, ptr @__UNIQUE_ID_nr_desc_prmtype237, ptr @__exitcall_hidma_driver_exit, ptr @__initcall__kmod_hdma__239_966_hidma_driver_init6, ptr @__param_nr_desc_prm, ptr @hidma_alloc_chan_resources._entry, ptr @hidma_alloc_chan_resources._entry_ptr, ptr @hidma_driver_exit, ptr @hidma_pause._entry, ptr @hidma_pause._entry_ptr, ptr @hidma_probe._entry, ptr @hidma_probe._entry.13, ptr @hidma_probe._entry.8, ptr @hidma_probe._entry_ptr, ptr @hidma_probe._entry_ptr.11, ptr @hidma_probe._entry_ptr.15, ptr @hidma_remove._entry, ptr @hidma_remove._entry_ptr, ptr @hidma_request_msi._entry, ptr @hidma_request_msi._entry_ptr, ptr @hidma_resume._entry, ptr @hidma_resume._entry_ptr, ptr @hidma_shutdown._entry, ptr @hidma_shutdown._entry.36, ptr @hidma_shutdown._entry_ptr, ptr @hidma_shutdown._entry_ptr.37, ptr @hidma_terminate_channel._entry, ptr @hidma_terminate_channel._entry_ptr, ptr @nr_desc_prm, ptr @hidma_driver, ptr @.str, ptr @hidma_match, ptr @hidma_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @hidma_chan_init.__key, ptr @.str.29, ptr @.str.30, ptr @hidma_create_sysfs_entry.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_desc_prm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_terminate_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_request_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_chan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_create_sysfs_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_shutdown._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hidma_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @hidma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call4) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.bailout_crit_edge, label %if.end

entry.bailout_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bailout

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #11
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #11
  %cmp.i276 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.end.bailout_crit_edge, label %if.end13

if.end.bailout_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bailout

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.bailout_crit_edge, label %if.end16

if.end13.bailout_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %bailout

if.end16:                                         ; preds = %if.end13
  %call.i277 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 476, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i277, null
  br i1 %tobool.not, label %if.end16.bailout_crit_edge, label %if.end20

if.end16.bailout_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %bailout

if.end20:                                         ; preds = %if.end16
  %ddev = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10
  %channels = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %channels, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hidma_probe.__key, i16 noundef signext 3) #11
  %dev24 = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 15
  %2 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev24, align 4
  %call.i278 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %cap_mask = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cap_mask) #11
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %tobool32.not = icmp eq ptr %4, null
  br i1 %tobool32.not, label %do.end45, label %if.end60, !prof !106

do.end45:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 795, i32 noundef 9, ptr noundef null) #11
  br label %if.then173

if.end60:                                         ; preds = %if.end20
  %dev_evca = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 7
  %5 = ptrtoint ptr %dev_evca to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %dev_evca, align 4
  %evca_resource61 = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 8
  %6 = ptrtoint ptr %evca_resource61 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %evca_resource61, align 4
  %dev_trca = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 5
  %7 = ptrtoint ptr %dev_trca to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %dev_trca, align 4
  %trca_resource62 = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 6
  %8 = ptrtoint ptr %trca_resource62 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %trca_resource62, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 30
  %9 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hidma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_memset = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 36
  %10 = ptrtoint ptr %device_prep_dma_memset to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hidma_prep_dma_memset, ptr %device_prep_dma_memset, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 27
  %11 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hidma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 29
  %12 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hidma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 49
  %13 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hidma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 50
  %14 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hidma_issue_pending, ptr %device_issue_pending, align 4
  %device_pause = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 45
  %15 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hidma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 46
  %16 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hidma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 47
  %17 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hidma_terminate_all, ptr %device_terminate_all, align 4
  %copy_align = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 10
  %18 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %copy_align, align 4
  %call.i279 = tail call ptr @device_get_match_data(ptr noundef %dev) #11
  %tobool.not.i = icmp ne ptr %call.i279, null
  %19 = ptrtoint ptr %call.i279 to i32
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i280 = icmp ne i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i1 %cmp.i280, i1 false
  %nr_descriptors = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 2
  %call.i281 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %nr_descriptors, i32 noundef 1) #11
  %20 = load i32, ptr @nr_desc_prm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool77.not = icmp eq i32 %20, 0
  br i1 %tobool77.not, label %if.end84thread-pre-split, label %do.end81

do.end81:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %20) #14
  %21 = load i32, ptr @nr_desc_prm, align 4
  %22 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nr_descriptors, align 4
  br label %if.end84

if.end84thread-pre-split:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %nr_descriptors, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84thread-pre-split, %do.end81
  %24 = phi i32 [ %.pr, %if.end84thread-pre-split ], [ %21, %do.end81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool86.not = icmp eq i32 %24, 0
  br i1 %tobool86.not, label %if.then87, label %if.end84.if.end89_crit_edge

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %nr_descriptors, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end84.if.end89_crit_edge
  %call.i282 = tail call ptr @device_get_match_data(ptr noundef %dev) #11
  %tobool.not.i283 = icmp ne ptr %call.i282, null
  %26 = ptrtoint ptr %call.i282 to i32
  %and.i284 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %cmp.i285 = icmp ne i32 %and.i284, 0
  %cond.i286 = select i1 %tobool.not.i283, i1 %cmp.i285, i1 false
  %27 = ptrtoint ptr %dev_trca to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_trca, align 4
  br i1 %cond.i286, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %28, i32 64
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !107
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !108
  br label %if.end105

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr100 = getelementptr i8, ptr %28, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #11, !srcloc !107
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !109
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then92
  %.sink = phi i32 [ %30, %if.then92 ], [ %32, %if.else ]
  %33 = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  %call.i287 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %cmp.i288 = icmp eq i32 %call.i287, 0
  br i1 %cmp.i288, label %dma_set_mask_and_coherent.exit.thread, label %do.end112

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #11
  br label %if.end119

do.end112:                                        ; preds = %if.end105
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  %call115 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef 4294967295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.end112.if.end119_crit_edge, label %do.end112.if.then173_crit_edge

do.end112.if.then173_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

do.end112.if.end119_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.end119:                                        ; preds = %do.end112.if.end119_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %35 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev24, align 4
  %37 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_descriptors, align 4
  %39 = ptrtoint ptr %dev_trca to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_trca, align 4
  %41 = ptrtoint ptr %dev_evca to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_evca, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %33, align 4
  %conv = trunc i32 %44 to i8
  %call126 = tail call ptr @hidma_ll_init(ptr noundef %36, i32 noundef %38, ptr noundef %40, ptr noundef %42, i8 noundef zeroext %conv) #11
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 4
  %45 = ptrtoint ptr %lldev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call126, ptr %lldev, align 4
  %tobool128.not = icmp eq ptr %call126, null
  br i1 %tobool128.not, label %if.end119.if.then173_crit_edge, label %if.end130

if.end119.if.then173_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

if.end130:                                        ; preds = %if.end119
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i277, ptr %driver_data.i.i, align 4
  br i1 %cond.i, label %if.then132, label %if.end130.if.then137_crit_edge

if.end130.if.then137_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

if.then132:                                       ; preds = %if.end130
  %call.i289 = tail call i32 @platform_msi_domain_alloc_irqs(ptr noundef %dev, i32 noundef 11, ptr noundef nonnull @hidma_write_msi_msg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool.not.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool.not.i290, label %for.cond.preheader.i, label %if.then132.if.then137_crit_edge

if.then132.if.then137_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

for.cond.preheader.i:                             ; preds = %if.then132
  %msi_virqbase.i = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.053.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call2.i = tail call i32 @msi_get_virq(ptr noundef %dev, i32 noundef %i.053.i) #11
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2.i, ptr noundef nonnull @hidma_chirq_handler_msi, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %lldev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.053.i)
  %tobool8.not.i = icmp eq i32 %i.053.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.body.i
  br i1 %tobool8.not.i, label %if.end134.thread313, label %for.cond13.preheader.i.for.body15.i_crit_edge

for.cond13.preheader.i.for.body15.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body15.i

if.end134.thread313:                              ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %if.then137

if.end7.i:                                        ; preds = %for.body.i
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %msi_virqbase.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call2.i, ptr %msi_virqbase.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %if.end7.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end134.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.cond13.preheader.i.for.body15.i_crit_edge
  %i.156.in.i = phi i32 [ %i.156.i, %for.body15.i.for.body15.i_crit_edge ], [ %i.053.i, %for.cond13.preheader.i.for.body15.i_crit_edge ]
  %i.156.i = add nsw i32 %i.156.in.i, -1
  %call17.i = tail call i32 @msi_get_virq(ptr noundef %dev, i32 noundef %i.156.i) #11
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call17.i, ptr noundef %lldev) #11
  %cmp14.i = icmp sgt i32 %i.156.in.i, 1
  br i1 %cmp14.i, label %for.body15.i.for.body15.i_crit_edge, label %if.end134

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15.i

if.end134.thread:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lldev, align 4
  tail call void @hidma_ll_setup_irq(ptr noundef %49, i1 noundef zeroext true) #11
  br label %if.end145

if.end134:                                        ; preds = %for.body15.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br i1 %tobool5.not.i, label %if.end134.if.end145_crit_edge, label %if.end134.if.then137_crit_edge

if.end134.if.then137_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then137:                                       ; preds = %if.end134.if.then137_crit_edge, %if.end134.thread313, %if.then132.if.then137_crit_edge, %if.end130.if.then137_crit_edge
  %50 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lldev, align 4
  tail call void @hidma_ll_setup_irq(ptr noundef %51, i1 noundef zeroext false) #11
  %52 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lldev, align 4
  %call.i291 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @hidma_chirq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool142.not = icmp eq i32 %call.i291, 0
  br i1 %tobool142.not, label %if.then137.if.end145_crit_edge, label %if.then137.uninit_crit_edge

if.then137.uninit_crit_edge:                      ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %uninit

if.then137.if.end145_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.end145:                                        ; preds = %if.then137.if.end145_crit_edge, %if.end134.if.end145_crit_edge, %if.end134.thread
  %54 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %channels, ptr %channels, align 4
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %channels, ptr %prev.i, align 4
  %56 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev24, align 4
  %call.i.i294 = tail call noalias ptr @devm_kmalloc(ptr noundef %57, i32 noundef 184, i32 noundef 3520) #11
  %tobool.not.i295 = icmp eq ptr %call.i.i294, null
  br i1 %tobool.not.i295, label %if.end145.uninit_crit_edge, label %if.end.i

if.end145.uninit_crit_edge:                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %uninit

if.end.i:                                         ; preds = %if.end145
  %dma_sig3.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 3
  %58 = ptrtoint ptr %dma_sig3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %dma_sig3.i, align 4
  %dmadev4.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 5
  %59 = ptrtoint ptr %dmadev4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i277, ptr %dmadev4.i, align 4
  %chan.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 7
  %60 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ddev, ptr %chan.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 7, i32 2
  %61 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %cookie.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 7, i32 3
  %62 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %completed_cookie.i.i, align 4
  %free.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 8
  %63 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %free.i, ptr %free.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %free.i, ptr %prev.i.i, align 4
  %prepared.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 9
  %65 = ptrtoint ptr %prepared.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %prepared.i, ptr %prepared.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %prepared.i, ptr %prev.i1.i, align 4
  %active.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 11
  %67 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 11, i32 1
  %68 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %active.i, ptr %prev.i2.i, align 4
  %completed.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 12
  %69 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %completed.i, ptr %completed.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 12, i32 1
  %70 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %completed.i, ptr %prev.i3.i, align 4
  %queued.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 10
  %71 = ptrtoint ptr %queued.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %queued.i, ptr %queued.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %queued.i, ptr %prev.i4.i, align 4
  %lock.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @hidma_chan_init.__key, i16 noundef signext 3) #11
  %device_node.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 7, i32 8
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %74, ptr noundef %channels) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end151_crit_edge

if.end.i.if.end151_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %device_node.i, ptr %prev.i, align 4
  %76 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %channels, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.hidma_chan, ptr %call.i.i294, i32 0, i32 7, i32 8, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %device_node.i, ptr %74, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end.i.i.i, %if.end.i.if.end151_crit_edge
  %chancnt.i = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 10, i32 1
  %79 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chancnt.i, align 4
  %inc.i296 = add i32 %80, 1
  store i32 %inc.i296, ptr %chancnt.i, align 4
  %call153 = tail call i32 @dma_async_device_register(ptr noundef %ddev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.end151.uninit_crit_edge

if.end151.uninit_crit_edge:                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %uninit

if.end156:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %call.i277 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call14, ptr %call.i277, align 4
  %task = getelementptr inbounds %struct.hidma_dev, ptr %call.i277, i32 0, i32 13
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @hidma_issue_task) #11
  tail call void @hidma_debug_init(ptr noundef nonnull %call.i277) #11
  tail call fastcc void @hidma_sysfs_init(ptr noundef nonnull %call.i277)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  %82 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev24, align 4
  %call.i298 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 12, i32 22
  %84 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store volatile i64 %call.i298, ptr %last_busy.i, align 8
  %85 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev24, align 4
  %call.i299 = tail call i32 @__pm_runtime_suspend(ptr noundef %86, i32 noundef 13) #11
  br label %cleanup

uninit:                                           ; preds = %if.end151.uninit_crit_edge, %if.end145.uninit_crit_edge, %if.then137.uninit_crit_edge
  %rc.2 = phi i32 [ %call.i291, %if.then137.uninit_crit_edge ], [ %call153, %if.end151.uninit_crit_edge ], [ -12, %if.end145.uninit_crit_edge ]
  br i1 %cond.i, label %if.then168, label %uninit.if.end169_crit_edge

uninit.if.end169_crit_edge:                       ; preds = %uninit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then168:                                       ; preds = %uninit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hidma_free_msis(ptr noundef nonnull %call.i277)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %uninit.if.end169_crit_edge
  %87 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lldev, align 4
  %call171 = tail call i32 @hidma_ll_uninit(ptr noundef %88) #11
  br label %if.then173

if.then173:                                       ; preds = %if.end169, %if.end119.if.then173_crit_edge, %do.end112.if.then173_crit_edge, %do.end45
  %rc.3 = phi i32 [ -6, %do.end45 ], [ %call115, %do.end112.if.then173_crit_edge ], [ %rc.2, %if.end169 ], [ -517, %if.end119.if.then173_crit_edge ]
  %89 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %channels, ptr %channels, align 4
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %channels, ptr %prev.i, align 4
  br label %bailout

bailout:                                          ; preds = %if.then173, %if.end16.bailout_crit_edge, %if.end13.bailout_crit_edge, %if.end.bailout_crit_edge, %entry.bailout_crit_edge
  %rc.4 = phi i32 [ %rc.3, %if.then173 ], [ -12, %entry.bailout_crit_edge ], [ -12, %if.end.bailout_crit_edge ], [ -19, %if.end13.bailout_crit_edge ], [ -12, %if.end16.bailout_crit_edge ]
  %call.i302 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %bailout, %if.end156
  %retval.0 = phi i32 [ %rc.4, %bailout ], [ 0, %if.end156 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10
  %dev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  tail call void @dma_async_device_unregister(ptr noundef %ddev) #11
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %11, ptr noundef %5) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hidma_free_msis(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %task = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %task) #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %chid_attrs.i = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %chid_attrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chid_attrs.i, align 4
  tail call void @device_remove_file(ptr noundef %13, ptr noundef %15) #11
  tail call void @hidma_debug_uninit(ptr noundef %1) #11
  %16 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lldev, align 4
  %call7 = tail call i32 @hidma_ll_uninit(ptr noundef %17) #11
  %channels.i = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.32) #14
  %call.i26 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev8, i32 noundef 4) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.34) #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldev, align 4
  %call4 = tail call i32 @hidma_ll_disable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end7

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.22) #14
  br label %if.end

if.end:                                           ; preds = %do.end7, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i20 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i20, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i21 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hidma_prep_dma_memcpy(ptr noundef %dmach, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev = getelementptr i8, ptr %dmach, i32 -8
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 4
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %free = getelementptr i8, ptr %dmach, i32 64
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %3, %free
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.then

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %tobool10.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %flags13 = getelementptr i8, ptr %3, i32 -96
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags13, align 4
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldev, align 4
  %tre_ch = getelementptr i8, ptr %3, i32 8
  %15 = ptrtoint ptr %tre_ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tre_ch, align 4
  tail call void @hidma_ll_set_transfer_params(ptr noundef %14, i32 noundef %16, i32 noundef %src, i32 noundef %dest, i32 noundef %len, i32 noundef %flags, i32 noundef 3) #11
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %prepared = getelementptr i8, ptr %dmach, i32 72
  %prev.i48 = getelementptr i8, ptr %dmach, i32 76
  %17 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i48, align 4
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %18, ptr noundef %prepared) #11
  br i1 %call.i.i49, label %if.end.i.i50, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.i50:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %prev.i48, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %prepared, ptr %3, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %3, ptr %18, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i50, %if.end12.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call3.sink = phi i32 [ %call3, %entry.cleanup.sink.split_crit_edge ], [ %call23, %if.end12.cleanup.sink.split_crit_edge ], [ %call23, %if.end.i.i50 ]
  %retval.0.ph = phi ptr [ null, %entry.cleanup.sink.split_crit_edge ], [ %add.ptr, %if.end12.cleanup.sink.split_crit_edge ], [ %add.ptr, %if.end.i.i50 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hidma_prep_dma_memset(ptr noundef %dmach, i32 noundef %dest, i32 noundef %value, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev = getelementptr i8, ptr %dmach, i32 -8
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 4
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %free = getelementptr i8, ptr %dmach, i32 64
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %3, %free
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.then

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %tobool10.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %flags13 = getelementptr i8, ptr %3, i32 -96
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags13, align 4
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldev, align 4
  %tre_ch = getelementptr i8, ptr %3, i32 8
  %15 = ptrtoint ptr %tre_ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tre_ch, align 4
  tail call void @hidma_ll_set_transfer_params(ptr noundef %14, i32 noundef %16, i32 noundef %value, i32 noundef %dest, i32 noundef %len, i32 noundef %flags, i32 noundef 4) #11
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %prepared = getelementptr i8, ptr %dmach, i32 72
  %prev.i48 = getelementptr i8, ptr %dmach, i32 76
  %17 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i48, align 4
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %18, ptr noundef %prepared) #11
  br i1 %call.i.i49, label %if.end.i.i50, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.i50:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %prev.i48, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %prepared, ptr %3, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %3, ptr %18, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i50, %if.end12.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call3.sink = phi i32 [ %call3, %entry.cleanup.sink.split_crit_edge ], [ %call23, %if.end12.cleanup.sink.split_crit_edge ], [ %call23, %if.end.i.i50 ]
  %retval.0.ph = phi ptr [ null, %entry.cleanup.sink.split_crit_edge ], [ %add.ptr, %if.end12.cleanup.sink.split_crit_edge ], [ %add.ptr, %if.end.i.i50 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_alloc_chan_resources(ptr noundef %dmach) #2 align 64 {
entry:
  %descs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev1 = getelementptr i8, ptr %dmach, i32 -8
  %0 = ptrtoint ptr %dmadev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %descs) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %descs, i32 0, i32 1
  %3 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %descs, ptr %descs, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %descs, ptr %2, align 4
  %allocated = getelementptr i8, ptr %dmach, i32 -35
  %5 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %allocated, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_descriptors = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_descriptors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp87.not = icmp eq i32 %8, 0
  br i1 %cmp87.not, label %for.cond.preheader.do.body35_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body35_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %dma_sig = getelementptr i8, ptr %dmach, i32 -16
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2304, i32 noundef 112) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %for.body.if.then12_crit_edge, label %if.end5

for.body.if.then12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end5:                                          ; preds = %for.body
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %dmach) #11
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hidma_tx_submit, ptr %tx_submit, align 8
  %11 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldev, align 4
  %13 = ptrtoint ptr %dma_sig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_sig, align 4
  %tre_ch = getelementptr inbounds %struct.hidma_desc, ptr %call7.i.i, i32 0, i32 2
  %call7 = call i32 @hidma_ll_request(ptr noundef %12, i32 noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull @hidma_callback, ptr noundef nonnull %call7.i.i, ptr noundef %tre_ch) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmach, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %i.088) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.then12

if.end10:                                         ; preds = %if.end5
  %node = getelementptr inbounds %struct.hidma_desc, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %20, ptr noundef nonnull %descs) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node, ptr %2, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %descs, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.hidma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.088, 1
  %25 = ptrtoint ptr %nr_descriptors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_descriptors, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.do.body35_crit_edge

list_add_tail.exit.do.body35_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then12:                                        ; preds = %do.end, %for.body.if.then12_crit_edge
  %rc.1.ph = phi i32 [ %call7, %do.end ], [ -12, %for.body.if.then12_crit_edge ]
  %27 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %descs, align 4
  %cmp22.not89 = icmp eq ptr %28, %descs
  br i1 %cmp22.not89, label %if.then12.cleanup_crit_edge, label %if.then12.for.body23_crit_edge

if.then12.for.body23_crit_edge:                   ; preds = %if.then12
  br label %for.body23

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %if.then12.for.body23_crit_edge
  %.pn.in90 = phi ptr [ %.pn, %for.body23.for.body23_crit_edge ], [ %28, %if.then12.for.body23_crit_edge ]
  %mdesc.0 = getelementptr i8, ptr %.pn.in90, i32 -100
  %29 = ptrtoint ptr %.pn.in90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn.in90, align 4
  %30 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lldev, align 4
  %tre_ch25 = getelementptr i8, ptr %.pn.in90, i32 8
  %32 = ptrtoint ptr %tre_ch25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tre_ch25, align 4
  call void @hidma_ll_free(ptr noundef %31, i32 noundef %33) #11
  call void @kfree(ptr noundef %mdesc.0) #11
  %cmp22.not = icmp eq ptr %.pn, %descs
  br i1 %cmp22.not, label %for.body23.cleanup_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.body23.cleanup_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body35:                                        ; preds = %list_add_tail.exit.do.body35_crit_edge, %for.cond.preheader.do.body35_crit_edge
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %34 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %descs, align 4
  %cmp.i.not.i = icmp eq ptr %35, %descs
  br i1 %cmp.i.not.i, label %do.body35.list_splice_tail_init.exit_crit_edge, label %if.then.i

do.body35.list_splice_tail_init.exit_crit_edge:   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %free = getelementptr i8, ptr %dmach, i32 64
  %prev.i79 = getelementptr i8, ptr %dmach, i32 68
  %36 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i79, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %prev3.i.i80 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i80 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i80, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %37, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %free, ptr %39, align 4
  store ptr %39, ptr %prev.i79, align 4
  %43 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %descs, ptr %descs, align 4
  store ptr %descs, ptr %2, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %do.body35.list_splice_tail_init.exit_crit_edge
  %44 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %allocated, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #11
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %for.body23.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_splice_tail_init.exit ], [ 0, %entry.cleanup_crit_edge ], [ %rc.1.ph, %if.then12.cleanup_crit_edge ], [ %rc.1.ph, %for.body23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %descs) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_free_chan_resources(ptr noundef %dmach) #2 align 64 {
entry:
  %descs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev = getelementptr i8, ptr %dmach, i32 -8
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %descs) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %descs, i32 0, i32 1
  %3 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %descs, ptr %descs, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %descs, ptr %2, align 4
  %call1 = call fastcc i32 @hidma_terminate_channel(ptr noundef %dmach)
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %free = getelementptr i8, ptr %dmach, i32 64
  %5 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %free, align 4
  %cmp.i.not.i = icmp eq ptr %6, %free
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i = getelementptr i8, ptr %dmach, i32 68
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %descs, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %free, ptr %free, align 4
  store ptr %free, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %15 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %descs, align 4
  %cmp15.not36 = icmp eq ptr %16, %descs
  br i1 %cmp15.not36, label %list_splice_tail_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_tail_init.exit
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in37 = phi ptr [ %16, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %mdesc.0 = getelementptr i8, ptr %.pn.in37, i32 -100
  %17 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in37, align 4
  %18 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lldev, align 4
  %tre_ch = getelementptr i8, ptr %.pn.in37, i32 8
  %20 = ptrtoint ptr %tre_ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tre_ch, align 4
  call void @hidma_ll_free(ptr noundef %19, i32 noundef %21) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in37, align 4
  %prev.i35 = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i35, align 4
  call void @kfree(ptr noundef %mdesc.0) #11
  %cmp15.not = icmp eq ptr %.pn, %descs
  br i1 %cmp15.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice_tail_init.exit.for.end_crit_edge
  %allocated = getelementptr i8, ptr %dmach, i32 -35
  %30 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %allocated, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %descs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_tx_status(ptr noundef %dmach, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dmach, i32 -36
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dmach, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dmach, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.if.then_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i.if.then_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.if.then_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i.i.if.then_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.else.i.i.if.then_crit_edge, %if.then.i.i.if.then_crit_edge
  %last_success = getelementptr i8, ptr %dmach, i32 -12
  %8 = ptrtoint ptr %last_success to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_success, align 4
  %10 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp sgt i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %9, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp5.i = icmp slt i32 %11, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i38

if.then.i38:                                      ; preds = %if.then
  %or.cond.i = or i1 %cmp4.not.i, %cmp5.i
  br i1 %or.cond.i, label %if.then.i38._crit_edge, label %if.then.i38.cleanup_crit_edge

if.then.i38.cleanup_crit_edge:                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i38._crit_edge:                           ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %12

if.else.i:                                        ; preds = %if.then
  %or.cond16.i = and i1 %cmp4.not.i, %cmp5.i
  br i1 %or.cond16.i, label %if.else.i._crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i._crit_edge:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %12

12:                                               ; preds = %if.else.i._crit_edge, %if.then.i38._crit_edge
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %running = getelementptr i8, ptr %dmach, i32 -4
  %15 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %running, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.then6.if.end17_crit_edge, label %if.then14

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then6.if.end17_crit_edge
  %runcookie.0 = phi i32 [ %18, %if.then14 ], [ -22, %if.then6.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %runcookie.0, i32 %cookie)
  %cmp18 = icmp eq i32 %runcookie.0, %cookie
  %spec.select37 = select i1 %cmp18, i32 2, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %12, %if.else.i.cleanup_crit_edge, %if.then.i38.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select37, %if.end17 ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %12 ], [ 3, %if.then.i38.cleanup_crit_edge ], [ 3, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_issue_pending(ptr noundef %dmach) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev1 = getelementptr i8, ptr %dmach, i32 -8
  %0 = ptrtoint ptr %dmadev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev1, align 4
  %lock = getelementptr i8, ptr %dmach, i32 104
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %queued = getelementptr i8, ptr %dmach, i32 80
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queued, align 4
  %cmp15.not53 = icmp eq ptr %3, %queued
  br i1 %cmp15.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %active = getelementptr i8, ptr %dmach, i32 88
  %prev.i2.i = getelementptr i8, ptr %dmach, i32 92
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in54 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %list_move_tail.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in54, align 4
  %5 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldev, align 4
  %tre_ch = getelementptr i8, ptr %.pn.in54, i32 8
  %7 = ptrtoint ptr %tre_ch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tre_ch, align 4
  tail call void @hidma_ll_queue_request(ptr noundef %6, i32 noundef %8) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in54, ptr noundef %16, ptr noundef %active) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in54, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active, ptr %.pn.in54, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in54, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp15.not = icmp eq ptr %.pn, %queued
  br i1 %cmp15.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %running = getelementptr i8, ptr %dmach, i32 -4
  %21 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %running, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %active24 = getelementptr i8, ptr %dmach, i32 88
  %23 = ptrtoint ptr %active24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active24, align 4
  %add.ptr27 = getelementptr i8, ptr %24, i32 -100
  %25 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr27, ptr %running, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %dev = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 10, i32 15
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end
  %state.i = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 13, i32 1
  %call.i52 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then33.if.end35_crit_edge

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %lldev34 = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %lldev34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lldev34, align 4
  tail call void @hidma_ll_start(ptr noundef %29) #11
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then.i, %if.then33.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_pause(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -36
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr i8, ptr %3, i32 72
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %lldev = getelementptr i8, ptr %3, i32 -64
  %6 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldev, align 4
  %call4 = tail call i32 @hidma_ll_disable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.22) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i23 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i24 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_resume(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -36
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr i8, ptr %3, i32 72
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %lldev = getelementptr i8, ptr %3, i32 -64
  %6 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldev, align 4
  %call4 = tail call i32 @hidma_ll_enable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i24 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i24, ptr %last_busy.i, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i25 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %rc.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.if.end15_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call3 = tail call fastcc i32 @hidma_terminate_channel(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %1, i32 72
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %lldev = getelementptr i8, ptr %1, i32 -64
  %4 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldev, align 4
  %call5 = tail call i32 @hidma_ll_setup(ptr noundef %5) #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i20 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i20, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i21 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hidma_ll_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_ll_setup_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_chirq_handler(i32 noundef %chirq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hidma_ll_inthandler(i32 noundef %chirq, ptr noundef %arg) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_issue_task(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %t, i32 -300
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #11
  %lldev = getelementptr i8, ptr %t, i32 -436
  %2 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldev, align 4
  tail call void @hidma_ll_start(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_debug_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidma_sysfs_init(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.hidma_dev, ptr %dev, i32 0, i32 10, i32 15
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.hidma_create_sysfs_entry.exit.thread_crit_edge, label %if.end.i

entry.hidma_create_sysfs_entry.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hidma_create_sysfs_entry.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %call4.i = tail call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef 3264) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.hidma_create_sysfs_entry.exit.thread_crit_edge, label %if.end

if.end.i.hidma_create_sysfs_entry.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hidma_create_sysfs_entry.exit.thread

hidma_create_sysfs_entry.exit.thread:             ; preds = %if.end.i.hidma_create_sysfs_entry.exit.thread_crit_edge, %entry.hidma_create_sysfs_entry.exit.thread_crit_edge
  %chid_attrs2 = getelementptr inbounds %struct.hidma_dev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %chid_attrs2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chid_attrs2, align 4
  br label %return

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4.i, ptr %call.i, align 4
  %mode10.i = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %mode10.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 292, ptr %mode10.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hidma_show_values, ptr %show.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hidma_create_sysfs_entry.__key, ptr %key.i, align 4
  %chid_attrs = getelementptr inbounds %struct.hidma_dev, ptr %dev, i32 0, i32 12
  %9 = ptrtoint ptr %chid_attrs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %chid_attrs, align 4
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %call4 = tail call i32 @device_create_file(ptr noundef %11, ptr noundef nonnull %call.i) #11
  br label %return

return:                                           ; preds = %if.end, %hidma_create_sysfs_entry.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidma_free_msis(ptr noundef %dmadev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hidma_dev, ptr %dmadev, i32 0, i32 10, i32 15
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %dmadev, i32 0, i32 4
  %call = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call, ptr noundef %lldev) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %call.1 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.1, ptr noundef %lldev) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %call.2 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.2, ptr noundef %lldev) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %call.3 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.3, ptr noundef %lldev) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %call.4 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.4, ptr noundef %lldev) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %call.5 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.5, ptr noundef %lldev) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %call.6 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.6, ptr noundef %lldev) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %call.7 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.7, ptr noundef %lldev) #11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %call.8 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.8, ptr noundef %lldev) #11
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %call.9 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.9, ptr noundef %lldev) #11
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %call.10 = tail call i32 @msi_get_virq(ptr noundef %1, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %call.10, ptr noundef %lldev) #11
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9.for.inc.10_crit_edge
  tail call void @platform_msi_domain_free_irqs(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_ll_set_transfer_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_tx_submit(ptr noundef %txd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dmadev1 = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %dmadev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmadev1, align 4
  %dev = getelementptr inbounds %struct.hidma_dev, ptr %3, i32 0, i32 10, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %lldev = getelementptr inbounds %struct.hidma_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldev, align 4
  %call3 = tail call zeroext i1 @hidma_ll_isenabled(ptr noundef %7) #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i38 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i39 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i39 to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i38, ptr %last_busy.i39, align 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #11
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %1, i32 104
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.hidma_desc, ptr %txd, i32 0, i32 1
  %queued = getelementptr i8, ptr %1, i32 80
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.hidma_desc, ptr %txd, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %1, i32 84
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %20, ptr noundef %queued) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node, ptr %prev.i2.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %queued, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.hidma_desc, ptr %txd, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %20, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %28, 1
  %29 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #11
  %30 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cookie2.i, align 4
  %31 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %txd, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #11
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %list_move_tail.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock = getelementptr i8, ptr %1, i32 104
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.hidma_desc, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end18.critedge, label %if.then

if.then:                                          ; preds = %entry
  %completed = getelementptr i8, ptr %1, i32 96
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.hidma_desc, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %1, i32 100
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %13, ptr noundef %completed) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %prev.i2.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %completed, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.hidma_desc, ptr %data, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node, ptr %13, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %active = getelementptr i8, ptr %1, i32 88
  %18 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 -100
  %running = getelementptr i8, ptr %1, i32 -4
  %20 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  tail call fastcc void @hidma_process_completed(ptr noundef %add.ptr.i)
  %dev = getelementptr i8, ptr %3, i32 72
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i29 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #11
  br label %if.end18

if.end18.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  tail call fastcc void @hidma_process_completed(ptr noundef %add.ptr.i)
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %list_move_tail.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_ll_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hidma_ll_isenabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidma_process_completed(ptr noundef %mchan) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  %result = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 7
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %lock = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 13
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %completed = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 12
  %5 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %completed, align 4
  %cmp.i.not.i = icmp eq ptr %6, %completed
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %completed to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %completed, ptr %completed, align 4
  store ptr %completed, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %cmp14.not85 = icmp eq ptr %16, %list
  br i1 %cmp14.not85, label %list_splice_tail_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_tail_init.exit
  %17 = getelementptr inbounds %struct.dmaengine_result, ptr %result, i32 0, i32 1
  %lldev = getelementptr i8, ptr %1, i32 -64
  %last_success = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 4
  %free = getelementptr inbounds %struct.hidma_chan, ptr %mchan, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %dmaengine_desc_callback_invoke.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in86 = phi ptr [ %16, %for.body.lr.ph ], [ %.pn89, %dmaengine_desc_callback_invoke.exit.for.body_crit_edge ]
  %mdesc.088 = getelementptr i8, ptr %.pn.in86, i32 -100
  %18 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn89 = load ptr, ptr %.pn.in86, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #11
  %19 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %result, align 4, !annotation !112
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %17, align 4, !annotation !112
  %21 = ptrtoint ptr %mdesc.088 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mdesc.088, align 4
  %23 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldev, align 4
  %tre_ch = getelementptr i8, ptr %.pn.in86, i32 8
  %25 = ptrtoint ptr %tre_ch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tre_ch, align 4
  %call17 = call i32 @hidma_ll_status(ptr noundef %24, i32 noundef %26) #11
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp32 = icmp eq i32 %call17, 0
  br i1 %cmp32, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %last_success to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %last_success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %storemerge = phi i32 [ 0, %if.then ], [ 3, %for.body.if.end_crit_edge ]
  %28 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %result, align 4
  %29 = ptrtoint ptr %mdesc.088 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdesc.088, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp slt i32 %30, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !106

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end
  %chan.i = getelementptr i8, ptr %.pn.in86, i32 -88
  %31 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %completed_cookie.i, align 4
  %34 = ptrtoint ptr %mdesc.088 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mdesc.088, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #11
  %callback.i = getelementptr i8, ptr %.pn.in86, i32 -76
  %35 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr i8, ptr %.pn.in86, i32 -72
  %37 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in86, i32 -68
  %39 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %callback_param.i, align 4
  call void @dma_run_dependencies(ptr noundef %mdesc.088) #11
  %call46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in86) #11
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge

dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in86, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge
  %47 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in86, ptr noundef %free, ptr noundef %48) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %.pn.in86, ptr %prev1.i.i2.i, align 4
  %50 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %.pn.in86, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %.pn.in86, ptr %free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #11
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i81

if.then.i81:                                      ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void %38(ptr noundef %40, ptr noundef nonnull %result) #11
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %list_move.exit
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %36(ptr noundef %40) #11
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #11
  %cmp14.not = icmp eq ptr %.pn89, %list
  br i1 %cmp14.not, label %dmaengine_desc_callback_invoke.exit.for.end_crit_edge, label %dmaengine_desc_callback_invoke.exit.for.body_crit_edge

dmaengine_desc_callback_invoke.exit.for.body_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

dmaengine_desc_callback_invoke.exit.for.end_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %dmaengine_desc_callback_invoke.exit.for.end_crit_edge, %list_splice_tail_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidma_terminate_channel(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -36
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %dev = getelementptr i8, ptr %1, i32 72
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  call fastcc void @hidma_process_completed(ptr noundef %add.ptr.i)
  %lock = getelementptr i8, ptr %chan, i32 104
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %last_success = getelementptr i8, ptr %chan, i32 -12
  %7 = ptrtoint ptr %last_success to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_success, align 4
  %active = getelementptr i8, ptr %chan, i32 88
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i = icmp eq ptr %9, %active
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %chan, i32 92
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %9, ptr %list, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %13, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev6.i.i, align 4
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %active, ptr %active, align 4
  store ptr %active, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %prepared = getelementptr i8, ptr %chan, i32 72
  %18 = ptrtoint ptr %prepared to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prepared, align 4
  %cmp.i.not.i62 = icmp eq ptr %19, %prepared
  br i1 %cmp.i.not.i62, label %list_splice_init.exit.list_splice_init.exit67_crit_edge, label %if.then.i66

list_splice_init.exit.list_splice_init.exit67_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit67

if.then.i66:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev2.i.i63 = getelementptr i8, ptr %chan, i32 76
  %22 = ptrtoint ptr %prev2.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i63, align 4
  %prev3.i.i64 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i64 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev3.i.i64, align 4
  store ptr %19, ptr %list, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %23, align 4
  %prev6.i.i65 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev6.i.i65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev6.i.i65, align 4
  %27 = ptrtoint ptr %prepared to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %prepared, ptr %prepared, align 4
  store ptr %prepared, ptr %prev2.i.i63, align 4
  br label %list_splice_init.exit67

list_splice_init.exit67:                          ; preds = %if.then.i66, %list_splice_init.exit.list_splice_init.exit67_crit_edge
  %completed = getelementptr i8, ptr %chan, i32 96
  %28 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %completed, align 4
  %cmp.i.not.i68 = icmp eq ptr %29, %completed
  br i1 %cmp.i.not.i68, label %list_splice_init.exit67.list_splice_init.exit73_crit_edge, label %if.then.i72

list_splice_init.exit67.list_splice_init.exit73_crit_edge: ; preds = %list_splice_init.exit67
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit73

if.then.i72:                                      ; preds = %list_splice_init.exit67
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  %prev2.i.i69 = getelementptr i8, ptr %chan, i32 100
  %32 = ptrtoint ptr %prev2.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i69, align 4
  %prev3.i.i70 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i70 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev3.i.i70, align 4
  store ptr %29, ptr %list, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %33, align 4
  %prev6.i.i71 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev6.i.i71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev6.i.i71, align 4
  %37 = ptrtoint ptr %completed to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %completed, ptr %completed, align 4
  store ptr %completed, ptr %prev2.i.i69, align 4
  br label %list_splice_init.exit73

list_splice_init.exit73:                          ; preds = %if.then.i72, %list_splice_init.exit67.list_splice_init.exit73_crit_edge
  %queued = getelementptr i8, ptr %chan, i32 80
  %38 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not.i74 = icmp eq ptr %39, %queued
  br i1 %cmp.i.not.i74, label %list_splice_init.exit73.list_splice_init.exit79_crit_edge, label %if.then.i78

list_splice_init.exit73.list_splice_init.exit79_crit_edge: ; preds = %list_splice_init.exit73
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit79

if.then.i78:                                      ; preds = %list_splice_init.exit73
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %prev2.i.i75 = getelementptr i8, ptr %chan, i32 84
  %42 = ptrtoint ptr %prev2.i.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i75, align 4
  %prev3.i.i76 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev3.i.i76, align 4
  store ptr %39, ptr %list, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %43, align 4
  %prev6.i.i77 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev6.i.i77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev6.i.i77, align 4
  %47 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %queued, ptr %queued, align 4
  store ptr %queued, ptr %prev2.i.i75, align 4
  br label %list_splice_init.exit79

list_splice_init.exit79:                          ; preds = %if.then.i78, %list_splice_init.exit73.list_splice_init.exit79_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  %lldev = getelementptr i8, ptr %1, i32 -64
  %48 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lldev, align 4
  %call11 = call i32 @hidma_ll_disable(ptr noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %do.end14

do.end14:                                         ; preds = %list_splice_init.exit79
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.20) #14
  br label %out

if.end:                                           ; preds = %list_splice_init.exit79
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list, align 4
  %cmp24.not82 = icmp eq ptr %53, %list
  br i1 %cmp24.not82, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %free = getelementptr i8, ptr %chan, i32 64
  br label %for.body

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in83 = phi ptr [ %53, %for.body.lr.ph ], [ %.pn, %list_move.exit.for.body_crit_edge ]
  %mdesc.0 = getelementptr i8, ptr %.pn.in83, i32 -100
  %54 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn.in83, align 4
  %unmap.i = getelementptr i8, ptr %.pn.in83, i32 -64
  %55 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %for.body.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

for.body.dma_descriptor_unmap.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @dmaengine_unmap_put(ptr noundef nonnull %56) #11
  %57 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %for.body.dma_descriptor_unmap.exit_crit_edge
  %callback.i.i = getelementptr i8, ptr %.pn.in83, i32 -76
  %58 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %.pn.in83, i32 -72
  %60 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %.pn.in83, i32 -68
  %62 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #11
  %64 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void %61(ptr noundef %63, ptr noundef nonnull %dummy_result.i.i) #11
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  %tobool4.not.i.i = icmp eq ptr %59, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %59(ptr noundef %63) #11
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #11
  call void @dma_run_dependencies(ptr noundef %mdesc.0) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83) #11
  br i1 %call.i.i, label %if.end.i.i, label %dmaengine_desc_get_callback_invoke.exit.__list_del_entry.exit.i_crit_edge

dmaengine_desc_get_callback_invoke.exit.__list_del_entry.exit.i_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %.pn.in83, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %dmaengine_desc_get_callback_invoke.exit.__list_del_entry.exit.i_crit_edge
  %71 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in83, ptr noundef %free, ptr noundef %72) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %.pn.in83, ptr %prev1.i.i2.i, align 4
  %74 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %.pn.in83, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %free, ptr %prev3.i.i.i, align 4
  %76 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %.pn.in83, ptr %free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp24.not = icmp eq ptr %.pn, %list
  br i1 %cmp24.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %77 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lldev, align 4
  %call33 = call i32 @hidma_ll_enable(ptr noundef %78) #11
  br label %out

out:                                              ; preds = %for.end, %do.end14
  %rc.0 = phi i32 [ %call11, %do.end14 ], [ %call33, %for.end ]
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %call.i80 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 12, i32 22
  %81 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store volatile i64 %call.i80, ptr %last_busy.i, align 8
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %call.i81 = call i32 @__pm_runtime_suspend(ptr noundef %83, i32 noundef 13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_ll_queue_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_ll_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_msi_domain_alloc_irqs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_write_msi_msg(ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 8
  %0 = ptrtoint ptr %msi_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msi_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dev_evca = getelementptr inbounds %struct.hidma_dev, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %dev_evca to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_evca, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  tail call void @arm_heavy_mb() #11
  %11 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %dev_evca to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_evca, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  tail call void @arm_heavy_mb() #11
  %17 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %dev_evca to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_evca, align 4
  %add.ptr11 = getelementptr i8, ptr %22, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %20) #11, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_chirq_handler_msi(i32 noundef %chirq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %msi_virqbase = getelementptr i8, ptr %arg, i32 -4
  %2 = ptrtoint ptr %msi_virqbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_virqbase, align 4
  %sub = sub i32 %chirq, %3
  %shl = shl nuw i32 1, %sub
  %call1 = tail call i32 @hidma_ll_inthandler_msi(i32 noundef %chirq, ptr noundef %1, i32 noundef %shl) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_inthandler_msi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_ll_inthandler(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_show_values(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(5) @.str.30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %chidx = getelementptr inbounds %struct.hidma_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %chidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chidx, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @strlen(ptr noundef %buf) #16
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_msi_domain_free_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hidma_debug_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_nr_desc_prm, !1, !"__param_nr_desc_prm", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/hidma.c", i32 99, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_desc_prmtype237, !1, !"__UNIQUE_ID_nr_desc_prmtype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nr_desc_prm238, !4, !"__UNIQUE_ID_nr_desc_prm238", i1 false, i1 false}
!4 = !{!"../drivers/dma/qcom/hidma.c", i32 100, i32 1}
!5 = !{ptr @__initcall__kmod_hdma__239_966_hidma_driver_init6, !6, !"__initcall__kmod_hdma__239_966_hidma_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/dma/qcom/hidma.c", i32 966, i32 1}
!7 = !{ptr @__exitcall_hidma_driver_exit, !6, !"__exitcall_hidma_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file240, !9, !"__UNIQUE_ID_file240", i1 false, i1 false}
!9 = !{!"../drivers/dma/qcom/hidma.c", i32 967, i32 1}
!10 = !{ptr @__UNIQUE_ID_license241, !9, !"__UNIQUE_ID_license241", i1 false, i1 false}
!11 = !{ptr @nr_desc_prm, !12, !"nr_desc_prm", i1 false, i1 false}
!12 = !{!"../drivers/dma/qcom/hidma.c", i32 98, i32 21}
!13 = !{ptr @__param_str_nr_desc_prm, !1, !"__param_str_nr_desc_prm", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/qcom/hidma.c", i32 960, i32 14}
!16 = !{ptr @hidma_driver, !17, !"hidma_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/qcom/hidma.c", i32 955, i32 31}
!18 = !{ptr @hidma_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/dma/qcom/hidma.c", i32 789, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/qcom/hidma.c", i32 795, i32 6}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/qcom/hidma.c", i32 820, i32 39}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/qcom/hidma.c", i32 824, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hidma_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @hidma_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/qcom/hidma.c", i32 840, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hidma_probe._entry.8, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hidma_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/qcom/hidma.c", i32 861, i32 14}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/qcom/hidma.c", i32 879, i32 2}
!41 = !{ptr @hidma_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hidma_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/qcom/hidma.c", i32 366, i32 11}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/qcom/hidma.c", i32 369, i32 4}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hidma_alloc_chan_resources._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @hidma_alloc_chan_resources._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/qcom/hidma.c", i32 483, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hidma_terminate_channel._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hidma_terminate_channel._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/qcom/hidma.c", i32 561, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hidma_pause._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @hidma_pause._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/qcom/hidma.c", i32 583, i32 4}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hidma_resume._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @hidma_resume._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/qcom/hidma.c", i32 708, i32 15}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/qcom/hidma.c", i32 722, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hidma_request_msi._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hidma_request_msi._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hidma_chan_init.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/dma/qcom/hidma.c", i32 215, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/qcom/hidma.c", i32 656, i32 50}
!78 = !{ptr @hidma_create_sysfs_entry.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/dma/qcom/hidma.c", i32 649, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/qcom/hidma.c", i32 621, i32 16}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/qcom/hidma.c", i32 929, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hidma_remove._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hidma_remove._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/qcom/hidma.c", i32 902, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @hidma_shutdown._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @hidma_shutdown._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @hidma_shutdown._entry.36, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/dma/qcom/hidma.c", i32 906, i32 3}
!94 = !{ptr @hidma_shutdown._entry_ptr.37, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @hidma_match, !96, !"hidma_match", i1 false, i1 false}
!96 = !{!"../drivers/dma/qcom/hidma.c", i32 946, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 6291299}
!108 = !{i64 2155047281}
!109 = !{i64 2155047791}
!110 = !{i8 0, i8 2}
!111 = !{i64 2154781918}
!112 = !{!"auto-init"}
!113 = !{i64 2154780410, i64 2154780905, i64 2154780447, i64 2154780503, i64 2154780537, i64 2154780561, i64 2154780602, i64 2154780623, i64 2154780651, i64 2154780685}
!114 = !{i64 2155040981}
!115 = !{i64 6290881}
!116 = !{i64 2155041432}
!117 = !{i64 2155041877}
