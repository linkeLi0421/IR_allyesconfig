; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/omap_remoteproc.c_pt.bc'
source_filename = "../drivers/remoteproc/omap_remoteproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_rproc_dev_data = type { ptr, ptr }
%struct.omap_rproc_mem_data = type { ptr, i32 }
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
%struct.omap_rproc = type { ptr, %struct.mbox_client, ptr, ptr, i32, i32, i32, ptr, i32, i8, ptr, ptr, %struct.completion, ptr, i8 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.omap_rproc_boot_data = type { ptr, i32, i32 }
%struct.omap_rproc_mem = type { ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap_rproc_timer = type { ptr, ptr, i32 }
%struct.omap_dm_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmtimer_platform_data = type { ptr, i32, i32, ptr, ptr }

@__initcall__kmod_omap_remoteproc__243_1393_omap_rproc_driver_init6 = internal global ptr @omap_rproc_driver_init, section ".initcall6.init", align 4
@omap_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_rproc_probe, ptr @omap_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_rproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rproc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_rproc_driver_exit = internal global ptr @omap_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [56 x i8] c"omap_remoteproc.file=drivers/remoteproc/omap_remoteproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [31 x i8] c"omap_remoteproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [65 x i8] c"omap_remoteproc.description=OMAP Remote Processor control driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap-rproc\00", [21 x i8] zeroinitializer }, align 32
@omap_rproc_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_dsp_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_ipu_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_dsp_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_ipu_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_dsp_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_ipu_dev_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@omap_rproc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_rproc_suspend, ptr @omap_rproc_resume, ptr @omap_rproc_suspend, ptr @omap_rproc_resume, ptr @omap_rproc_suspend, ptr @omap_rproc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rproc_runtime_suspend, ptr @omap_rproc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"only DT-based devices are supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_rproc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/remoteproc/omap_remoteproc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry_ptr = internal global ptr @omap_rproc_probe._entry, section ".printk_index", align 4
@omap_rproc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma_set_coherent_mask: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry_ptr.8 = internal global ptr @omap_rproc_probe._entry.6, section ".printk_index", align 4
@omap_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @omap_rproc_start, ptr @omap_rproc_stop, ptr null, ptr null, ptr @omap_rproc_kick, ptr @omap_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,autosuspend-delay-ms\00", [40 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1346, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device does not have specific CMA pool.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry_ptr.13 = internal global ptr @omap_rproc_probe._entry.10, section ".printk_index", align 4
@omap_rproc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1347, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Typically this should be provided,\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry_ptr.16 = internal global ptr @omap_rproc_probe._entry.14, section ".printk_index", align 4
@omap_rproc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1348, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"only omit if you know what you are doing.\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_rproc_probe._entry_ptr.19 = internal global ptr @omap_rproc_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@omap_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mbox_request_channel failed: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_rproc_start\00", [47 x i8] zeroinitializer }, align 32
@omap_rproc_start._entry_ptr = internal global ptr @omap_rproc_start._entry, section ".printk_index", align 4
@omap_rproc_start._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mbox_send_message failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_rproc_start._entry_ptr.25 = internal global ptr @omap_rproc_start._entry.23, section ".printk_index", align 4
@omap_rproc_start._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"omap_rproc_enable_timers failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_rproc_start._entry_ptr.28 = internal global ptr @omap_rproc_start._entry.26, section ".printk_index", align 4
@omap_rproc_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reset control deassert failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_rproc_start._entry_ptr.31 = internal global ptr @omap_rproc_start._entry.29, section ".printk_index", align 4
@omap_rproc_write_dsp_boot_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"invalid boot address 0x%llx, must be aligned on a 1KB boundary\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap_rproc_write_dsp_boot_addr\00", [33 x i8] zeroinitializer }, align 32
@omap_rproc_write_dsp_boot_addr._entry_ptr = internal global ptr @omap_rproc_write_dsp_boot_addr._entry, section ".printk_index", align 4
@omap_rproc_mbox_callback.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_remoteproc\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_rproc_mbox_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mbox msg: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@omap_rproc_mbox_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap rproc %s crashed\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_rproc_mbox_callback._entry_ptr = internal global ptr @omap_rproc_mbox_callback._entry, section ".printk_index", align 4
@omap_rproc_mbox_callback._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.3, i32 511, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"received echo reply from %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_rproc_mbox_callback._entry_ptr.41 = internal global ptr @omap_rproc_mbox_callback._entry.38, section ".printk_index", align 4
@omap_rproc_mbox_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.42, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dropping unknown message 0x%x\00", [34 x i8] zeroinitializer }, align 32
@omap_rproc_mbox_callback.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.43, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no message was found in vqid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,timers\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,watchdog-timers\00", [45 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"device node lookup for timer at index %d failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_rproc_enable_timers\00", [39 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr = internal global ptr @omap_rproc_enable_timers._entry, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not get timer platform device\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.50 = internal global ptr @omap_rproc_enable_timers._entry.48, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dmtimer pdata structure NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.53 = internal global ptr @omap_rproc_enable_timers._entry.51, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device does not have required timer ops\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.56 = internal global ptr @omap_rproc_enable_timers._entry.54, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request for timer %p failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.59 = internal global ptr @omap_rproc_enable_timers._entry.57, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"get_irq for timer %p failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.62 = internal global ptr @omap_rproc_enable_timers._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rproc-wdt\00", [22 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.47, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error requesting irq for timer %p\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.66 = internal global ptr @omap_rproc_enable_timers._entry.64, section ".printk_index", align 4
@omap_rproc_enable_timers._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.47, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"start timer %p failed failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_rproc_enable_timers._entry_ptr.69 = internal global ptr @omap_rproc_enable_timers._entry.67, section ".printk_index", align 4
@omap_rproc_request_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request for timer node %p failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_rproc_request_timer\00", [39 x i8] zeroinitializer }, align 32
@omap_rproc_request_timer._entry_ptr = internal global ptr @omap_rproc_request_timer._entry, section ".printk_index", align 4
@omap_rproc_request_timer._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"error setting OMAP_TIMER_SRC_SYS_CLK as source for timer node %p\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_rproc_request_timer._entry_ptr.74 = internal global ptr @omap_rproc_request_timer._entry.72, section ".printk_index", align 4
@omap_rproc_watchdog_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid timer\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_rproc_watchdog_isr\00", [40 x i8] zeroinitializer }, align 32
@omap_rproc_watchdog_isr._entry_ptr = internal global ptr @omap_rproc_watchdog_isr._entry, section ".printk_index", align 4
@omap_rproc_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pm_runtime_get_sync() failed during kick, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_rproc_kick\00", [16 x i8] zeroinitializer }, align 32
@omap_rproc_kick._entry_ptr = internal global ptr @omap_rproc_kick._entry, section ".printk_index", align 4
@omap_rproc_kick._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to send mailbox message, status = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_rproc_kick._entry_ptr.81 = internal global ptr @omap_rproc_kick._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@omap_rproc_of_get_internal_memories._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no memory defined for %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"omap_rproc_of_get_internal_memories\00", [60 x i8] zeroinitializer }, align 32
@omap_rproc_of_get_internal_memories._entry_ptr = internal global ptr @omap_rproc_of_get_internal_memories._entry, section ".printk_index", align 4
@omap_rproc_of_get_internal_memories._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse and map %s memory\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_rproc_of_get_internal_memories._entry_ptr.87 = internal global ptr @omap_rproc_of_get_internal_memories._entry.85, section ".printk_index", align 4
@omap_rproc_of_get_internal_memories.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"memory %8s: bus addr %pa size 0x%x va %pK da 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,bootreg\00", [21 x i8] zeroinitializer }, align 32
@omap_rproc_get_boot_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get the boot register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_rproc_get_boot_data\00", [39 x i8] zeroinitializer }, align 32
@omap_rproc_get_boot_data._entry_ptr = internal global ptr @omap_rproc_get_boot_data._entry, section ".printk_index", align 4
@omap_rproc_of_get_timers.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_rproc_of_get_timers\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device does not have timers, status = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_rproc_of_get_timers.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.92, ptr @.str.3, ptr @.str.94, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"device has %d tick timers and %d watchdog timers\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_rproc_count_wdog_timers.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_rproc_count_wdog_timers\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"device does not have watchdog timers, status = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@omap4_dsp_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.98, ptr null }, [24 x i8] zeroinitializer }, align 32
@omap4_ipu_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.99, ptr @ipu_mems }, [24 x i8] zeroinitializer }, align 32
@omap5_dsp_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.98, ptr null }, [24 x i8] zeroinitializer }, align 32
@omap5_ipu_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.99, ptr @ipu_mems }, [24 x i8] zeroinitializer }, align 32
@dra7_dsp_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.98, ptr @dra7_dsp_mems }, [24 x i8] zeroinitializer }, align 32
@dra7_ipu_dev_data = internal constant { %struct.omap_rproc_dev_data, [24 x i8] } { %struct.omap_rproc_dev_data { ptr @.str.99, ptr @ipu_mems }, [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@ipu_mems = internal constant { [2 x %struct.omap_rproc_mem_data], [16 x i8] } { [2 x %struct.omap_rproc_mem_data] [%struct.omap_rproc_mem_data { ptr @.str.100, i32 536870912 }, %struct.omap_rproc_mem_data zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l2ram\00", [26 x i8] zeroinitializer }, align 32
@dra7_dsp_mems = internal constant { [4 x %struct.omap_rproc_mem_data], [32 x i8] } { [4 x %struct.omap_rproc_mem_data] [%struct.omap_rproc_mem_data { ptr @.str.100, i32 8388608 }, %struct.omap_rproc_mem_data { ptr @.str.101, i32 14680064 }, %struct.omap_rproc_mem_data { ptr @.str.102, i32 15728640 }, %struct.omap_rproc_mem_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l1pram\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l1dram\00", [25 x i8] zeroinitializer }, align 32
@omap_rproc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"suspend failed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_rproc_suspend\00", [45 x i8] zeroinitializer }, align 32
@omap_rproc_suspend._entry_ptr = internal global ptr @omap_rproc_suspend._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_omap_rproc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PM mbox_send_message failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_omap_rproc_suspend\00", [44 x i8] zeroinitializer }, align 32
@_omap_rproc_suspend._entry_ptr = internal global ptr @_omap_rproc_suspend._entry, section ".printk_index", align 4
@_omap_rproc_suspend._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"reset assert during suspend failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@_omap_rproc_suspend._entry_ptr.109 = internal global ptr @_omap_rproc_suspend._entry.107, section ".printk_index", align 4
@_omap_rproc_suspend._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"disabling timers during suspend failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@_omap_rproc_suspend._entry_ptr.112 = internal global ptr @_omap_rproc_suspend._entry.110, section ".printk_index", align 4
@_omap_rproc_suspend._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.106, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iommu domain deactivate failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@_omap_rproc_suspend._entry_ptr.115 = internal global ptr @_omap_rproc_suspend._entry.113, section ".printk_index", align 4
@omap_rproc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resume failed %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_rproc_resume\00", [46 x i8] zeroinitializer }, align 32
@omap_rproc_resume._entry_ptr = internal global ptr @omap_rproc_resume._entry, section ".printk_index", align 4
@_omap_rproc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap_iommu activate failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_omap_rproc_resume\00", [45 x i8] zeroinitializer }, align 32
@_omap_rproc_resume._entry_ptr = internal global ptr @_omap_rproc_resume._entry, section ".printk_index", align 4
@_omap_rproc_resume._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.3, i32 874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"boot address restore failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@_omap_rproc_resume._entry_ptr.122 = internal global ptr @_omap_rproc_resume._entry.120, section ".printk_index", align 4
@_omap_rproc_resume._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabling timers during resume failed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@_omap_rproc_resume._entry_ptr.125 = internal global ptr @_omap_rproc_resume._entry.123, section ".printk_index", align 4
@_omap_rproc_resume._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.3, i32 887, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reset deassert during resume failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@_omap_rproc_resume._entry_ptr.128 = internal global ptr @_omap_rproc_resume._entry.126, section ".printk_index", align 4
@omap_rproc_runtime_suspend.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.129, ptr @.str.3, ptr @.str.130, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_rproc_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rproc cannot be runtime suspended when crashed!\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_rproc_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.3, i32 990, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rproc cannot be runtime suspended when not running!\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_rproc_runtime_suspend._entry_ptr = internal global ptr @omap_rproc_runtime_suspend._entry, section ".printk_index", align 4
@omap_rproc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 1027, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"rproc cannot be runtime resumed if not suspended! state=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_rproc_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@omap_rproc_runtime_resume._entry_ptr = internal global ptr @omap_rproc_runtime_resume._entry, section ".printk_index", align 4
@omap_rproc_runtime_resume._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"runtime resume failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_rproc_runtime_resume._entry_ptr.136 = internal global ptr @omap_rproc_runtime_resume._entry.134, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294967042, i64 4294967044, i64 4294967058, i64 4294967059]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"omap_rproc_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1383, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1387, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"omap_rproc_of_match\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1085, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"omap_rproc_pm_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1377, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1289, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1303, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"omap_rproc_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 756, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1333, i32 42 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1346, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1347, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1348, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1121, i32 51 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 615, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 629, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 635, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 641, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 575, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 499, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 507, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 511, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 522, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 527, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 333, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 336, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 340, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 349, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 357, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 368, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 376, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 385, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 393, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 395, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 410, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 161, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 167, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 289, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 541, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 550, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1185, i32 59 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1197, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1203, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1211, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1141, i32 33 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1158, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1257, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1272, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1229, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 87, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [19 x i8] c"omap4_dsp_dev_data\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1057, i32 41 }
@___asan_gen_.428 = private unnamed_addr constant [19 x i8] c"omap4_ipu_dev_data\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1061, i32 41 }
@___asan_gen_.431 = private unnamed_addr constant [19 x i8] c"omap5_dsp_dev_data\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1066, i32 41 }
@___asan_gen_.434 = private unnamed_addr constant [19 x i8] c"omap5_ipu_dev_data\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1070, i32 41 }
@___asan_gen_.437 = private unnamed_addr constant [18 x i8] c"dra7_dsp_dev_data\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1075, i32 41 }
@___asan_gen_.440 = private unnamed_addr constant [18 x i8] c"dra7_ipu_dev_data\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1080, i32 41 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1058, i32 17 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1062, i32 17 }
@___asan_gen_.449 = private unnamed_addr constant [9 x i8] c"ipu_mems\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1045, i32 41 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1046, i32 12 }
@___asan_gen_.455 = private unnamed_addr constant [14 x i8] c"dra7_dsp_mems\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1050, i32 41 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1052, i32 12 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1053, i32 12 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 922, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 785, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 816, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 822, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 835, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 963, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 865, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 874, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 881, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 887, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 984, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 990, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1026, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.561 = private constant [40 x i8] c"../drivers/remoteproc/omap_remoteproc.c\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1034, i32 3 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_omap_rproc_driver_exit, ptr @__initcall__kmod_omap_remoteproc__243_1393_omap_rproc_driver_init6, ptr @_omap_rproc_resume._entry, ptr @_omap_rproc_resume._entry.120, ptr @_omap_rproc_resume._entry.123, ptr @_omap_rproc_resume._entry.126, ptr @_omap_rproc_resume._entry_ptr, ptr @_omap_rproc_resume._entry_ptr.122, ptr @_omap_rproc_resume._entry_ptr.125, ptr @_omap_rproc_resume._entry_ptr.128, ptr @_omap_rproc_suspend._entry, ptr @_omap_rproc_suspend._entry.107, ptr @_omap_rproc_suspend._entry.110, ptr @_omap_rproc_suspend._entry.113, ptr @_omap_rproc_suspend._entry_ptr, ptr @_omap_rproc_suspend._entry_ptr.109, ptr @_omap_rproc_suspend._entry_ptr.112, ptr @_omap_rproc_suspend._entry_ptr.115, ptr @omap_rproc_driver_exit, ptr @omap_rproc_enable_timers._entry, ptr @omap_rproc_enable_timers._entry.48, ptr @omap_rproc_enable_timers._entry.51, ptr @omap_rproc_enable_timers._entry.54, ptr @omap_rproc_enable_timers._entry.57, ptr @omap_rproc_enable_timers._entry.60, ptr @omap_rproc_enable_timers._entry.64, ptr @omap_rproc_enable_timers._entry.67, ptr @omap_rproc_enable_timers._entry_ptr, ptr @omap_rproc_enable_timers._entry_ptr.50, ptr @omap_rproc_enable_timers._entry_ptr.53, ptr @omap_rproc_enable_timers._entry_ptr.56, ptr @omap_rproc_enable_timers._entry_ptr.59, ptr @omap_rproc_enable_timers._entry_ptr.62, ptr @omap_rproc_enable_timers._entry_ptr.66, ptr @omap_rproc_enable_timers._entry_ptr.69, ptr @omap_rproc_get_boot_data._entry, ptr @omap_rproc_get_boot_data._entry_ptr, ptr @omap_rproc_kick._entry, ptr @omap_rproc_kick._entry.79, ptr @omap_rproc_kick._entry_ptr, ptr @omap_rproc_kick._entry_ptr.81, ptr @omap_rproc_mbox_callback._entry, ptr @omap_rproc_mbox_callback._entry.38, ptr @omap_rproc_mbox_callback._entry_ptr, ptr @omap_rproc_mbox_callback._entry_ptr.41, ptr @omap_rproc_of_get_internal_memories._entry, ptr @omap_rproc_of_get_internal_memories._entry.85, ptr @omap_rproc_of_get_internal_memories._entry_ptr, ptr @omap_rproc_of_get_internal_memories._entry_ptr.87, ptr @omap_rproc_probe._entry, ptr @omap_rproc_probe._entry.10, ptr @omap_rproc_probe._entry.14, ptr @omap_rproc_probe._entry.17, ptr @omap_rproc_probe._entry.6, ptr @omap_rproc_probe._entry_ptr, ptr @omap_rproc_probe._entry_ptr.13, ptr @omap_rproc_probe._entry_ptr.16, ptr @omap_rproc_probe._entry_ptr.19, ptr @omap_rproc_probe._entry_ptr.8, ptr @omap_rproc_request_timer._entry, ptr @omap_rproc_request_timer._entry.72, ptr @omap_rproc_request_timer._entry_ptr, ptr @omap_rproc_request_timer._entry_ptr.74, ptr @omap_rproc_resume._entry, ptr @omap_rproc_resume._entry_ptr, ptr @omap_rproc_runtime_resume._entry, ptr @omap_rproc_runtime_resume._entry.134, ptr @omap_rproc_runtime_resume._entry_ptr, ptr @omap_rproc_runtime_resume._entry_ptr.136, ptr @omap_rproc_runtime_suspend._entry, ptr @omap_rproc_runtime_suspend._entry_ptr, ptr @omap_rproc_start._entry, ptr @omap_rproc_start._entry.23, ptr @omap_rproc_start._entry.26, ptr @omap_rproc_start._entry.29, ptr @omap_rproc_start._entry_ptr, ptr @omap_rproc_start._entry_ptr.25, ptr @omap_rproc_start._entry_ptr.28, ptr @omap_rproc_start._entry_ptr.31, ptr @omap_rproc_suspend._entry, ptr @omap_rproc_suspend._entry_ptr, ptr @omap_rproc_watchdog_isr._entry, ptr @omap_rproc_watchdog_isr._entry_ptr, ptr @omap_rproc_write_dsp_boot_addr._entry, ptr @omap_rproc_write_dsp_boot_addr._entry_ptr, ptr @omap_rproc_driver, ptr @.str, ptr @omap_rproc_of_match, ptr @omap_rproc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @omap_rproc_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @init_completion.__key, ptr @.str.97, ptr @omap4_dsp_dev_data, ptr @omap4_ipu_dev_data, ptr @omap5_dsp_dev_data, ptr @omap5_ipu_dev_data, ptr @dra7_dsp_dev_data, ptr @dra7_ipu_dev_data, ptr @.str.98, ptr @.str.99, ptr @ipu_mems, ptr @.str.100, ptr @dra7_dsp_mems, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_start._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_start._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_write_dsp_boot_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_mbox_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_mbox_callback._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_enable_timers._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_request_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_request_timer._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_watchdog_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_kick._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_of_get_internal_memories._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_of_get_internal_memories._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_get_boot_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_dsp_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_ipu_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_dsp_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_ipu_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_dsp_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_ipu_dev_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_mems to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_dsp_mems to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_suspend._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_suspend._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_suspend._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_resume._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_resume._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_rproc_resume._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rproc_runtime_resume._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_rproc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_rproc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name.i) #9
  %3 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_name.i, align 4, !annotation !282
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i131 = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %fw_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %call.i131 to ptr
  br label %omap_rproc_get_firmware.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_name.i, align 4
  br label %omap_rproc_get_firmware.exit

omap_rproc_get_firmware.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ %8, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name.i) #9
  %cmp.i132 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then9, label %if.end11

if.then9:                                         ; preds = %omap_rproc_get_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end11:                                         ; preds = %omap_rproc_get_firmware.exit
  %call13 = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call13) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i133 = icmp eq ptr %11, null
  br i1 %tobool.not.i133, label %if.end.i134, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i134:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i134, %if.end20.dev_name.exit_crit_edge
  %retval.0.i135 = phi ptr [ %13, %if.end.i134 ], [ %11, %if.end20.dev_name.exit_crit_edge ]
  %call24 = call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %retval.0.i135, ptr noundef nonnull @omap_rproc_ops, ptr noundef %retval.0.i, i32 noundef 136) #9
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %dev_name.exit.cleanup_crit_edge, label %if.end27

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit
  %priv = getelementptr inbounds %struct.rproc, ptr %call24, i32 0, i32 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %rproc28 = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %rproc28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %rproc28, align 4
  %reset29 = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 11
  %17 = ptrtoint ptr %reset29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %reset29, align 4
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call24, i32 0, i32 29
  %18 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %has_iommu, align 8
  %call30 = call fastcc i32 @omap_rproc_of_get_internal_memories(ptr noundef %pdev, ptr noundef nonnull %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.free_rproc_crit_edge

if.end27.free_rproc_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

if.end33:                                         ; preds = %if.end27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call.i137 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool.not.i138 = icmp eq ptr %call.i137, null
  br i1 %tobool.not.i138, label %if.end33.free_rproc_crit_edge, label %if.end.i139

if.end33.free_rproc_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

if.end.i139:                                      ; preds = %if.end33
  %call.i.i = call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str.89, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i139.if.end37_crit_edge, label %if.end4.i

if.end.i139.if.end37_crit_edge:                   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end4.i:                                        ; preds = %if.end.i139
  %call.i44.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #9
  %boot_data.i = getelementptr inbounds %struct.omap_rproc, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %boot_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i44.i, ptr %boot_data.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i44.i, null
  br i1 %tobool8.not.i, label %if.end4.i.free_rproc_crit_edge, label %if.end10.i

if.end4.i.free_rproc_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

if.end10.i:                                       ; preds = %if.end4.i
  %call11.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %20, ptr noundef nonnull @.str.89) #9
  %24 = ptrtoint ptr %boot_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %boot_data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call11.i, ptr %25, align 4
  %27 = load ptr, ptr %boot_data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %cmp.i.i = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %omap_rproc_get_boot_data.exit, label %if.end20.i

