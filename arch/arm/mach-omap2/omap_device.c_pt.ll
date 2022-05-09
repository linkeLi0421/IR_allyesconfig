; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_device.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.omap_device = type { ptr, ptr, i32, i8, i8, i8 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.78, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.78 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@omap_device_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap_device: build failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_device_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-omap2/omap_device.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_device_alloc._entry_ptr = internal global ptr @omap_device_alloc._entry, section ".printk_index", align 4
@omap_device_fail_pm_domain = dso_local global { %struct.dev_pm_domain, [48 x i8] } { %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_od_fail_runtime_suspend, ptr @_od_fail_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@omap_device_pm_domain = dso_local global { %struct.dev_pm_domain, [48 x i8] } { %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr @platform_pm_freeze, ptr @platform_pm_thaw, ptr @platform_pm_poweroff, ptr @platform_pm_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_runtime_suspend, ptr @_od_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@omap_device_register.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omap_device\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_device_register\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_device: %s: registering\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_device_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 517, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"omap_device: %s() called from invalid state %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_device_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_device_enable._entry_ptr = internal global ptr @omap_device_enable._entry, section ".printk_index", align 4
@omap_device_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.11, ptr @.str.2, i32 548, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_device_idle\00", [47 x i8] zeroinitializer }, align 32
@omap_device_idle._entry_ptr = internal global ptr @omap_device_idle._entry, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: no hwmod name!\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.omap_device_get_by_hwmod_name = private unnamed_addr constant [30 x i8] c"omap_device_get_by_hwmod_name\00", align 1
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: no hwmod for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: no omap_device for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap_device__293_656___omap_device_init2 = internal global ptr @__omap_device_init, section ".initcall2.init", align 4
@__initcall__kmod_omap_device__294_706___omap_device_late_init7s = internal global ptr @__omap_device_late_init, section ".initcall7s.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@_add_clkdev.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_add_clkdev\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Creating %s -> %s\0A\00", [45 x i8] zeroinitializer }, align 32
@_add_clkdev.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alias %s already exists\0A\00", [39 x i8] zeroinitializer }, align 32
@_add_clkdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clkdev_alloc for %s failed\0A\00", [36 x i8] zeroinitializer }, align 32
@_add_clkdev._entry_ptr = internal global ptr @_add_clkdev._entry, section ".printk_index", align 4
@_add_clkdev._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_get for %s failed\0A\00", [41 x i8] zeroinitializer }, align 32
@_add_clkdev._entry_ptr.22 = internal global ptr @_add_clkdev._entry.20, section ".printk_index", align 4
@_od_fail_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 406, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: FIXME: missing hwmod/omap_dev info\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_od_fail_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@_od_fail_runtime_suspend._entry_ptr = internal global ptr @_od_fail_runtime_suspend._entry, section ".printk_index", align 4
@_od_fail_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.2, i32 412, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_od_fail_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@_od_fail_runtime_resume._entry_ptr = internal global ptr @_od_fail_runtime_resume._entry, section ".printk_index", align 4
@_od_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"use pm_runtime_put_sync_suspend() in driver?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_od_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@_od_runtime_resume._entry_ptr = internal global ptr @_od_runtime_resume._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@platform_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @_omap_device_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@_omap_device_notifier_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 225, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabled after unload, idling\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_omap_device_notifier_call\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_omap_device_notifier_call._entry_ptr = internal global ptr @_omap_device_notifier_call._entry, section ".printk_index", align 4
@_omap_device_notifier_call._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed to idle\0A\00", [16 x i8] zeroinitializer }, align 32
@_omap_device_notifier_call._entry_ptr.33 = internal global ptr @_omap_device_notifier_call._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,hwmods\00", [22 x i8] zeroinitializer }, align 32
@omap_device_build_from_dt.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_device_build_from_dt\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No 'hwmods' to build omap_device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_system\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@omap_device_build_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot lookup hwmod '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_device_build_from_dt._entry_ptr = internal global ptr @omap_device_build_from_dt._entry, section ".printk_index", align 4
@omap_device_build_from_dt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot allocate omap_device for :%s\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_device_build_from_dt._entry_ptr.42 = internal global ptr @omap_device_build_from_dt._entry.40, section ".printk_index", align 4
@omap_device_late_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 692, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: enabled but no driver.  Idling\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_device_late_idle\00", [42 x i8] zeroinitializer }, align 32
@omap_device_late_idle._entry_ptr = internal global ptr @omap_device_late_idle._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 7]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 362, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"omap_device_fail_pm_domain\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 459, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"omap_device_pm_domain\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 466, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 486, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 515, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 546, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 628, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 634, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 639, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 113, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 53, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 57, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 81, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 84, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 406, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 412, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 397, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"platform_nb\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 647, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 225, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 228, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 139, i32 43 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 141, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 147, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 148, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 166, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 178, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [37 x i8] c"../arch/arm/mach-omap2/omap_device.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 691, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__initcall__kmod_omap_device__293_656___omap_device_init2, ptr @__initcall__kmod_omap_device__294_706___omap_device_late_init7s, ptr @__omap_device_init, ptr @__omap_device_late_init, ptr @_add_clkdev._entry, ptr @_add_clkdev._entry.20, ptr @_add_clkdev._entry_ptr, ptr @_add_clkdev._entry_ptr.22, ptr @_od_fail_runtime_resume._entry, ptr @_od_fail_runtime_resume._entry_ptr, ptr @_od_fail_runtime_suspend._entry, ptr @_od_fail_runtime_suspend._entry_ptr, ptr @_od_runtime_resume._entry, ptr @_od_runtime_resume._entry_ptr, ptr @_omap_device_notifier_call._entry, ptr @_omap_device_notifier_call._entry.31, ptr @_omap_device_notifier_call._entry_ptr, ptr @_omap_device_notifier_call._entry_ptr.33, ptr @omap_device_alloc._entry, ptr @omap_device_alloc._entry_ptr, ptr @omap_device_build_from_dt._entry, ptr @omap_device_build_from_dt._entry.40, ptr @omap_device_build_from_dt._entry_ptr, ptr @omap_device_build_from_dt._entry_ptr.42, ptr @omap_device_enable._entry, ptr @omap_device_enable._entry_ptr, ptr @omap_device_idle._entry, ptr @omap_device_idle._entry_ptr, ptr @omap_device_late_idle._entry, ptr @omap_device_late_idle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @omap_device_fail_pm_domain, ptr @omap_device_pm_domain, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @platform_nb, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_fail_pm_domain to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_pm_domain to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_add_clkdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_add_clkdev._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_od_fail_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_od_fail_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_od_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_device_notifier_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_device_notifier_call._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_build_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_build_from_dt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_device_late_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_get_context_loss_count(ptr noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %hwmods_cnt = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwmods_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %to_omap_device.exit.if.end_crit_edge, label %if.then

to_omap_device.exit.if.end_crit_edge:             ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hwmods = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 1
  %4 = ptrtoint ptr %hwmods to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmods, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @omap_hwmod_get_context_loss_count(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %to_omap_device.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %to_omap_device.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_get_context_loss_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_device_alloc(ptr noundef %pdev, ptr noundef %ohs, i32 noundef %oh_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %conv = trunc i32 %oh_cnt to i8
  %hwmods_cnt = getelementptr inbounds %struct.omap_device, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %hwmods_cnt, align 4
  %mul = shl i32 %oh_cnt, 2
  %call1 = tail call ptr @kmemdup(ptr noundef %ohs, i32 noundef %mul, i32 noundef 3264) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %oda_exit2, label %if.end4

if.end4:                                          ; preds = %if.end
  %hwmods5 = getelementptr inbounds %struct.omap_device, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %hwmods5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %hwmods5, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call7.i.i, align 8
  %archdata = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %4 = ptrtoint ptr %archdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %archdata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oh_cnt)
  %cmp34 = icmp sgt i32 %oh_cnt, 0
  br i1 %cmp34, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %_add_hwmod_clocks_clkdev.exit.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %_add_hwmod_clocks_clkdev.exit.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call1, i32 %i.035
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %od9 = getelementptr inbounds %struct.omap_hwmod, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %od9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %od9, align 4
  %8 = load ptr, ptr %arrayidx, align 4
  %main_clk.i = getelementptr inbounds %struct.omap_hwmod, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %main_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_clk.i, align 4
  tail call fastcc void @_add_clkdev(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef %10) #9
  %opt_clks_cnt.i = getelementptr inbounds %struct.omap_hwmod, ptr %8, i32 0, i32 22
  %11 = ptrtoint ptr %opt_clks_cnt.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %opt_clks_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp12.not.i = icmp eq i8 %12, 0
  br i1 %cmp12.not.i, label %for.body._add_hwmod_clocks_clkdev.exit_crit_edge, label %for.body.lr.ph.i

for.body._add_hwmod_clocks_clkdev.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %_add_hwmod_clocks_clkdev.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %opt_clks.i = getelementptr inbounds %struct.omap_hwmod, ptr %8, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %opt_clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opt_clks.i, align 4
  %arrayidx.i = getelementptr %struct.omap_hwmod_opt_clk, ptr %14, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %clk.i = getelementptr %struct.omap_hwmod_opt_clk, ptr %14, i32 %i.013.i, i32 1
  %17 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i, align 4
  tail call fastcc void @_add_clkdev(ptr noundef nonnull %call7.i.i, ptr noundef %16, ptr noundef %18) #9
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %19 = ptrtoint ptr %opt_clks_cnt.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opt_clks_cnt.i, align 1
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i._add_hwmod_clocks_clkdev.exit_crit_edge

for.body.i._add_hwmod_clocks_clkdev.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_add_hwmod_clocks_clkdev.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

_add_hwmod_clocks_clkdev.exit:                    ; preds = %for.body.i._add_hwmod_clocks_clkdev.exit_crit_edge, %for.body._add_hwmod_clocks_clkdev.exit_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %oh_cnt
  br i1 %exitcond.not, label %_add_hwmod_clocks_clkdev.exit.cleanup_crit_edge, label %_add_hwmod_clocks_clkdev.exit.for.body_crit_edge

_add_hwmod_clocks_clkdev.exit.for.body_crit_edge: ; preds = %_add_hwmod_clocks_clkdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

_add_hwmod_clocks_clkdev.exit.cleanup_crit_edge:  ; preds = %_add_hwmod_clocks_clkdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

oda_exit2:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.end

do.end:                                           ; preds = %oda_exit2, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef -12) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %_add_hwmod_clocks_clkdev.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.end4.cleanup_crit_edge ], [ %call7.i.i, %_add_hwmod_clocks_clkdev.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_device_delete(ptr noundef %od) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %od, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %od, align 4
  %archdata = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %archdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %archdata, align 8
  %hwmods = getelementptr inbounds %struct.omap_device, ptr %od, i32 0, i32 1
  %3 = ptrtoint ptr %hwmods to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmods, align 4
  tail call void @kfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %od) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_fail_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_fail_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25) #13
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_freeze(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_thaw(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_poweroff(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_restore(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_suspend_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %_driver_status = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 2
  %2 = ptrtoint ptr %_driver_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_driver_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not = icmp eq i32 %3, 5
  br i1 %cmp.not, label %if.end, label %to_omap_device.exit.cleanup_crit_edge

to_omap_device.exit.cleanup_crit_edge:            ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %to_omap_device.exit
  %call1 = tail call i32 @pm_generic_suspend_noirq(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  br i1 %tobool.not.i, label %if.then6.to_omap_device.exit.i_crit_edge, label %cond.true.i.i

if.then6.to_omap_device.exit.i_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit.i

cond.true.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i.i = getelementptr i8, ptr %dev, i32 968
  %6 = ptrtoint ptr %archdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %archdata.i.i, align 8
  br label %to_omap_device.exit.i

to_omap_device.exit.i:                            ; preds = %cond.true.i.i, %if.then6.to_omap_device.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.then6.to_omap_device.exit.i_crit_edge ]
  %_state.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %to_omap_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #13
  br label %omap_device_idle.exit

if.end.i:                                         ; preds = %to_omap_device.exit.i
  %hwmods_cnt.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwmods_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp7.not.i.i, label %if.end.i.if.then7.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %hwmods.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %hwmods.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwmods.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 %i.09.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @omap_hwmod_idle(ptr noundef %15) #9
  %or.i.i = or i32 %call.i.i, %ret.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %16 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hwmods_cnt.i.i, align 4
  %conv.i.i = zext i8 %17 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_omap_device_idle_hwmods.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_omap_device_idle_hwmods.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp5.i, label %_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge, label %_omap_device_idle_hwmods.exit.i.omap_device_idle.exit_crit_edge

_omap_device_idle_hwmods.exit.i.omap_device_idle.exit_crit_edge: ; preds = %_omap_device_idle_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_device_idle.exit

_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge: ; preds = %_omap_device_idle_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %18 = ptrtoint ptr %_state.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %_state.i, align 1
  br label %omap_device_idle.exit

omap_device_idle.exit:                            ; preds = %if.then7.i, %_omap_device_idle_hwmods.exit.i.omap_device_idle.exit_crit_edge, %do.end.i
  %flags = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 2
  %21 = or i8 %20, 1
  store i8 %21, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %omap_device_idle.exit, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_omap_device.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %to_omap_device.exit.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %omap_device_idle.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %to_omap_device.exit, label %to_omap_device.exit.thread

to_omap_device.exit:                              ; preds = %entry
  call void @__asan_load1_noabort(i32 14)
  %0 = load i8, ptr inttoptr (i32 14 to ptr), align 2
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %to_omap_device.exit.if.end_crit_edge, label %if.then

to_omap_device.exit.if.end_crit_edge:             ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

to_omap_device.exit.thread:                       ; preds = %entry
  %archdata.i = getelementptr i8, ptr %dev, i32 968
  %2 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %archdata.i, align 8
  %flags13 = getelementptr inbounds %struct.omap_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags13, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not14 = icmp eq i8 %6, 0
  br i1 %tobool.not14, label %to_omap_device.exit.thread.if.end_crit_edge, label %cond.true.i.i

to_omap_device.exit.thread.if.end_crit_edge:      ; preds = %to_omap_device.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and3 = and i8 %0, -2
  call void @__asan_store1_noabort(i32 14)
  store i8 %and3, ptr inttoptr (i32 14 to ptr), align 2
  br label %to_omap_device.exit.i

cond.true.i.i:                                    ; preds = %to_omap_device.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %and317 = and i8 %5, -2
  %7 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and317, ptr %flags13, align 2
  %8 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit.i

to_omap_device.exit.i:                            ; preds = %cond.true.i.i, %if.then
  %cond.i.i = phi ptr [ %9, %cond.true.i.i ], [ null, %if.then ]
  %_state.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %to_omap_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1) #13
  br label %omap_device_enable.exit

if.end.i:                                         ; preds = %to_omap_device.exit.i
  %hwmods_cnt.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hwmods_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp7.not.i.i = icmp eq i8 %13, 0
  br i1 %cmp7.not.i.i, label %if.end.i.if.then7.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %hwmods.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %hwmods.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwmods.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 %i.09.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @omap_hwmod_enable(ptr noundef %17) #9
  %or.i.i = or i32 %call.i.i, %ret.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %18 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hwmods_cnt.i.i, align 4
  %conv.i.i = zext i8 %19 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_omap_device_enable_hwmods.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_omap_device_enable_hwmods.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp5.i, label %_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge, label %_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge

_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_device_enable.exit

_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %20 = ptrtoint ptr %_state.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %_state.i, align 1
  br label %omap_device_enable.exit

omap_device_enable.exit:                          ; preds = %if.then7.i, %_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge, %do.end.i
  %call6 = tail call i32 @pm_generic_runtime_resume(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %omap_device_enable.exit, %to_omap_device.exit.thread.if.end_crit_edge, %to_omap_device.exit.if.end_crit_edge
  %call7 = tail call i32 @pm_generic_resume_noirq(ptr noundef %dev) #9
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_generic_runtime_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i, label %if.end.to_omap_device.exit.i_crit_edge, label %cond.true.i.i

if.end.to_omap_device.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i.i = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %archdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i.i, align 8
  br label %to_omap_device.exit.i

to_omap_device.exit.i:                            ; preds = %cond.true.i.i, %if.end.to_omap_device.exit.i_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %if.end.to_omap_device.exit.i_crit_edge ]
  %_state.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %to_omap_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %to_omap_device.exit.i
  %hwmods_cnt.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp7.not.i.i, label %if.end.i.if.then7.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %hwmods.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %hwmods.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.09.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @omap_hwmod_idle(ptr noundef %9) #9
  %or.i.i = or i32 %call.i.i, %ret.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %10 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwmods_cnt.i.i, align 4
  %conv.i.i = zext i8 %11 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_omap_device_idle_hwmods.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_omap_device_idle_hwmods.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp5.i, label %_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge, label %_omap_device_idle_hwmods.exit.i.cleanup_crit_edge

_omap_device_idle_hwmods.exit.i.cleanup_crit_edge: ; preds = %_omap_device_idle_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge: ; preds = %_omap_device_idle_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %_omap_device_idle_hwmods.exit.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %12 = ptrtoint ptr %_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %_state.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %_omap_device_idle_hwmods.exit.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.then7.i ], [ %or.i.i, %_omap_device_idle_hwmods.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_od_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i, label %entry.to_omap_device.exit.i_crit_edge, label %cond.true.i.i

entry.to_omap_device.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i.i = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %archdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i.i, align 8
  br label %to_omap_device.exit.i

to_omap_device.exit.i:                            ; preds = %cond.true.i.i, %entry.to_omap_device.exit.i_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.to_omap_device.exit.i_crit_edge ]
  %_state.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %to_omap_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1) #13
  br label %do.end

if.end.i:                                         ; preds = %to_omap_device.exit.i
  %hwmods_cnt.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp7.not.i.i, label %if.end.i.if.end_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %hwmods.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %hwmods.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.09.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @omap_hwmod_enable(ptr noundef %9) #9
  %or.i.i = or i32 %call.i.i, %ret.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %10 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwmods_cnt.i.i, align 4
  %conv.i.i = zext i8 %11 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_omap_device_enable_hwmods.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_omap_device_enable_hwmods.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp5.i, label %_omap_device_enable_hwmods.exit.i.if.end_crit_edge, label %_omap_device_enable_hwmods.exit.i.do.end_crit_edge

_omap_device_enable_hwmods.exit.i.do.end_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

_omap_device_enable_hwmods.exit.i.if.end_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %_omap_device_enable_hwmods.exit.i.do.end_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %or.i.i, %_omap_device_enable_hwmods.exit.i.do.end_crit_edge ], [ -22, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end:                                           ; preds = %_omap_device_enable_hwmods.exit.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %12 = ptrtoint ptr %_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %_state.i, align 1
  %call1 = tail call i32 @pm_generic_runtime_resume(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_register(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_device_register.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_device_register, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_device_register.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.7, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_domain_set(ptr noundef %dev, ptr noundef nonnull @omap_device_pm_domain) #9
  %call3 = tail call i32 @platform_device_add(ptr noundef %pdev) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_enable(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %_state = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 4
  %2 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1) #13
  br label %cleanup

if.end:                                           ; preds = %to_omap_device.exit
  %hwmods_cnt.i = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 3
  %4 = ptrtoint ptr %hwmods_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.not.i = icmp eq i8 %5, 0
  br i1 %cmp7.not.i, label %if.end.if.then7_crit_edge, label %for.body.lr.ph.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.body.lr.ph.i:                                 ; preds = %if.end
  %hwmods.i = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %ret.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %hwmods.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @omap_hwmod_enable(ptr noundef %9) #9
  %or.i = or i32 %call.i, %ret.08.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %10 = ptrtoint ptr %hwmods_cnt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwmods_cnt.i, align 4
  %conv.i = zext i8 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %_omap_device_enable_hwmods.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

_omap_device_enable_hwmods.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp5 = icmp eq i32 %or.i, 0
  br i1 %cmp5, label %_omap_device_enable_hwmods.exit.if.then7_crit_edge, label %_omap_device_enable_hwmods.exit.cleanup_crit_edge

_omap_device_enable_hwmods.exit.cleanup_crit_edge: ; preds = %_omap_device_enable_hwmods.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

_omap_device_enable_hwmods.exit.if.then7_crit_edge: ; preds = %_omap_device_enable_hwmods.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %_omap_device_enable_hwmods.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %12 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %_omap_device_enable_hwmods.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ %or.i, %_omap_device_enable_hwmods.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_idle(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %_state = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 4
  %2 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %to_omap_device.exit
  %hwmods_cnt.i = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 3
  %4 = ptrtoint ptr %hwmods_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.not.i = icmp eq i8 %5, 0
  br i1 %cmp7.not.i, label %if.end.if.then7_crit_edge, label %for.body.lr.ph.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.body.lr.ph.i:                                 ; preds = %if.end
  %hwmods.i = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %ret.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %hwmods.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @omap_hwmod_idle(ptr noundef %9) #9
  %or.i = or i32 %call.i, %ret.08.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %10 = ptrtoint ptr %hwmods_cnt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwmods_cnt.i, align 4
  %conv.i = zext i8 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %_omap_device_idle_hwmods.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

_omap_device_idle_hwmods.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp5 = icmp eq i32 %or.i, 0
  br i1 %cmp5, label %_omap_device_idle_hwmods.exit.if.then7_crit_edge, label %_omap_device_idle_hwmods.exit.cleanup_crit_edge

_omap_device_idle_hwmods.exit.cleanup_crit_edge:  ; preds = %_omap_device_idle_hwmods.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

_omap_device_idle_hwmods.exit.if.then7_crit_edge: ; preds = %_omap_device_idle_hwmods.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %_omap_device_idle_hwmods.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %12 = ptrtoint ptr %_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %_omap_device_idle_hwmods.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ %or.i, %_omap_device_idle_hwmods.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_assert_hardreset(ptr noundef readonly %pdev, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %hwmods = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 1
  %hwmods_cnt = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwmods_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %to_omap_device.exit.for.end_crit_edge, label %to_omap_device.exit.for.body_crit_edge

to_omap_device.exit.for.body_crit_edge:           ; preds = %to_omap_device.exit
  br label %for.body

to_omap_device.exit.for.end_crit_edge:            ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.09, 1
  %4 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %to_omap_device.exit.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %to_omap_device.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %hwmods to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @omap_hwmod_assert_hardreset(ptr noundef %9, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %to_omap_device.exit.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %to_omap_device.exit.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_assert_hardreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_device_deassert_hardreset(ptr noundef readonly %pdev, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.to_omap_device.exit_crit_edge, label %cond.true.i

entry.to_omap_device.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  br label %to_omap_device.exit

to_omap_device.exit:                              ; preds = %cond.true.i, %entry.to_omap_device.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.to_omap_device.exit_crit_edge ]
  %hwmods = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 1
  %hwmods_cnt = getelementptr inbounds %struct.omap_device, ptr %cond.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwmods_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %to_omap_device.exit.for.end_crit_edge, label %to_omap_device.exit.for.body_crit_edge

to_omap_device.exit.for.body_crit_edge:           ; preds = %to_omap_device.exit
  br label %for.body

to_omap_device.exit.for.end_crit_edge:            ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.09, 1
  %4 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmods_cnt, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %to_omap_device.exit.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %to_omap_device.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %hwmods to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @omap_hwmod_deassert_hardreset(ptr noundef %9, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %to_omap_device.exit.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %to_omap_device.exit.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_deassert_hardreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_device_get_by_hwmod_name(ptr noundef %oh_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %oh_name, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 628, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name) #9
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call18 = tail call ptr @omap_hwmod_lookup(ptr noundef nonnull %oh_name) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end33, label %if.end48

do.end33:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 635, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name, ptr noundef nonnull %oh_name) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end17
  %od = getelementptr inbounds %struct.omap_hwmod, ptr %call18, i32 0, i32 2
  %0 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %od, align 4
  %tobool49.not = icmp eq ptr %1, null
  br i1 %tobool49.not, label %do.end63, label %if.end78

do.end63:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 640, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name, ptr noundef nonnull %oh_name) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end63, %do.end33, %do.end
  %retval.0 = phi ptr [ %dev, %if.end78 ], [ inttoptr (i32 -19 to ptr), %do.end63 ], [ inttoptr (i32 -19 to ptr), %do.end33 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_hwmod_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap_device_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i2 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @platform_nb) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap_device_late_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i2 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @omap_device_late_idle) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_add_clkdev(ptr nocapture noundef readonly %od, ptr noundef %clk_alias, ptr noundef %clk_name) unnamed_addr #0 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk_alias, null
  %tobool1.not = icmp eq ptr %clk_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_add_clkdev.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_add_clkdev, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !113

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %od, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_add_clkdev.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %clk_alias, ptr noundef nonnull %clk_name) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %od, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i90 = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  %call10 = tail call ptr @clk_get_sys(ptr noundef %retval.0.i90, ptr noundef nonnull %clk_alias) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end31, label %do.body13

do.body13:                                        ; preds = %dev_name.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_add_clkdev.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_add_clkdev, %if.then25)) #9
          to label %do.end30 [label %if.then25], !srcloc !113

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %od, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_add_clkdev.__UNIQUE_ID_ddebug290, ptr noundef %dev27, ptr noundef nonnull @.str.18, ptr noundef nonnull %clk_alias) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body13
  tail call void @clk_put(ptr noundef %call10) #9
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  %call32 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull %clk_name) #9
  %cmp.i91 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #9
  %10 = getelementptr inbounds i8, ptr %clkspec, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 68)
  %call35 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull %clk_name) #9
  %12 = ptrtoint ptr %clkspec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call35, ptr %clkspec, align 4
  %call36 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #9
  %13 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %od, align 4
  %init_name.i92 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i92 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i92, align 8
  %tobool.not.i93 = icmp eq ptr %16, null
  br i1 %tobool.not.i93, label %if.end.i94, label %if.then34.dev_name.exit96_crit_edge

