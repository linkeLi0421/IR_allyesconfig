; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/keystone_remoteproc.c_pt.bc'
source_filename = "../drivers/remoteproc/keystone_remoteproc.c"
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.keystone_rproc = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, %struct.work_struct }
%struct.keystone_rproc_mem = type { ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_keystone_remoteproc__233_510_keystone_rproc_driver_init6 = internal global ptr @keystone_rproc_driver_init, section ".initcall6.init", align 4
@keystone_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keystone_rproc_probe, ptr @keystone_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keystone_rproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_keystone_rproc_driver_exit = internal global ptr @keystone_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [54 x i8] c"keystone_remoteproc.author=Suman Anna <s-anna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [64 x i8] c"keystone_remoteproc.file=drivers/remoteproc/keystone_remoteproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [35 x i8] c"keystone_remoteproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [66 x i8] c"keystone_remoteproc.description=TI Keystone DSP Remoteproc driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keystone-rproc\00", [17 x i8] zeroinitializer }, align 32
@keystone_rproc_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2hk-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2l-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2e-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keystone-dsp%d-fw\00", [46 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"only DT-based devices are supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_rproc_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/remoteproc/keystone_remoteproc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr = internal global ptr @keystone_rproc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rproc\00", [26 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 380, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device does not have an alias id\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.11 = internal global ptr @keystone_rproc_probe._entry.8, section ".printk_index", align 4
@keystone_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @keystone_rproc_start, ptr @keystone_rproc_stop, ptr null, ptr null, ptr @keystone_rproc_kick, ptr @keystone_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable clock, status = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.14 = internal global ptr @keystone_rproc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vring\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exception\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kick-gpios\00", [21 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to get gpio for virtio kicks, status = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.20 = internal global ptr @keystone_rproc_probe._entry.18, section ".printk_index", align 4
@keystone_rproc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"device does not have specific CMA pool\0A\00", [56 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.23 = internal global ptr @keystone_rproc_probe._entry.21, section ".printk_index", align 4
@keystone_rproc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get reset status, status = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.26 = internal global ptr @keystone_rproc_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device is not in reset\0A\00", [40 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"failed to add register device with remoteproc core, status = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@keystone_rproc_probe._entry_ptr.30 = internal global ptr @keystone_rproc_probe._entry.28, section ".printk_index", align 4
@keystone_rproc_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ksproc->workqueue)\00", [58 x i8] zeroinitializer }, align 32
@keystone_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to enable vring interrupt, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_rproc_start\00", [43 x i8] zeroinitializer }, align 32
@keystone_rproc_start._entry_ptr = internal global ptr @keystone_rproc_start._entry, section ".printk_index", align 4
@keystone_rproc_start._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to enable exception interrupt, ret = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@keystone_rproc_start._entry_ptr.36 = internal global ptr @keystone_rproc_start._entry.34, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@keystone_rproc_dsp_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"invalid boot address 0x%x, must be aligned on a 1KB boundary\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keystone_rproc_dsp_boot\00", [40 x i8] zeroinitializer }, align 32
@keystone_rproc_dsp_boot._entry_ptr = internal global ptr @keystone_rproc_dsp_boot._entry, section ".printk_index", align 4
@keystone_rproc_dsp_boot._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"regmap_write of boot address failed, status = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@keystone_rproc_dsp_boot._entry_ptr.41 = internal global ptr @keystone_rproc_dsp_boot._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,syscon-dev\00", [18 x i8] zeroinitializer }, align 32
@keystone_rproc_of_get_dev_syscon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ti,syscon-dev property is absent\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"keystone_rproc_of_get_dev_syscon\00", [63 x i8] zeroinitializer }, align 32
@keystone_rproc_of_get_dev_syscon._entry_ptr = internal global ptr @keystone_rproc_of_get_dev_syscon._entry, section ".printk_index", align 4
@keystone_rproc_of_get_dev_syscon._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't read the boot register offset\0A\00", [56 x i8] zeroinitializer }, align 32
@keystone_rproc_of_get_dev_syscon._entry_ptr.47 = internal global ptr @keystone_rproc_of_get_dev_syscon._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l2sram\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l1pram\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l1dram\00", [25 x i8] zeroinitializer }, align 32
@keystone_rproc_of_get_memories._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse and map %s memory\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"keystone_rproc_of_get_memories\00", [33 x i8] zeroinitializer }, align 32
@keystone_rproc_of_get_memories._entry_ptr = internal global ptr @keystone_rproc_of_get_memories._entry, section ".printk_index", align 4
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"keystone_rproc_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 501, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 505, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"keystone_rproc_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 492, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 369, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 374, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 378, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 380, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"keystone_rproc_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 288, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 415, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 424, i32 51 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 430, i32 52 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 436, i32 50 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 439, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 445, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 450, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 453, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 459, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 174, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 179, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 187, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 81, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 88, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 340, i32 33 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 341, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 354, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 298, i32 43 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 298, i32 53 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 298, i32 63 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [44 x i8] c"../drivers/remoteproc/keystone_remoteproc.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 315, i32 4 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_keystone_rproc_driver_exit, ptr @__initcall__kmod_keystone_remoteproc__233_510_keystone_rproc_driver_init6, ptr @keystone_rproc_driver_exit, ptr @keystone_rproc_dsp_boot._entry, ptr @keystone_rproc_dsp_boot._entry.39, ptr @keystone_rproc_dsp_boot._entry_ptr, ptr @keystone_rproc_dsp_boot._entry_ptr.41, ptr @keystone_rproc_of_get_dev_syscon._entry, ptr @keystone_rproc_of_get_dev_syscon._entry.45, ptr @keystone_rproc_of_get_dev_syscon._entry_ptr, ptr @keystone_rproc_of_get_dev_syscon._entry_ptr.47, ptr @keystone_rproc_of_get_memories._entry, ptr @keystone_rproc_of_get_memories._entry_ptr, ptr @keystone_rproc_probe._entry, ptr @keystone_rproc_probe._entry.12, ptr @keystone_rproc_probe._entry.18, ptr @keystone_rproc_probe._entry.21, ptr @keystone_rproc_probe._entry.24, ptr @keystone_rproc_probe._entry.28, ptr @keystone_rproc_probe._entry.8, ptr @keystone_rproc_probe._entry_ptr, ptr @keystone_rproc_probe._entry_ptr.11, ptr @keystone_rproc_probe._entry_ptr.14, ptr @keystone_rproc_probe._entry_ptr.20, ptr @keystone_rproc_probe._entry_ptr.23, ptr @keystone_rproc_probe._entry_ptr.26, ptr @keystone_rproc_probe._entry_ptr.30, ptr @keystone_rproc_start._entry, ptr @keystone_rproc_start._entry.34, ptr @keystone_rproc_start._entry_ptr, ptr @keystone_rproc_start._entry_ptr.36, ptr @keystone_rproc_driver, ptr @.str, ptr @keystone_rproc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @keystone_rproc_ops, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @keystone_rproc_start.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_start._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_dsp_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_dsp_boot._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_of_get_dev_syscon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_of_get_dev_syscon._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_rproc_of_get_memories._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keystone_rproc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keystone_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @keystone_rproc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 17, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 17, ptr noundef nonnull @.str.1, i32 noundef %call)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end11.dev_name.exit_crit_edge ]
  %call14 = tail call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef %retval.0.i, ptr noundef nonnull @keystone_rproc_ops, ptr noundef nonnull %call.i, i32 noundef 84) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %dev_name.exit.cleanup_crit_edge, label %if.end17

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %dev_name.exit
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call14, i32 0, i32 29
  %6 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %has_iommu, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %call14, i32 0, i32 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %rproc18 = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rproc18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %rproc18, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %8, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end.i183

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #11
  br label %free_rproc