if.end20.i:                                       ; preds = %if.end10.i
  %boot_reg.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %27, i32 0, i32 1
  %call22.i = call i32 @of_property_read_u32_index(ptr noundef %20, ptr noundef nonnull @.str.89, i32 noundef 1, ptr noundef %boot_reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %do.end.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #12
  br label %free_rproc

if.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %boot_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %boot_data.i, align 4
  %boot_reg_shift.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %31, i32 0, i32 2
  %call28.i = call i32 @of_property_read_u32_index(ptr noundef %20, ptr noundef nonnull @.str.89, i32 noundef 2, ptr noundef %boot_reg_shift.i) #9
  br label %if.end37

omap_rproc_get_boot_data.exit:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %29 to i32
  br label %free_rproc

if.end37:                                         ; preds = %if.end26.i, %if.end.i139.if.end37_crit_edge
  %call38 = call fastcc i32 @omap_rproc_of_get_timers(ptr noundef %pdev, ptr noundef nonnull %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.free_rproc_crit_edge

if.end37.free_rproc_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rproc

if.end41:                                         ; preds = %if.end37
  %pm_comp = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 12
  %33 = ptrtoint ptr %pm_comp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pm_comp, align 4
  %wait.i = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 12, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @init_completion.__key) #9
  %autosuspend_delay = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 8
  %34 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10000, ptr %autosuspend_delay, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call.i.i141 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef %autosuspend_delay, i32 noundef 1, i32 noundef 0) #9
  %37 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %autosuspend_delay, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %38) #9
  %call49 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %fck = getelementptr inbounds %struct.omap_rproc, ptr %15, i32 0, i32 13
  %39 = ptrtoint ptr %fck to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call49, ptr %fck, align 4
  %cmp.i142 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call49 to i32
  br label %free_rproc

