; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/tegra/tegra_cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/tegra/tegra_cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tegra_cec = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, [16 x i8], i8, [16 x i32], i8, i8 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__initcall__kmod_tegra_cec__232_478_tegra_cec_driver_init6 = internal global ptr @tegra_cec_driver_init, section ".initcall6.init", align 4
@tegra_cec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_cec_probe, ptr @tegra_cec_remove, ptr null, ptr @tegra_cec_suspend, ptr @tegra_cec_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_cec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_cec_driver_exit = internal global ptr @tegra_cec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [44 x i8] c"tegra_cec.description=Tegra HDMI CEC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [36 x i8] c"tegra_cec.author=NVIDIA CORPORATION\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [59 x i8] c"tegra_cec.author=Cisco Systems, Inc. and/or its affiliates\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [58 x i8] c"tegra_cec.file=drivers/media/cec/platform/tegra/tegra_cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"tegra_cec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-cec\00", [22 x i8] zeroinitializer }, align 32
@tegra_cec_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to allocate resources for device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_cec_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/cec/platform/tegra/tegra_cec.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr = internal global ptr @tegra_cec_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@tegra_cec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to request mem region for device\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.8 = internal global ptr @tegra_cec_probe._entry.6, section ".printk_index", align 4
@tegra_cec_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to grab IOs for device\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.11 = internal global ptr @tegra_cec_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get clock for CEC\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.15 = internal global ptr @tegra_cec_probe._entry.13, section ".printk_index", align 4
@tegra_cec_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to prepare clock for CEC\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.18 = internal global ptr @tegra_cec_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cec_irq\00", [24 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to request interrupt for device\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.22 = internal global ptr @tegra_cec_probe._entry.20, section ".printk_index", align 4
@tegra_cec_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @tegra_cec_adap_enable, ptr @tegra_cec_adap_monitor_all_enable, ptr null, ptr @tegra_cec_adap_log_addr, ptr @tegra_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't create cec adapter\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.25 = internal global ptr @tegra_cec_probe._entry.23, section ".printk_index", align 4
@tegra_cec_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't register device\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_cec_probe._entry_ptr.28 = internal global ptr @tegra_cec_probe._entry.26, section ".printk_index", align 4
@tegra_cec_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TX underrun, interrupt timing issue!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_cec_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@tegra_cec_irq_handler._entry_ptr = internal global ptr @tegra_cec_irq_handler._entry, section ".printk_index", align 4
@tegra_cec_irq_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 150, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX NAKed on the fly!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_cec_irq_handler._entry_ptr.34 = internal global ptr @tegra_cec_irq_handler._entry.31, section ".printk_index", align 4
@tegra_cec_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 443, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suspended\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_cec_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@tegra_cec_suspend._entry_ptr = internal global ptr @tegra_cec_suspend._entry, section ".printk_index", align 4
@tegra_cec_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 451, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Resuming\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_cec_resume\00", [47 x i8] zeroinitializer }, align 32
@tegra_cec_resume._entry_ptr = internal global ptr @tegra_cec_resume._entry, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"tegra_cec_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 464, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 466, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"tegra_cec_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 457, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 337, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 344, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 358, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 362, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 365, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 371, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 382, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 385, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"tegra_cec_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 310, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 396, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 409, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 108, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 150, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 443, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [48 x i8] c"../drivers/media/cec/platform/tegra/tegra_cec.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 451, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_tegra_cec_driver_exit, ptr @__initcall__kmod_tegra_cec__232_478_tegra_cec_driver_init6, ptr @tegra_cec_driver_exit, ptr @tegra_cec_irq_handler._entry, ptr @tegra_cec_irq_handler._entry.31, ptr @tegra_cec_irq_handler._entry_ptr, ptr @tegra_cec_irq_handler._entry_ptr.34, ptr @tegra_cec_probe._entry, ptr @tegra_cec_probe._entry.13, ptr @tegra_cec_probe._entry.16, ptr @tegra_cec_probe._entry.20, ptr @tegra_cec_probe._entry.23, ptr @tegra_cec_probe._entry.26, ptr @tegra_cec_probe._entry.6, ptr @tegra_cec_probe._entry.9, ptr @tegra_cec_probe._entry_ptr, ptr @tegra_cec_probe._entry_ptr.11, ptr @tegra_cec_probe._entry_ptr.15, ptr @tegra_cec_probe._entry_ptr.18, ptr @tegra_cec_probe._entry_ptr.22, ptr @tegra_cec_probe._entry_ptr.25, ptr @tegra_cec_probe._entry_ptr.28, ptr @tegra_cec_probe._entry_ptr.8, ptr @tegra_cec_resume._entry, ptr @tegra_cec_resume._entry_ptr, ptr @tegra_cec_suspend._entry, ptr @tegra_cec_suspend._entry_ptr, ptr @tegra_cec_driver, ptr @.str, ptr @tegra_cec_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @tegra_cec_ops, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_irq_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cec_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_cec_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_cec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_cec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %1 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call14 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i, ptr noundef %6) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %tegra_cec_irq = getelementptr inbounds %struct.tegra_cec, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %tegra_cec_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call22, ptr %tegra_cec_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp = icmp slt i32 %call22, 1
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7, align 4
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i154 = sub i32 1, %9
  %add.i155 = add i32 %sub.i154, %11
  %call29 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %9, i32 noundef %add.i155) #6
  %cec_base = getelementptr inbounds %struct.tegra_cec, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %cec_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %cec_base, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  %clk = getelementptr inbounds %struct.tegra_cec, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call39, ptr %clk, align 4
  %tobool.not.i = icmp eq ptr %call39, null
  %cmp.i156 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i156
  br i1 %spec.select.i, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call.i157 = tail call i32 @clk_prepare(ptr noundef nonnull %call39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end.i, label %if.end47.do.end54_crit_edge

if.end47.do.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end56, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef nonnull %call39) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i, %if.end47.do.end54_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i157, %if.end47.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end.i
  %dev58 = getelementptr inbounds %struct.tegra_cec, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev58, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %tegra_cec_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tegra_cec_irq, align 4
  %call62 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @tegra_cec_irq_handler, ptr noundef nonnull @tegra_cec_irq_thread_handler, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %err_clk