if.then34.dev_name.exit96_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit96

if.end.i94:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev38, align 4
  br label %dev_name.exit96

dev_name.exit96:                                  ; preds = %if.end.i94, %if.then34.dev_name.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %18, %if.end.i94 ], [ %16, %if.then34.dev_name.exit96_crit_edge ]
  %call40 = call i32 @clk_register_clkdev(ptr noundef %call36, ptr noundef nonnull %clk_alias, ptr noundef %retval.0.i95) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #9
  br label %if.end45

if.else:                                          ; preds = %if.end31
  %19 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %od, align 4
  %init_name.i97 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i97, align 8
  %tobool.not.i98 = icmp eq ptr %22, null
  br i1 %tobool.not.i98, label %if.end.i99, label %if.else.dev_name.exit101_crit_edge

if.else.dev_name.exit101_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit101

if.end.i99:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev42, align 4
  br label %dev_name.exit101

dev_name.exit101:                                 ; preds = %if.end.i99, %if.else.dev_name.exit101_crit_edge
  %retval.0.i100 = phi ptr [ %24, %if.end.i99 ], [ %22, %if.else.dev_name.exit101_crit_edge ]
  %call44 = tail call i32 @clk_add_alias(ptr noundef nonnull %clk_alias, ptr noundef %retval.0.i100, ptr noundef nonnull %clk_name, ptr noundef null) #9
  br label %if.end45