if.end55:                                         ; preds = %if.end41
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call.i144 = call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %42, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool58.not = icmp eq i32 %call.i144, 0
  br i1 %tobool58.not, label %if.end55.if.end72_crit_edge, label %do.end62

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end62, %if.end55.if.end72_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call24, ptr %driver_data.i.i, align 4
  %call73 = call i32 @rproc_add(ptr noundef nonnull %call24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %release_mem

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

release_mem:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_reserved_mem_device_release(ptr noundef %dev) #9
  br label %free_rproc

free_rproc:                                       ; preds = %release_mem, %if.then52, %if.end37.free_rproc_crit_edge, %omap_rproc_get_boot_data.exit, %do.end.i, %if.end4.i.free_rproc_crit_edge, %if.end33.free_rproc_crit_edge, %if.end27.free_rproc_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end27.free_rproc_crit_edge ], [ %32, %omap_rproc_get_boot_data.exit ], [ %call38, %if.end37.free_rproc_crit_edge ], [ %40, %if.then52 ], [ %call73, %release_mem ], [ -12, %if.end4.i.free_rproc_crit_edge ], [ -19, %if.end33.free_rproc_crit_edge ], [ -22, %do.end.i ]
  call void @rproc_free(ptr noundef nonnull %call24) #9
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end72.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end18, %if.then9, %if.then4, %do.end
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %9, %if.then9 ], [ %call13, %do.end18 ], [ %ret.0, %free_rproc ], [ -19, %do.end ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %1) #9
  tail call void @rproc_free(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_rproc_of_get_internal_memories(ptr noundef %pdev, ptr nocapture noundef readonly %rproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mems = getelementptr inbounds %struct.omap_rproc_dev_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mems, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call5 = tail call i32 @of_property_count_elems_of_size(ptr noundef %5, ptr noundef nonnull @.str.82, i32 noundef 4) #9
  %div = sdiv i32 %call5, 2
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 16) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !283

devm_kcalloc.exit.thread:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %mem129 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mem129 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mem129, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end4
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #9
  %mem = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %mem, align 4
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mems, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool12.not134 = icmp eq ptr %14, null
  br i1 %tobool12.not134, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %15 = phi ptr [ %65, %for.inc.for.body_crit_edge ], [ %14, %for.cond.preheader.for.body_crit_edge ]
  %i.0135 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call16 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %15) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end, label %if.end22

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mems, align 4
  %arrayidx20 = getelementptr %struct.omap_rproc_mem_data, ptr %17, i32 %i.0135
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.83, ptr noundef %19) #12
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call16) #9
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  %arrayidx25 = getelementptr %struct.omap_rproc_mem, ptr %21, i32 %i.0135
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call23, ptr %arrayidx25, align 4
  %23 = load ptr, ptr %mem, align 4
  %arrayidx27 = getelementptr %struct.omap_rproc_mem, ptr %23, i32 %i.0135
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx27, align 4
  %cmp.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end41

do.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mems, align 4
  %arrayidx35 = getelementptr %struct.omap_rproc_mem_data, ptr %27, i32 %i.0135
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.86, ptr noundef %29) #12
  %30 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem, align 4
  %arrayidx38 = getelementptr %struct.omap_rproc_mem, ptr %31, i32 %i.0135
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx38, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  %35 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call16, align 4
  %bus_addr = getelementptr %struct.omap_rproc_mem, ptr %23, i32 %i.0135, i32 1
  %37 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bus_addr, align 4
  %38 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mems, align 4
  %dev_addr = getelementptr %struct.omap_rproc_mem_data, ptr %39, i32 %i.0135, i32 1
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_addr, align 4
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %dev_addr48 = getelementptr %struct.omap_rproc_mem, ptr %43, i32 %i.0135, i32 2
  %44 = ptrtoint ptr %dev_addr48 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %dev_addr48, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i, align 4
  %47 = load i32, ptr %call16, align 4
  %sub.i = add i32 %46, 1
  %add.i = sub i32 %sub.i, %47
  %48 = load ptr, ptr %mem, align 4
  %size = getelementptr %struct.omap_rproc_mem, ptr %48, i32 %i.0135, i32 3
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_of_get_internal_memories.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_of_get_internal_memories, %if.then57)) #9
          to label %for.inc [label %if.then57], !srcloc !284

if.then57:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mems, align 4
  %arrayidx59 = getelementptr %struct.omap_rproc_mem_data, ptr %51, i32 %i.0135
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx59, align 4
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 4
  %arrayidx62 = getelementptr %struct.omap_rproc_mem, ptr %55, i32 %i.0135
  %bus_addr63 = getelementptr %struct.omap_rproc_mem, ptr %55, i32 %i.0135, i32 1
  %size66 = getelementptr %struct.omap_rproc_mem, ptr %55, i32 %i.0135, i32 3
  %56 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size66, align 4
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx62, align 4
  %dev_addr72 = getelementptr %struct.omap_rproc_mem, ptr %55, i32 %i.0135, i32 2
  %60 = ptrtoint ptr %dev_addr72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_addr72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_of_get_internal_memories.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.88, ptr noundef %53, ptr noundef %bus_addr63, i32 noundef %57, ptr noundef %59, i32 noundef %61) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.end41
  %inc = add i32 %i.0135, 1
  %62 = ptrtoint ptr %mems to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mems, align 4
  %arrayidx = getelementptr %struct.omap_rproc_mem_data, ptr %63, i32 %inc
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %65, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_mems76 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %num_mems76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div, ptr %num_mems76, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end33, %do.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %do.end33 ], [ -12, %do.end ], [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_rproc_of_get_timers(ptr noundef %pdev, ptr nocapture noundef readonly %rproc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef null) #9
  %num_timers3 = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %num_timers3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_of_get_timers, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !284

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_timers3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %7 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_timers3, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.end11.omap_rproc_count_wdog_timers.exit_crit_edge

if.end11.omap_rproc_count_wdog_timers.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_rproc_count_wdog_timers.exit

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_count_wdog_timers.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_of_get_timers, %if.then4.i)) #9
          to label %omap_rproc_count_wdog_timers.exit [label %if.then4.i], !srcloc !284

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_count_wdog_timers.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %call.i) #9
  br label %omap_rproc_count_wdog_timers.exit