if.end69:                                         ; preds = %if.end56
  %call70 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @tegra_cec_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str, i32 noundef 318, i8 noundef zeroext 4) #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call70, ptr %call.i, align 4
  %cmp.i159 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %err_clk

if.end78:                                         ; preds = %if.end69
  %call80 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %call, ptr noundef null, ptr noundef %call70) #6
  %notifier = getelementptr inbounds %struct.tegra_cec, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call80, ptr %notifier, align 4
  %tobool82.not = icmp eq ptr %call80, null
  br i1 %tobool82.not, label %if.end78.err_adapter_crit_edge, label %if.end84

if.end78.err_adapter_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_adapter

if.end84:                                         ; preds = %if.end78
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call87 = tail call i32 @cec_register_adapter(ptr noundef %21, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end84.cleanup_crit_edge, label %do.end92

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %22 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %notifier, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %23, ptr noundef %25) #6
  br label %err_adapter

err_adapter:                                      ; preds = %do.end92, %if.end78.err_adapter_crit_edge
  %ret.0 = phi i32 [ %call87, %do.end92 ], [ -12, %if.end78.err_adapter_crit_edge ]
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  tail call void @cec_delete_adapter(ptr noundef %27) #6
  br label %err_clk

err_clk:                                          ; preds = %err_adapter, %if.then73, %do.end67
  %ret.1 = phi i32 [ %call62, %do.end67 ], [ -12, %if.then73 ], [ %ret.0, %err_adapter ]
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end84.cleanup_crit_edge, %do.end54, %do.end45, %do.end35, %if.end21.cleanup_crit_edge, %do.end19, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -2, %do.end45 ], [ %retval.0.i.ph, %do.end54 ], [ %ret.1, %err_clk ], [ -16, %do.end35 ], [ -16, %do.end19 ], [ -16, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -16, %if.end21.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %notifier = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %5, ptr noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @cec_unregister_adapter(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  %clk = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cec_base.i = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %5 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #6, !srcloc !90
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %9 = and i32 %7, %4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end:                                           ; preds = %entry
  %and3 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.29) #9
  %11 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 -1) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %13) #6, !srcloc !93
  %and6 = and i32 %8, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and6) #6
  %21 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %20) #6, !srcloc !93
  %tx_done = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %tx_done to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tx_done, align 1
  %tx_status = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %tx_status, align 4
  br label %cleanup79

if.end7:                                          ; preds = %if.end
  %25 = and i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end21, label %if.then12

if.then12:                                        ; preds = %if.end7
  %and10 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %27 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i5.i138 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i138, i32 0) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i7.i139 = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i139, i32 -1) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i9.i140 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i140, i32 %29) #6, !srcloc !93
  %and13 = and i32 %8, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %and13) #6
  %37 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %38, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %36) #6, !srcloc !93
  %tx_done14 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %tx_done14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %tx_done14, align 1
  %tx_status19 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 8
  br i1 %tobool11.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %tx_status19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %tx_status19, align 4
  br label %cleanup79

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %tx_status19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %tx_status19, align 4
  br label %cleanup79

if.end21:                                         ; preds = %if.end7
  %and22 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end34, label %if.then24