if.end.i183:                                      ; preds = %if.end17
  %call3.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.42) #8
  %dev_ctrl.i = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.i, ptr %dev_ctrl.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %keystone_rproc_of_get_dev_syscon.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i183
  %boot_offset.i = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 6
  %call10.i = tail call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %boot_offset.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i184 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i184, label %if.end23, label %do.end14.i

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #11
  br label %free_rproc

keystone_rproc_of_get_dev_syscon.exit:            ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call3.i to i32
  br label %free_rproc

if.end23:                                         ; preds = %if.end9.i
  %call.i186 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 5
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i186, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call.i186, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i186 to i32
  br label %free_rproc

if.end30:                                         ; preds = %if.end23
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i187 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %cmp32 = icmp slt i32 %call.i187, 0
  br i1 %cmp32, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i187) #11
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %disable_rpm

if.end37:                                         ; preds = %if.end30
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 48, i32 noundef 3520) #8
  %mem.i = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %mem.i, align 4
  %tobool.not.i188 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i188, label %if.end37.disable_clk_crit_edge, label %for.body.preheader.i

if.end37.disable_clk_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

for.body.preheader.i:                             ; preds = %if.end37
  %call4.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.48) #8
  %call5.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4.i) #8
  %20 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i, ptr %21, align 4
  %23 = load ptr, ptr %mem.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %cmp.i.i189 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i189, label %for.body.preheader.i.keystone_rproc_of_get_memories.exit_crit_edge, label %if.end18.i