omap_rproc_count_wdog_timers.exit:                ; preds = %if.then4.i, %do.body.i, %if.end11.omap_rproc_count_wdog_timers.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end11.omap_rproc_count_wdog_timers.exit_crit_edge ], [ 0, %if.then4.i ], [ 0, %do.body.i ]
  %num_wd_timers = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %num_wd_timers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ret.0.i, ptr %num_wd_timers, align 4
  %11 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_timers3, align 4
  %add = add i32 %12, %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool15.not = icmp eq i32 %add, 0
  br i1 %tobool15.not, label %omap_rproc_count_wdog_timers.exit.cleanup_crit_edge, label %if.then16

omap_rproc_count_wdog_timers.exit.cleanup_crit_edge: ; preds = %omap_rproc_count_wdog_timers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %omap_rproc_count_wdog_timers.exit
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 12) #9
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !283

devm_kcalloc.exit.thread:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %timers64 = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %timers64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %timers64, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then16
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #9
  %timers = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %timers to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %timers, align 4
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %do.body22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body22:                                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_of_get_timers, %if.then34)) #9
          to label %cleanup [label %if.then34], !srcloc !284

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_timers3, align 4
  %20 = ptrtoint ptr %num_wd_timers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_wd_timers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %19, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %omap_rproc_count_wdog_timers.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %omap_rproc_count_wdog_timers.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_start(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %client2 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 1
  %boot_data = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %boot_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %boot_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %bootaddr.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %6 = ptrtoint ptr %bootaddr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bootaddr.i, align 8
  %and.i = and i64 %7, 1023
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %omap_rproc_write_dsp_boot_addr.exit, label %omap_rproc_write_dsp_boot_addr.exit.thread

omap_rproc_write_dsp_boot_addr.exit.thread:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i64 noundef %7) #12
  br label %cleanup

omap_rproc_write_dsp_boot_addr.exit:              ; preds = %if.then
  %boot_reg.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %boot_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boot_reg.i, align 4
  %boot_reg_shift.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %boot_reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boot_reg_shift.i, align 4
  %sh_prom.i = zext i32 %11 to i64
  %shr.i = lshr i64 %7, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %shr5.i = ashr i32 -1024, %11
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %9, i32 noundef %shr5.i, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %omap_rproc_write_dsp_boot_addr.exit.if.end5_crit_edge, label %omap_rproc_write_dsp_boot_addr.exit.cleanup_crit_edge

omap_rproc_write_dsp_boot_addr.exit.cleanup_crit_edge: ; preds = %omap_rproc_write_dsp_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

omap_rproc_write_dsp_boot_addr.exit.if.end5_crit_edge: ; preds = %omap_rproc_write_dsp_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %omap_rproc_write_dsp_boot_addr.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %14 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %client2, align 4
  %tx_done = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tx_done, align 4
  %rx_callback = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap_rproc_mbox_callback, ptr %rx_callback, align 4
  %tx_block = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %knows_txdone, align 4
  %call7 = tail call ptr @mbox_request_channel(ptr noundef %client2, i32 noundef 0) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %20) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call15 = tail call i32 @mbox_send_message(ptr noundef %call7, ptr noundef nonnull inttoptr (i32 -253 to ptr)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call15) #12
  br label %put_mbox

if.end20:                                         ; preds = %if.end13
  %call21 = tail call fastcc i32 @omap_rproc_enable_timers(ptr noundef %rproc, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %call21) #12
  br label %put_mbox

if.end27:                                         ; preds = %if.end20
  %reset = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  %call28 = tail call i32 @reset_control_deassert(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %call28) #12
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %timers1.i = getelementptr inbounds %struct.omap_rproc, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %timers1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timers1.i, align 4
  %num_timers2.i = getelementptr inbounds %struct.omap_rproc, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_timers2.i, align 4
  %num_wd_timers.i = getelementptr inbounds %struct.omap_rproc, ptr %24, i32 0, i32 6
  %29 = ptrtoint ptr %num_wd_timers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_wd_timers.i, align 4
  %add.i = add i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  br i1 %cmp3.i, label %do.end33.for.body.i_crit_edge, label %do.end33.put_mbox_crit_edge

do.end33.put_mbox_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_mbox

do.end33.for.body.i_crit_edge:                    ; preds = %do.end33
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %do.end33.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %do.end33.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_rproc_timer, ptr %26, i32 %i.04.i
  %timer_ops.i.i = getelementptr %struct.omap_rproc_timer, ptr %26, i32 %i.04.i, i32 1
  %31 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %timer_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i78 = tail call i32 %34(ptr noundef %36) #9
  %37 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_timers2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04.i, i32 %38)
  %cmp6.not.i = icmp slt i32 %i.04.i, %38
  br i1 %cmp6.not.i, label %for.body.i.if.end10.i_crit_edge, label %if.then7.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq.i = getelementptr %struct.omap_rproc_timer, ptr %26, i32 %i.04.i, i32 2
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i, align 4
  %call9.i = tail call ptr @free_irq(i32 noundef %40, ptr noundef %rproc) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %for.body.i.if.end10.i_crit_edge
  %41 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %timer_ops.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %call.i2.i = tail call i32 %44(ptr noundef %46) #9
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %timer_ops.i.i, align 4
  %irq16.i = getelementptr %struct.omap_rproc_timer, ptr %26, i32 %i.04.i, i32 2
  %49 = ptrtoint ptr %irq16.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %irq16.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %if.end10.i.put_mbox_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end10.i.put_mbox_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_mbox

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #9
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !285
  tail call void @pm_runtime_enable(ptr noundef %3) #9
  %call.i79 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %51 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store volatile i64 %call.i79, ptr %last_busy.i, align 8
  %call.i80 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #9
  br label %cleanup

put_mbox:                                         ; preds = %if.end10.i.put_mbox_crit_edge, %do.end33.put_mbox_crit_edge, %do.end26, %do.end19
  %ret.0 = phi i32 [ %call15, %do.end19 ], [ %call21, %do.end26 ], [ %call28, %do.end33.put_mbox_crit_edge ], [ %call28, %if.end10.i.put_mbox_crit_edge ]
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void @mbox_free_channel(ptr noundef %53) #9
  br label %cleanup

cleanup:                                          ; preds = %put_mbox, %if.end34, %if.then10, %omap_rproc_write_dsp_boot_addr.exit.cleanup_crit_edge, %omap_rproc_write_dsp_boot_addr.exit.thread
  %retval.0 = phi i32 [ -16, %if.then10 ], [ %ret.0, %put_mbox ], [ 0, %if.end34 ], [ %call.i.i, %omap_rproc_write_dsp_boot_addr.exit.cleanup_crit_edge ], [ -22, %omap_rproc_write_dsp_boot_addr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_stop(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !286
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !287
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !288
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %timers1.i = getelementptr inbounds %struct.omap_rproc, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %timers1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timers1.i, align 4
  %num_timers2.i = getelementptr inbounds %struct.omap_rproc, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_timers2.i, align 4
  %num_wd_timers.i = getelementptr inbounds %struct.omap_rproc, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %num_wd_timers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_wd_timers.i, align 4
  %add.i = add i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  br i1 %cmp3.i, label %if.end4.for.body.i_crit_edge, label %if.end4.omap_rproc_disable_timers.exit_crit_edge

if.end4.omap_rproc_disable_timers.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_rproc_disable_timers.exit

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_rproc_timer, ptr %10, i32 %i.04.i
  %timer_ops.i.i = getelementptr %struct.omap_rproc_timer, ptr %10, i32 %i.04.i, i32 1
  %15 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timer_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %20) #9
  %21 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_timers2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04.i, i32 %22)
  %cmp6.not.i = icmp slt i32 %i.04.i, %22
  br i1 %cmp6.not.i, label %for.body.i.if.end10.i_crit_edge, label %if.then7.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq.i = getelementptr %struct.omap_rproc_timer, ptr %10, i32 %i.04.i, i32 2
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  %call9.i = tail call ptr @free_irq(i32 noundef %24, ptr noundef %rproc) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %for.body.i.if.end10.i_crit_edge
  %25 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timer_ops.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i2.i = tail call i32 %28(ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %timer_ops.i.i, align 4
  %irq16.i = getelementptr %struct.omap_rproc_timer, ptr %10, i32 %i.04.i, i32 2
  %33 = ptrtoint ptr %irq16.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %irq16.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %if.end10.i.omap_rproc_disable_timers.exit_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end10.i.omap_rproc_disable_timers.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_rproc_disable_timers.exit

omap_rproc_disable_timers.exit:                   ; preds = %if.end10.i.omap_rproc_disable_timers.exit_crit_edge, %if.end4.omap_rproc_disable_timers.exit_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void @mbox_free_channel(ptr noundef %35) #9
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %1, i1 noundef zeroext false) #9
  %usage_count.i30 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i30, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !286
  tail call void @llvm.prefetch.p0(ptr %usage_count.i30, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i30, ptr %usage_count.i30, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i30) #9, !srcloc !287
  %asmresult.i.i.i.i32 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i32)
  %cmp.not.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i32, 0
  br i1 %cmp.not.i.i.i.i33, label %omap_rproc_disable_timers.exit.pm_runtime_put_noidle.exit35_crit_edge, label %do.end11.i.i.i.i34

omap_rproc_disable_timers.exit.pm_runtime_put_noidle.exit35_crit_edge: ; preds = %omap_rproc_disable_timers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit35

do.end11.i.i.i.i34:                               ; preds = %omap_rproc_disable_timers.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !288
  br label %pm_runtime_put_noidle.exit35