if.end45:                                         ; preds = %dev_name.exit101, %dev_name.exit96
  %rc.0 = phi i32 [ %call40, %dev_name.exit96 ], [ %call44, %dev_name.exit101 ]
  %25 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rc.0, label %do.end59 [
    i32 0, label %if.end45.cleanup_crit_edge
    i32 -19, label %if.end45.do.end53_crit_edge
    i32 -12, label %if.end45.do.end53_crit_edge104
  ]

if.end45.do.end53_crit_edge104:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end45.do.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end53:                                         ; preds = %if.end45.do.end53_crit_edge, %if.end45.do.end53_crit_edge104
  %26 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %od, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.19, ptr noundef nonnull %clk_alias) #13
  br label %cleanup

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %od, align 4
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.21, ptr noundef nonnull %clk_name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end53, %if.end45.cleanup_crit_edge, %do.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_add_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_omap_device_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event, label %entry.sw.default_crit_edge [
    i32 3, label %sw.bb
    i32 7, label %sw.bb4
    i32 4, label %sw.bb16
    i32 1, label %sw.bb31
  ]

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %archdata = getelementptr i8, ptr %dev, i32 968
  %1 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %archdata, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %omap_device_delete.exit

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

omap_device_delete.exit:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %archdata.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %archdata.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %archdata.i, align 8
  %hwmods.i = getelementptr inbounds %struct.omap_device, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %hwmods.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmods.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %tobool.not.i61 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i61, label %sw.bb4.sw.epilog_crit_edge, label %to_omap_device.exit

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