for.body.preheader.i.keystone_rproc_of_get_memories.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %keystone_rproc_of_get_memories.exit

if.end18.i:                                       ; preds = %for.body.preheader.i
  %26 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call4.i, align 4
  %bus_addr.i = getelementptr %struct.keystone_rproc_mem, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bus_addr.i, align 4
  %29 = load i32, ptr %call4.i, align 4
  %and.i = and i32 %29, 16777215
  %30 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem.i, align 4
  %dev_addr.i = getelementptr %struct.keystone_rproc_mem, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %dev_addr.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call4.i, i32 0, i32 1
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end.i.i, align 4
  %35 = load i32, ptr %call4.i, align 4
  %sub.i.i = add i32 %34, 1
  %add.i.i = sub i32 %sub.i.i, %35
  %36 = load ptr, ptr %mem.i, align 4
  %size.i = getelementptr %struct.keystone_rproc_mem, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i.i, ptr %size.i, align 4
  %38 = load ptr, ptr %mem.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %size32.i = getelementptr %struct.keystone_rproc_mem, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %size32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size32.i, align 4
  %43 = call ptr @memset(ptr %40, i32 0, i32 %42)
  %call4.1.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.49) #8
  %call5.1.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4.1.i) #8
  %44 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem.i, align 4
  %arrayidx7.1.i = getelementptr %struct.keystone_rproc_mem, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.1.i, ptr %arrayidx7.1.i, align 4
  %47 = load ptr, ptr %mem.i, align 4
  %arrayidx9.1.i = getelementptr %struct.keystone_rproc_mem, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx9.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end18.i.keystone_rproc_of_get_memories.exit_crit_edge, label %if.end18.1.i

if.end18.i.keystone_rproc_of_get_memories.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %keystone_rproc_of_get_memories.exit

if.end18.1.i:                                     ; preds = %if.end18.i
  %50 = ptrtoint ptr %call4.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call4.1.i, align 4
  %bus_addr.1.i = getelementptr %struct.keystone_rproc_mem, ptr %47, i32 1, i32 1
  %52 = ptrtoint ptr %bus_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %bus_addr.1.i, align 4
  %53 = load i32, ptr %call4.1.i, align 4
  %and.1.i = and i32 %53, 16777215
  %54 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem.i, align 4
  %dev_addr.1.i = getelementptr %struct.keystone_rproc_mem, ptr %55, i32 1, i32 2
  %56 = ptrtoint ptr %dev_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.1.i, ptr %dev_addr.1.i, align 4
  %end.i.1.i = getelementptr inbounds %struct.resource, ptr %call4.1.i, i32 0, i32 1
  %57 = ptrtoint ptr %end.i.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end.i.1.i, align 4
  %59 = load i32, ptr %call4.1.i, align 4
  %sub.i.1.i = add i32 %58, 1
  %add.i.1.i = sub i32 %sub.i.1.i, %59
  %60 = load ptr, ptr %mem.i, align 4
  %size.1.i = getelementptr %struct.keystone_rproc_mem, ptr %60, i32 1, i32 3
  %61 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i.1.i, ptr %size.1.i, align 4
  %62 = load ptr, ptr %mem.i, align 4
  %arrayidx28.1.i = getelementptr %struct.keystone_rproc_mem, ptr %62, i32 1
  %63 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx28.1.i, align 4
  %size32.1.i = getelementptr %struct.keystone_rproc_mem, ptr %62, i32 1, i32 3
  %65 = ptrtoint ptr %size32.1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size32.1.i, align 4
  %67 = call ptr @memset(ptr %64, i32 0, i32 %66)
  %call4.2.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.50) #8
  %call5.2.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4.2.i) #8
  %68 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem.i, align 4
  %arrayidx7.2.i = getelementptr %struct.keystone_rproc_mem, ptr %69, i32 2
  %70 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call5.2.i, ptr %arrayidx7.2.i, align 4
  %71 = load ptr, ptr %mem.i, align 4
  %arrayidx9.2.i = getelementptr %struct.keystone_rproc_mem, ptr %71, i32 2
  %72 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx9.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %if.end18.1.i.keystone_rproc_of_get_memories.exit_crit_edge, label %keystone_rproc_of_get_memories.exit.thread