pm_runtime_put_noidle.exit35:                     ; preds = %do.end11.i.i.i.i34, %omap_rproc_disable_timers.exit.pm_runtime_put_noidle.exit35_crit_edge
  %call.i36 = tail call i32 @__pm_runtime_set_status(ptr noundef %1, i32 noundef 2) #9
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i37 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %pm_runtime_put_noidle.exit35, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ 0, %pm_runtime_put_noidle.exit35 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end25, !prof !283

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 540, i32 noundef 9, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.77, i32 noundef %call.i) #12
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %3)
  br label %cleanup

if.end25:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = inttoptr i32 %vqid to ptr
  %call26 = tail call i32 @mbox_send_message(ptr noundef %5, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.80, i32 noundef %call26) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.end25.if.end32_crit_edge
  %call.i46 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i46, ptr %last_busy.i, align 8
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_mems = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_mems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mems, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp444 = icmp sgt i32 %3, 0
  br i1 %cmp444, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %mem = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %conv7 = zext i32 %len to i64
  %add = add i64 %conv7, %da
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %dev_addr = getelementptr %struct.omap_rproc_mem, ptr %5, i32 %i.045, i32 2
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_addr, align 4
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %da)
  %cmp5.not = icmp ugt i64 %conv, %da
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr %struct.omap_rproc_mem, ptr %5, i32 %i.045, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %add13 = add i32 %9, %7
  %conv14 = zext i32 %add13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv14)
  %cmp15.not = icmp ugt i64 %add, %conv14
  br i1 %cmp15.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.le = getelementptr %struct.omap_rproc_mem, ptr %5, i32 %i.045
  %10 = trunc i64 %da to i32
  %conv22 = sub i32 %10, %7
  %11 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.le, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %conv22
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then17 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_rproc_mbox_callback(ptr noundef %client, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr i8, ptr %client, i32 60
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %name3 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3, align 4
  %6 = ptrtoint ptr %data to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_mbox_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.36, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default [
    i32 -254, label %do.end9
    i32 -252, label %do.end14
    i32 -238, label %do.end.sw.bb15_crit_edge
    i32 -237, label %do.end.sw.bb15_crit_edge93
  ]

do.end.sw.bb15_crit_edge93:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %5) #12
  %8 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc, align 4
  tail call void @rproc_report_crash(ptr noundef %9, i32 noundef 2) #9
  br label %cleanup

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef %5) #12
  br label %cleanup

sw.bb15:                                          ; preds = %do.end.sw.bb15_crit_edge, %do.end.sw.bb15_crit_edge93
  %cmp = icmp eq ptr %data, inttoptr (i32 -238 to ptr)
  %suspend_acked = getelementptr i8, ptr %client, i32 128
  %frombool16 = zext i1 %cmp to i8
  %10 = ptrtoint ptr %suspend_acked to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool16, ptr %suspend_acked, align 4
  %pm_comp = getelementptr i8, ptr %client, i32 68
  tail call void @complete(ptr noundef %pm_comp) #9
  br label %cleanup

sw.default:                                       ; preds = %do.end
  %cmp17 = icmp ugt ptr %data, inttoptr (i32 -257 to ptr)
  %cmp18 = icmp ult ptr %data, inttoptr (i32 -236 to ptr)
  %or.cond = and i1 %cmp17, %cmp18
  br i1 %or.cond, label %sw.default.cleanup_crit_edge, label %if.end20

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %sw.default
  %11 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rproc, align 4
  %max_notifyid = getelementptr inbounds %struct.rproc, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %max_notifyid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_notifyid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp22 = icmp ult i32 %14, %6
  br i1 %cmp22, label %do.body24, label %if.end40

do.body24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_mbox_callback, %if.then36)) #9
          to label %cleanup [label %if.then36], !srcloc !284

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %6) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end20
  %call42 = tail call i32 @rproc_vq_interrupt(ptr noundef %12, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %do.body45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_mbox_callback, %if.then57)) #9
          to label %cleanup [label %if.then57], !srcloc !284

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug237, ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45, %if.end40.cleanup_crit_edge, %if.then36, %do.body24, %sw.default.cleanup_crit_edge, %sw.bb15, %do.end14, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_rproc_enable_timers(ptr noundef %rproc, i1 noundef zeroext %configure) unnamed_addr #2 align 64 {
entry:
  %args.i259 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %timers1 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %timers1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timers1, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %num_timers3 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_timers3, align 4
  %num_wd_timers = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_wd_timers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_wd_timers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp329 = icmp sgt i32 %add, 0
  %or.cond = select i1 %configure, i1 %cmp329, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.start_timers_crit_edge

if.end.start_timers_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_timers

for.body.lr.ph:                                   ; preds = %if.end
  %of_node10 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_timers3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0330, i32 %11)
  %cmp8 = icmp slt i32 %i.0330, %11
  %12 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node10, align 8
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %14 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef %i.0330, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.of_parse_phandle.exit_crit_edge

if.then9.of_parse_phandle.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then9.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ null, %if.then9.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %if.end13

if.else:                                          ; preds = %for.body
  %sub = sub i32 %i.0330, %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i259) #9
  %17 = call ptr @memset(ptr %args.i259, i32 255, i32 72)
  %call.i260 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.45, ptr noundef null, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %args.i259) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool.not.i261 = icmp eq i32 %call.i260, 0
  br i1 %tobool.not.i261, label %if.end.i262, label %if.else.of_parse_phandle.exit264_crit_edge

if.else.of_parse_phandle.exit264_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_parse_phandle.exit264

if.end.i262:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %args.i259 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args.i259, align 4
  br label %of_parse_phandle.exit264

of_parse_phandle.exit264:                         ; preds = %if.end.i262, %if.else.of_parse_phandle.exit264_crit_edge
  %retval.0.i263 = phi ptr [ %19, %if.end.i262 ], [ null, %if.else.of_parse_phandle.exit264_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i259) #9
  br label %if.end13

if.end13:                                         ; preds = %of_parse_phandle.exit264, %of_parse_phandle.exit
  %np.1 = phi ptr [ %retval.0.i, %of_parse_phandle.exit ], [ %retval.0.i263, %of_parse_phandle.exit264 ]
  %tobool14.not = icmp eq ptr %np.1, null
  br i1 %tobool14.not, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_timers3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0330, i32 %21)
  %cmp17 = icmp slt i32 %i.0330, %21
  %sub19 = select i1 %cmp17, i32 0, i32 %21
  %cond = sub i32 %i.0330, %sub19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %cond, i32 noundef -6) #12
  br label %free_timers

if.end20:                                         ; preds = %if.end13
  %call21 = call ptr @of_find_device_by_node(ptr noundef nonnull %np.1) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #12
  br label %put_node

if.end27:                                         ; preds = %if.end20
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %call21, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %call21, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  call void @put_device(ptr noundef %dev28) #9
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52) #12
  br label %put_node

if.end36:                                         ; preds = %if.end27
  %timer_ops37 = getelementptr inbounds %struct.dmtimer_platform_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %timer_ops37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %timer_ops37, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %if.end36.if.then54_crit_edge, label %lor.lhs.false

if.end36.if.then54_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false:                                    ; preds = %if.end36
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %lor.lhs.false.if.then54_crit_edge, label %lor.lhs.false40

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %set_source = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 12
  %28 = ptrtoint ptr %set_source to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_source, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %lor.lhs.false40.if.then54_crit_edge, label %lor.lhs.false42

lor.lhs.false40.if.then54_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %set_load = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 13
  %30 = ptrtoint ptr %set_load to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_load, align 4
  %tobool43.not = icmp eq ptr %31, null
  br i1 %tobool43.not, label %lor.lhs.false42.if.then54_crit_edge, label %lor.lhs.false44

lor.lhs.false42.if.then54_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %free = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 3
  %32 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %free, align 4
  %tobool45.not = icmp eq ptr %33, null
  br i1 %tobool45.not, label %lor.lhs.false44.if.then54_crit_edge, label %lor.lhs.false46

lor.lhs.false44.if.then54_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %start = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 10
  %34 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %start, align 4
  %tobool47.not = icmp eq ptr %35, null
  br i1 %tobool47.not, label %lor.lhs.false46.if.then54_crit_edge, label %lor.lhs.false48

lor.lhs.false46.if.then54_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %stop = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 11
  %36 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stop, align 4
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %lor.lhs.false48.if.then54_crit_edge, label %lor.lhs.false50

lor.lhs.false48.if.then54_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false50:                                  ; preds = %lor.lhs.false48
  %get_irq = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 6
  %38 = ptrtoint ptr %get_irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_irq, align 4
  %tobool51.not = icmp eq ptr %39, null
  br i1 %tobool51.not, label %lor.lhs.false50.if.then54_crit_edge, label %lor.lhs.false52

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %write_status = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 21
  %40 = ptrtoint ptr %write_status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_status, align 4
  %tobool53.not = icmp eq ptr %41, null
  br i1 %tobool53.not, label %lor.lhs.false52.if.then54_crit_edge, label %if.end58

lor.lhs.false52.if.then54_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false52.if.then54_crit_edge, %lor.lhs.false50.if.then54_crit_edge, %lor.lhs.false48.if.then54_crit_edge, %lor.lhs.false46.if.then54_crit_edge, %lor.lhs.false44.if.then54_crit_edge, %lor.lhs.false42.if.then54_crit_edge, %lor.lhs.false40.if.then54_crit_edge, %lor.lhs.false.if.then54_crit_edge, %if.end36.if.then54_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55) #12
  br label %put_node

if.end58:                                         ; preds = %lor.lhs.false52
  %arrayidx = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.0330
  %irq = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.0330, i32 2
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %irq, align 4
  %timer_ops60 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.0330, i32 1
  %43 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %25, ptr %timer_ops60, align 4
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %25, align 4
  %call.i265 = call ptr %45(ptr noundef nonnull %np.1) #9
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i265, ptr %arrayidx, align 4
  %tobool.not.i266 = icmp eq ptr %call.i265, null
  br i1 %tobool.not.i266, label %do.end.i, label %if.end.i267

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.70, ptr noundef nonnull %np.1) #12
  br label %do.end67