to_omap_device.exit:                              ; preds = %sw.bb4
  %archdata.i62 = getelementptr i8, ptr %dev, i32 968
  %8 = ptrtoint ptr %archdata.i62 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %archdata.i62, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %to_omap_device.exit.sw.epilog_crit_edge, label %land.lhs.true

to_omap_device.exit.sw.epilog_crit_edge:          ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %to_omap_device.exit
  %_state = getelementptr inbounds %struct.omap_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %do.end, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  %call8 = tail call i32 @omap_device_idle(ptr noundef nonnull %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.sw.epilog_crit_edge, label %do.end13

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %tobool.not.i63 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i63, label %sw.bb16.sw.epilog_crit_edge, label %to_omap_device.exit67

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

to_omap_device.exit67:                            ; preds = %sw.bb16
  %archdata.i64 = getelementptr i8, ptr %dev, i32 968
  %12 = ptrtoint ptr %archdata.i64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %archdata.i64, align 8
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %to_omap_device.exit67.sw.epilog_crit_edge, label %if.then19

to_omap_device.exit67.sw.epilog_crit_edge:        ; preds = %to_omap_device.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %to_omap_device.exit67
  %_driver_status = getelementptr inbounds %struct.omap_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %_driver_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %_driver_status, align 4
  %_state20 = getelementptr inbounds %struct.omap_device, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %_state20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %_state20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp22 = icmp eq i8 %16, 1
  br i1 %cmp22, label %land.lhs.true24, label %if.then19.sw.epilog_crit_edge

if.then19.sw.epilog_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true24:                                  ; preds = %if.then19
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  br i1 %cmp.i, label %if.then27, label %land.lhs.true24.sw.epilog_crit_edge

land.lhs.true24.sw.epilog_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %sw.bb31.if.end36_crit_edge, label %if.then34

sw.bb31.if.end36_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap_device_build_from_dt(ptr noundef %add.ptr)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sw.bb31.if.end36_crit_edge
  tail call void @omap_auxdata_legacy_init(ptr noundef %dev) #9
  br label %sw.default

sw.default:                                       ; preds = %if.end36, %entry.sw.default_crit_edge
  %tobool.not.i68 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i68, label %sw.default.sw.epilog_crit_edge, label %to_omap_device.exit72

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

to_omap_device.exit72:                            ; preds = %sw.default
  %archdata.i69 = getelementptr i8, ptr %dev, i32 968
  %21 = ptrtoint ptr %archdata.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %archdata.i69, align 8
  %tobool38.not = icmp eq ptr %22, null
  br i1 %tobool38.not, label %to_omap_device.exit72.sw.epilog_crit_edge, label %if.then39

to_omap_device.exit72.sw.epilog_crit_edge:        ; preds = %to_omap_device.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then39:                                        ; preds = %to_omap_device.exit72
  call void @__sanitizer_cov_trace_pc() #11
  %_driver_status40 = getelementptr inbounds %struct.omap_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %_driver_status40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %event, ptr %_driver_status40, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %to_omap_device.exit72.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %if.then27, %land.lhs.true24.sw.epilog_crit_edge, %if.then19.sw.epilog_crit_edge, %to_omap_device.exit67.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %do.end13, %do.end.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %to_omap_device.exit.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %omap_device_delete.exit, %sw.bb.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_device_build_from_dt(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %oh_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oh_name) #9
  %3 = ptrtoint ptr %oh_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %oh_name, align 4, !annotation !114
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_device_build_from_dt.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_device_build_from_dt, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !113

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_device_build_from_dt.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call.i2 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %oh_name, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2)
  %tobool8.not = icmp sgt i32 %call.i2, -1
  br i1 %tobool8.not, label %land.lhs.true, label %if.end6.land.lhs.true16_crit_edge