if.then24:                                        ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %43, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 536870912) #6, !srcloc !93
  %and25 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i146) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i5.i147 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i147, i32 0) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i7.i148 = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i148, i32 -1) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i9.i149 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i149, i32 %46) #6, !srcloc !93
  %tx_done28 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 7
  %53 = ptrtoint ptr %tx_done28 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %tx_done28, align 1
  %tx_status29 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %tx_status29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %tx_status29, align 4
  br label %cleanup79

if.else30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %tx_done31 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %tx_done31 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %tx_done31, align 1
  %tx_status32 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %tx_status32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %tx_status32, align 4
  br label %cleanup79

if.end34:                                         ; preds = %if.end21
  %and35 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %do.end40

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %data, ptr noundef nonnull @.str.32) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end34.if.end41_crit_edge
  %and42 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end52_crit_edge, label %if.then44

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then44:                                        ; preds = %if.end41
  %tx_buf_cur = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 12
  %57 = ptrtoint ptr %tx_buf_cur to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_buf_cur, align 4
  %tx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tx_buf_cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp = icmp eq i8 %58, %60
  br i1 %cmp, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %and48 = and i32 %8, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %and48) #6
  %62 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %63, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %61) #6, !srcloc !93
  br label %if.end52

if.else49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %58 to i32
  %inc = add i8 %58, 1
  %64 = ptrtoint ptr %tx_buf_cur to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %inc, ptr %tx_buf_cur, align 4
  %arrayidx = getelementptr %struct.tegra_cec, ptr %1, i32 0, i32 11, i32 %conv
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %68 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %69, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %67) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 16777216) #6, !srcloc !93
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then47, %if.end41.if.end52_crit_edge
  %and53 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %73, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 262144) #6, !srcloc !93
  %rx_done = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %rx_done to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %rx_done, align 4
  %rx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %rx_buf_cnt to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %rx_buf_cnt, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %and57 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.cleanup79_crit_edge, label %if.then59

if.end56.cleanup79_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then59:                                        ; preds = %if.end56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %77, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 65536) #6, !srcloc !93
  %78 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %79, i32 20
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #6, !srcloc !90
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %rx_buf_cnt61 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 10
  %82 = ptrtoint ptr %rx_buf_cnt61 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rx_buf_cnt61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %83)
  %cmp63 = icmp ult i8 %83, 16
  br i1 %cmp63, label %if.then65, label %if.then59.if.end72_crit_edge

if.then59.if.end72_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %conv62 = zext i8 %83 to i32
  %conv67 = trunc i32 %81 to i8
  %inc69 = add nuw nsw i8 %83, 1
  %84 = ptrtoint ptr %rx_buf_cnt61 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %inc69, ptr %rx_buf_cnt61, align 4
  %arrayidx71 = getelementptr %struct.tegra_cec, ptr %1, i32 0, i32 9, i32 %conv62
  %85 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv67, ptr %arrayidx71, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.then59.if.end72_crit_edge
  %and73 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.cleanup79_crit_edge, label %if.then75

if.end72.cleanup79_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %rx_done76 = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 6
  %86 = ptrtoint ptr %rx_done76 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %rx_done76, align 4
  br label %cleanup79