if.end.i267:                                      ; preds = %if.end58
  %47 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %timer_ops60, align 4
  %set_source.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %set_source.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_source.i, align 4
  %call4.i = call i32 %50(ptr noundef nonnull %call.i265, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end68, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull %np.1) #12
  %51 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %timer_ops60, align 4
  %free.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free.i, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %call12.i = call i32 %54(ptr noundef %56) #9
  br label %do.end67

do.end67:                                         ; preds = %do.end9.i, %do.end.i
  %retval.0.i268.ph = phi i32 [ -16, %do.end.i ], [ %call4.i, %do.end9.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.58, ptr noundef nonnull %np.1, i32 noundef %retval.0.i268.ph) #12
  br label %put_node

if.end68:                                         ; preds = %if.end.i267
  %57 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %timer_ops60, align 4
  %set_load.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %set_load.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_load.i, align 4
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %call16.i = call i32 %60(ptr noundef %62, i32 noundef 0) #9
  call void @of_node_put(ptr noundef nonnull %np.1) #9
  %63 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_timers3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0330, i32 %64)
  %cmp70.not = icmp slt i32 %i.0330, %64
  br i1 %cmp70.not, label %if.end68.for.inc_crit_edge, label %if.then71

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then71:                                        ; preds = %if.end68
  %65 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %timer_ops60, align 4
  %get_irq.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %get_irq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_irq.i, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call.i270 = call i32 %68(ptr noundef %70) #9
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i270, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp78 = icmp slt i32 %call.i270, 0
  br i1 %cmp78, label %do.end82, label %if.end85

do.end82:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef nonnull %np.1, i32 noundef %call.i270) #12
  br label %free_timers

if.end85:                                         ; preds = %if.then71
  %call.i271 = call i32 @request_threaded_irq(i32 noundef %call.i270, ptr noundef nonnull @omap_rproc_watchdog_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.63, ptr noundef %rproc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool89.not = icmp eq i32 %call.i271, 0
  br i1 %tobool89.not, label %if.end85.for.inc_crit_edge, label %do.end93

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef nonnull %np.1) #12
  %72 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %timer_ops60, align 4
  %free.i273 = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %free.i273 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %free.i273, align 4
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %call.i274 = call i32 %75(ptr noundef %77) #9
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %timer_ops60 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %timer_ops60, align 4
  %80 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %irq, align 4
  br label %free_timers

for.inc:                                          ; preds = %if.end85.for.inc_crit_edge, %if.end68.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.start_timers_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.start_timers_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_timers

start_timers:                                     ; preds = %for.inc.start_timers_crit_edge, %if.end.start_timers_crit_edge
  %np.2 = phi ptr [ null, %if.end.start_timers_crit_edge ], [ %np.1, %for.inc.start_timers_crit_edge ]
  br i1 %cmp329, label %start_timers.for.body105_crit_edge, label %start_timers.cleanup_crit_edge

start_timers.cleanup_crit_edge:                   ; preds = %start_timers
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

start_timers.for.body105_crit_edge:               ; preds = %start_timers
  br label %for.body105

for.body105:                                      ; preds = %for.inc114.for.body105_crit_edge, %start_timers.for.body105_crit_edge
  %i.1333 = phi i32 [ %inc115, %for.inc114.for.body105_crit_edge ], [ 0, %start_timers.for.body105_crit_edge ]
  %arrayidx106 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.1333
  %timer_ops.i275 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.1333, i32 1
  %81 = ptrtoint ptr %timer_ops.i275 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %timer_ops.i275, align 4
  %start.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %start.i, align 4
  %85 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx106, align 4
  %call.i276 = call i32 %84(ptr noundef %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool108.not = icmp eq i32 %call.i276, 0
  br i1 %tobool108.not, label %for.inc114, label %while.body.preheader

for.inc114:                                       ; preds = %for.body105
  %inc115 = add nuw nsw i32 %i.1333, 1
  %exitcond381.not = icmp eq i32 %inc115, %add
  br i1 %exitcond381.not, label %for.inc114.cleanup_crit_edge, label %for.inc114.for.body105_crit_edge

for.inc114.for.body105_crit_edge:                 ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

for.inc114.cleanup_crit_edge:                     ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %for.body105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68, ptr noundef %np.2, i32 noundef %call.i276) #12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.2335 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1333, %while.body.preheader ]
  %arrayidx120 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.2335
  %timer_ops.i277 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %i.2335, i32 1
  %87 = ptrtoint ptr %timer_ops.i277 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %timer_ops.i277, align 4
  %stop.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stop.i, align 4
  %91 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx120, align 4
  %call.i278 = call i32 %90(ptr noundef %92) #9
  %dec = add nsw i32 %i.2335, -1
  %cmp119 = icmp sgt i32 %i.2335, 0
  br i1 %cmp119, label %while.body.while.body_crit_edge, label %while.body.put_node_crit_edge

while.body.put_node_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_node

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

put_node:                                         ; preds = %while.body.put_node_crit_edge, %do.end67, %if.then54, %if.then32, %if.then23
  %i.3 = phi i32 [ %i.0330, %do.end67 ], [ %i.0330, %if.then54 ], [ %i.0330, %if.then32 ], [ %i.0330, %if.then23 ], [ -1, %while.body.put_node_crit_edge ]
  %ret.5 = phi i32 [ %retval.0.i268.ph, %do.end67 ], [ -22, %if.then54 ], [ -22, %if.then32 ], [ -19, %if.then23 ], [ %call.i276, %while.body.put_node_crit_edge ]
  %np.3 = phi ptr [ %np.1, %do.end67 ], [ %np.1, %if.then54 ], [ %np.1, %if.then32 ], [ %np.1, %if.then23 ], [ %np.2, %while.body.put_node_crit_edge ]
  br i1 %configure, label %if.then124, label %put_node.free_timers_crit_edge

put_node.free_timers_crit_edge:                   ; preds = %put_node
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_timers

if.then124:                                       ; preds = %put_node
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef %np.3) #9
  br label %free_timers

free_timers:                                      ; preds = %if.then124, %put_node.free_timers_crit_edge, %do.end93, %do.end82, %if.then15
  %i.4 = phi i32 [ %i.3, %if.then124 ], [ %i.3, %put_node.free_timers_crit_edge ], [ %i.0330, %do.end82 ], [ %i.0330, %do.end93 ], [ %i.0330, %if.then15 ]
  %ret.6 = phi i32 [ %ret.5, %if.then124 ], [ %ret.5, %put_node.free_timers_crit_edge ], [ -16, %do.end82 ], [ %call.i271, %do.end93 ], [ -6, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4)
  %tobool128.not338 = icmp eq i32 %i.4, 0
  br i1 %tobool128.not338, label %free_timers.cleanup_crit_edge, label %free_timers.while.body129_crit_edge

free_timers.while.body129_crit_edge:              ; preds = %free_timers
  br label %while.body129

free_timers.cleanup_crit_edge:                    ; preds = %free_timers
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body129:                                    ; preds = %if.end136.while.body129_crit_edge, %free_timers.while.body129_crit_edge
  %dec127339.in = phi i32 [ %dec127339, %if.end136.while.body129_crit_edge ], [ %i.4, %free_timers.while.body129_crit_edge ]
  %dec127339 = add i32 %dec127339.in, -1
  %93 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_timers3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec127339, i32 %94)
  %cmp131.not = icmp slt i32 %dec127339, %94
  br i1 %cmp131.not, label %while.body129.if.end136_crit_edge, label %if.then132

while.body129.if.end136_crit_edge:                ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then132:                                       ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #11
  %irq134 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %dec127339, i32 2
  %95 = ptrtoint ptr %irq134 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq134, align 4
  %call135 = call ptr @free_irq(i32 noundef %96, ptr noundef %rproc) #9
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %while.body129.if.end136_crit_edge
  %arrayidx137 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %dec127339
  %timer_ops.i279 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %dec127339, i32 1
  %97 = ptrtoint ptr %timer_ops.i279 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %timer_ops.i279, align 4
  %free.i280 = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %free.i280 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %free.i280, align 4
  %101 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx137, align 4
  %call.i281 = call i32 %100(ptr noundef %102) #9
  %103 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %arrayidx137, align 4
  %104 = ptrtoint ptr %timer_ops.i279 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %timer_ops.i279, align 4
  %irq144 = getelementptr %struct.omap_rproc_timer, ptr %3, i32 %dec127339, i32 2
  %105 = ptrtoint ptr %irq144 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %irq144, align 4
  %tobool128.not = icmp eq i32 %dec127339, 0
  br i1 %tobool128.not, label %if.end136.cleanup_crit_edge, label %if.end136.while.body129_crit_edge