if.end6.land.lhs.true16_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true16

land.lhs.true:                                    ; preds = %if.end6
  %4 = ptrtoint ptr %oh_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oh_name, align 4
  %call9 = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.37, ptr noundef %5, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end20_crit_edge, label %lor.lhs.false

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call11 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.38, ptr noundef %5, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.land.lhs.true16_crit_edge

lor.lhs.false.land.lhs.true16_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true16

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true16:                                  ; preds = %lor.lhs.false.land.lhs.true16_crit_edge, %if.end6.land.lhs.true16_crit_edge
  %call17 = call i32 @omap_hwmod_parse_module_range(ptr noundef null, ptr noundef %1, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end20_crit_edge

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true16.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %skip_pm_domain.0.off012 = phi i1 [ false, %land.lhs.true16.if.end20_crit_edge ], [ true, %land.lhs.true.if.end20_crit_edge ], [ true, %lor.lhs.false.if.end20_crit_edge ]
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end20.if.then71_crit_edge, label %if.end7.i.i, !prof !115

if.end20.if.then71_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.end7.i.i:                                      ; preds = %if.end20
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #14
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %if.end7.i.i.if.then71_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.if.then71_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %device_active.0.off025 = phi i1 [ %spec.select, %if.end34.for.body_crit_edge ], [ false, %if.end7.i.i.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %call.i3 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %oh_name, i32 noundef 1, i32 noundef %i.024) #9
  %9 = ptrtoint ptr %oh_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oh_name, align 4
  %call27 = call ptr @omap_hwmod_lookup(ptr noundef %10) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %odbfd_exit.thread18, label %if.end34

odbfd_exit.thread18:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %oh_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oh_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %12) #13
  br label %if.then71.sink.split