if.end18.1.i.keystone_rproc_of_get_memories.exit_crit_edge: ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %keystone_rproc_of_get_memories.exit

keystone_rproc_of_get_memories.exit.thread:       ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %call4.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %call4.2.i, align 4
  %bus_addr.2.i = getelementptr %struct.keystone_rproc_mem, ptr %71, i32 2, i32 1
  %76 = ptrtoint ptr %bus_addr.2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %bus_addr.2.i, align 4
  %77 = load i32, ptr %call4.2.i, align 4
  %and.2.i = and i32 %77, 16777215
  %78 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem.i, align 4
  %dev_addr.2.i = getelementptr %struct.keystone_rproc_mem, ptr %79, i32 2, i32 2
  %80 = ptrtoint ptr %dev_addr.2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.2.i, ptr %dev_addr.2.i, align 4
  %end.i.2.i = getelementptr inbounds %struct.resource, ptr %call4.2.i, i32 0, i32 1
  %81 = ptrtoint ptr %end.i.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %end.i.2.i, align 4
  %83 = load i32, ptr %call4.2.i, align 4
  %sub.i.2.i = add i32 %82, 1
  %add.i.2.i = sub i32 %sub.i.2.i, %83
  %84 = load ptr, ptr %mem.i, align 4
  %size.2.i = getelementptr %struct.keystone_rproc_mem, ptr %84, i32 2, i32 3
  %85 = ptrtoint ptr %size.2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add.i.2.i, ptr %size.2.i, align 4
  %86 = load ptr, ptr %mem.i, align 4
  %arrayidx28.2.i = getelementptr %struct.keystone_rproc_mem, ptr %86, i32 2
  %87 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx28.2.i, align 4
  %size32.2.i = getelementptr %struct.keystone_rproc_mem, ptr %86, i32 2, i32 3
  %89 = ptrtoint ptr %size32.2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size32.2.i, align 4
  %91 = call ptr @memset(ptr %88, i32 0, i32 %90)
  %num_mems33.i = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 3
  %92 = ptrtoint ptr %num_mems33.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %num_mems33.i, align 4
  br label %if.end41

keystone_rproc_of_get_memories.exit:              ; preds = %if.end18.1.i.keystone_rproc_of_get_memories.exit_crit_edge, %if.end18.i.keystone_rproc_of_get_memories.exit_crit_edge, %for.body.preheader.i.keystone_rproc_of_get_memories.exit_crit_edge
  %i.067.lcssa.i = phi i32 [ 0, %for.body.preheader.i.keystone_rproc_of_get_memories.exit_crit_edge ], [ 1, %if.end18.i.keystone_rproc_of_get_memories.exit_crit_edge ], [ 2, %if.end18.1.i.keystone_rproc_of_get_memories.exit_crit_edge ]
  %.lcssa.i = phi ptr [ @.str.48, %for.body.preheader.i.keystone_rproc_of_get_memories.exit_crit_edge ], [ @.str.49, %if.end18.i.keystone_rproc_of_get_memories.exit_crit_edge ], [ @.str.50, %if.end18.1.i.keystone_rproc_of_get_memories.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, ptr noundef nonnull %.lcssa.i) #11
  %93 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mem.i, align 4
  %arrayidx15.i = getelementptr %struct.keystone_rproc_mem, ptr %94, i32 %i.067.lcssa.i
  %95 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx15.i, align 4
  %97 = ptrtoint ptr %96 to i32
  %tobool39.not = icmp eq ptr %96, null
  br i1 %tobool39.not, label %keystone_rproc_of_get_memories.exit.if.end41_crit_edge, label %keystone_rproc_of_get_memories.exit.disable_clk_crit_edge

keystone_rproc_of_get_memories.exit.disable_clk_crit_edge: ; preds = %keystone_rproc_of_get_memories.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