if.end136.while.body129_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body129

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end136.cleanup_crit_edge, %free_timers.cleanup_crit_edge, %for.inc114.cleanup_crit_edge, %start_timers.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.6, %free_timers.cleanup_crit_edge ], [ 0, %start_timers.cleanup_crit_edge ], [ %ret.6, %if.end136.cleanup_crit_edge ], [ 0, %for.inc114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_report_crash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_watchdog_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %data, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %timers2 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %timers2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timers2, align 4
  %num_timers3 = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_timers3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_timers3, align 4
  %num_wd_timers = getelementptr inbounds %struct.omap_rproc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_wd_timers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_wd_timers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp34 = icmp slt i32 %7, %add
  br i1 %cmp34, label %entry.for.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %irq5 = getelementptr %struct.omap_rproc_timer, ptr %5, i32 %i.035, i32 2
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6 = icmp sgt i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %irq)
  %cmp9 = icmp eq i32 %11, %irq
  %or.cond = and i1 %cmp6, %cmp9
  br i1 %or.cond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.end:                                          ; preds = %for.body
  %arrayidx.le = getelementptr %struct.omap_rproc_timer, ptr %5, i32 %i.035
  %tobool.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end12

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %timer_ops.i = getelementptr %struct.omap_rproc_timer, ptr %5, i32 %i.035, i32 1
  %12 = ptrtoint ptr %timer_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer_ops.i, align 4
  %write_status.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %write_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_status.i, align 4
  %16 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.le, align 4
  %call.i = tail call i32 %15(ptr noundef %17, i32 noundef 2) #9
  tail call void @rproc_report_crash(ptr noundef %data, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !286
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !287
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !288
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %5, label %if.then7 [
    i32 0, label %entry.out_crit_edge
    i32 1, label %entry.out_crit_edge24
    i32 2, label %if.end8
  ]

entry.out_crit_edge24:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %entry
  %call9 = tail call fastcc i32 @_omap_rproc_suspend(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %call9) #12
  br label %out

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %need_resume = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %need_resume to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %need_resume, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end11, %do.end, %if.then7, %entry.out_crit_edge, %entry.out_crit_edge24
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ -16, %if.then7 ], [ %call9, %do.end ], [ 0, %if.end11 ], [ 0, %entry.out_crit_edge24 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %5, label %if.then3 [
    i32 0, label %entry.out_crit_edge
    i32 1, label %if.end4
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %entry
  %need_resume = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %need_resume to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_resume, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end4.out_crit_edge, label %if.end6

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end4
  %call7 = tail call fastcc i32 @_omap_rproc_resume(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116, i32 noundef %call7) #12
  br label %out

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %need_resume to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %need_resume, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %out

out:                                              ; preds = %if.end10, %do.end, %if.end4.out_crit_edge, %if.then3, %entry.out_crit_edge
  %ret.0 = phi i32 [ %5, %entry.out_crit_edge ], [ -16, %if.then3 ], [ %call7, %do.end ], [ 0, %if.end10 ], [ 0, %if.end4.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %5, label %do.end23 [
    i32 3, label %do.body
    i32 2, label %if.end42
  ], !prof !290

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_rproc_runtime_suspend.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_rproc_runtime_suspend, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !284

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_rproc_runtime_suspend.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.130) #9
  br label %cleanup

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 989, i32 noundef 9, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131) #12
  br label %cleanup

if.end42:                                         ; preds = %entry
  %fck.i = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fck.i, align 4
  %call.i = tail call zeroext i1 @ti_clk_is_in_standby(ptr noundef %8) #9
  br i1 %call.i, label %if.end45, label %if.end42.abort_crit_edge

if.end42.abort_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end45:                                         ; preds = %if.end42
  %call46 = tail call fastcc i32 @_omap_rproc_suspend(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.abort_crit_edge

if.end45.abort_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  br label %cleanup

abort:                                            ; preds = %if.end45.abort_crit_edge, %if.end42.abort_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end45.abort_crit_edge ], [ -16, %if.end42.abort_crit_edge ]
  %call.i67 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i67, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.end49, %do.end23, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -16, %do.end23 ], [ %ret.0, %abort ], [ -16, %if.then4 ], [ -16, %do.body ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rproc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !291

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1025, i32 noundef 9, ptr noundef null) #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.132, i32 noundef %5) #12
  br label %out

if.end25:                                         ; preds = %entry
  %call26 = tail call fastcc i32 @_omap_rproc_resume(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %call26) #12
  br label %out