if.end34:                                         ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.024
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %call27, i32 0, i32 18
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool35.not, i1 true, i1 %device_active.0.off025
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end34
  %call38 = call ptr @omap_device_alloc(ptr noundef %pdev, ptr noundef nonnull %call8.i.i, i32 noundef %call.i)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %odbfd_exit.thread, label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.end
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %16 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4826.not = icmp eq i32 %17, 0
  br i1 %cmp4826.not, label %for.cond47.preheader.for.end59_crit_edge, label %for.body49.lr.ph

for.cond47.preheader.for.end59_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.body49.lr.ph:                                 ; preds = %for.cond47.preheader
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body49

odbfd_exit.thread:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %oh_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oh_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %19) #13
  br label %if.then71.sink.split

for.body49:                                       ; preds = %if.end56.for.body49_crit_edge, %for.body49.lr.ph
  %i.127 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc58, %if.end56.for.body49_crit_edge ]
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource, align 8
  %name = getelementptr %struct.resource, ptr %21, i32 %i.127, i32 2
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %cmp51 = icmp eq ptr %23, null
  br i1 %cmp51, label %if.then52, label %for.body49.if.end56_crit_edge

for.body49.if.end56_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then52:                                        ; preds = %for.body49
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then52.dev_name.exit_crit_edge