cleanup79:                                        ; preds = %if.then75, %if.end72.cleanup79_crit_edge, %if.end56.cleanup79_crit_edge, %if.else30, %if.then27, %if.else, %if.then17, %do.end, %entry.cleanup79_crit_edge
  %retval.1 = phi i32 [ 2, %do.end ], [ 1, %entry.cleanup79_crit_edge ], [ 2, %if.else ], [ 2, %if.then17 ], [ 2, %if.else30 ], [ 2, %if.then27 ], [ 2, %if.then75 ], [ 1, %if.end56.cleanup79_crit_edge ], [ 1, %if.end72.cleanup79_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_irq_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %msg = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tx_done = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tx_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_done, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tx_status = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_status, align 4
  %conv = trunc i32 %7 to i8
  %call.i = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_attempt_done_ts(ptr noundef %5, i8 noundef zeroext %conv, i64 noundef %call.i) #6
  %8 = ptrtoint ptr %tx_done to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_done, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_done = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %rx_done to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_done, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  %11 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %rx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %rx_buf_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_buf_cnt, align 4
  %conv4 = zext i8 %13 to i32
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %len, align 8
  %msg5 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %rx_buf = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 9
  %15 = call ptr @memcpy(ptr %msg5, ptr %rx_buf, i32 %conv4)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i21 = tail call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %17, ptr noundef nonnull %msg, i64 noundef %call.i21) #6
  %18 = ptrtoint ptr %rx_done to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rx_done, align 4
  %19 = ptrtoint ptr %rx_buf_cnt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rx_buf_cnt, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %rx_buf_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rx_buf_cnt, align 4
  %tx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tx_buf_cnt, align 1
  %tx_buf_cur = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %tx_buf_cur to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_buf_cur, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %cec_base.i = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -1) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cec_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !93
  br i1 %enable, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 536871040) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 2054001542) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 891377216) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 1342177280) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 1955399793) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 789793569) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 1459814400) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 1040515072) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 128) #6, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_adap_monitor_all_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cec_base.i = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %5 = and i32 %4, -8388609
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %enable, i32 32768, i32 0
  %reg.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %8 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %logical_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cec_base.i = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %logical_addr)
  %cmp = icmp eq i8 %logical_addr, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %5, -32768
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %logical_addr to i32
  %shl = shl nuw i32 1, %conv
  %and3 = and i32 %shl, 32767
  %or = or i32 %5, %and3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state.0 = phi i32 [ %and, %if.then ], [ %or, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %state.0) #6
  %7 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %6) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time_ms, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %signal_free_time_ms)
  %cmp = icmp eq i32 %signal_free_time_ms, 3
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg1.i, align 8
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp.i.not = icmp eq i8 %4, 15
  %spec.select = select i1 %cmp.i.not, i32 4096, i32 0
  %tx_buf_cur = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %tx_buf_cur to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_buf_cur, align 4
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %conv = trunc i32 %7 to i8
  %tx_buf_cnt = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %tx_buf_cnt, align 1
  %9 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp256.not = icmp eq i32 %9, 0
  br i1 %cmp256.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.057
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %11 to i32
  %or = or i32 %spec.select, %conv5
  %arrayidx6 = getelementptr %struct.tegra_cec, ptr %1, i32 0, i32 11, i32 %i.057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057)
  %cmp7 = icmp eq i32 %i.057, 0
  %or12 = or i32 %or, 65536
  %spec.select53 = select i1 %cmp7, i32 %or12, i32 %or
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select53, ptr %arrayidx6, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 8
  %sub = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %sub)
  %cmp15 = icmp eq i32 %i.057, %sub
  br i1 %cmp15, label %if.then17, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %spec.select53, 256
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or20, ptr %arrayidx6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.body.if.end21_crit_edge
  %16 = and i1 %cmp, %cmp7
  br i1 %16, label %if.then26, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6, align 4
  %or29 = or i32 %18, 131072
  store i32 %or29, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end21.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 8
  %cmp2 = icmp ult i32 %inc, %20
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cec_base.i = getelementptr inbounds %struct.tegra_cec, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %24 = or i32 %23, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %cec_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cec_base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %24) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_tegra_cec__232_478_tegra_cec_driver_init6, !1, !"__initcall__kmod_tegra_cec__232_478_tegra_cec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 478, i32 1}
!2 = !{ptr @__exitcall_tegra_cec_driver_exit, !1, !"__exitcall_tegra_cec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 480, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 481, i32 1}
!7 = !{ptr @__UNIQUE_ID_author235, !8, !"__UNIQUE_ID_author235", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 482, i32 1}
!9 = !{ptr @__UNIQUE_ID_file236, !10, !"__UNIQUE_ID_file236", i1 false, i1 false}
!10 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 483, i32 1}
!11 = !{ptr @__UNIQUE_ID_license237, !10, !"__UNIQUE_ID_license237", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 466, i32 11}
!14 = !{ptr @tegra_cec_driver, !15, !"tegra_cec_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 464, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 337, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_cec_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_cec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 344, i32 3}
!26 = !{ptr @tegra_cec_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_cec_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 358, i32 3}
!30 = !{ptr @tegra_cec_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_cec_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 362, i32 38}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 365, i32 3}
!36 = !{ptr @tegra_cec_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_cec_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 371, i32 3}
!40 = !{ptr @tegra_cec_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_cec_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 382, i32 6}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 385, i32 3}
!46 = !{ptr @tegra_cec_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tegra_cec_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 396, i32 3}
!50 = !{ptr @tegra_cec_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_cec_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 409, i32 3}
!54 = !{ptr @tegra_cec_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_cec_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 108, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tegra_cec_irq_handler._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_cec_irq_handler._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 150, i32 3}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tegra_cec_irq_handler._entry.31, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra_cec_irq_handler._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @tegra_cec_ops, !67, !"tegra_cec_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 310, i32 34}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 443, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tegra_cec_suspend._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra_cec_suspend._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 451, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tegra_cec_resume._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tegra_cec_resume._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @tegra_cec_of_match, !80, !"tegra_cec_of_match", i1 false, i1 false}
!80 = !{!"../drivers/media/cec/platform/tegra/tegra_cec.c", i32 457, i32 34}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 4626995}
!91 = !{i64 2154639815}
!92 = !{i64 2154640200}
!93 = !{i64 4626577}
!94 = !{i8 0, i8 2}