keystone_rproc_of_get_memories.exit.if.end41_crit_edge: ; preds = %keystone_rproc_of_get_memories.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %keystone_rproc_of_get_memories.exit.if.end41_crit_edge, %keystone_rproc_of_get_memories.exit.thread
  %call42 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #8
  %irq_ring = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 7
  %98 = ptrtoint ptr %irq_ring to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call42, ptr %irq_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44 = icmp slt i32 %call42, 0
  br i1 %cmp44, label %if.end41.disable_clk_crit_edge, label %if.end47

if.end41.disable_clk_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

if.end47:                                         ; preds = %if.end41
  %call48 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #8
  %irq_fault = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 8
  %99 = ptrtoint ptr %irq_fault to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call48, ptr %irq_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp50 = icmp slt i32 %call48, 0
  br i1 %cmp50, label %if.end47.disable_clk_crit_edge, label %if.end53

if.end47.disable_clk_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

if.end53:                                         ; preds = %if.end47
  %call54 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef null) #8
  %kick_gpio = getelementptr inbounds %struct.keystone_rproc, ptr %8, i32 0, i32 9
  %100 = ptrtoint ptr %kick_gpio to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call54, ptr %kick_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call54) #11
  br label %disable_clk

if.end62:                                         ; preds = %if.end53
  %101 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node, align 8
  %call.i193 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev1, ptr noundef %102, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool64.not = icmp eq i32 %call.i193, 0
  br i1 %tobool64.not, label %if.end62.if.end69_crit_edge, label %do.end68

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %if.end62.if.end69_crit_edge
  %103 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reset, align 4
  %call71 = tail call i32 @reset_control_status(ptr noundef %104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.else

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call71) #11
  br label %release_mem

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp77 = icmp eq i32 %call71, 0
  br i1 %cmp77, label %do.end86, label %if.else.if.end100_crit_edge

if.else.if.end100_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

do.end86:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 453, i32 noundef 9, ptr noundef nonnull @.str.27) #8
  %105 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reset, align 4
  %call.i194 = tail call i32 @reset_control_assert(ptr noundef %106) #8
  br label %if.end100

if.end100:                                        ; preds = %do.end86, %if.else.if.end100_crit_edge
  %call101 = tail call i32 @rproc_add(ptr noundef nonnull %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end107, label %do.end106

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call101) #11
  br label %release_mem

if.end107:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %107 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %8, ptr %driver_data.i.i, align 4
  br label %cleanup

release_mem:                                      ; preds = %do.end106, %do.end76
  %ret.0 = phi i32 [ %call71, %do.end76 ], [ %call101, %do.end106 ]
  tail call void @of_reserved_mem_device_release(ptr noundef %dev1) #8
  br label %disable_clk

disable_clk:                                      ; preds = %release_mem, %if.then57, %if.end47.disable_clk_crit_edge, %if.end41.disable_clk_crit_edge, %keystone_rproc_of_get_memories.exit.disable_clk_crit_edge, %if.end37.disable_clk_crit_edge
  %ret.1 = phi i32 [ %97, %keystone_rproc_of_get_memories.exit.disable_clk_crit_edge ], [ %call54, %if.then57 ], [ %ret.0, %release_mem ], [ %call42, %if.end41.disable_clk_crit_edge ], [ %call48, %if.end47.disable_clk_crit_edge ], [ -12, %if.end37.disable_clk_crit_edge ]
  %call.i195 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %disable_rpm