if.then52.dev_name.exit_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then52.dev_name.exit_crit_edge
  %retval.0.i4 = phi ptr [ %27, %if.end.i ], [ %25, %if.then52.dev_name.exit_crit_edge ]
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i4, ptr %name, align 4
  br label %if.end56

if.end56:                                         ; preds = %dev_name.exit, %for.body49.if.end56_crit_edge
  %inc58 = add nuw i32 %i.127, 1
  %29 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_resources, align 4
  %cmp48 = icmp ult i32 %inc58, %30
  br i1 %cmp48, label %if.end56.for.body49_crit_edge, label %if.end56.for.end59_crit_edge

if.end56.for.end59_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

if.end56.for.body49_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.end59:                                        ; preds = %if.end56.for.end59_crit_edge, %for.cond47.preheader.for.end59_crit_edge
  br i1 %skip_pm_domain.0.off012, label %for.end59.odbfd_exit_crit_edge, label %if.then61

for.end59.odbfd_exit_crit_edge:                   ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %odbfd_exit

if.then61:                                        ; preds = %for.end59
  call void @dev_pm_domain_set(ptr noundef %dev, ptr noundef nonnull @omap_device_pm_domain) #9
  br i1 %spec.select, label %if.then64, label %if.then61.odbfd_exit_crit_edge

if.then61.odbfd_exit_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %odbfd_exit

if.then64:                                        ; preds = %if.then61
  %tobool.not.i.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i.i, label %if.then64.to_omap_device.exit.i_crit_edge, label %cond.true.i.i

if.then64.to_omap_device.exit.i_crit_edge:        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_omap_device.exit.i

cond.true.i.i:                                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %archdata.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 11
  %31 = ptrtoint ptr %archdata.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %archdata.i.i, align 8
  br label %to_omap_device.exit.i

to_omap_device.exit.i:                            ; preds = %cond.true.i.i, %if.then64.to_omap_device.exit.i_crit_edge
  %cond.i.i = phi ptr [ %32, %cond.true.i.i ], [ null, %if.then64.to_omap_device.exit.i_crit_edge ]
  %_state.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %_state.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.i5 = icmp eq i8 %34, 1
  br i1 %cmp.i5, label %do.end.i, label %if.end.i6

do.end.i:                                         ; preds = %to_omap_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1) #13
  br label %omap_device_enable.exit

if.end.i6:                                        ; preds = %to_omap_device.exit.i
  %hwmods_cnt.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hwmods_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp7.not.i.i = icmp eq i8 %36, 0
  br i1 %cmp7.not.i.i, label %if.end.i6.if.then7.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i6.if.then7.i_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i6
  %hwmods.i.i = getelementptr inbounds %struct.omap_device, ptr %cond.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %hwmods.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwmods.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %i.09.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @omap_hwmod_enable(ptr noundef %40) #9
  %or.i.i = or i32 %call.i.i, %ret.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %41 = ptrtoint ptr %hwmods_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hwmods_cnt.i.i, align 4
  %conv.i.i = zext i8 %42 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_omap_device_enable_hwmods.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_omap_device_enable_hwmods.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp5.i, label %_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge, label %_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge

_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_device_enable.exit

_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge: ; preds = %_omap_device_enable_hwmods.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %_omap_device_enable_hwmods.exit.i.if.then7.i_crit_edge, %if.end.i6.if.then7.i_crit_edge
  %43 = ptrtoint ptr %_state.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %_state.i, align 1
  br label %omap_device_enable.exit

omap_device_enable.exit:                          ; preds = %if.then7.i, %_omap_device_enable_hwmods.exit.i.omap_device_enable.exit_crit_edge, %do.end.i
  %call.i8 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  br label %odbfd_exit

odbfd_exit:                                       ; preds = %omap_device_enable.exit, %if.then61.odbfd_exit_crit_edge, %for.end59.odbfd_exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2)
  %tobool70.not = icmp sgt i32 %call.i2, -1
  br i1 %tobool70.not, label %odbfd_exit.cleanup_crit_edge, label %odbfd_exit.if.then71_crit_edge

odbfd_exit.if.then71_crit_edge:                   ; preds = %odbfd_exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

odbfd_exit.cleanup_crit_edge:                     ; preds = %odbfd_exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71.sink.split:                             ; preds = %odbfd_exit.thread, %odbfd_exit.thread18
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %if.then71

if.then71:                                        ; preds = %if.then71.sink.split, %odbfd_exit.if.then71_crit_edge, %if.end7.i.i.if.then71_crit_edge, %if.end20.if.then71_crit_edge
  call void @dev_pm_domain_set(ptr noundef %dev, ptr noundef nonnull @omap_device_fail_pm_domain) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %odbfd_exit.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.then4, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oh_name) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_auxdata_legacy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_parse_module_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_device_late_idle(ptr noundef %dev, ptr nocapture noundef readnone %data) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %to_omap_device.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

to_omap_device.exit:                              ; preds = %entry
  %archdata.i = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %to_omap_device.exit.cleanup_crit_edge, label %for.cond.preheader

to_omap_device.exit.cleanup_crit_edge:            ; preds = %to_omap_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %to_omap_device.exit
  %hwmods_cnt = getelementptr inbounds %struct.omap_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwmods_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwmods_cnt, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp31.not = icmp eq i8 %3, 0
  br i1 %cmp31.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hwmods = getelementptr inbounds %struct.omap_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hwmods to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmods, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.032
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.omap_hwmod, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %_driver_status = getelementptr inbounds %struct.omap_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %_driver_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_driver_status, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch = icmp eq i32 %12, 4
  br i1 %switch, label %for.end.cleanup_crit_edge, label %if.then10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %for.end
  %_state = getelementptr inbounds %struct.omap_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12 = icmp eq i8 %14, 1
  br i1 %cmp12, label %do.end, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  %call15 = tail call i32 @omap_device_idle(ptr noundef nonnull %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %to_omap_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 362, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_device_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_device_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @omap_device_fail_pm_domain, !9, !"omap_device_fail_pm_domain", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 459, i32 22}
!10 = !{ptr @omap_device_pm_domain, !11, !"omap_device_pm_domain", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 466, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 486, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @omap_device_register.__UNIQUE_ID_ddebug292, !13, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 515, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @omap_device_enable._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @omap_device_enable._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 546, i32 3}
!25 = !{ptr @omap_device_idle._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @omap_device_idle._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 628, i32 3}
!29 = !{ptr @__func__.omap_device_get_by_hwmod_name, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 634, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 639, i32 3}
!34 = !{ptr @__initcall__kmod_omap_device__293_656___omap_device_init2, !35, !"__initcall__kmod_omap_device__293_656___omap_device_init2", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 656, i32 1}
!36 = !{ptr @__initcall__kmod_omap_device__294_706___omap_device_late_init7s, !37, !"__initcall__kmod_omap_device__294_706___omap_device_late_init7s", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 706, i32 1}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 113, i32 18}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 53, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @_add_clkdev.__UNIQUE_ID_ddebug289, !41, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 57, i32 3}
!46 = !{ptr @_add_clkdev.__UNIQUE_ID_ddebug290, !45, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 81, i32 4}
!49 = !{ptr @_add_clkdev._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @_add_clkdev._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 84, i32 4}
!53 = !{ptr @_add_clkdev._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @_add_clkdev._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 406, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @_od_fail_runtime_suspend._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @_od_fail_runtime_suspend._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 412, i32 2}
!62 = !{ptr @_od_fail_runtime_resume._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @_od_fail_runtime_resume._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 397, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @_od_runtime_resume._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @_od_runtime_resume._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @platform_nb, !70, !"platform_nb", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 647, i32 30}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 225, i32 4}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @_omap_device_notifier_call._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @_omap_device_notifier_call._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 228, i32 5}
!79 = !{ptr @_omap_device_notifier_call._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @_omap_device_notifier_call._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 139, i32 43}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 141, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @omap_device_build_from_dt.__UNIQUE_ID_ddebug291, !84, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 147, i32 24}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 148, i32 17}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 166, i32 4}
!93 = !{ptr @omap_device_build_from_dt._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @omap_device_build_from_dt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 178, i32 3}
!97 = !{ptr @omap_device_build_from_dt._entry.40, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @omap_device_build_from_dt._entry_ptr.42, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-omap2/omap_device.c", i32 691, i32 4}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @omap_device_late_idle._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @omap_device_late_idle._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2148707148, i64 2148707153, i64 2148707166, i64 2148707210, i64 2148707244, i64 2148707265}
!114 = !{!"auto-init"}
!115 = !{!"branch_weights", i32 1, i32 2000}