if.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end32, %do.end31, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %call26, %do.end31 ], [ 0, %if.end32 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap_rproc_suspend(ptr noundef %rproc, i1 noundef zeroext %auto_suspend) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %pm_comp = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %pm_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pm_comp, align 4
  %suspend_acked = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %suspend_acked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspend_acked, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = select i1 %auto_suspend, ptr inttoptr (i32 -240 to ptr), ptr inttoptr (i32 -239 to ptr)
  %call2 = tail call i32 @mbox_send_message(ptr noundef %8, ptr noundef nonnull %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.105, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %pm_comp, i32 noundef 100) #9
  %10 = ptrtoint ptr %suspend_acked to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspend_acked, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %fck.i = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fck.i, align 4
  %call.i71 = tail call zeroext i1 @ti_clk_is_in_standby(ptr noundef %13) #9
  br i1 %call.i71, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %while.body.cleanup_crit_edge, label %if.end12

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %while.body
  tail call void @schedule() #9
  %15 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fck.i, align 4
  %call.i = tail call zeroext i1 @ti_clk_is_in_standby(ptr noundef %16) #9
  br i1 %call.i, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %reset = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset, align 4
  %call13 = tail call i32 @reset_control_assert(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.108, i32 noundef %call13) #12
  br label %cleanup

if.end19:                                         ; preds = %while.end
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %timers1.i = getelementptr inbounds %struct.omap_rproc, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %timers1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timers1.i, align 4
  %num_timers2.i = getelementptr inbounds %struct.omap_rproc, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_timers2.i, align 4
  %num_wd_timers.i = getelementptr inbounds %struct.omap_rproc, ptr %20, i32 0, i32 6
  %25 = ptrtoint ptr %num_wd_timers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_wd_timers.i, align 4
  %add.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  br i1 %cmp3.i, label %if.end19.for.body.i_crit_edge, label %if.end19.omap_rproc_disable_timers.exit_crit_edge

if.end19.omap_rproc_disable_timers.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_rproc_disable_timers.exit

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_rproc_timer, ptr %22, i32 %i.04.i
  %timer_ops.i.i = getelementptr %struct.omap_rproc_timer, ptr %22, i32 %i.04.i, i32 1
  %27 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timer_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop.i.i, align 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 %30(ptr noundef %32) #9
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.omap_rproc_disable_timers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.omap_rproc_disable_timers.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_rproc_disable_timers.exit

omap_rproc_disable_timers.exit:                   ; preds = %for.body.i.omap_rproc_disable_timers.exit_crit_edge, %if.end19.omap_rproc_disable_timers.exit_crit_edge
  br i1 %auto_suspend, label %if.then28, label %omap_rproc_disable_timers.exit.cleanup_crit_edge

omap_rproc_disable_timers.exit.cleanup_crit_edge: ; preds = %omap_rproc_disable_timers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %omap_rproc_disable_timers.exit
  %domain = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 1
  %33 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain, align 8
  %call29 = tail call i32 @omap_iommu_domain_deactivate(ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef %call29) #12
  %call37 = tail call fastcc i32 @omap_rproc_enable_timers(ptr noundef %rproc, i1 noundef zeroext false)
  %35 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset, align 4
  %call39 = tail call i32 @reset_control_deassert(ptr noundef %36) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then28.cleanup_crit_edge, %omap_rproc_disable_timers.exit.cleanup_crit_edge, %do.end18, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call13, %do.end18 ], [ %call29, %do.end34 ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %omap_rproc_disable_timers.exit.cleanup_crit_edge ], [ -62, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_iommu_domain_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ti_clk_is_in_standby(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap_rproc_resume(ptr noundef %rproc, i1 noundef zeroext %auto_suspend) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  br i1 %auto_suspend, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %domain = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 1
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 8
  %call = tail call i32 @omap_iommu_domain_activate(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.118, i32 noundef %call) #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %boot_data = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %boot_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %boot_data, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %bootaddr.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %8 = ptrtoint ptr %bootaddr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bootaddr.i, align 8
  %and.i = and i64 %9, 1023
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %omap_rproc_write_dsp_boot_addr.exit, label %omap_rproc_write_dsp_boot_addr.exit.thread

omap_rproc_write_dsp_boot_addr.exit.thread:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32, i64 noundef %9) #12
  br label %do.end12

omap_rproc_write_dsp_boot_addr.exit:              ; preds = %if.then6
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %boot_data.i = getelementptr inbounds %struct.omap_rproc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %boot_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %boot_data.i, align 4
  %boot_reg.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %boot_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %boot_reg.i, align 4
  %boot_reg_shift.i = getelementptr inbounds %struct.omap_rproc_boot_data, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %boot_reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boot_reg_shift.i, align 4
  %sh_prom.i = zext i32 %19 to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %shr5.i = ashr i32 -1024, %19
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %17, i32 noundef %shr5.i, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not, label %omap_rproc_write_dsp_boot_addr.exit.if.end14_crit_edge, label %omap_rproc_write_dsp_boot_addr.exit.do.end12_crit_edge

omap_rproc_write_dsp_boot_addr.exit.do.end12_crit_edge: ; preds = %omap_rproc_write_dsp_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

omap_rproc_write_dsp_boot_addr.exit.if.end14_crit_edge: ; preds = %omap_rproc_write_dsp_boot_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end12:                                         ; preds = %omap_rproc_write_dsp_boot_addr.exit.do.end12_crit_edge, %omap_rproc_write_dsp_boot_addr.exit.thread
  %retval.0.i60 = phi i32 [ -22, %omap_rproc_write_dsp_boot_addr.exit.thread ], [ %call.i.i, %omap_rproc_write_dsp_boot_addr.exit.do.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.121, i32 noundef %retval.0.i60) #12
  br label %suspend_iommu

if.end14:                                         ; preds = %omap_rproc_write_dsp_boot_addr.exit.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %call15 = tail call fastcc i32 @omap_rproc_enable_timers(ptr noundef %rproc, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef %call15) #12
  br label %suspend_iommu

if.end21:                                         ; preds = %if.end14
  %reset = getelementptr inbounds %struct.omap_rproc, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset, align 4
  %call22 = tail call i32 @reset_control_deassert(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %do.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end27:                                         ; preds = %if.end21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.127, i32 noundef %call22) #12
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %timers1.i = getelementptr inbounds %struct.omap_rproc, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %timers1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %timers1.i, align 4
  %num_timers2.i = getelementptr inbounds %struct.omap_rproc, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %num_timers2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_timers2.i, align 4
  %num_wd_timers.i = getelementptr inbounds %struct.omap_rproc, ptr %25, i32 0, i32 6
  %30 = ptrtoint ptr %num_wd_timers.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_wd_timers.i, align 4
  %add.i = add i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp3.i = icmp sgt i32 %add.i, 0
  br i1 %cmp3.i, label %do.end27.for.body.i_crit_edge, label %do.end27.suspend_iommu_crit_edge

do.end27.suspend_iommu_crit_edge:                 ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %suspend_iommu

do.end27.for.body.i_crit_edge:                    ; preds = %do.end27
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end27.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end27.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_rproc_timer, ptr %27, i32 %i.04.i
  %timer_ops.i.i = getelementptr %struct.omap_rproc_timer, ptr %27, i32 %i.04.i, i32 1
  %32 = ptrtoint ptr %timer_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %timer_ops.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i57 = tail call i32 %35(ptr noundef %37) #9
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.suspend_iommu_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.suspend_iommu_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %suspend_iommu

suspend_iommu:                                    ; preds = %for.body.i.suspend_iommu_crit_edge, %do.end27.suspend_iommu_crit_edge, %do.end20, %do.end12
  %ret.0 = phi i32 [ %retval.0.i60, %do.end12 ], [ %call15, %do.end20 ], [ %call22, %do.end27.suspend_iommu_crit_edge ], [ %call22, %for.body.i.suspend_iommu_crit_edge ]
  br i1 %auto_suspend, label %if.then31, label %suspend_iommu.cleanup_crit_edge

suspend_iommu.cleanup_crit_edge:                  ; preds = %suspend_iommu
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %suspend_iommu
  call void @__sanitizer_cov_trace_pc() #11
  %domain32 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 1
  %38 = ptrtoint ptr %domain32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain32, align 8
  %call33 = tail call i32 @omap_iommu_domain_deactivate(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %suspend_iommu.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end21.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.0, %if.then31 ], [ %ret.0, %suspend_iommu.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_iommu_domain_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272}
!llvm.module.flags = !{!273, !274, !275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !{ptr @__initcall__kmod_omap_remoteproc__243_1393_omap_rproc_driver_init6, !1, !"__initcall__kmod_omap_remoteproc__243_1393_omap_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1393, i32 1}
!2 = !{ptr @__exitcall_omap_rproc_driver_exit, !1, !"__exitcall_omap_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file244, !4, !"__UNIQUE_ID_file244", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1395, i32 1}
!5 = !{ptr @__UNIQUE_ID_license245, !4, !"__UNIQUE_ID_license245", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description246, !7, !"__UNIQUE_ID_description246", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1396, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1387, i32 11}
!10 = !{ptr @omap_rproc_driver, !11, !"omap_rproc_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1383, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1289, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap_rproc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap_rproc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1303, i32 3}
!22 = !{ptr @omap_rproc_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_rproc_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1333, i32 42}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1346, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @omap_rproc_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @omap_rproc_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1347, i32 3}
!33 = !{ptr @omap_rproc_probe._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap_rproc_probe._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1348, i32 3}
!37 = !{ptr @omap_rproc_probe._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_rproc_probe._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1121, i32 51}
!41 = !{ptr @omap_rproc_ops, !42, !"omap_rproc_ops", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 756, i32 31}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 615, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @omap_rproc_start._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_rproc_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 629, i32 3}
!50 = !{ptr @omap_rproc_start._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap_rproc_start._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 635, i32 3}
!54 = !{ptr @omap_rproc_start._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @omap_rproc_start._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 641, i32 3}
!58 = !{ptr @omap_rproc_start._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @omap_rproc_start._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 575, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @omap_rproc_write_dsp_boot_addr._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_rproc_write_dsp_boot_addr._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 499, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug235, !66, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 507, i32 3}
!72 = !{ptr @omap_rproc_mbox_callback._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @omap_rproc_mbox_callback._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 511, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @omap_rproc_mbox_callback._entry.38, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap_rproc_mbox_callback._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 522, i32 4}
!81 = !{ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug236, !80, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 527, i32 4}
!84 = !{ptr @omap_rproc_mbox_callback.__UNIQUE_ID_ddebug237, !83, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 333, i32 40}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 336, i32 12}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 340, i32 4}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @omap_rproc_enable_timers._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_rproc_enable_timers._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 349, i32 4}
!96 = !{ptr @omap_rproc_enable_timers._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @omap_rproc_enable_timers._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 357, i32 4}
!100 = !{ptr @omap_rproc_enable_timers._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @omap_rproc_enable_timers._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 368, i32 4}
!104 = !{ptr @omap_rproc_enable_timers._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @omap_rproc_enable_timers._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 376, i32 4}
!108 = !{ptr @omap_rproc_enable_timers._entry.57, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @omap_rproc_enable_timers._entry_ptr.59, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 385, i32 5}
!112 = !{ptr @omap_rproc_enable_timers._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @omap_rproc_enable_timers._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 393, i32 8}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 395, i32 5}
!118 = !{ptr @omap_rproc_enable_timers._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @omap_rproc_enable_timers._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 410, i32 4}
!122 = !{ptr @omap_rproc_enable_timers._entry.67, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @omap_rproc_enable_timers._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 161, i32 3}
!126 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @omap_rproc_request_timer._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @omap_rproc_request_timer._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 167, i32 3}
!131 = !{ptr @omap_rproc_request_timer._entry.72, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @omap_rproc_request_timer._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 289, i32 3}
!135 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @omap_rproc_watchdog_isr._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @omap_rproc_watchdog_isr._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 541, i32 3}
!140 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @omap_rproc_kick._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @omap_rproc_kick._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 550, i32 3}
!145 = !{ptr @omap_rproc_kick._entry.79, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @omap_rproc_kick._entry_ptr.81, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1185, i32 59}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1197, i32 4}
!151 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @omap_rproc_of_get_internal_memories._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @omap_rproc_of_get_internal_memories._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1203, i32 4}
!156 = !{ptr @omap_rproc_of_get_internal_memories._entry.85, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @omap_rproc_of_get_internal_memories._entry_ptr.87, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1211, i32 3}
!160 = !{ptr @omap_rproc_of_get_internal_memories.__UNIQUE_ID_ddebug239, !159, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1141, i32 33}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1158, i32 3}
!165 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @omap_rproc_get_boot_data._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @omap_rproc_get_boot_data._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.92, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1257, i32 3}
!170 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug241, !169, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!172 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1272, i32 3}
!174 = !{ptr @omap_rproc_of_get_timers.__UNIQUE_ID_ddebug242, !173, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1229, i32 3}
!177 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @omap_rproc_count_wdog_timers.__UNIQUE_ID_ddebug240, !176, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!179 = !{ptr @init_completion.__key, !180, !"__key", i1 false, i1 false}
!180 = !{!"../include/linux/completion.h", i32 87, i32 2}
!181 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @omap_rproc_of_match, !183, !"omap_rproc_of_match", i1 false, i1 false}
!183 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1085, i32 34}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1058, i32 17}
!186 = !{ptr @omap4_dsp_dev_data, !187, !"omap4_dsp_dev_data", i1 false, i1 false}
!187 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1057, i32 41}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1062, i32 17}
!190 = !{ptr @omap4_ipu_dev_data, !191, !"omap4_ipu_dev_data", i1 false, i1 false}
!191 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1061, i32 41}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1046, i32 12}
!194 = !{ptr @ipu_mems, !195, !"ipu_mems", i1 false, i1 false}
!195 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1045, i32 41}
!196 = !{ptr @omap5_dsp_dev_data, !197, !"omap5_dsp_dev_data", i1 false, i1 false}
!197 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1066, i32 41}
!198 = !{ptr @omap5_ipu_dev_data, !199, !"omap5_ipu_dev_data", i1 false, i1 false}
!199 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1070, i32 41}
!200 = !{ptr @dra7_dsp_dev_data, !201, !"dra7_dsp_dev_data", i1 false, i1 false}
!201 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1075, i32 41}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1052, i32 12}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1053, i32 12}
!206 = !{ptr @dra7_dsp_mems, !207, !"dra7_dsp_mems", i1 false, i1 false}
!207 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1050, i32 41}
!208 = !{ptr @dra7_ipu_dev_data, !209, !"dra7_ipu_dev_data", i1 false, i1 false}
!209 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1080, i32 41}
!210 = !{ptr @omap_rproc_pm_ops, !211, !"omap_rproc_pm_ops", i1 false, i1 false}
!211 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1377, i32 32}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 922, i32 3}
!214 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @omap_rproc_suspend._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @omap_rproc_suspend._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 785, i32 3}
!219 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @_omap_rproc_suspend._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @_omap_rproc_suspend._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 816, i32 3}
!224 = !{ptr @_omap_rproc_suspend._entry.107, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @_omap_rproc_suspend._entry_ptr.109, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 822, i32 3}
!228 = !{ptr @_omap_rproc_suspend._entry.110, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @_omap_rproc_suspend._entry_ptr.112, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 835, i32 4}
!232 = !{ptr @_omap_rproc_suspend._entry.113, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @_omap_rproc_suspend._entry_ptr.115, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 963, i32 3}
!236 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @omap_rproc_resume._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @omap_rproc_resume._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 865, i32 4}
!241 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @_omap_rproc_resume._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @_omap_rproc_resume._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 874, i32 4}
!246 = !{ptr @_omap_rproc_resume._entry.120, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @_omap_rproc_resume._entry_ptr.122, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 881, i32 3}
!250 = !{ptr @_omap_rproc_resume._entry.123, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @_omap_rproc_resume._entry_ptr.125, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 887, i32 3}
!254 = !{ptr @_omap_rproc_resume._entry.126, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @_omap_rproc_resume._entry_ptr.128, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 984, i32 3}
!258 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @omap_rproc_runtime_suspend.__UNIQUE_ID_ddebug238, !257, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!260 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 990, i32 3}
!262 = !{ptr @omap_rproc_runtime_suspend._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @omap_rproc_runtime_suspend._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1026, i32 3}
!266 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @omap_rproc_runtime_resume._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @omap_rproc_runtime_resume._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/remoteproc/omap_remoteproc.c", i32 1034, i32 3}
!271 = !{ptr @omap_rproc_runtime_resume._entry.134, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @omap_rproc_runtime_resume._entry_ptr.136, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{i32 1, !"wchar_size", i32 2}
!274 = !{i32 1, !"min_enum_size", i32 4}
!275 = !{i32 8, !"branch-target-enforcement", i32 0}
!276 = !{i32 8, !"sign-return-address", i32 0}
!277 = !{i32 8, !"sign-return-address-all", i32 0}
!278 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!279 = !{i32 7, !"uwtable", i32 1}
!280 = !{i32 7, !"frame-pointer", i32 2}
!281 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!282 = !{!"auto-init"}
!283 = !{!"branch_weights", i32 1, i32 2000}
!284 = !{i64 2148726982, i64 2148726987, i64 2148727000, i64 2148727044, i64 2148727078, i64 2148727099}
!285 = !{i64 2148245167, i64 2148245193, i64 2148245222, i64 2148245256, i64 2148245287, i64 2148245310}
!286 = !{i64 2148244586}
!287 = !{i64 729409, i64 729434, i64 729456, i64 729472, i64 729484, i64 729504, i64 729528, i64 729544, i64 729556}
!288 = !{i64 2148244774}
!289 = !{i8 0, i8 2}
!290 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!291 = !{!"branch_weights", i32 2000, i32 1}