disable_rpm:                                      ; preds = %disable_clk, %do.end36
  %ret.2 = phi i32 [ %call.i187, %do.end36 ], [ %ret.1, %disable_clk ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %free_rproc

free_rproc:                                       ; preds = %disable_rpm, %if.then27, %keystone_rproc_of_get_dev_syscon.exit, %do.end14.i, %do.end.i
  %ret.3 = phi i32 [ %14, %keystone_rproc_of_get_dev_syscon.exit ], [ %16, %if.then27 ], [ %ret.2, %disable_rpm ], [ -22, %do.end14.i ], [ -22, %do.end.i ]
  tail call void @rproc_free(ptr noundef nonnull %call14) #8
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end107, %dev_name.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end5 ], [ %ret.3, %free_rproc ], [ 0, %if.end107 ], [ -19, %do.end ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rproc = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rproc, align 4
  tail call void @rproc_free(ptr noundef %5) #8
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !118
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %workqueue = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10
  tail call void @__init_work(ptr noundef %workqueue, i32 noundef 0) #8
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %workqueue, align 4
  %lockdep_map = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @keystone_rproc_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @handle_event, ptr %func, align 4
  %irq_ring = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_ring, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @keystone_rproc_vring_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %irq_fault = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %irq_fault to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_fault, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %init_name.i56 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i56, align 8
  %tobool.not.i57 = icmp eq ptr %21, null
  br i1 %tobool.not.i57, label %if.end.i58, label %if.end.dev_name.exit60_crit_edge

if.end.dev_name.exit60_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit60

if.end.i58:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %dev_name.exit60

dev_name.exit60:                                  ; preds = %if.end.i58, %if.end.dev_name.exit60_crit_edge
  %retval.0.i59 = phi ptr [ %23, %if.end.i58 ], [ %21, %if.end.dev_name.exit60_crit_edge ]
  %call.i61 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @keystone_rproc_exception_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i59, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool14.not = icmp eq i32 %call.i61, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %dev_name.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35, i32 noundef %call.i61) #11
  br label %free_vring_irq

if.end20:                                         ; preds = %dev_name.exit60
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %26 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bootaddr, align 8
  %conv = trunc i64 %27 to i32
  %and.i = and i32 %conv, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i62 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i62, label %if.end.i64, label %do.end.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.37, i32 noundef %conv) #11
  br label %free_exc_irq

if.end.i64:                                       ; preds = %if.end20
  %dev_ctrl.i = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_ctrl.i, align 4
  %boot_offset.i = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %boot_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %boot_offset.i, align 4
  %call.i63 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %33, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool1.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool1.not.i, label %keystone_rproc_dsp_boot.exit, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef %call.i63) #11
  br label %free_exc_irq

keystone_rproc_dsp_boot.exit:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  %reset.i = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reset.i, align 4
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef %37) #8
  br label %cleanup

free_exc_irq:                                     ; preds = %do.end5.i, %do.end.i
  %retval.0.i65.ph = phi i32 [ %call.i63, %do.end5.i ], [ -22, %do.end.i ]
  %38 = ptrtoint ptr %irq_fault to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq_fault, align 4
  %call26 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %1) #8
  br label %free_vring_irq

free_vring_irq:                                   ; preds = %free_exc_irq, %do.end18
  %ret.0 = phi i32 [ %call.i61, %do.end18 ], [ %retval.0.i65.ph, %free_exc_irq ]
  %40 = ptrtoint ptr %irq_ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_ring, align 4
  %call28 = tail call ptr @free_irq(i32 noundef %41, ptr noundef %1) #8
  %call30 = tail call zeroext i1 @flush_work(ptr noundef %workqueue) #8
  br label %cleanup

cleanup:                                          ; preds = %free_vring_irq, %keystone_rproc_dsp_boot.exit, %do.end9
  %retval.0 = phi i32 [ 0, %keystone_rproc_dsp_boot.exit ], [ %call.i, %do.end9 ], [ %ret.0, %free_vring_irq ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reset.i = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %irq_fault = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_fault, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #8
  %irq_ring = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_ring, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #8
  %workqueue = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 10
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %workqueue) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %kick_gpio = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %kick_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kick_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !120

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 235, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @keystone_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_mems = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_mems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mems, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp182 = icmp sgt i32 %3, 0
  br i1 %cmp182, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mem = getelementptr inbounds %struct.keystone_rproc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %da)
  %cmp9 = icmp ult i64 %da, 16777215
  %conv28 = zext i32 %len to i64
  %add29 = add i64 %conv28, %da
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bus_addr2 = getelementptr %struct.keystone_rproc_mem, ptr %5, i32 %i.083, i32 1
  %6 = ptrtoint ptr %bus_addr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_addr2, align 4
  %dev_addr5 = getelementptr %struct.keystone_rproc_mem, ptr %5, i32 %i.083, i32 2
  %8 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_addr5, align 4
  %size8 = getelementptr %struct.keystone_rproc_mem, ptr %5, i32 %i.083, i32 3
  %10 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size8, align 4
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %da)
  %cmp11.not = icmp ugt i64 %conv, %da
  br i1 %cmp11.not, label %if.then10.for.inc_crit_edge, label %land.lhs.true

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then10
  %add14 = add i32 %11, %9
  %conv15 = zext i32 %add14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %conv15)
  %cmp16.not = icmp ugt i64 %add29, %conv15
  br i1 %cmp16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv24 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv24, i64 %da)
  %cmp25.not = icmp ugt i64 %conv24, %da
  br i1 %cmp25.not, label %if.else.for.inc_crit_edge, label %land.lhs.true27

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true27:                                  ; preds = %if.else
  %add30 = add i32 %11, %7
  %conv31 = zext i32 %add30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %conv31)
  %cmp32.not = icmp ugt i64 %add29, %conv31
  br i1 %cmp32.not, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.cleanup.sink.split_crit_edge

land.lhs.true27.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true27.for.inc_crit_edge, %if.else.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then10.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true27.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.lcssa92.sink = phi i32 [ %9, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %7, %land.lhs.true27.cleanup.sink.split_crit_edge ]
  %arrayidx.le = getelementptr %struct.keystone_rproc_mem, ptr %5, i32 %i.083
  %12 = trunc i64 %da to i32
  %conv20 = sub i32 %12, %.lcssa92.sink
  %13 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.le, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %add.ptr, %cleanup.sink.split ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_event(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  %call = tail call i32 @rproc_vq_interrupt(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %call2 = tail call i32 @rproc_vq_interrupt(ptr noundef %3, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_vring_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.keystone_rproc, ptr %dev_id, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %workqueue) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_rproc_exception_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr inbounds %struct.keystone_rproc, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  tail call void @rproc_report_crash(ptr noundef %1, i32 noundef 2) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_report_crash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_keystone_remoteproc__233_510_keystone_rproc_driver_init6, !1, !"__initcall__kmod_keystone_remoteproc__233_510_keystone_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_keystone_rproc_driver_exit, !1, !"__exitcall_keystone_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_file235, !6, !"__UNIQUE_ID_file235", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_license236, !6, !"__UNIQUE_ID_license236", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description237, !9, !"__UNIQUE_ID_description237", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 514, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 505, i32 11}
!12 = !{ptr @keystone_rproc_driver, !13, !"keystone_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 501, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 369, i32 19}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 374, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @keystone_rproc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @keystone_rproc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 378, i32 31}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 380, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @keystone_rproc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @keystone_rproc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 415, i32 3}
!33 = !{ptr @keystone_rproc_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @keystone_rproc_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 424, i32 51}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 430, i32 52}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 436, i32 50}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 439, i32 3}
!43 = !{ptr @keystone_rproc_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @keystone_rproc_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 445, i32 3}
!47 = !{ptr @keystone_rproc_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @keystone_rproc_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 450, i32 3}
!51 = !{ptr @keystone_rproc_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @keystone_rproc_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 453, i32 3}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 459, i32 3}
!57 = !{ptr @keystone_rproc_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @keystone_rproc_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @keystone_rproc_ops, !60, !"keystone_rproc_ops", i1 false, i1 false}
!60 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 288, i32 31}
!61 = !{ptr @keystone_rproc_start.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 174, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 179, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @keystone_rproc_start._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @keystone_rproc_start._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 187, i32 3}
!71 = !{ptr @keystone_rproc_start._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @keystone_rproc_start._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 81, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @keystone_rproc_dsp_boot._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @keystone_rproc_dsp_boot._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 88, i32 3}
!80 = !{ptr @keystone_rproc_dsp_boot._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @keystone_rproc_dsp_boot._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 340, i32 33}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 341, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @keystone_rproc_of_get_dev_syscon._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @keystone_rproc_of_get_dev_syscon._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 354, i32 3}
!91 = !{ptr @keystone_rproc_of_get_dev_syscon._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @keystone_rproc_of_get_dev_syscon._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 298, i32 43}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 298, i32 53}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 298, i32 63}
!99 = distinct !{null, !100, !"mem_names", i1 false, i1 false}
!100 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 298, i32 28}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 315, i32 4}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @keystone_rproc_of_get_memories._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @keystone_rproc_of_get_memories._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @keystone_rproc_of_match, !107, !"keystone_rproc_of_match", i1 false, i1 false}
!107 = !{!"../drivers/remoteproc/keystone_remoteproc.c", i32 492, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148351661}
!118 = !{i64 837281, i64 837306, i64 837328, i64 837344, i64 837356, i64 837376, i64 837400, i64 837416, i64 837428}
!119 = !{i64 2148351849}
!120 = !{!"branch_weights", i32 1, i32 2000}
