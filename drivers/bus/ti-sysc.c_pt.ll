; ModuleID = '/llk/IR_all_yes/drivers/bus/ti-sysc.c_pt.bc'
source_filename = "../drivers/bus/ti-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysc_revision_quirk = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysc_capabilities = type { i32, i32, ptr, i32 }
%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sysc_soc_info = type { i8, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sysc = type { ptr, i64, i32, ptr, [3 x i32], ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.sysc_config, %struct.ti_sysc_cookie, ptr, i32, i32, i8, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysc_config = type { i32, i32, i8, i8, i8, i32 }
%struct.ti_sysc_cookie = type { ptr, ptr }
%struct.ti_sysc_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sysc_address = type { i32, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ti_sysc_module_data = type { ptr, i64, i32, ptr, i32, ptr, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.sysc_module = type { ptr, %struct.list_head }

@__initcall__kmod_ti_sysc__193_3443_sysc_init6 = internal global ptr @sysc_init, section ".initcall6.init", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@sysc_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @sysc_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sysc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sysc_probe, ptr @sysc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.39, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sysc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sysc_exit = internal global ptr @sysc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description194 = internal constant [55 x i8] c"ti_sysc.description=TI sysc interconnect target driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [33 x i8] c"ti_sysc.file=drivers/bus/ti-sysc\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [23 x i8] c"ti_sysc.license=GPL v2\00", section ".modinfo", align 1
@sysc_device_type = internal global { %struct.device_type, [40 x i8] } zeroinitializer, align 32
@sysc_child_add_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not add child clock %s: %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysc_child_add_clocks\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/bus/ti-sysc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sysc_child_add_clocks._entry_ptr = internal global ptr @sysc_child_add_clocks._entry, section ".printk_index", align 4
@sysc_child_pm_domain = internal global { %struct.dev_pm_domain, [48 x i8] } { %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr @platform_pm_freeze, ptr @platform_pm_thaw, ptr @platform_pm_poweroff, ptr @platform_pm_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_suspend_noirq, ptr @sysc_child_resume_noirq, ptr @sysc_child_runtime_suspend, ptr @sysc_child_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@sysc_child_suspend_noirq.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 2, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_sysc\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysc_child_suspend_noirq\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sysc_child_suspend_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 2454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s error at %i: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@sysc_child_suspend_noirq._entry_ptr = internal global ptr @sysc_child_suspend_noirq._entry, section ".printk_index", align 4
@sysc_child_suspend_noirq.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 2, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s busy at %i: %i\0A\00", [45 x i8] zeroinitializer }, align 32
@sysc_child_suspend_noirq._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 2471, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sysc_child_suspend_noirq._entry_ptr.12 = internal global ptr @sysc_child_suspend_noirq._entry.11, section ".printk_index", align 4
@sysc_runtime_suspend_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: could not idle: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sysc_runtime_suspend_legacy\00", [36 x i8] zeroinitializer }, align 32
@sysc_runtime_suspend_legacy._entry_ptr = internal global ptr @sysc_runtime_suspend_legacy._entry, section ".printk_index", align 4
@sysc_disable_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid midlemode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sysc_disable_module\00", [44 x i8] zeroinitializer }, align 32
@sysc_disable_module._entry_ptr = internal global ptr @sysc_disable_module._entry, section ".printk_index", align 4
@sysc_disable_module._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid sidlemode\0A\00", [41 x i8] zeroinitializer }, align 32
@sysc_disable_module._entry_ptr.19 = internal global ptr @sysc_disable_module._entry.17, section ".printk_index", align 4
@sysc_child_resume_noirq.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.20, ptr @.str.2, ptr @.str.7, i8 2, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sysc_child_resume_noirq\00", [40 x i8] zeroinitializer }, align 32
@sysc_child_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.2, i32 2499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s runtime resume error: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@sysc_child_resume_noirq._entry_ptr = internal global ptr @sysc_child_resume_noirq._entry, section ".printk_index", align 4
@sysc_child_resume_noirq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 2505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s generic runtime resume: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@sysc_child_resume_noirq._entry_ptr.24 = internal global ptr @sysc_child_resume_noirq._entry.22, section ".printk_index", align 4
@sysc_runtime_resume_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: could not enable: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysc_runtime_resume_legacy\00", [37 x i8] zeroinitializer }, align 32
@sysc_runtime_resume_legacy._entry_ptr = internal global ptr @sysc_runtime_resume_legacy._entry, section ".printk_index", align 4
@sysc_enable_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1078, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Optional clocks failed for enable: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sysc_enable_module\00", [45 x i8] zeroinitializer }, align 32
@sysc_enable_module._entry_ptr = internal global ptr @sysc_enable_module._entry, section ".printk_index", align 4
@sysc_enable_module._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1089, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OCP softreset timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sysc_enable_module._entry_ptr.32 = internal global ptr @sysc_enable_module._entry.29, section ".printk_index", align 4
@sysc_enable_module._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.2, i32 1125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sysc_enable_module._entry_ptr.34 = internal global ptr @sysc_enable_module._entry.33, section ".printk_index", align 4
@sysc_enable_module._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.28, ptr @.str.2, i32 1147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sysc_enable_module._entry_ptr.36 = internal global ptr @sysc_enable_module._entry.35, section ".printk_index", align 4
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sysc_child_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 2434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s error: %i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sysc_child_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@sysc_child_runtime_resume._entry_ptr = internal global ptr @sysc_child_runtime_resume._entry, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti-sysc\00", [24 x i8] zeroinitializer }, align 32
@sysc_match = internal constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap2-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap2_timer }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_timer }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-simple\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_simple }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3430-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_34xx_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3630-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_36xx_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap4-sr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_sr }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap3-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap3_sham }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-omap-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap3_aes }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-mcasp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_mcasp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-dra7-mcasp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_dra7_mcasp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-usb-host-fs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_omap4_usb_host_fs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-dra7-mcan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_dra7_mcan }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sysc-pruss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysc_pruss }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@sysc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_noirq_suspend, ptr @sysc_noirq_resume, ptr @sysc_runtime_suspend, ptr @sysc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sysc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sysc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&ddata->idle_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@sysc_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&ddata->idle_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@sysc_soc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sysc_init_static_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sysc_soc->list_lock\00", [43 x i8] zeroinitializer }, align 32
@sysc_soc_match = internal constant { [12 x %struct.soc_device_attribute], [80 x i8] } { [12 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.49, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.50, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.51, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 5 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.52, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 6 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.53, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 8 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 9 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 10 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 11 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"/ocp\00", [27 x i8] zeroinitializer }, align 32
@sysc_init_static_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"simple-bus\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ti-sysc: Incomplete old dtb, please update\0A\00", [52 x i8] zeroinitializer }, align 32
@sysc_soc_feat_match = internal constant { [10 x %struct.soc_device_attribute], [72 x i8] } { [10 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.59, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.60, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.61, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.62, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.63, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.64, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 7 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.65, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute { ptr @.str.66, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [72 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP242*\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP243*\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OMAP3[45]*\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OMAP3[67]*\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP443*\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP446*\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP447*\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OMAP54*\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM433\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM43*\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DRA7*\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM3505\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3525\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3515\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3503\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM3703\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DM3725\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3611\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP3615/AM3715\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3621\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,hwmods\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,sysc-delay-us\00", [47 x i8] zeroinitializer }, align 32
@sysc_init_dts_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 2693, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad ti,sysc-delay-us: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysc_init_dts_quirks\00", [43 x i8] zeroinitializer }, align 32
@sysc_init_dts_quirks._entry_ptr = internal global ptr @sysc_init_dts_quirks._entry, section ".printk_index", align 4
@sysc_parse_dts_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2675, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dts flag should be at module level for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysc_parse_dts_quirks\00", [42 x i8] zeroinitializer }, align 32
@sysc_parse_dts_quirks._entry_ptr = internal global ptr @sysc_parse_dts_quirks._entry, section ".printk_index", align 4
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,no-idle-on-init\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,no-reset-on-init\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,no-idle\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@sysc_parse_and_check_child_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 657, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing ranges for %pOF\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sysc_parse_and_check_child_range\00", [63 x i8] zeroinitializer }, align 32
@sysc_parse_and_check_child_range._entry_ptr = internal global ptr @sysc_parse_and_check_child_range._entry, section ".printk_index", align 4
@sysc_parse_and_check_child_range._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"incomplete ranges for %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@sysc_parse_and_check_child_range._entry_ptr.82 = internal global ptr @sysc_parse_and_check_child_range._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@sysc_parse_and_check_child_range._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.79, ptr @.str.2, i32 679, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid ranges for %pOF\0A\00", [39 x i8] zeroinitializer }, align 32
@sysc_parse_and_check_child_range._entry_ptr.87 = internal global ptr @sysc_parse_and_check_child_range._entry.85, section ".printk_index", align 4
@sysc_defer = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 10 }, [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,sysc\00", [24 x i8] zeroinitializer }, align 32
@sysc_check_one_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 796, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"really a child ti,hwmods property?\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysc_check_one_child\00", [43 x i8] zeroinitializer }, align 32
@sysc_check_one_child._entry_ptr = internal global ptr @sysc_check_one_child._entry, section ".printk_index", align 4
@stdout_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/chosen\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stdout-path\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sysc\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"syss\00", [27 x i8] zeroinitializer }, align 32
@sysc_check_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register outside module range\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysc_check_registers\00", [43 x i8] zeroinitializer }, align 32
@sysc_check_registers._entry_ptr = internal global ptr @sysc_check_registers._entry, section ".printk_index", align 4
@sysc_check_registers._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"overlapping registers: (%i/%i)\00", [33 x i8] zeroinitializer }, align 32
@sysc_check_registers._entry_ptr.100 = internal global ptr @sysc_check_registers._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,sysc-mask\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,sysc-midle\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,sysc-sidle\00", [18 x i8] zeroinitializer }, align 32
@sysc_init_idlemode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 2282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid idlemode: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sysc_init_idlemode\00", [45 x i8] zeroinitializer }, align 32
@sysc_init_idlemode._entry_ptr = internal global ptr @sysc_init_idlemode._entry, section ".printk_index", align 4
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,syss-mask\00", [19 x i8] zeroinitializer }, align 32
@sysc_revision_quirks = internal constant { [37 x %struct.sysc_revision_quirk], [288 x i8] } { [37 x %struct.sysc_revision_quirk] [%struct.sysc_revision_quirk { ptr @.str.107, i32 0, i32 80, i32 84, i32 88, i32 70, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.107, i32 0, i32 80, i32 84, i32 88, i32 82, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.107, i32 0, i32 80, i32 84, i32 88, i32 1346444803, i32 -65281, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.107, i32 0, i32 80, i32 84, i32 88, i32 1195519491, i32 -1, i32 2560 }, %struct.sysc_revision_quirk { ptr @.str.108, i32 1074995200, i32 0, i32 16, i32 -19, i32 1342179328, i32 -1, i32 3104 }, %struct.sysc_revision_quirk { ptr @.str.109, i32 0, i32 0, i32 16, i32 -19, i32 1073741824, i32 -1, i32 524288 }, %struct.sysc_revision_quirk { ptr @.str.110, i32 1256439808, i32 32, i32 -19, i32 -19, i32 -1558772476, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.110, i32 1212678144, i32 32, i32 -19, i32 -19, i32 -1558772476, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.111, i32 1211277312, i32 0, i32 16, i32 20, i32 32, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.111, i32 1476395008, i32 0, i32 -19, i32 20, i32 64, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.111, i32 1476395008, i32 0, i32 -19, i32 20, i32 97, i32 -1, i32 8388616 }, %struct.sysc_revision_quirk { ptr @.str.112, i32 1216872448, i32 0, i32 16, i32 -19, i32 1342833152, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.112, i32 1217134592, i32 0, i32 16, i32 -19, i32 1342833152, i32 -1, i32 2097152 }, %struct.sysc_revision_quirk { ptr @.str.113, i32 0, i32 0, i32 16, i32 276, i32 1348470785, i32 -65281, i32 8 }, %struct.sysc_revision_quirk { ptr @.str.114, i32 0, i32 0, i32 16, i32 20, i32 96, i32 -1, i32 872415232 }, %struct.sysc_revision_quirk { ptr @.str.115, i32 0, i32 0, i32 16, i32 -19, i32 1342374400, i32 -1, i32 16 }, %struct.sysc_revision_quirk { ptr @.str.116, i32 0, i32 0, i32 20, i32 24, i32 6, i32 -1, i32 33685504 }, %struct.sysc_revision_quirk { ptr @.str.116, i32 0, i32 0, i32 20, i32 24, i32 10, i32 -1, i32 33685504 }, %struct.sysc_revision_quirk { ptr @.str.117, i32 0, i32 0, i32 32, i32 16, i32 54, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.117, i32 0, i32 0, i32 32, i32 16, i32 60, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.117, i32 0, i32 0, i32 32, i32 16, i32 64, i32 255, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.117, i32 0, i32 0, i32 16, i32 144, i32 1346371594, i32 -3856, i32 33619968 }, %struct.sysc_revision_quirk { ptr @.str.118, i32 1342177280, i32 20, i32 -19, i32 -19, i32 66049, i32 -1, i32 0 }, %struct.sysc_revision_quirk { ptr @.str.118, i32 1342177280, i32 65024, i32 65040, i32 -19, i32 1073741824, i32 -1, i32 262144 }, %struct.sysc_revision_quirk { ptr @.str.119, i32 0, i32 0, i32 84, i32 -19, i32 1327501312, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.120, i32 0, i32 0, i32 4, i32 -19, i32 1144021762, i32 -1, i32 2048 }, %struct.sysc_revision_quirk { ptr @.str.121, i32 0, i32 116, i32 120, i32 -19, i32 1320163592, i32 -65296, i32 4194304 }, %struct.sysc_revision_quirk { ptr @.str.122, i32 0, i32 0, i32 16, i32 -19, i32 1073769472, i32 -4097, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.122, i32 0, i32 0, i32 -19, i32 -19, i32 1073773568, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.123, i32 0, i32 252, i32 4352, i32 -19, i32 1581326336, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.124, i32 0, i32 0, i32 16, i32 20, i32 1349517568, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.124, i32 0, i32 0, i32 16, i32 -19, i32 1349517569, i32 -1, i32 10240 }, %struct.sysc_revision_quirk { ptr @.str.125, i32 0, i32 1024, i32 1028, i32 1032, i32 80, i32 -1, i32 1073752064 }, %struct.sysc_revision_quirk { ptr @.str.125, i32 0, i32 0, i32 16, i32 -19, i32 1319241741, i32 -1, i32 268445696 }, %struct.sysc_revision_quirk { ptr @.str.126, i32 0, i32 0, i32 16, i32 20, i32 1344931072, i32 -3856, i32 32768 }, %struct.sysc_revision_quirk { ptr @.str.127, i32 0, i32 155648, i32 155652, i32 -19, i32 1191182336, i32 -16777216, i32 16777216 }, %struct.sysc_revision_quirk { ptr @.str.126, i32 1155747840, i32 0, i32 16, i32 20, i32 1344931072, i32 -3856, i32 34816 }], [288 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcpdm\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aess\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dcan\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dss\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpmc\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdq1w\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcdc\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcasp\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tptc\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_host_hs\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_otg_hs\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pruss\00", [26 x i8] zeroinitializer }, align 32
@sysc_check_disabled_devices.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 3, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sysc_check_disabled_devices\00", [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"module disabled for this SoC\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@clock_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145], [56 x i8] zeroinitializer }, align 32
@sysc_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"too many clocks for %pOF\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysc_get_clocks\00", [16 x i8] zeroinitializer }, align 32
@sysc_get_clocks._entry_ptr = internal global ptr @sysc_get_clocks._entry, section ".printk_index", align 4
@sysc_get_clocks._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 464, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max one fck and ick for %pOF\0A\00", [34 x i8] zeroinitializer }, align 32
@sysc_get_clocks._entry_ptr.135 = internal global ptr @sysc_get_clocks._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt0\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt1\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt2\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt3\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt4\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt5\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt6\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt7\00", [27 x i8] zeroinitializer }, align 32
@sysc_get_one_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clock %s not added\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sysc_get_one_clock\00", [45 x i8] zeroinitializer }, align 32
@sysc_get_one_clock._entry_ptr = internal global ptr @sysc_get_one_clock._entry, section ".printk_index", align 4
@sysc_get_one_clock._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clock get error for %s: %li\0A\00", [35 x i8] zeroinitializer }, align 32
@sysc_get_one_clock._entry_ptr.150 = internal global ptr @sysc_get_one_clock._entry.148, section ".printk_index", align 4
@sysc_get_one_clock._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clock prepare error for %s: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@sysc_get_one_clock._entry_ptr.153 = internal global ptr @sysc_get_one_clock._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rstctrl\00", [24 x i8] zeroinitializer }, align 32
@sysc_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 2235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reset failed with %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sysc_init_module\00", [47 x i8] zeroinitializer }, align 32
@sysc_init_module._entry_ptr = internal global ptr @sysc_init_module._entry, section ".printk_index", align 4
@sysc_pre_reset_quirk_dss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1877, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: timed out %08x !+ %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysc_pre_reset_quirk_dss\00", [39 x i8] zeroinitializer }, align 32
@sysc_pre_reset_quirk_dss._entry_ptr = internal global ptr @sysc_pre_reset_quirk_dss._entry, section ".printk_index", align 4
@sysc_quirk_rtc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1958, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc busy timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysc_quirk_rtc\00", [17 x i8] zeroinitializer }, align 32
@sysc_quirk_rtc._entry_ptr = internal global ptr @sysc_quirk_rtc._entry, section ".printk_index", align 4
@sysc_reset_done_quirk_wdt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 2014, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wdt disable step1 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sysc_reset_done_quirk_wdt\00", [38 x i8] zeroinitializer }, align 32
@sysc_reset_done_quirk_wdt._entry_ptr = internal global ptr @sysc_reset_done_quirk_wdt._entry, section ".printk_index", align 4
@sysc_reset_done_quirk_wdt._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 2021, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wdt disable step2 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@sysc_reset_done_quirk_wdt._entry_ptr.165 = internal global ptr @sysc_reset_done_quirk_wdt._entry.163, section ".printk_index", align 4
@sysc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.166, ptr @.str.2, i32 2173, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysc_reset\00", [21 x i8] zeroinitializer }, align 32
@sysc_reset._entry_ptr = internal global ptr @sysc_reset._entry, section ".printk_index", align 4
@sysc_show_registers.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.167, ptr @.str.2, ptr @.str.168, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sysc_show_registers\00", [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llx:%x%s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%x\00", [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c":%08x\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%s\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sysc_reinit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 1436, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reinit suspend failed: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sysc_reinit_module\00", [45 x i8] zeroinitializer }, align 32
@sysc_reinit_module._entry_ptr = internal global ptr @sysc_reinit_module._entry, section ".printk_index", align 4
@sysc_reinit_module._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.2, i32 1442, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reinit resume failed: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@sysc_reinit_module._entry_ptr.177 = internal global ptr @sysc_reinit_module._entry.175, section ".printk_index", align 4
@sysc_reinit_module._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.174, ptr @.str.2, i32 1448, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reinit reset failed: %i\0A\00", [39 x i8] zeroinitializer }, align 32
@sysc_reinit_module._entry_ptr.180 = internal global ptr @sysc_reinit_module._entry.178, section ".printk_index", align 4
@sysc_reinit_module._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 1459, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sysc_reinit_module._entry_ptr.182 = internal global ptr @sysc_reinit_module._entry.181, section ".printk_index", align 4
@sysc_omap2 = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 0, i32 807, ptr @sysc_regbits_omap2, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap2_timer = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 1, i32 807, ptr @sysc_regbits_omap2, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4 = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 4, i32 65539, ptr @sysc_regbits_omap4, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4_timer = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 5, i32 65539, ptr @sysc_regbits_omap4, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4_simple = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 6, i32 0, ptr @sysc_regbits_omap4_simple, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_34xx_sr = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 7, i32 768, ptr @sysc_regbits_omap34xx_sr, i32 515 }, [16 x i8] zeroinitializer }, align 32
@sysc_36xx_sr = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 8, i32 67108864, ptr @sysc_regbits_omap36xx_sr, i32 514 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4_sr = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 9, i32 0, ptr @sysc_regbits_omap36xx_sr, i32 512 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap3_sham = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 2, i32 3, ptr @sysc_regbits_omap3_sham, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap3_aes = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 3, i32 3, ptr @sysc_regbits_omap3_aes, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4_mcasp = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 10, i32 0, ptr @sysc_regbits_omap4_mcasp, i32 16 }, [16 x i8] zeroinitializer }, align 32
@sysc_dra7_mcasp = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 6, i32 0, ptr @sysc_regbits_omap4_simple, i32 16 }, [16 x i8] zeroinitializer }, align 32
@sysc_omap4_usb_host_fs = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 11, i32 4, ptr @sysc_regbits_omap4_usb_host_fs, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysc_dra7_mcan = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 12, i32 17, ptr @sysc_regbits_dra7_mcan, i32 16384 }, [16 x i8] zeroinitializer }, align 32
@sysc_pruss = internal constant { %struct.sysc_capabilities, [16 x i8] } { %struct.sysc_capabilities { i32 13, i32 48, ptr @sysc_regbits_omap4_simple, i32 16777216 }, [16 x i8] zeroinitializer }, align 32
@sysc_regbits_omap2 = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 12, i8 8, i8 3, i8 2, i8 1, i8 0, i8 -19, i8 5 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap4 = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 4, i8 -19, i8 2, i8 -19, i8 0, i8 -19, i8 16, i8 1 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap4_simple = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 2, i8 -19, i8 0, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap34xx_sr = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 20, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap36xx_sr = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 24, i8 26, i8 -19, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap3_sham = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 4, i8 -19, i8 1, i8 0, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap3_aes = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 6, i8 -19, i8 1, i8 0, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap4_mcasp = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 0, i8 -19, i8 -19, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_omap4_usb_host_fs = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 24, i8 26, i8 -19, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_regbits_dra7_mcan = internal constant { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 -19, i8 -19, i8 -19, i8 4, i8 0, i8 -19, i8 -19, i8 -19 }, [24 x i8] zeroinitializer }, align 32
@sysc_noirq_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 1496, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"noirq_resume failed: %i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sysc_noirq_resume\00", [46 x i8] zeroinitializer }, align 32
@sysc_noirq_resume._entry_ptr = internal global ptr @sysc_noirq_resume._entry, section ".printk_index", align 4
@sysc_noirq_resume._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 1500, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sysc_noirq_resume._entry_ptr.186 = internal global ptr @sysc_noirq_resume._entry.185, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.191 = private unnamed_addr constant [8 x i8] c"sysc_nb\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2639, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"sysc_driver\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3427, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"sysc_device_type\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2393, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2383, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"sysc_child_pm_domain\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2512, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2448, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2453, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2462, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2470, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1280, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1218, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1243, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2489, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2497, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2503, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1303, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1076, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1089, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1125, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1147, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2433, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3431, i32 13 }
@___asan_gen_.329 = private unnamed_addr constant [11 x i8] c"sysc_match\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3406, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant [12 x i8] c"sysc_pm_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1508, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"sysc_match_table\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3246, i32 34 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3354, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [9 x i8] c"sysc_soc\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 84, i32 30 }
@___asan_gen_.353 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3115, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [15 x i8] c"sysc_soc_match\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3039, i32 42 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3138, i32 29 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3139, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c"sysc_soc_feat_match\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3059, i32 42 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3040, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3041, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3042, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3043, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3044, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3045, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3046, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3047, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3048, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3049, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3050, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3061, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3062, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3063, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3064, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3067, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3068, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3069, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3070, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3071, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2686, i32 43 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2689, i32 35 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2692, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2673, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2650, i32 12 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2652, i32 12 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2654, i32 12 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 967, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 655, i32 31 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 657, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 665, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 670, i32 35 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 674, i32 35 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 679, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [11 x i8] c"sysc_defer\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 703, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 795, i32 43 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 796, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant [12 x i8] c"stdout_path\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 736, i32 28 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 749, i32 28 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 753, i32 29 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 85, i32 43 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 85, i32 50 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 85, i32 58 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 883, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 899, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2263, i32 35 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2296, i32 8 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2301, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2282, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2321, i32 35 }
@___asan_gen_.569 = private unnamed_addr constant [21 x i8] c"sysc_revision_quirks\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1540, i32 41 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1542, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1553, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1558, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1561, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1565, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1571, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1575, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1577, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1580, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1582, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1586, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1594, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1597, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1599, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1601, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1603, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1607, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1609, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1613, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1619, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1622, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 3218, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 439, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [12 x i8] c"clock_names\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 86, i32 27 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 458, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 464, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 9 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 16 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 24 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 32 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 40 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 87, i32 48 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 88, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 88, i32 10 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 88, i32 18 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 402, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 408, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 416, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 634, i32 54 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2235, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1876, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1958, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2014, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2021, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2173, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1035, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1008, i32 23 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 997, i32 22 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1016, i32 23 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1436, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1442, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1448, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1459, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant [11 x i8] c"sysc_omap2\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2729, i32 39 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"sysc_omap2_timer\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2738, i32 39 }
@___asan_gen_.809 = private unnamed_addr constant [11 x i8] c"sysc_omap4\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2803, i32 39 }
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"sysc_omap4_timer\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2810, i32 39 }
@___asan_gen_.815 = private unnamed_addr constant [18 x i8] c"sysc_omap4_simple\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2831, i32 39 }
@___asan_gen_.818 = private unnamed_addr constant [13 x i8] c"sysc_34xx_sr\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2850, i32 39 }
@___asan_gen_.821 = private unnamed_addr constant [13 x i8] c"sysc_36xx_sr\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2872, i32 39 }
@___asan_gen_.824 = private unnamed_addr constant [14 x i8] c"sysc_omap4_sr\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2879, i32 39 }
@___asan_gen_.827 = private unnamed_addr constant [16 x i8] c"sysc_omap3_sham\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2762, i32 39 }
@___asan_gen_.830 = private unnamed_addr constant [15 x i8] c"sysc_omap3_aes\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2783, i32 39 }
@___asan_gen_.833 = private unnamed_addr constant [17 x i8] c"sysc_omap4_mcasp\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2899, i32 39 }
@___asan_gen_.836 = private unnamed_addr constant [16 x i8] c"sysc_dra7_mcasp\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2908, i32 39 }
@___asan_gen_.839 = private unnamed_addr constant [23 x i8] c"sysc_omap4_usb_host_fs\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2928, i32 39 }
@___asan_gen_.842 = private unnamed_addr constant [15 x i8] c"sysc_dra7_mcan\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2945, i32 39 }
@___asan_gen_.845 = private unnamed_addr constant [11 x i8] c"sysc_pruss\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2955, i32 39 }
@___asan_gen_.848 = private unnamed_addr constant [19 x i8] c"sysc_regbits_omap2\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2718, i32 34 }
@___asan_gen_.851 = private unnamed_addr constant [19 x i8] c"sysc_regbits_omap4\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2792, i32 34 }
@___asan_gen_.854 = private unnamed_addr constant [26 x i8] c"sysc_regbits_omap4_simple\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2820, i32 34 }
@___asan_gen_.857 = private unnamed_addr constant [25 x i8] c"sysc_regbits_omap34xx_sr\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2839, i32 34 }
@___asan_gen_.860 = private unnamed_addr constant [25 x i8] c"sysc_regbits_omap36xx_sr\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2861, i32 34 }
@___asan_gen_.863 = private unnamed_addr constant [24 x i8] c"sysc_regbits_omap3_sham\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2751, i32 34 }
@___asan_gen_.866 = private unnamed_addr constant [23 x i8] c"sysc_regbits_omap3_aes\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2772, i32 34 }
@___asan_gen_.869 = private unnamed_addr constant [25 x i8] c"sysc_regbits_omap4_mcasp\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2888, i32 34 }
@___asan_gen_.872 = private unnamed_addr constant [31 x i8] c"sysc_regbits_omap4_usb_host_fs\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2917, i32 34 }
@___asan_gen_.875 = private unnamed_addr constant [23 x i8] c"sysc_regbits_dra7_mcan\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 2934, i32 34 }
@___asan_gen_.884 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1496, i32 4 }
@___asan_gen_.887 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.888 = private constant [25 x i8] c"../drivers/bus/ti-sysc.c\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 1500, i32 4 }
@llvm.compiler.used = appending global [279 x ptr] [ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_sysc_exit, ptr @__initcall__kmod_ti_sysc__193_3443_sysc_init6, ptr @sysc_check_one_child._entry, ptr @sysc_check_one_child._entry_ptr, ptr @sysc_check_registers._entry, ptr @sysc_check_registers._entry.98, ptr @sysc_check_registers._entry_ptr, ptr @sysc_check_registers._entry_ptr.100, ptr @sysc_child_add_clocks._entry, ptr @sysc_child_add_clocks._entry_ptr, ptr @sysc_child_resume_noirq._entry, ptr @sysc_child_resume_noirq._entry.22, ptr @sysc_child_resume_noirq._entry_ptr, ptr @sysc_child_resume_noirq._entry_ptr.24, ptr @sysc_child_runtime_resume._entry, ptr @sysc_child_runtime_resume._entry_ptr, ptr @sysc_child_suspend_noirq._entry, ptr @sysc_child_suspend_noirq._entry.11, ptr @sysc_child_suspend_noirq._entry_ptr, ptr @sysc_child_suspend_noirq._entry_ptr.12, ptr @sysc_disable_module._entry, ptr @sysc_disable_module._entry.17, ptr @sysc_disable_module._entry_ptr, ptr @sysc_disable_module._entry_ptr.19, ptr @sysc_enable_module._entry, ptr @sysc_enable_module._entry.29, ptr @sysc_enable_module._entry.33, ptr @sysc_enable_module._entry.35, ptr @sysc_enable_module._entry_ptr, ptr @sysc_enable_module._entry_ptr.32, ptr @sysc_enable_module._entry_ptr.34, ptr @sysc_enable_module._entry_ptr.36, ptr @sysc_exit, ptr @sysc_get_clocks._entry, ptr @sysc_get_clocks._entry.133, ptr @sysc_get_clocks._entry_ptr, ptr @sysc_get_clocks._entry_ptr.135, ptr @sysc_get_one_clock._entry, ptr @sysc_get_one_clock._entry.148, ptr @sysc_get_one_clock._entry.151, ptr @sysc_get_one_clock._entry_ptr, ptr @sysc_get_one_clock._entry_ptr.150, ptr @sysc_get_one_clock._entry_ptr.153, ptr @sysc_init_dts_quirks._entry, ptr @sysc_init_dts_quirks._entry_ptr, ptr @sysc_init_idlemode._entry, ptr @sysc_init_idlemode._entry_ptr, ptr @sysc_init_module._entry, ptr @sysc_init_module._entry_ptr, ptr @sysc_noirq_resume._entry, ptr @sysc_noirq_resume._entry.185, ptr @sysc_noirq_resume._entry_ptr, ptr @sysc_noirq_resume._entry_ptr.186, ptr @sysc_parse_and_check_child_range._entry, ptr @sysc_parse_and_check_child_range._entry.80, ptr @sysc_parse_and_check_child_range._entry.85, ptr @sysc_parse_and_check_child_range._entry_ptr, ptr @sysc_parse_and_check_child_range._entry_ptr.82, ptr @sysc_parse_and_check_child_range._entry_ptr.87, ptr @sysc_parse_dts_quirks._entry, ptr @sysc_parse_dts_quirks._entry_ptr, ptr @sysc_pre_reset_quirk_dss._entry, ptr @sysc_pre_reset_quirk_dss._entry_ptr, ptr @sysc_quirk_rtc._entry, ptr @sysc_quirk_rtc._entry_ptr, ptr @sysc_reinit_module._entry, ptr @sysc_reinit_module._entry.175, ptr @sysc_reinit_module._entry.178, ptr @sysc_reinit_module._entry.181, ptr @sysc_reinit_module._entry_ptr, ptr @sysc_reinit_module._entry_ptr.177, ptr @sysc_reinit_module._entry_ptr.180, ptr @sysc_reinit_module._entry_ptr.182, ptr @sysc_reset._entry, ptr @sysc_reset._entry_ptr, ptr @sysc_reset_done_quirk_wdt._entry, ptr @sysc_reset_done_quirk_wdt._entry.163, ptr @sysc_reset_done_quirk_wdt._entry_ptr, ptr @sysc_reset_done_quirk_wdt._entry_ptr.165, ptr @sysc_runtime_resume_legacy._entry, ptr @sysc_runtime_resume_legacy._entry_ptr, ptr @sysc_runtime_suspend_legacy._entry, ptr @sysc_runtime_suspend_legacy._entry_ptr, ptr @sysc_nb, ptr @sysc_driver, ptr @sysc_device_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sysc_child_pm_domain, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @sysc_match, ptr @sysc_pm_ops, ptr @sysc_match_table, ptr @sysc_probe.__key, ptr @.str.40, ptr @sysc_probe.__key.41, ptr @.str.42, ptr @sysc_soc, ptr @sysc_init_static_data.__key, ptr @.str.43, ptr @sysc_soc_match, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @sysc_soc_feat_match, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @sysc_defer, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @stdout_path, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @sysc_revision_quirks, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @clock_names, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @sysc_omap2, ptr @sysc_omap2_timer, ptr @sysc_omap4, ptr @sysc_omap4_timer, ptr @sysc_omap4_simple, ptr @sysc_34xx_sr, ptr @sysc_36xx_sr, ptr @sysc_omap4_sr, ptr @sysc_omap3_sham, ptr @sysc_omap3_aes, ptr @sysc_omap4_mcasp, ptr @sysc_dra7_mcasp, ptr @sysc_omap4_usb_host_fs, ptr @sysc_dra7_mcan, ptr @sysc_pruss, ptr @sysc_regbits_omap2, ptr @sysc_regbits_omap4, ptr @sysc_regbits_omap4_simple, ptr @sysc_regbits_omap34xx_sr, ptr @sysc_regbits_omap36xx_sr, ptr @sysc_regbits_omap3_sham, ptr @sysc_regbits_omap3_aes, ptr @sysc_regbits_omap4_mcasp, ptr @sysc_regbits_omap4_usb_host_fs, ptr @sysc_regbits_dra7_mcan, ptr @.str.183, ptr @.str.184], section "llvm.metadata"
@0 = internal global [233 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_add_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_pm_domain to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_suspend_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_suspend_noirq._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_runtime_suspend_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_disable_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_disable_module._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_resume_noirq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_runtime_resume_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_enable_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_enable_module._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_enable_module._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_enable_module._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_child_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_match to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_soc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_init_static_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_soc_match to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_soc_feat_match to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_init_dts_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_parse_dts_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_parse_and_check_child_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_parse_and_check_child_range._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_parse_and_check_child_range._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_defer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_check_one_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdout_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_check_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_check_registers._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_init_idlemode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_revision_quirks to i32), i32 1184, i32 1472, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_get_clocks._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_get_one_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_get_one_clock._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_get_one_clock._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_pre_reset_quirk_dss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_quirk_rtc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reset_done_quirk_wdt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reset_done_quirk_wdt._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reinit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reinit_module._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reinit_module._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_reinit_module._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap2_timer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4_timer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4_simple to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_34xx_sr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_36xx_sr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4_sr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap3_sham to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap3_aes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4_mcasp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_dra7_mcasp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_omap4_usb_host_fs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_dra7_mcan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_pruss to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap4_simple to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap34xx_sr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap36xx_sr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap3_sham to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap3_aes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap4_mcasp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_omap4_usb_host_fs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_regbits_dra7_mcan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_noirq_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysc_noirq_resume._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sysc_nb) #12
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sysc_driver, ptr noundef null) #12
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sysc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sysc_nb) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sysc_driver) #12
  %0 = load ptr, ptr @sysc_soc, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.sysc_cleanup_static_data.exit_crit_edge, label %if.end.i

entry.sysc_cleanup_static_data.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_cleanup_static_data.exit

if.end.i:                                         ; preds = %entry
  %nb.i = getelementptr inbounds %struct.sysc_soc_info, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %nb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nb.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb.i) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %3 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i = getelementptr inbounds %struct.sysc_soc_info, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i, i32 noundef 0) #12
  %4 = load ptr, ptr @sysc_soc, align 4
  %restored_modules.i = getelementptr inbounds %struct.sysc_soc_info, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %restored_modules.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %restored_modules.i, align 4
  %cmp.i.not50.i = icmp eq ptr %6, %restored_modules.i
  br i1 %cmp.i.not50.i, label %if.end4.i.for.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %pos.051.i = phi ptr [ %tmp.053.i, %list_del.exit.i.for.body.i_crit_edge ], [ %6, %if.end4.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %pos.051.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.053.i = load ptr, ptr %pos.051.i, align 4
  %add.ptr.i = getelementptr i8, ptr %pos.051.i, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.051.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.051.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %pos.051.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pos.051.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %pos.051.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.051.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.051.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  %16 = load ptr, ptr @sysc_soc, align 4
  %restored_modules6.i = getelementptr inbounds %struct.sysc_soc_info, ptr %16, i32 0, i32 4
  %cmp.i.not.i = icmp eq ptr %tmp.053.i, %restored_modules6.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %.lcssa47.i = phi ptr [ %4, %if.end4.i.for.end.i_crit_edge ], [ %16, %list_del.exit.i.for.end.i_crit_edge ]
  %disabled_modules.i = getelementptr inbounds %struct.sysc_soc_info, ptr %.lcssa47.i, i32 0, i32 3
  %17 = ptrtoint ptr %disabled_modules.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disabled_modules.i, align 4
  %19 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules1455.i = getelementptr inbounds %struct.sysc_soc_info, ptr %19, i32 0, i32 3
  %cmp.i39.not56.i = icmp eq ptr %18, %disabled_modules1455.i
  br i1 %cmp.i39.not56.i, label %for.end.i.for.end24.i_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.for.end24.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.body18.i:                                     ; preds = %list_del.exit46.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %pos.157.i = phi ptr [ %tmp.159.i, %list_del.exit46.i.for.body18.i_crit_edge ], [ %18, %for.end.i.for.body18.i_crit_edge ]
  %20 = ptrtoint ptr %pos.157.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.159.i = load ptr, ptr %pos.157.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %pos.157.i, i32 -4
  %call.i.i41.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.157.i) #12
  br i1 %call.i.i41.i, label %if.end.i.i44.i, label %for.body18.i.list_del.exit46.i_crit_edge

for.body18.i.list_del.exit46.i_crit_edge:         ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit46.i

if.end.i.i44.i:                                   ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i42.i = getelementptr inbounds %struct.list_head, ptr %pos.157.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i42.i, align 4
  %23 = ptrtoint ptr %pos.157.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pos.157.i, align 4
  %prev1.i.i.i43.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i43.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit46.i

list_del.exit46.i:                                ; preds = %if.end.i.i44.i, %for.body18.i.list_del.exit46.i_crit_edge
  %27 = ptrtoint ptr %pos.157.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.157.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.list_head, ptr %pos.157.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i45.i, align 4
  tail call void @kfree(ptr noundef %add.ptr21.i) #12
  %29 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules14.i = getelementptr inbounds %struct.sysc_soc_info, ptr %29, i32 0, i32 3
  %cmp.i39.not.i = icmp eq ptr %tmp.159.i, %disabled_modules14.i
  br i1 %cmp.i39.not.i, label %list_del.exit46.i.for.end24.i_crit_edge, label %list_del.exit46.i.for.body18.i_crit_edge

list_del.exit46.i.for.body18.i_crit_edge:         ; preds = %list_del.exit46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

list_del.exit46.i.for.end24.i_crit_edge:          ; preds = %list_del.exit46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.end24.i:                                      ; preds = %list_del.exit46.i.for.end24.i_crit_edge, %for.end.i.for.end24.i_crit_edge
  %.lcssa.i = phi ptr [ %19, %for.end.i.for.end24.i_crit_edge ], [ %29, %list_del.exit46.i.for.end24.i_crit_edge ]
  %list_lock25.i = getelementptr inbounds %struct.sysc_soc_info, ptr %.lcssa.i, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock25.i) #12
  br label %sysc_cleanup_static_data.exit

sysc_cleanup_static_data.exit:                    ; preds = %for.end24.i, %entry.sysc_cleanup_static_data.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %3, @sysc_device_type
  br i1 %cmp.not.i, label %sysc_child_to_parent.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sysc_child_to_parent.exit:                        ; preds = %lor.lhs.false.i
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  %or.cond = and i1 %cond, %tobool.not
  br i1 %or.cond, label %sw.bb, label %sysc_child_to_parent.exit.cleanup_crit_edge

sysc_child_to_parent.exit.cleanup_crit_edge:      ; preds = %sysc_child_to_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %sysc_child_to_parent.exit
  %nr_clocks.i = getelementptr inbounds %struct.sysc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_clocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp29.i = icmp sgt i32 %7, 0
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %sw.bb.if.end4_crit_edge

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %clock_roles.i = getelementptr inbounds %struct.sysc, ptr %5, i32 0, i32 7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %clock_roles.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_roles.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.030.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i = tail call ptr @clk_get(ptr noundef %device, ptr noundef nonnull %11) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end3.i.i, label %if.end.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge

if.end.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_add_named_clock.exit.thread19.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %call4.i.i = tail call ptr @clk_get(ptr noundef %13, ptr noundef nonnull %11) #12
  %cmp.i22.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i, label %if.end3.i.i.sysc_child_add_clocks.exit_crit_edge, label %if.end7.i.i

if.end3.i.i.sysc_child_add_clocks.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_add_clocks.exit

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end7.i.i.dev_name.exit.i.i_crit_edge

if.end7.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end7.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.end7.i.i.dev_name.exit.i.i_crit_edge ]
  %call9.i.i = tail call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %call4.i.i, ptr noundef nonnull %11, ptr noundef %retval.0.i.i.i) #12
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %sysc_child_add_named_clock.exit.i, label %dev_name.exit.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge

dev_name.exit.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_add_named_clock.exit.thread19.i

sysc_child_add_named_clock.exit.thread19.i:       ; preds = %dev_name.exit.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge, %if.end.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge
  %clk.0.i.ph.i = phi ptr [ %call4.i.i, %dev_name.exit.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge ], [ %call.i.i, %if.end.i.i.sysc_child_add_named_clock.exit.thread19.i_crit_edge ]
  tail call void @clk_put(ptr noundef %clk.0.i.ph.i) #12
  br label %for.inc.i

sysc_child_add_named_clock.exit.i:                ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_put(ptr noundef %call4.i.i) #12
  br label %sysc_child_add_clocks.exit

for.inc.i:                                        ; preds = %sysc_child_add_named_clock.exit.thread19.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %18 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_clocks.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sysc_child_add_clocks.exit:                       ; preds = %sysc_child_add_named_clock.exit.i, %if.end3.i.i.sysc_child_add_clocks.exit_crit_edge
  %retval.0.i16.i = phi i32 [ -12, %sysc_child_add_named_clock.exit.i ], [ -19, %if.end3.i.i.sysc_child_add_clocks.exit_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %22 = ptrtoint ptr %clock_roles.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clock_roles.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %23, i32 %i.030.i
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %retval.0.i16.i) #15
  br label %cleanup

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %sw.bb.if.end4_crit_edge
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %5, i32 0, i32 12, i32 5
  %26 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_pm_domain_set(ptr noundef %device, ptr noundef nonnull @sysc_child_pm_domain) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %sysc_child_add_clocks.exit, %sysc_child_to_parent.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sysc_child_to_parent.exit.cleanup_crit_edge ], [ %retval.0.i16.i, %sysc_child_add_clocks.exit ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_freeze(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_thaw(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_poweroff(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_restore(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_child_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sysc_child_to_parent.exit_crit_edge, label %lor.lhs.false.i

entry.sysc_child_to_parent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %3, @sysc_device_type
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge

lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  br label %sysc_child_to_parent.exit

sysc_child_to_parent.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge, %entry.sysc_child_to_parent.exit_crit_edge
  %retval.0.i66 = phi ptr [ %5, %if.end.i ], [ null, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge ], [ null, %entry.sysc_child_to_parent.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysc_child_suspend_noirq, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !469

if.then:                                          ; preds = %sysc_child_to_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %retval.0.i66 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i66, align 8
  %name = getelementptr inbounds %struct.sysc, ptr %retval.0.i66, i32 0, i32 14
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %tobool5.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool5.not, ptr @.str.8, ptr %9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug189, ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.select) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %sysc_child_to_parent.exit
  %call7 = tail call i32 @pm_generic_suspend_noirq(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 2454, i32 noundef %call7) #15
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end35, label %do.body19

do.body19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysc_child_suspend_noirq, %if.then31)) #12
          to label %cleanup [label %if.then31], !srcloc !469

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef 2463, i32 noundef %call16) #12
  br label %cleanup

if.end35:                                         ; preds = %if.then15
  %12 = ptrtoint ptr %retval.0.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retval.0.i66, align 8
  %call37 = tail call i32 @sysc_runtime_suspend(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 2471, i32 noundef %call37) #15
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %child_needs_resume = getelementptr inbounds %struct.sysc, ptr %retval.0.i66, i32 0, i32 17
  %14 = ptrtoint ptr %child_needs_resume to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %child_needs_resume, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %child_needs_resume, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end42, %if.then31, %do.body19, %if.end13.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %call37, %do.end42 ], [ 0, %if.then31 ], [ 0, %if.end43 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_child_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sysc_child_to_parent.exit_crit_edge, label %lor.lhs.false.i

entry.sysc_child_to_parent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %3, @sysc_device_type
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge

lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  br label %sysc_child_to_parent.exit

sysc_child_to_parent.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge, %entry.sysc_child_to_parent.exit_crit_edge
  %retval.0.i43 = phi ptr [ %5, %if.end.i ], [ null, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge ], [ null, %entry.sysc_child_to_parent.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysc_child_resume_noirq.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysc_child_resume_noirq, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !469

if.then:                                          ; preds = %sysc_child_to_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i43, align 8
  %name = getelementptr inbounds %struct.sysc, ptr %retval.0.i43, i32 0, i32 14
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %tobool5.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool5.not, ptr @.str.8, ptr %9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysc_child_resume_noirq.__UNIQUE_ID_ddebug191, ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %sysc_child_to_parent.exit
  %child_needs_resume = getelementptr inbounds %struct.sysc, ptr %retval.0.i43, i32 0, i32 17
  %10 = ptrtoint ptr %child_needs_resume to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %child_needs_resume, align 4
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %do.end.if.end29_crit_edge, label %if.then8

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then8:                                         ; preds = %do.end
  %bf.clear11 = and i8 %bf.load, -17
  %12 = ptrtoint ptr %child_needs_resume to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.clear11, ptr %child_needs_resume, align 4
  %13 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retval.0.i43, align 8
  %call13 = tail call i32 @sysc_runtime_resume(ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then8.if.end20_crit_edge, label %do.end18

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call13) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.then8.if.end20_crit_edge
  %call21 = tail call i32 @pm_generic_runtime_resume(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %do.end26

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %call21) #15
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.end20.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %call30 = tail call i32 @pm_generic_resume_noirq(ptr noundef %dev) #12
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_child_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sysc_child_to_parent.exit_crit_edge, label %lor.lhs.false.i

entry.sysc_child_to_parent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %3, @sysc_device_type
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge

lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  br label %sysc_child_to_parent.exit

sysc_child_to_parent.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge, %entry.sysc_child_to_parent.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge ], [ null, %entry.sysc_child_to_parent.exit_crit_edge ]
  %call1 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sysc_child_to_parent.exit.cleanup_crit_edge

sysc_child_to_parent.exit.cleanup_crit_edge:      ; preds = %sysc_child_to_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sysc_child_to_parent.exit
  %enabled = getelementptr inbounds %struct.sysc, ptr %retval.0.i, i32 0, i32 17
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %enabled, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 8
  %call6 = tail call i32 @sysc_runtime_suspend(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %sysc_child_to_parent.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %call1, %sysc_child_to_parent.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_child_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sysc_child_to_parent.exit_crit_edge, label %lor.lhs.false.i

entry.sysc_child_to_parent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %3, @sysc_device_type
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge

lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_child_to_parent.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  br label %sysc_child_to_parent.exit

sysc_child_to_parent.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge, %entry.sysc_child_to_parent.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %lor.lhs.false.i.sysc_child_to_parent.exit_crit_edge ], [ null, %entry.sysc_child_to_parent.exit_crit_edge ]
  %enabled = getelementptr inbounds %struct.sysc, ptr %retval.0.i, i32 0, i32 17
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %enabled, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %sysc_child_to_parent.exit.if.end5_crit_edge

sysc_child_to_parent.exit.if.end5_crit_edge:      ; preds = %sysc_child_to_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %sysc_child_to_parent.exit
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 8
  %call2 = tail call i32 @sysc_runtime_resume(ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call2) #15
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %sysc_child_to_parent.exit.if.end5_crit_edge
  %call6 = tail call i32 @pm_generic_runtime_resume(ptr noundef %dev) #12
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_noirq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %legacy_mode.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

lor.lhs.false.i:                                  ; preds = %if.end
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge

lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i.i, align 8
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.sysc_clkdm_deny_idle.exit_crit_edge, label %land.lhs.true.i

if.end.i.sysc_clkdm_deny_idle.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %clkdm_deny_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %clkdm_deny_idle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkdm_deny_idle.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, label %if.then4.i

land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  tail call void %13(ptr noundef %9, ptr noundef %cookie.i) #12
  br label %sysc_clkdm_deny_idle.exit

sysc_clkdm_deny_idle.exit:                        ; preds = %if.then4.i, %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, %if.end.i.sysc_clkdm_deny_idle.exit_crit_edge, %lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge
  %14 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %legacy_mode.i, align 8
  %tobool1.not = icmp eq ptr %.pr, null
  br i1 %tobool1.not, label %if.else, label %sysc_clkdm_deny_idle.exit.if.then2_crit_edge

sysc_clkdm_deny_idle.exit.if.then2_crit_edge:     ; preds = %sysc_clkdm_deny_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %sysc_clkdm_deny_idle.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %platform_data.i.i33 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %platform_data.i.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i.i33, align 8
  %tobool.not.i34 = icmp eq ptr %18, null
  br i1 %tobool.not.i34, label %if.then2.if.end11_crit_edge, label %if.end.i36

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.i36:                                       ; preds = %if.then2
  %idle_module.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %idle_module.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idle_module.i, align 4
  %tobool2.not.i35 = icmp eq ptr %20, null
  br i1 %tobool2.not.i35, label %if.end.i36.err_allow_idle_crit_edge, label %if.end4.i

if.end.i36.err_allow_idle_crit_edge:              ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_allow_idle

if.end4.i:                                        ; preds = %if.end.i36
  %cookie.i37 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  %call6.i = tail call i32 %20(ptr noundef %dev, ptr noundef %cookie.i37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end9.i_crit_edge, label %do.end.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call6.i) #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end4.i.if.end9.i_crit_edge
  %rsts.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %rsts.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rsts.i, align 4
  %call10.i = tail call i32 @reset_control_assert(ptr noundef %22) #12
  br label %if.end11

if.else:                                          ; preds = %sysc_clkdm_deny_idle.exit
  %call7 = tail call fastcc i32 @sysc_disable_module(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.else.err_allow_idle_crit_edge

if.else.err_allow_idle_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_allow_idle

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end9.i, %if.then2.if.end11_crit_edge
  %clocks.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks.i, align 8
  %tobool.not.i38 = icmp eq ptr %24, null
  br i1 %tobool.not.i38, label %if.end11.sysc_disable_main_clocks.exit_crit_edge, label %for.body.preheader.i

if.end11.sysc_disable_main_clocks.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_disable_main_clocks.exit

for.body.preheader.i:                             ; preds = %if.end11
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  %cmp.i.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %26) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.preheader.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clocks.i, align 8
  %arrayidx.1.i = getelementptr ptr, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %30, null
  %cmp.i.1.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i.1.i
  br i1 %spec.select.i.1.i, label %for.inc.i.sysc_disable_main_clocks.exit_crit_edge, label %if.end3.1.i

for.inc.i.sysc_disable_main_clocks.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_disable_main_clocks.exit

if.end3.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %30) #12
  br label %sysc_disable_main_clocks.exit

sysc_disable_main_clocks.exit:                    ; preds = %if.end3.1.i, %for.inc.i.sysc_disable_main_clocks.exit_crit_edge, %if.end11.sysc_disable_main_clocks.exit_crit_edge
  %quirks.i39 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %31 = ptrtoint ptr %quirks.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks.i39, align 4
  %and.i40 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.i.not = icmp eq i32 %and.i40, 0
  br i1 %tobool.i.not, label %sysc_disable_main_clocks.exit.if.end14_crit_edge, label %if.then13

sysc_disable_main_clocks.exit.if.end14_crit_edge: ; preds = %sysc_disable_main_clocks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %sysc_disable_main_clocks.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %1)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %sysc_disable_main_clocks.exit.if.end14_crit_edge
  %33 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load16 = load i8, ptr %enabled, align 4
  %bf.clear17 = and i8 %bf.load16, -65
  store i8 %bf.clear17, ptr %enabled, align 4
  br label %err_allow_idle

err_allow_idle:                                   ; preds = %if.end14, %if.else.err_allow_idle_crit_edge, %if.end.i36.err_allow_idle_crit_edge
  %error.1 = phi i32 [ 0, %if.end14 ], [ %call7, %if.else.err_allow_idle_crit_edge ], [ -19, %if.end.i36.err_allow_idle_crit_edge ]
  %34 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i42 = icmp eq ptr %35, null
  br i1 %tobool.not.i42, label %lor.lhs.false.i46, label %err_allow_idle.sysc_clkdm_allow_idle.exit_crit_edge

err_allow_idle.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %err_allow_idle
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

lor.lhs.false.i46:                                ; preds = %err_allow_idle
  %quirks.i43 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %36 = ptrtoint ptr %quirks.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks.i43, align 4
  %and.i44 = and i32 %37, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool1.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool1.not.i45, label %if.end.i49, label %lor.lhs.false.i46.sysc_clkdm_allow_idle.exit_crit_edge

lor.lhs.false.i46.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %lor.lhs.false.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

if.end.i49:                                       ; preds = %lor.lhs.false.i46
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %platform_data.i.i47 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %platform_data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data.i.i47, align 8
  %tobool2.not.i48 = icmp eq ptr %41, null
  br i1 %tobool2.not.i48, label %if.end.i49.sysc_clkdm_allow_idle.exit_crit_edge, label %land.lhs.true.i51

if.end.i49.sysc_clkdm_allow_idle.exit_crit_edge:  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

land.lhs.true.i51:                                ; preds = %if.end.i49
  %clkdm_allow_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %clkdm_allow_idle.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clkdm_allow_idle.i, align 4
  %tobool3.not.i50 = icmp eq ptr %43, null
  br i1 %tobool3.not.i50, label %land.lhs.true.i51.sysc_clkdm_allow_idle.exit_crit_edge, label %if.then4.i53

land.lhs.true.i51.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

if.then4.i53:                                     ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i52 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  tail call void %43(ptr noundef %39, ptr noundef %cookie.i52) #12
  br label %sysc_clkdm_allow_idle.exit

sysc_clkdm_allow_idle.exit:                       ; preds = %if.then4.i53, %land.lhs.true.i51.sysc_clkdm_allow_idle.exit_crit_edge, %if.end.i49.sysc_clkdm_allow_idle.exit_crit_edge, %lor.lhs.false.i46.sysc_clkdm_allow_idle.exit_crit_edge, %err_allow_idle.sysc_clkdm_allow_idle.exit_crit_edge
  %rsts = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 9
  %44 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rsts, align 4
  %call18 = tail call i32 @reset_control_assert(ptr noundef %45) #12
  br label %cleanup

cleanup:                                          ; preds = %sysc_clkdm_allow_idle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %sysc_clkdm_allow_idle.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_disable_module(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.sysc, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %3)
  %cmp = icmp eq i32 %3, -19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %module_disable_quirk = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %module_disable_quirk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_disable_quirk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %1) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %cap = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap, align 4
  %regbits4 = getelementptr inbounds %struct.sysc_capabilities, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regbits4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbits4, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %15, i32 %11
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  %conv.i = zext i16 %17 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i = icmp sgt i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp4.i = icmp eq i32 %19, %11
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.sysc_read.exit_crit_edge

if.then.i.sysc_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %21, i32 %11
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #12
  %conv14.i = zext i16 %23 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %sysc_read.exit

if.end15.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  br label %sysc_read.exit

sysc_read.exit:                                   ; preds = %if.end15.i, %if.then6.i, %if.then.i.sysc_read.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.sysc_read.exit_crit_edge ]
  %cfg = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12
  %midlemodes = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 2
  %26 = ptrtoint ptr %midlemodes to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %midlemodes, align 8
  %conv = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool8.not = icmp eq i8 %27, 0
  br i1 %tobool8.not, label %sysc_read.exit.set_sidle_crit_edge, label %lor.lhs.false

sysc_read.exit.set_sidle_crit_edge:               ; preds = %sysc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_sidle

lor.lhs.false:                                    ; preds = %sysc_read.exit
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp10 = icmp slt i8 %29, 0
  br i1 %cmp10, label %lor.lhs.false.set_sidle_crit_edge, label %if.end13

lor.lhs.false.set_sidle_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_sidle

if.end13:                                         ; preds = %lor.lhs.false
  %and.i127 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %if.else.i, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else.i:                                        ; preds = %if.end13
  %and1.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.if.end17_crit_edge

if.else.i.if.end17_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.end, label %if.else4.i.if.end17_crit_edge

if.else4.i.if.end17_crit_edge:                    ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end17:                                         ; preds = %if.else4.i.if.end17_crit_edge, %if.else.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %.sink.i = phi i32 [ 3, %if.end13.if.end17_crit_edge ], [ 2, %if.else.i.if.end17_crit_edge ], [ 0, %if.else4.i.if.end17_crit_edge ]
  %30 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks.i, align 4
  %32 = and i32 %31, 1056768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  %spec.select204 = select i1 %33, i32 %.sink.i, i32 0
  %conv28203 = zext i8 %29 to i32
  %shl = shl i32 3, %conv28203
  %neg = xor i32 %shl, -1
  %and29 = and i32 %retval.0.i, %neg
  %shl32 = shl i32 %spec.select204, %conv28203
  %or = or i32 %shl32, %and29
  %module_unlock_quirk.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 24
  %34 = ptrtoint ptr %module_unlock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %module_unlock_quirk.i, align 8
  %tobool.not.i130 = icmp eq ptr %35, null
  br i1 %tobool.not.i130, label %if.end17.if.end.i_crit_edge, label %if.then.i131

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i131:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %35(ptr noundef %1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i131, %if.end17.if.end.i_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quirks.i, align 4
  %and.i.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %conv.i.i = trunc i32 %or to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %41 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %40) #12, !srcloc !472
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.i = icmp sgt i32 %44, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %37)
  %cmp5.i.i = icmp eq i32 %44, %37
  %or.cond.i.i = and i1 %cmp.i.i, %cmp5.i.i
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.then.i.i.sysc_write.exit.i_crit_edge

if.then.i.i.sysc_write.exit.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %or, 16
  %conv8.i.i = trunc i32 %shr.i.i to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #12
  %46 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %47, i32 %37
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 %45) #12, !srcloc !472
  br label %sysc_write.exit.i

if.end12.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %49 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %50, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %48) #12, !srcloc !473
  br label %sysc_write.exit.i

sysc_write.exit.i:                                ; preds = %if.end12.i.i, %if.then7.i.i, %if.then.i.i.sysc_write.exit.i_crit_edge
  %module_lock_quirk.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 25
  %51 = ptrtoint ptr %module_lock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %module_lock_quirk.i, align 4
  %tobool2.not.i132 = icmp eq ptr %52, null
  br i1 %tobool2.not.i132, label %sysc_write.exit.i.set_sidle_crit_edge, label %if.then3.i

sysc_write.exit.i.set_sidle_crit_edge:            ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_sidle

if.then3.i:                                       ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %52(ptr noundef %1) #12
  br label %set_sidle

set_sidle:                                        ; preds = %if.then3.i, %sysc_write.exit.i.set_sidle_crit_edge, %lor.lhs.false.set_sidle_crit_edge, %sysc_read.exit.set_sidle_crit_edge
  %reg.0 = phi i32 [ %retval.0.i, %lor.lhs.false.set_sidle_crit_edge ], [ %retval.0.i, %sysc_read.exit.set_sidle_crit_edge ], [ %or, %sysc_write.exit.i.set_sidle_crit_edge ], [ %or, %if.then3.i ]
  %sidlemodes = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 3
  %53 = ptrtoint ptr %sidlemodes to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sidlemodes, align 1
  %conv34 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool35.not = icmp eq i8 %54, 0
  br i1 %tobool35.not, label %set_sidle.save_context_crit_edge, label %lor.lhs.false36

set_sidle.save_context_crit_edge:                 ; preds = %set_sidle
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

lor.lhs.false36:                                  ; preds = %set_sidle
  %sidle_shift = getelementptr inbounds %struct.sysc_regbits, ptr %9, i32 0, i32 2
  %55 = ptrtoint ptr %sidle_shift to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sidle_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp38 = icmp slt i8 %56, 0
  br i1 %cmp38, label %lor.lhs.false36.save_context_crit_edge, label %if.end41

lor.lhs.false36.save_context_crit_edge:           ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

if.end41:                                         ; preds = %lor.lhs.false36
  %57 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %quirks.i, align 4
  %and44 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.else:                                          ; preds = %if.end41
  %and.i133 = and i32 %conv34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %tobool.not.i134 = icmp eq i32 %and.i133, 0
  br i1 %tobool.not.i134, label %if.else.i137, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.else.i137:                                     ; preds = %if.else
  %and1.i135 = and i32 %conv34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i135)
  %tobool2.not.i136 = icmp eq i32 %and1.i135, 0
  br i1 %tobool2.not.i136, label %if.else4.i140, label %if.else.i137.if.end54_crit_edge

if.else.i137.if.end54_crit_edge:                  ; preds = %if.else.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.else4.i140:                                    ; preds = %if.else.i137
  %and5.i138 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i138)
  %tobool6.not.i139 = icmp eq i32 %and5.i138, 0
  br i1 %tobool6.not.i139, label %do.end52, label %if.else4.i140.if.end54_crit_edge

if.else4.i140.if.end54_crit_edge:                 ; preds = %if.else4.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.end52:                                         ; preds = %if.else4.i140
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #15
  br label %save_context

if.end54:                                         ; preds = %if.else4.i140.if.end54_crit_edge, %if.else.i137.if.end54_crit_edge, %if.else.if.end54_crit_edge, %if.end41.if.end54_crit_edge
  %best_mode.4 = phi i32 [ 0, %if.end41.if.end54_crit_edge ], [ 3, %if.else.if.end54_crit_edge ], [ 2, %if.else.i137.if.end54_crit_edge ], [ 0, %if.else4.i140.if.end54_crit_edge ]
  %conv56202 = zext i8 %56 to i32
  %shl57 = shl i32 3, %conv56202
  %neg58 = xor i32 %shl57, -1
  %and59 = and i32 %reg.0, %neg58
  %shl62 = shl i32 %best_mode.4, %conv56202
  %or63 = or i32 %shl62, %and59
  %autoidle_shift = getelementptr inbounds %struct.sysc_regbits, ptr %9, i32 0, i32 5
  %59 = ptrtoint ptr %autoidle_shift to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %autoidle_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp65 = icmp sgt i8 %60, -1
  br i1 %cmp65, label %land.lhs.true, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 8
  %conv64126 = zext i8 %60 to i32
  %shl70 = shl nuw i32 1, %conv64126
  %and71 = and i32 %62, %shl70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %or77 = select i1 %tobool72.not, i32 0, i32 %shl70
  %spec.select = or i32 %or77, %or63
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true, %if.end54.if.end78_crit_edge
  %reg.1 = phi i32 [ %or63, %if.end54.if.end78_crit_edge ], [ %spec.select, %land.lhs.true ]
  %module_unlock_quirk.i145 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 24
  %63 = ptrtoint ptr %module_unlock_quirk.i145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %module_unlock_quirk.i145, align 8
  %tobool.not.i146 = icmp eq ptr %64, null
  br i1 %tobool.not.i146, label %if.end78.if.end.i152_crit_edge, label %if.then.i147

if.end78.if.end.i152_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i152

if.then.i147:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %64(ptr noundef %1) #12
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then.i147, %if.end78.if.end.i152_crit_edge
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %quirks.i, align 4
  %and.i.i150 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i.i150, 0
  br i1 %tobool.not.i.i151, label %if.end12.i.i168, label %if.then.i.i160

if.then.i.i160:                                   ; preds = %if.end.i152
  %conv.i.i153 = trunc i32 %reg.1 to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i153) #12
  %70 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %71, i32 %66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i155, i16 %69) #12, !srcloc !472
  %offsets.i.i156 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %offsets.i.i156 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offsets.i.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.i157 = icmp sgt i32 %73, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %66)
  %cmp5.i.i158 = icmp eq i32 %73, %66
  %or.cond.i.i159 = and i1 %cmp.i.i157, %cmp5.i.i158
  br i1 %or.cond.i.i159, label %if.then7.i.i165, label %if.then.i.i160.sysc_write.exit.i171_crit_edge

if.then.i.i160.sysc_write.exit.i171_crit_edge:    ; preds = %if.then.i.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i171

if.then7.i.i165:                                  ; preds = %if.then.i.i160
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i161 = lshr i32 %reg.1, 16
  %conv8.i.i162 = trunc i32 %shr.i.i161 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i162) #12
  %75 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i.i163 = getelementptr i8, ptr %76, i32 %66
  %add.ptr11.i.i164 = getelementptr i8, ptr %add.ptr10.i.i163, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i164, i16 %74) #12, !srcloc !472
  br label %sysc_write.exit.i171

if.end12.i.i168:                                  ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #14
  %77 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #12
  %78 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i.i167 = getelementptr i8, ptr %79, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i167, i32 %77) #12, !srcloc !473
  br label %sysc_write.exit.i171

sysc_write.exit.i171:                             ; preds = %if.end12.i.i168, %if.then7.i.i165, %if.then.i.i160.sysc_write.exit.i171_crit_edge
  %module_lock_quirk.i169 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 25
  %80 = ptrtoint ptr %module_lock_quirk.i169 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %module_lock_quirk.i169, align 4
  %tobool2.not.i170 = icmp eq ptr %81, null
  br i1 %tobool2.not.i170, label %sysc_write.exit.i171.save_context_crit_edge, label %if.then3.i172

sysc_write.exit.i171.save_context_crit_edge:      ; preds = %sysc_write.exit.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

if.then3.i172:                                    ; preds = %sysc_write.exit.i171
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %81(ptr noundef %1) #12
  br label %save_context

save_context:                                     ; preds = %if.then3.i172, %sysc_write.exit.i171.save_context_crit_edge, %do.end52, %lor.lhs.false36.save_context_crit_edge, %set_sidle.save_context_crit_edge
  %ret.0 = phi i32 [ -22, %do.end52 ], [ 0, %lor.lhs.false36.save_context_crit_edge ], [ 0, %set_sidle.save_context_crit_edge ], [ 0, %sysc_write.exit.i171.save_context_crit_edge ], [ 0, %if.then3.i172 ]
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  %84 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %quirks.i, align 4
  %and.i175 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  %86 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i178 = getelementptr i8, ptr %87, i32 %83
  br i1 %tobool.not.i176, label %if.end15.i191, label %if.then.i184

if.then.i184:                                     ; preds = %save_context
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i178) #12, !srcloc !470
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #12
  %conv.i179 = zext i16 %89 to i32
  %offsets.i180 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %offsets.i180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offsets.i180, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp.i181 = icmp sgt i32 %91, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %83)
  %cmp4.i182 = icmp eq i32 %91, %83
  %or.cond.i183 = and i1 %cmp.i181, %cmp4.i182
  br i1 %or.cond.i183, label %if.then6.i190, label %if.then.i184.sysc_read.exit193_crit_edge

if.then.i184.sysc_read.exit193_crit_edge:         ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit193

if.then6.i190:                                    ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i185 = getelementptr i8, ptr %93, i32 %83
  %add.ptr11.i186 = getelementptr i8, ptr %add.ptr10.i185, i32 4
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i186) #12, !srcloc !470
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #12
  %conv14.i187 = zext i16 %95 to i32
  %shl.i188 = shl nuw i32 %conv14.i187, 16
  %or.i189 = or i32 %shl.i188, %conv.i179
  br label %sysc_read.exit193

if.end15.i191:                                    ; preds = %save_context
  call void @__sanitizer_cov_trace_pc() #14
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i178) #12, !srcloc !471
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  br label %sysc_read.exit193

sysc_read.exit193:                                ; preds = %if.end15.i191, %if.then6.i190, %if.then.i184.sysc_read.exit193_crit_edge
  %retval.0.i192 = phi i32 [ %97, %if.end15.i191 ], [ %or.i189, %if.then6.i190 ], [ %conv.i179, %if.then.i184.sysc_read.exit193_crit_edge ]
  %sysconfig = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 16
  %98 = ptrtoint ptr %sysconfig to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i192, ptr %sysconfig, align 8
  br label %cleanup

cleanup:                                          ; preds = %sysc_read.exit193, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sysc_read.exit193 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_disable_main_clocks(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.preheader.for.inc_crit_edge, label %if.end3

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end3:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %5) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.preheader.for.inc_crit_edge
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 8
  %arrayidx.1 = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %9, null
  %cmp.i.1 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.cleanup_crit_edge, label %if.end3.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3.1, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_disable_opt_clocks(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 8
  %2 = ptrtoint ptr %nr_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_clocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.preheader.cleanup_crit_edge, label %if.end4

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %for.body.preheader
  tail call void @clk_disable(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clocks, align 8
  %arrayidx.1 = getelementptr ptr, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %11, null
  %cmp.i.1 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %if.end4.cleanup_crit_edge, label %if.end4.1

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.1:                                        ; preds = %if.end4
  tail call void @clk_disable(ptr noundef nonnull %11) #12
  %12 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clocks, align 8
  %arrayidx.2 = getelementptr ptr, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %15, null
  %cmp.i.2 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %if.end4.1.cleanup_crit_edge, label %if.end4.2

if.end4.1.cleanup_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.2:                                        ; preds = %if.end4.1
  tail call void @clk_disable(ptr noundef nonnull %15) #12
  %16 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks, align 8
  %arrayidx.3 = getelementptr ptr, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %19, null
  %cmp.i.3 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %if.end4.2.cleanup_crit_edge, label %if.end4.3

if.end4.2.cleanup_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.3:                                        ; preds = %if.end4.2
  tail call void @clk_disable(ptr noundef nonnull %19) #12
  %20 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clocks, align 8
  %arrayidx.4 = getelementptr ptr, ptr %21, i32 6
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %23, null
  %cmp.i.4 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.4 = or i1 %tobool.not.i.4, %cmp.i.4
  br i1 %spec.select.i.4, label %if.end4.3.cleanup_crit_edge, label %if.end4.4

if.end4.3.cleanup_crit_edge:                      ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.4:                                        ; preds = %if.end4.3
  tail call void @clk_disable(ptr noundef nonnull %23) #12
  %24 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clocks, align 8
  %arrayidx.5 = getelementptr ptr, ptr %25, i32 7
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %27, null
  %cmp.i.5 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i.5 = or i1 %tobool.not.i.5, %cmp.i.5
  br i1 %spec.select.i.5, label %if.end4.4.cleanup_crit_edge, label %if.end4.5

if.end4.4.cleanup_crit_edge:                      ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.5:                                        ; preds = %if.end4.4
  tail call void @clk_disable(ptr noundef nonnull %27) #12
  %28 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clocks, align 8
  %arrayidx.6 = getelementptr ptr, ptr %29, i32 8
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.i.6 = icmp eq ptr %31, null
  %cmp.i.6 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.6 = or i1 %tobool.not.i.6, %cmp.i.6
  br i1 %spec.select.i.6, label %if.end4.5.cleanup_crit_edge, label %if.end4.6

if.end4.5.cleanup_crit_edge:                      ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.6:                                        ; preds = %if.end4.5
  tail call void @clk_disable(ptr noundef nonnull %31) #12
  %32 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clocks, align 8
  %arrayidx.7 = getelementptr ptr, ptr %33, i32 9
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.i.7 = icmp eq ptr %35, null
  %cmp.i.7 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.7 = or i1 %tobool.not.i.7, %cmp.i.7
  br i1 %spec.select.i.7, label %if.end4.6.cleanup_crit_edge, label %if.end4.7

if.end4.6.cleanup_crit_edge:                      ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.7:                                        ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %35) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4.7, %if.end4.6.cleanup_crit_edge, %if.end4.5.cleanup_crit_edge, %if.end4.4.cleanup_crit_edge, %if.end4.3.cleanup_crit_edge, %if.end4.2.cleanup_crit_edge, %if.end4.1.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_clkdm_allow_idle(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy_mode = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 10
  %0 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy_mode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddata, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %clkdm_allow_idle = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clkdm_allow_idle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkdm_allow_idle, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cookie = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 13
  tail call void %9(ptr noundef %5, ptr noundef %cookie) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %legacy_mode.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.sysc_clkdm_deny_idle.exit_crit_edge

if.end.sysc_clkdm_deny_idle.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge

lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i.i, align 8
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.sysc_clkdm_deny_idle.exit_crit_edge, label %land.lhs.true.i

if.end.i.sysc_clkdm_deny_idle.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %clkdm_deny_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %clkdm_deny_idle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkdm_deny_idle.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, label %if.then4.i

land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  tail call void %13(ptr noundef %9, ptr noundef %cookie.i) #12
  br label %sysc_clkdm_deny_idle.exit

sysc_clkdm_deny_idle.exit:                        ; preds = %if.then4.i, %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, %if.end.i.sysc_clkdm_deny_idle.exit_crit_edge, %lor.lhs.false.i.sysc_clkdm_deny_idle.exit_crit_edge, %if.end.sysc_clkdm_deny_idle.exit_crit_edge
  %quirks.i50 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %14 = ptrtoint ptr %quirks.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks.i50, align 4
  %and.i51 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.i.not = icmp eq i32 %and.i51, 0
  br i1 %tobool.i.not, label %sysc_clkdm_deny_idle.exit.if.end7_crit_edge, label %if.then2

sysc_clkdm_deny_idle.exit.if.end7_crit_edge:      ; preds = %sysc_clkdm_deny_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then2:                                         ; preds = %sysc_clkdm_deny_idle.exit
  %call3 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.err_allow_idle_crit_edge

if.then2.err_allow_idle_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_allow_idle

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %sysc_clkdm_deny_idle.exit.if.end7_crit_edge
  %clocks.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks.i, align 8
  %tobool.not.i52 = icmp eq ptr %17, null
  br i1 %tobool.not.i52, label %if.end7.if.end11_crit_edge, label %for.body.preheader.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body.preheader.i:                             ; preds = %if.end7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %cmp.i.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.preheader.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.for.inc.i_crit_edge, label %if.end3.i.err_opt_clocks_crit_edge

if.end3.i.err_opt_clocks_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clocks.i, align 8
  %arrayidx.1.i = getelementptr ptr, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %23, null
  %cmp.i.1.i = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i.1.i
  br i1 %spec.select.i.1.i, label %for.inc.i.if.end11_crit_edge, label %if.end3.1.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end3.1.i:                                      ; preds = %for.inc.i
  %call4.1.i = tail call i32 @clk_enable(ptr noundef nonnull %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1.i)
  %tobool5.not.1.i = icmp eq i32 %call4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.end3.1.i.if.end11_crit_edge, label %for.body10.i

if.end3.1.i.if.end11_crit_edge:                   ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body10.i:                                     ; preds = %if.end3.1.i
  %24 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clocks.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i33.i = icmp eq ptr %27, null
  %cmp.i34.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i35.i = or i1 %tobool.not.i33.i, %cmp.i34.i
  br i1 %spec.select.i35.i, label %for.body10.i.err_opt_clocks_crit_edge, label %for.body10.i.err_opt_clocks.sink.split_crit_edge

for.body10.i.err_opt_clocks.sink.split_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks.sink.split

for.body10.i.err_opt_clocks_crit_edge:            ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks

if.end11:                                         ; preds = %if.end3.1.i.if.end11_crit_edge, %for.inc.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %rsts = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rsts, align 4
  %call12 = tail call i32 @reset_control_deassert(ptr noundef %29) #12
  %30 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %legacy_mode.i, align 8
  %tobool13.not = icmp eq ptr %31, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %platform_data.i.i53 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %platform_data.i.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %platform_data.i.i53, align 8
  %tobool.not.i54 = icmp eq ptr %35, null
  br i1 %tobool.not.i54, label %if.then14.if.end23_crit_edge, label %if.end.i56

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i56:                                       ; preds = %if.then14
  %enable_module.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %enable_module.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enable_module.i, align 4
  %tobool2.not.i55 = icmp eq ptr %37, null
  br i1 %tobool2.not.i55, label %if.end.i56.err_main_clocks_crit_edge, label %if.end4.i

if.end.i56.err_main_clocks_crit_edge:             ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_main_clocks

if.end4.i:                                        ; preds = %if.end.i56
  %cookie.i57 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  %call6.i = tail call i32 %37(ptr noundef %dev, ptr noundef %cookie.i57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end9.i_crit_edge, label %do.end.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call6.i) #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end4.i.if.end9.i_crit_edge
  %38 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rsts, align 4
  %call10.i = tail call i32 @reset_control_deassert(ptr noundef %39) #12
  br label %if.end23

if.else:                                          ; preds = %if.end11
  %call19 = tail call fastcc i32 @sysc_enable_module(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.else.err_main_clocks_crit_edge

if.else.err_main_clocks_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_main_clocks

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.end9.i, %if.then14.if.end23_crit_edge
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load25 = load i8, ptr %enabled, align 4
  %bf.set = or i8 %bf.load25, 64
  store i8 %bf.set, ptr %enabled, align 4
  %41 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i60 = icmp eq ptr %42, null
  br i1 %tobool.not.i60, label %lor.lhs.false.i64, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i64:                                ; preds = %if.end23
  %43 = ptrtoint ptr %quirks.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks.i50, align 4
  %and.i62 = and i32 %44, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool1.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool1.not.i63, label %if.end.i67, label %lor.lhs.false.i64.cleanup_crit_edge

lor.lhs.false.i64.cleanup_crit_edge:              ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i67:                                       ; preds = %lor.lhs.false.i64
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %platform_data.i.i65 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %platform_data.i.i65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %platform_data.i.i65, align 8
  %tobool2.not.i66 = icmp eq ptr %48, null
  br i1 %tobool2.not.i66, label %if.end.i67.cleanup_crit_edge, label %land.lhs.true.i69

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i69:                                ; preds = %if.end.i67
  %clkdm_allow_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %clkdm_allow_idle.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clkdm_allow_idle.i, align 4
  %tobool3.not.i68 = icmp eq ptr %50, null
  br i1 %tobool3.not.i68, label %land.lhs.true.i69.cleanup_crit_edge, label %if.then4.i71

land.lhs.true.i69.cleanup_crit_edge:              ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i71:                                     ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i70 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  tail call void %50(ptr noundef %46, ptr noundef %cookie.i70) #12
  br label %cleanup

err_main_clocks:                                  ; preds = %if.else.err_main_clocks_crit_edge, %if.end.i56.err_main_clocks_crit_edge
  %error.0 = phi i32 [ %call19, %if.else.err_main_clocks_crit_edge ], [ -19, %if.end.i56.err_main_clocks_crit_edge ]
  %51 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clocks.i, align 8
  %tobool.not.i73 = icmp eq ptr %52, null
  br i1 %tobool.not.i73, label %err_main_clocks.err_opt_clocks_crit_edge, label %for.body.preheader.i77

err_main_clocks.err_opt_clocks_crit_edge:         ; preds = %err_main_clocks
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks

for.body.preheader.i77:                           ; preds = %err_main_clocks
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool.not.i.i74 = icmp eq ptr %54, null
  %cmp.i.i75 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i76 = or i1 %tobool.not.i.i74, %cmp.i.i75
  br i1 %spec.select.i.i76, label %for.body.preheader.i77.for.inc.i83_crit_edge, label %if.end3.i78

for.body.preheader.i77.for.inc.i83_crit_edge:     ; preds = %for.body.preheader.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i83

if.end3.i78:                                      ; preds = %for.body.preheader.i77
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %54) #12
  br label %for.inc.i83

for.inc.i83:                                      ; preds = %if.end3.i78, %for.body.preheader.i77.for.inc.i83_crit_edge
  %55 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clocks.i, align 8
  %arrayidx.1.i79 = getelementptr ptr, ptr %56, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.1.i79, align 4
  %tobool.not.i.1.i80 = icmp eq ptr %58, null
  %cmp.i.1.i81 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i82 = or i1 %tobool.not.i.1.i80, %cmp.i.1.i81
  br i1 %spec.select.i.1.i82, label %for.inc.i83.err_opt_clocks_crit_edge, label %for.inc.i83.err_opt_clocks.sink.split_crit_edge

for.inc.i83.err_opt_clocks.sink.split_crit_edge:  ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks.sink.split

for.inc.i83.err_opt_clocks_crit_edge:             ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_opt_clocks

err_opt_clocks.sink.split:                        ; preds = %for.inc.i83.err_opt_clocks.sink.split_crit_edge, %for.body10.i.err_opt_clocks.sink.split_crit_edge
  %.sink = phi ptr [ %27, %for.body10.i.err_opt_clocks.sink.split_crit_edge ], [ %58, %for.inc.i83.err_opt_clocks.sink.split_crit_edge ]
  %error.1.ph = phi i32 [ %call4.1.i, %for.body10.i.err_opt_clocks.sink.split_crit_edge ], [ %error.0, %for.inc.i83.err_opt_clocks.sink.split_crit_edge ]
  tail call void @clk_disable(ptr noundef nonnull %.sink) #12
  br label %err_opt_clocks

err_opt_clocks:                                   ; preds = %err_opt_clocks.sink.split, %for.inc.i83.err_opt_clocks_crit_edge, %err_main_clocks.err_opt_clocks_crit_edge, %for.body10.i.err_opt_clocks_crit_edge, %if.end3.i.err_opt_clocks_crit_edge
  %error.1 = phi i32 [ %call4.1.i, %for.body10.i.err_opt_clocks_crit_edge ], [ %call4.i, %if.end3.i.err_opt_clocks_crit_edge ], [ %error.0, %err_main_clocks.err_opt_clocks_crit_edge ], [ %error.0, %for.inc.i83.err_opt_clocks_crit_edge ], [ %error.1.ph, %err_opt_clocks.sink.split ]
  %59 = ptrtoint ptr %quirks.i50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks.i50, align 4
  %and.i86 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.i87.not = icmp eq i32 %and.i86, 0
  br i1 %tobool.i87.not, label %err_opt_clocks.err_allow_idle_crit_edge, label %if.then28

err_opt_clocks.err_allow_idle_crit_edge:          ; preds = %err_opt_clocks
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_allow_idle

if.then28:                                        ; preds = %err_opt_clocks
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %1)
  br label %err_allow_idle

err_allow_idle:                                   ; preds = %if.then28, %err_opt_clocks.err_allow_idle_crit_edge, %if.then2.err_allow_idle_crit_edge
  %error.2 = phi i32 [ %call3, %if.then2.err_allow_idle_crit_edge ], [ %error.1, %if.then28 ], [ %error.1, %err_opt_clocks.err_allow_idle_crit_edge ]
  %61 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i89 = icmp eq ptr %62, null
  br i1 %tobool.not.i89, label %lor.lhs.false.i93, label %err_allow_idle.cleanup_crit_edge

err_allow_idle.cleanup_crit_edge:                 ; preds = %err_allow_idle
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i93:                                ; preds = %err_allow_idle
  %63 = ptrtoint ptr %quirks.i50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %quirks.i50, align 4
  %and.i91 = and i32 %64, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool1.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool1.not.i92, label %if.end.i96, label %lor.lhs.false.i93.cleanup_crit_edge

lor.lhs.false.i93.cleanup_crit_edge:              ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i96:                                       ; preds = %lor.lhs.false.i93
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %platform_data.i.i94 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %platform_data.i.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %platform_data.i.i94, align 8
  %tobool2.not.i95 = icmp eq ptr %68, null
  br i1 %tobool2.not.i95, label %if.end.i96.cleanup_crit_edge, label %land.lhs.true.i99

if.end.i96.cleanup_crit_edge:                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i99:                                ; preds = %if.end.i96
  %clkdm_allow_idle.i97 = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %clkdm_allow_idle.i97 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clkdm_allow_idle.i97, align 4
  %tobool3.not.i98 = icmp eq ptr %70, null
  br i1 %tobool3.not.i98, label %land.lhs.true.i99.cleanup_crit_edge, label %if.then4.i101

land.lhs.true.i99.cleanup_crit_edge:              ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i101:                                    ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i100 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 13
  tail call void %70(ptr noundef %66, ptr noundef %cookie.i100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i101, %land.lhs.true.i99.cleanup_crit_edge, %if.end.i96.cleanup_crit_edge, %lor.lhs.false.i93.cleanup_crit_edge, %err_allow_idle.cleanup_crit_edge, %if.then4.i71, %land.lhs.true.i69.cleanup_crit_edge, %if.end.i67.cleanup_crit_edge, %lor.lhs.false.i64.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %lor.lhs.false.i64.cleanup_crit_edge ], [ 0, %if.end.i67.cleanup_crit_edge ], [ 0, %land.lhs.true.i69.cleanup_crit_edge ], [ 0, %if.then4.i71 ], [ %error.2, %err_allow_idle.cleanup_crit_edge ], [ %error.2, %lor.lhs.false.i93.cleanup_crit_edge ], [ %error.2, %if.end.i96.cleanup_crit_edge ], [ %error.2, %land.lhs.true.i99.cleanup_crit_edge ], [ %error.2, %if.then4.i101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_noirq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_enable_opt_clocks(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 8
  %2 = ptrtoint ptr %nr_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_clocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.preheader.cleanup_crit_edge, label %if.end4

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %for.body.preheader
  %call5 = tail call i32 @clk_enable(ptr noundef nonnull %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %if.end4.for.body11.preheader_crit_edge

if.end4.for.body11.preheader_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.body11.preheader:                             ; preds = %if.end4.7.for.body11.preheader_crit_edge, %if.end4.6.for.body11.preheader_crit_edge, %if.end4.5.for.body11.preheader_crit_edge, %if.end4.4.for.body11.preheader_crit_edge, %if.end4.3.for.body11.preheader_crit_edge, %if.end4.2.for.body11.preheader_crit_edge, %if.end4.1.for.body11.preheader_crit_edge, %if.end4.for.body11.preheader_crit_edge
  %i.040.lcssa45 = phi i32 [ 1, %if.end4.for.body11.preheader_crit_edge ], [ 2, %if.end4.1.for.body11.preheader_crit_edge ], [ 3, %if.end4.2.for.body11.preheader_crit_edge ], [ 4, %if.end4.3.for.body11.preheader_crit_edge ], [ 5, %if.end4.4.for.body11.preheader_crit_edge ], [ 6, %if.end4.5.for.body11.preheader_crit_edge ], [ 7, %if.end4.6.for.body11.preheader_crit_edge ], [ 8, %if.end4.7.for.body11.preheader_crit_edge ]
  %call5.lcssa = phi i32 [ %call5, %if.end4.for.body11.preheader_crit_edge ], [ %call5.1, %if.end4.1.for.body11.preheader_crit_edge ], [ %call5.2, %if.end4.2.for.body11.preheader_crit_edge ], [ %call5.3, %if.end4.3.for.body11.preheader_crit_edge ], [ %call5.4, %if.end4.4.for.body11.preheader_crit_edge ], [ %call5.5, %if.end4.5.for.body11.preheader_crit_edge ], [ %call5.6, %if.end4.6.for.body11.preheader_crit_edge ], [ %call5.7, %if.end4.7.for.body11.preheader_crit_edge ]
  br label %for.body11

for.inc:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clocks, align 8
  %arrayidx.1 = getelementptr ptr, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %11, null
  %cmp.i.1 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.cleanup_crit_edge, label %if.end4.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.1:                                        ; preds = %for.inc
  %call5.1 = tail call i32 @clk_enable(ptr noundef nonnull %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %for.inc.1, label %if.end4.1.for.body11.preheader_crit_edge

if.end4.1.for.body11.preheader_crit_edge:         ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.1:                                        ; preds = %if.end4.1
  %12 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clocks, align 8
  %arrayidx.2 = getelementptr ptr, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %15, null
  %cmp.i.2 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %for.inc.1.cleanup_crit_edge, label %if.end4.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.2:                                        ; preds = %for.inc.1
  %call5.2 = tail call i32 @clk_enable(ptr noundef nonnull %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %for.inc.2, label %if.end4.2.for.body11.preheader_crit_edge

if.end4.2.for.body11.preheader_crit_edge:         ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.2:                                        ; preds = %if.end4.2
  %16 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clocks, align 8
  %arrayidx.3 = getelementptr ptr, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %19, null
  %cmp.i.3 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %for.inc.2.cleanup_crit_edge, label %if.end4.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.3:                                        ; preds = %for.inc.2
  %call5.3 = tail call i32 @clk_enable(ptr noundef nonnull %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %for.inc.3, label %if.end4.3.for.body11.preheader_crit_edge

if.end4.3.for.body11.preheader_crit_edge:         ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.3:                                        ; preds = %if.end4.3
  %20 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clocks, align 8
  %arrayidx.4 = getelementptr ptr, ptr %21, i32 6
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %23, null
  %cmp.i.4 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.4 = or i1 %tobool.not.i.4, %cmp.i.4
  br i1 %spec.select.i.4, label %for.inc.3.cleanup_crit_edge, label %if.end4.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.4:                                        ; preds = %for.inc.3
  %call5.4 = tail call i32 @clk_enable(ptr noundef nonnull %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %for.inc.4, label %if.end4.4.for.body11.preheader_crit_edge

if.end4.4.for.body11.preheader_crit_edge:         ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.4:                                        ; preds = %if.end4.4
  %24 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clocks, align 8
  %arrayidx.5 = getelementptr ptr, ptr %25, i32 7
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %27, null
  %cmp.i.5 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i.5 = or i1 %tobool.not.i.5, %cmp.i.5
  br i1 %spec.select.i.5, label %for.inc.4.cleanup_crit_edge, label %if.end4.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.5:                                        ; preds = %for.inc.4
  %call5.5 = tail call i32 @clk_enable(ptr noundef nonnull %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %for.inc.5, label %if.end4.5.for.body11.preheader_crit_edge

if.end4.5.for.body11.preheader_crit_edge:         ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.5:                                        ; preds = %if.end4.5
  %28 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clocks, align 8
  %arrayidx.6 = getelementptr ptr, ptr %29, i32 8
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.i.6 = icmp eq ptr %31, null
  %cmp.i.6 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.6 = or i1 %tobool.not.i.6, %cmp.i.6
  br i1 %spec.select.i.6, label %for.inc.5.cleanup_crit_edge, label %if.end4.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.6:                                        ; preds = %for.inc.5
  %call5.6 = tail call i32 @clk_enable(ptr noundef nonnull %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %for.inc.6, label %if.end4.6.for.body11.preheader_crit_edge

if.end4.6.for.body11.preheader_crit_edge:         ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc.6:                                        ; preds = %if.end4.6
  %32 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clocks, align 8
  %arrayidx.7 = getelementptr ptr, ptr %33, i32 9
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.i.7 = icmp eq ptr %35, null
  %cmp.i.7 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.7 = or i1 %tobool.not.i.7, %cmp.i.7
  br i1 %spec.select.i.7, label %for.inc.6.cleanup_crit_edge, label %if.end4.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.7:                                        ; preds = %for.inc.6
  %call5.7 = tail call i32 @clk_enable(ptr noundef nonnull %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %if.end4.7.cleanup_crit_edge, label %if.end4.7.for.body11.preheader_crit_edge

if.end4.7.for.body11.preheader_crit_edge:         ; preds = %if.end4.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

if.end4.7.cleanup_crit_edge:                      ; preds = %if.end4.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body11:                                       ; preds = %for.inc17.for.body11_crit_edge, %for.body11.preheader
  %i.143 = phi i32 [ %i.1, %for.inc17.for.body11_crit_edge ], [ %i.040.lcssa45, %for.body11.preheader ]
  %36 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clocks, align 8
  %arrayidx13 = getelementptr ptr, ptr %37, i32 %i.143
  %38 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx13, align 4
  %tobool.not.i35 = icmp eq ptr %39, null
  %cmp.i36 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %spec.select.i37 = or i1 %tobool.not.i35, %cmp.i36
  br i1 %spec.select.i37, label %for.body11.for.inc17_crit_edge, label %if.end16

for.body11.for.inc17_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17

if.end16:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %39) #12
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16, %for.body11.for.inc17_crit_edge
  %i.1 = add nsw i32 %i.143, -1
  %cmp10 = icmp sgt i32 %i.143, 0
  br i1 %cmp10, label %for.inc17.for.body11_crit_edge, label %for.inc17.cleanup_crit_edge

for.inc17.cleanup_crit_edge:                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc17.for.body11_crit_edge:                   ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

cleanup:                                          ; preds = %for.inc17.cleanup_crit_edge, %if.end4.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.7.cleanup_crit_edge ], [ 0, %for.inc.6.cleanup_crit_edge ], [ 0, %for.inc.5.cleanup_crit_edge ], [ 0, %for.inc.4.cleanup_crit_edge ], [ 0, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ %call5.lcssa, %for.inc17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_enable_module(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cfg = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12
  %quirks = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %call1) #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then10:                                        ; preds = %if.end5
  %call11 = tail call fastcc i32 @sysc_wait_softreset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end19_crit_edge, label %do.end16

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.30) #15
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then10.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and22 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end25_crit_edge, label %if.then24

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %arrayidx = getelementptr %struct.sysc, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %13)
  %cmp = icmp eq i32 %13, -19
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end25
  %cap = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cap, align 4
  %regbits28 = getelementptr inbounds %struct.sysc_capabilities, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regbits28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbits28, align 4
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %21, i32 %13
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #12
  %conv.i = zext i16 %23 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i = icmp sgt i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp4.i = icmp eq i32 %25, %13
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.sysc_read.exit_crit_edge

if.then.i.sysc_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %27, i32 %13
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #12
  %conv14.i = zext i16 %29 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %sysc_read.exit

if.end15.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  br label %sysc_read.exit

sysc_read.exit:                                   ; preds = %if.end15.i, %if.then6.i, %if.then.i.sysc_read.exit_crit_edge
  %retval.0.i = phi i32 [ %31, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.sysc_read.exit_crit_edge ]
  %clkact_shift = getelementptr inbounds %struct.sysc_regbits, ptr %17, i32 0, i32 1
  %32 = ptrtoint ptr %clkact_shift to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %clkact_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp32 = icmp sgt i8 %33, -1
  br i1 %cmp32, label %land.lhs.true, label %sysc_read.exit.if.end41_crit_edge

sysc_read.exit.if.end41_crit_edge:                ; preds = %sysc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %sysc_read.exit
  %34 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks, align 4
  %and36 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end41_crit_edge, label %if.then38

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv220 = zext i8 %33 to i32
  %shl = shl i32 2, %conv220
  %or = or i32 %shl, %retval.0.i
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %land.lhs.true.if.end41_crit_edge, %sysc_read.exit.if.end41_crit_edge
  %reg.0 = phi i32 [ %or, %if.then38 ], [ %retval.0.i, %land.lhs.true.if.end41_crit_edge ], [ %retval.0.i, %sysc_read.exit.if.end41_crit_edge ]
  %sidlemodes = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 3
  %36 = ptrtoint ptr %sidlemodes to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sidlemodes, align 1
  %conv43 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not = icmp eq i8 %37, 0
  br i1 %tobool44.not, label %if.end41.set_midle_crit_edge, label %lor.lhs.false

if.end41.set_midle_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_midle

lor.lhs.false:                                    ; preds = %if.end41
  %sidle_shift = getelementptr inbounds %struct.sysc_regbits, ptr %17, i32 0, i32 2
  %38 = ptrtoint ptr %sidle_shift to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sidle_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp46 = icmp slt i8 %39, 0
  br i1 %cmp46, label %lor.lhs.false.set_midle_crit_edge, label %if.end49

lor.lhs.false.set_midle_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_midle

if.end49:                                         ; preds = %lor.lhs.false
  %40 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quirks, align 4
  %and52 = and i32 %41, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else, label %if.end49.if.end82_crit_edge

if.end49.if.end82_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.else:                                          ; preds = %if.end49
  %42 = tail call i32 @llvm.ctlz.i32(i32 %conv43, i1 true) #12, !range !474
  %sub = xor i32 %42, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp59 = icmp ugt i32 %sub, 3
  br i1 %cmp59, label %do.end64, label %if.end65

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end65:                                         ; preds = %if.else
  %enwkup_shift = getelementptr inbounds %struct.sysc_regbits, ptr %17, i32 0, i32 3
  %43 = ptrtoint ptr %enwkup_shift to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enwkup_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp67 = icmp sgt i8 %44, -1
  br i1 %cmp67, label %land.lhs.true69, label %if.end65.if.end82_crit_edge

if.end65.if.end82_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true69:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfg, align 8
  %conv66219 = zext i8 %44 to i32
  %shl73 = shl nuw i32 1, %conv66219
  %and74 = and i32 %46, %shl73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %or80 = select i1 %tobool75.not, i32 0, i32 %shl73
  %spec.select = or i32 %or80, %reg.0
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true69, %if.end65.if.end82_crit_edge, %if.end49.if.end82_crit_edge
  %reg.1 = phi i32 [ %reg.0, %if.end65.if.end82_crit_edge ], [ %reg.0, %if.end49.if.end82_crit_edge ], [ %spec.select, %land.lhs.true69 ]
  %best_mode.0 = phi i32 [ %sub, %if.end65.if.end82_crit_edge ], [ 1, %if.end49.if.end82_crit_edge ], [ %sub, %land.lhs.true69 ]
  %conv84304 = zext i8 %39 to i32
  %shl85 = shl i32 3, %conv84304
  %neg = xor i32 %shl85, -1
  %and86 = and i32 %reg.1, %neg
  %shl89 = shl i32 %best_mode.0, %conv84304
  %or90 = or i32 %shl89, %and86
  %module_unlock_quirk.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 24
  %47 = ptrtoint ptr %module_unlock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %module_unlock_quirk.i, align 8
  %tobool.not.i223 = icmp eq ptr %48, null
  br i1 %tobool.not.i223, label %if.end82.if.end.i_crit_edge, label %if.then.i224

if.end82.if.end.i_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i224:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %48(ptr noundef %1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i224, %if.end82.if.end.i_crit_edge
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %quirks, align 4
  %and.i.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %conv.i.i = trunc i32 %or90 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %54 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %50
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %53) #12, !srcloc !472
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.i.i = icmp sgt i32 %57, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %50)
  %cmp5.i.i = icmp eq i32 %57, %50
  %or.cond.i.i = and i1 %cmp.i.i, %cmp5.i.i
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.then.i.i.sysc_write.exit.i_crit_edge

if.then.i.i.sysc_write.exit.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %or90, 16
  %conv8.i.i = trunc i32 %shr.i.i to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #12
  %59 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %60, i32 %50
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 %58) #12, !srcloc !472
  br label %sysc_write.exit.i

if.end12.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = tail call i32 @llvm.bswap.i32(i32 %or90) #12
  %62 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %63, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %61) #12, !srcloc !473
  br label %sysc_write.exit.i

sysc_write.exit.i:                                ; preds = %if.end12.i.i, %if.then7.i.i, %if.then.i.i.sysc_write.exit.i_crit_edge
  %module_lock_quirk.i = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 25
  %64 = ptrtoint ptr %module_lock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %module_lock_quirk.i, align 4
  %tobool2.not.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i, label %sysc_write.exit.i.set_midle_crit_edge, label %if.then3.i

sysc_write.exit.i.set_midle_crit_edge:            ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_midle

if.then3.i:                                       ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %65(ptr noundef %1) #12
  br label %set_midle

set_midle:                                        ; preds = %if.then3.i, %sysc_write.exit.i.set_midle_crit_edge, %lor.lhs.false.set_midle_crit_edge, %if.end41.set_midle_crit_edge
  %reg.2 = phi i32 [ %reg.0, %lor.lhs.false.set_midle_crit_edge ], [ %reg.0, %if.end41.set_midle_crit_edge ], [ %or90, %sysc_write.exit.i.set_midle_crit_edge ], [ %or90, %if.then3.i ]
  %midlemodes = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 2
  %66 = ptrtoint ptr %midlemodes to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %midlemodes, align 8
  %conv92 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool93.not = icmp eq i8 %67, 0
  br i1 %tobool93.not, label %set_midle.set_autoidle_crit_edge, label %lor.lhs.false94

set_midle.set_autoidle_crit_edge:                 ; preds = %set_midle
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_autoidle

lor.lhs.false94:                                  ; preds = %set_midle
  %68 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp96 = icmp slt i8 %69, 0
  br i1 %cmp96, label %lor.lhs.false94.set_autoidle_crit_edge, label %if.end99

lor.lhs.false94.set_autoidle_crit_edge:           ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_autoidle

if.end99:                                         ; preds = %lor.lhs.false94
  %70 = tail call i32 @llvm.ctlz.i32(i32 %conv92, i1 true) #12, !range !474
  %sub104 = xor i32 %70, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub104)
  %cmp105 = icmp ugt i32 %sub104, 3
  br i1 %cmp105, label %do.end110, label %if.end111

do.end110:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.28) #15
  br label %save_context

if.end111:                                        ; preds = %if.end99
  %71 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %quirks, align 4
  %and114 = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %spec.select221 = select i1 %tobool115.not, i32 %sub104, i32 1
  %conv119303 = zext i8 %69 to i32
  %shl120 = shl i32 3, %conv119303
  %neg121 = xor i32 %shl120, -1
  %and122 = and i32 %reg.2, %neg121
  %shl125 = shl i32 %spec.select221, %conv119303
  %or126 = or i32 %shl125, %and122
  %module_unlock_quirk.i225 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 24
  %73 = ptrtoint ptr %module_unlock_quirk.i225 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %module_unlock_quirk.i225, align 8
  %tobool.not.i226 = icmp eq ptr %74, null
  br i1 %tobool.not.i226, label %if.end111.if.end.i232_crit_edge, label %if.then.i227

if.end111.if.end.i232_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i232

if.then.i227:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %74(ptr noundef %1) #12
  br label %if.end.i232

if.end.i232:                                      ; preds = %if.then.i227, %if.end111.if.end.i232_crit_edge
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx, align 4
  %77 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %quirks, align 4
  %and.i.i230 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i230)
  %tobool.not.i.i231 = icmp eq i32 %and.i.i230, 0
  br i1 %tobool.not.i.i231, label %if.end12.i.i248, label %if.then.i.i240

if.then.i.i240:                                   ; preds = %if.end.i232
  %conv.i.i233 = trunc i32 %or126 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i233) #12
  %80 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %81, i32 %76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i235, i16 %79) #12, !srcloc !472
  %offsets.i.i236 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %offsets.i.i236 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offsets.i.i236, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.i237 = icmp sgt i32 %83, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %76)
  %cmp5.i.i238 = icmp eq i32 %83, %76
  %or.cond.i.i239 = and i1 %cmp.i.i237, %cmp5.i.i238
  br i1 %or.cond.i.i239, label %if.then7.i.i245, label %if.then.i.i240.sysc_write.exit.i251_crit_edge

if.then.i.i240.sysc_write.exit.i251_crit_edge:    ; preds = %if.then.i.i240
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i251

if.then7.i.i245:                                  ; preds = %if.then.i.i240
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i241 = lshr i32 %or126, 16
  %conv8.i.i242 = trunc i32 %shr.i.i241 to i16
  %84 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i242) #12
  %85 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i.i243 = getelementptr i8, ptr %86, i32 %76
  %add.ptr11.i.i244 = getelementptr i8, ptr %add.ptr10.i.i243, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i244, i16 %84) #12, !srcloc !472
  br label %sysc_write.exit.i251

if.end12.i.i248:                                  ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #14
  %87 = tail call i32 @llvm.bswap.i32(i32 %or126) #12
  %88 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i.i247 = getelementptr i8, ptr %89, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i247, i32 %87) #12, !srcloc !473
  br label %sysc_write.exit.i251

sysc_write.exit.i251:                             ; preds = %if.end12.i.i248, %if.then7.i.i245, %if.then.i.i240.sysc_write.exit.i251_crit_edge
  %module_lock_quirk.i249 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 25
  %90 = ptrtoint ptr %module_lock_quirk.i249 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %module_lock_quirk.i249, align 4
  %tobool2.not.i250 = icmp eq ptr %91, null
  br i1 %tobool2.not.i250, label %sysc_write.exit.i251.set_autoidle_crit_edge, label %if.then3.i252

sysc_write.exit.i251.set_autoidle_crit_edge:      ; preds = %sysc_write.exit.i251
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_autoidle

if.then3.i252:                                    ; preds = %sysc_write.exit.i251
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %91(ptr noundef %1) #12
  br label %set_autoidle

set_autoidle:                                     ; preds = %if.then3.i252, %sysc_write.exit.i251.set_autoidle_crit_edge, %lor.lhs.false94.set_autoidle_crit_edge, %set_midle.set_autoidle_crit_edge
  %reg.3 = phi i32 [ %reg.2, %lor.lhs.false94.set_autoidle_crit_edge ], [ %reg.2, %set_midle.set_autoidle_crit_edge ], [ %or126, %sysc_write.exit.i251.set_autoidle_crit_edge ], [ %or126, %if.then3.i252 ]
  %autoidle_shift = getelementptr inbounds %struct.sysc_regbits, ptr %17, i32 0, i32 5
  %92 = ptrtoint ptr %autoidle_shift to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %autoidle_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp128 = icmp sgt i8 %93, -1
  br i1 %cmp128, label %land.lhs.true130, label %set_autoidle.save_context_crit_edge

set_autoidle.save_context_crit_edge:              ; preds = %set_autoidle
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

land.lhs.true130:                                 ; preds = %set_autoidle
  %94 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cfg, align 8
  %conv127218 = zext i8 %93 to i32
  %shl135 = shl nuw i32 1, %conv127218
  %and136 = and i32 %95, %shl135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %land.lhs.true130.save_context_crit_edge, label %if.then138

land.lhs.true130.save_context_crit_edge:          ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

if.then138:                                       ; preds = %land.lhs.true130
  %or142 = or i32 %shl135, %reg.3
  %module_unlock_quirk.i254 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 24
  %96 = ptrtoint ptr %module_unlock_quirk.i254 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %module_unlock_quirk.i254, align 8
  %tobool.not.i255 = icmp eq ptr %97, null
  br i1 %tobool.not.i255, label %if.then138.if.end.i261_crit_edge, label %if.then.i256

if.then138.if.end.i261_crit_edge:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i261

if.then.i256:                                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %97(ptr noundef %1) #12
  br label %if.end.i261

if.end.i261:                                      ; preds = %if.then.i256, %if.then138.if.end.i261_crit_edge
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  %100 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %quirks, align 4
  %and.i.i259 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i259)
  %tobool.not.i.i260 = icmp eq i32 %and.i.i259, 0
  br i1 %tobool.not.i.i260, label %if.end12.i.i277, label %if.then.i.i269

if.then.i.i269:                                   ; preds = %if.end.i261
  %conv.i.i262 = trunc i32 %or142 to i16
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i262) #12
  %103 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i.i264 = getelementptr i8, ptr %104, i32 %99
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i264, i16 %102) #12, !srcloc !472
  %offsets.i.i265 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %offsets.i.i265 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offsets.i.i265, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp.i.i266 = icmp sgt i32 %106, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %99)
  %cmp5.i.i267 = icmp eq i32 %106, %99
  %or.cond.i.i268 = and i1 %cmp.i.i266, %cmp5.i.i267
  br i1 %or.cond.i.i268, label %if.then7.i.i274, label %if.then.i.i269.sysc_write.exit.i280_crit_edge

if.then.i.i269.sysc_write.exit.i280_crit_edge:    ; preds = %if.then.i.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i280

if.then7.i.i274:                                  ; preds = %if.then.i.i269
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i270 = lshr i32 %or142, 16
  %conv8.i.i271 = trunc i32 %shr.i.i270 to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i271) #12
  %108 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i.i272 = getelementptr i8, ptr %109, i32 %99
  %add.ptr11.i.i273 = getelementptr i8, ptr %add.ptr10.i.i272, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i273, i16 %107) #12, !srcloc !472
  br label %sysc_write.exit.i280

if.end12.i.i277:                                  ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  %110 = tail call i32 @llvm.bswap.i32(i32 %or142) #12
  %111 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i.i276 = getelementptr i8, ptr %112, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i276, i32 %110) #12, !srcloc !473
  br label %sysc_write.exit.i280

sysc_write.exit.i280:                             ; preds = %if.end12.i.i277, %if.then7.i.i274, %if.then.i.i269.sysc_write.exit.i280_crit_edge
  %module_lock_quirk.i278 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 25
  %113 = ptrtoint ptr %module_lock_quirk.i278 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %module_lock_quirk.i278, align 4
  %tobool2.not.i279 = icmp eq ptr %114, null
  br i1 %tobool2.not.i279, label %sysc_write.exit.i280.save_context_crit_edge, label %if.then3.i281

sysc_write.exit.i280.save_context_crit_edge:      ; preds = %sysc_write.exit.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_context

if.then3.i281:                                    ; preds = %sysc_write.exit.i280
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %114(ptr noundef %1) #12
  br label %save_context

save_context:                                     ; preds = %if.then3.i281, %sysc_write.exit.i280.save_context_crit_edge, %land.lhs.true130.save_context_crit_edge, %set_autoidle.save_context_crit_edge, %do.end110
  %error.0 = phi i32 [ -22, %do.end110 ], [ 0, %land.lhs.true130.save_context_crit_edge ], [ 0, %set_autoidle.save_context_crit_edge ], [ 0, %sysc_write.exit.i280.save_context_crit_edge ], [ 0, %if.then3.i281 ]
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  %117 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %quirks, align 4
  %and.i284 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %tobool.not.i285 = icmp eq i32 %and.i284, 0
  %119 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i287 = getelementptr i8, ptr %120, i32 %116
  br i1 %tobool.not.i285, label %if.end15.i300, label %if.then.i293

if.then.i293:                                     ; preds = %save_context
  %121 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i287) #12, !srcloc !470
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #12
  %conv.i288 = zext i16 %122 to i32
  %offsets.i289 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 4
  %123 = ptrtoint ptr %offsets.i289 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offsets.i289, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp.i290 = icmp sgt i32 %124, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %116)
  %cmp4.i291 = icmp eq i32 %124, %116
  %or.cond.i292 = and i1 %cmp.i290, %cmp4.i291
  br i1 %or.cond.i292, label %if.then6.i299, label %if.then.i293.sysc_read.exit302_crit_edge

if.then.i293.sysc_read.exit302_crit_edge:         ; preds = %if.then.i293
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit302

if.then6.i299:                                    ; preds = %if.then.i293
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i294 = getelementptr i8, ptr %126, i32 %116
  %add.ptr11.i295 = getelementptr i8, ptr %add.ptr10.i294, i32 4
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i295) #12, !srcloc !470
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #12
  %conv14.i296 = zext i16 %128 to i32
  %shl.i297 = shl nuw i32 %conv14.i296, 16
  %or.i298 = or i32 %shl.i297, %conv.i288
  br label %sysc_read.exit302

if.end15.i300:                                    ; preds = %save_context
  call void @__sanitizer_cov_trace_pc() #14
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i287) #12, !srcloc !471
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #12
  br label %sysc_read.exit302

sysc_read.exit302:                                ; preds = %if.end15.i300, %if.then6.i299, %if.then.i293.sysc_read.exit302_crit_edge
  %retval.0.i301 = phi i32 [ %130, %if.end15.i300 ], [ %or.i298, %if.then6.i299 ], [ %conv.i288, %if.then.i293.sysc_read.exit302_crit_edge ]
  %sysconfig = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 16
  %131 = ptrtoint ptr %sysconfig to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %retval.0.i301, ptr %sysconfig, align 8
  %module_enable_quirk = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 22
  %132 = ptrtoint ptr %module_enable_quirk to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %module_enable_quirk, align 8
  %tobool147.not = icmp eq ptr %133, null
  br i1 %tobool147.not, label %sysc_read.exit302.cleanup_crit_edge, label %if.then148

sysc_read.exit302.cleanup_crit_edge:              ; preds = %sysc_read.exit302
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then148:                                       ; preds = %sysc_read.exit302
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %133(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %sysc_read.exit302.cleanup_crit_edge, %do.end64, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end64 ], [ 0, %if.end25.cleanup_crit_edge ], [ %error.0, %if.then148 ], [ %error.0, %sysc_read.exit302.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_wait_softreset(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 11
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap, align 4
  %regbits = getelementptr inbounds %struct.sysc_capabilities, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbits, align 4
  %srst_shift = getelementptr inbounds %struct.sysc_regbits, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %srst_shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %srst_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp slt i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2 = icmp sgt i32 %7, -1
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %syss_mask.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %syss_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %syss_mask.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.if.end.i_crit_edge
  %syss_done.0.i = phi i32 [ %11, %if.else.i ], [ 0, %if.then4.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @timekeeping_suspended to i32))
  %12 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.then6.i, label %while.cond.preheader.i, !prof !475

while.cond.preheader.i:                           ; preds = %if.end.i
  %syss_mask36.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 1
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  %call.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i, 10000000
  %module_va17.i.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %offsets.i.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %syss_mask10.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %cond.false.i, %if.then6.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp slt i32 %14, 0
  br i1 %cmp.i.i, label %for.cond.i.sysc_read_sysstatus.exit.i_crit_edge, label %if.end.i.i

for.cond.i.sysc_read_sysstatus.exit.i_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysstatus.exit.i

if.end.i.i:                                       ; preds = %for.cond.i
  %15 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks.i, align 4
  %and.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %17 = ptrtoint ptr %module_va17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %module_va17.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %18, i32 %14
  br i1 %tobool.not.i.i.i, label %if.end15.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i.i) #12, !srcloc !470
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #12
  %conv.i.i.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.i.i = icmp sgt i32 %22, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %14)
  %cmp4.i.i.i = icmp eq i32 %22, %14
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp4.i.i.i
  br i1 %or.cond.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.sysc_read_sysstatus.exit.i_crit_edge

if.then.i.i.i.sysc_read_sysstatus.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysstatus.exit.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %module_va17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module_va17.i.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %24, i32 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %add.ptr10.i.i.i, i32 %14
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i.i) #12, !srcloc !470
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #12
  %conv14.i.i.i = zext i16 %26 to i32
  %shl.i.i.i = shl nuw i32 %conv14.i.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  br label %sysc_read_sysstatus.exit.i

if.end15.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #12, !srcloc !471
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  br label %sysc_read_sysstatus.exit.i

sysc_read_sysstatus.exit.i:                       ; preds = %if.end15.i.i.i, %if.then6.i.i.i, %if.then.i.i.i.sysc_read_sysstatus.exit.i_crit_edge, %for.cond.i.sysc_read_sysstatus.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.cond.i.sysc_read_sysstatus.exit.i_crit_edge ], [ %28, %if.end15.i.i.i ], [ %or.i.i.i, %if.then6.i.i.i ], [ %conv.i.i.i, %if.then.i.i.i.sysc_read_sysstatus.exit.i_crit_edge ]
  %29 = ptrtoint ptr %syss_mask10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syss_mask10.i, align 4
  %and11.i = and i32 %30, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %syss_done.0.i)
  %cmp.i = icmp eq i32 %and11.i, %syss_done.0.i
  br i1 %cmp.i, label %sysc_read_sysstatus.exit.i.for.end.i_crit_edge, label %land.lhs.true.i

sysc_read_sysstatus.exit.i.for.end.i_crit_edge:   ; preds = %sysc_read_sysstatus.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %sysc_read_sysstatus.exit.i
  %call15.i = tail call i64 @ktime_get() #12
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %cond.false.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i64.i = icmp slt i32 %32, 0
  br i1 %cmp.i64.i, label %if.then18.i.for.end.i_crit_edge, label %if.end.i70.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i70.i:                                     ; preds = %if.then18.i
  %33 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks.i, align 4
  %and.i.i66.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66.i)
  %tobool.not.i.i67.i = icmp eq i32 %and.i.i66.i, 0
  %35 = ptrtoint ptr %module_va17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %module_va17.i.i.i, align 4
  %add.ptr18.i.i69.i = getelementptr i8, ptr %36, i32 %32
  br i1 %tobool.not.i.i67.i, label %if.end15.i.i83.i, label %if.then.i.i76.i

if.then.i.i76.i:                                  ; preds = %if.end.i70.i
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i69.i) #12, !srcloc !470
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #12
  %conv.i.i71.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offsets.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.i73.i = icmp sgt i32 %40, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %32)
  %cmp4.i.i74.i = icmp eq i32 %40, %32
  %or.cond.i.i75.i = and i1 %cmp.i.i73.i, %cmp4.i.i74.i
  br i1 %or.cond.i.i75.i, label %if.then6.i.i82.i, label %if.then.i.i76.i.for.end.i_crit_edge

if.then.i.i76.i.for.end.i_crit_edge:              ; preds = %if.then.i.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then6.i.i82.i:                                 ; preds = %if.then.i.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %module_va17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module_va17.i.i.i, align 4
  %add.ptr10.i.i77.i = getelementptr i8, ptr %42, i32 %32
  %add.ptr11.i.i78.i = getelementptr i8, ptr %add.ptr10.i.i77.i, i32 4
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i78.i) #12, !srcloc !470
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #12
  %conv14.i.i79.i = zext i16 %44 to i32
  %shl.i.i80.i = shl nuw i32 %conv14.i.i79.i, 16
  %or.i.i81.i = or i32 %shl.i.i80.i, %conv.i.i71.i
  br label %for.end.i

if.end15.i.i83.i:                                 ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i69.i) #12, !srcloc !471
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #12
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end15.i.i83.i, %if.then6.i.i82.i, %if.then.i.i76.i.for.end.i_crit_edge, %if.then18.i.for.end.i_crit_edge, %sysc_read_sysstatus.exit.i.for.end.i_crit_edge
  %rstval.0.i = phi i32 [ 0, %if.then18.i.for.end.i_crit_edge ], [ %46, %if.end15.i.i83.i ], [ %or.i.i81.i, %if.then6.i.i82.i ], [ %conv.i.i71.i, %if.then.i.i76.i.for.end.i_crit_edge ], [ %retval.0.i.i, %sysc_read_sysstatus.exit.i.for.end.i_crit_edge ]
  %48 = ptrtoint ptr %syss_mask10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syss_mask10.i, align 4
  %and30.i = and i32 %49, %rstval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.i, i32 %syss_done.0.i)
  %cmp31.i = icmp eq i32 %and30.i, %syss_done.0.i
  %cond.i = select i1 %cmp31.i, i32 0, i32 -110
  br label %cleanup

while.body.i:                                     ; preds = %if.end40.i.while.body.i_crit_edge, %while.cond.preheader.i
  %dec90.i = phi i32 [ 9999, %while.cond.preheader.i ], [ %dec.i, %if.end40.i.while.body.i_crit_edge ]
  %call34.i = tail call fastcc i32 @sysc_read_sysstatus(ptr noundef %ddata) #12
  %50 = ptrtoint ptr %syss_mask36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syss_mask36.i, align 4
  %and37.i = and i32 %51, %call34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and37.i, i32 %syss_done.0.i)
  %cmp38.i = icmp eq i32 %and37.i, %syss_done.0.i
  br i1 %cmp38.i, label %while.body.i.cleanup_crit_edge, label %if.end40.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496) #12
  %dec.i = add nsw i32 %dec90.i, -1
  %tobool33.not.i = icmp eq i32 %dec90.i, 0
  br i1 %tobool33.not.i, label %if.end40.i.cleanup_crit_edge, label %if.end40.i.while.body.i_crit_edge

if.end40.i.while.body.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.else
  %conv49.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @timekeeping_suspended to i32))
  %53 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i14 = icmp eq i32 %53, 0
  br i1 %tobool.not.i14, label %if.then.i, label %if.then5.while.body.i46_crit_edge, !prof !475

if.then5.while.body.i46_crit_edge:                ; preds = %if.then5
  br label %while.body.i46

if.then.i:                                        ; preds = %if.then5
  %call.i15 = tail call i64 @ktime_get() #12
  %add.i.i16 = add i64 %call.i15, 10000000
  %arrayidx.i.i17 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %module_va17.i.i.i18 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %offsets.i.i.i19 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  br label %for.cond.i21

for.cond.i21:                                     ; preds = %cond.false.i42, %if.then.i
  %54 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i20 = icmp slt i32 %55, 0
  br i1 %cmp.i.i20, label %for.cond.i21.sysc_read_sysconfig.exit.i_crit_edge, label %if.end.i.i25

for.cond.i21.sysc_read_sysconfig.exit.i_crit_edge: ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysconfig.exit.i

if.end.i.i25:                                     ; preds = %for.cond.i21
  %56 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %quirks.i, align 4
  %and.i.i.i22 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22)
  %tobool.not.i.i.i23 = icmp eq i32 %and.i.i.i22, 0
  %58 = ptrtoint ptr %module_va17.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %module_va17.i.i.i18, align 4
  %add.ptr18.i.i.i24 = getelementptr i8, ptr %59, i32 %55
  br i1 %tobool.not.i.i.i23, label %if.end15.i.i.i37, label %if.then.i.i.i30

if.then.i.i.i30:                                  ; preds = %if.end.i.i25
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i.i24) #12, !srcloc !470
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #12
  %conv.i.i.i26 = zext i16 %61 to i32
  %62 = ptrtoint ptr %offsets.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offsets.i.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.i.i27 = icmp sgt i32 %63, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %55)
  %cmp4.i.i.i28 = icmp eq i32 %63, %55
  %or.cond.i.i.i29 = and i1 %cmp.i.i.i27, %cmp4.i.i.i28
  br i1 %or.cond.i.i.i29, label %if.then6.i.i.i36, label %if.then.i.i.i30.sysc_read_sysconfig.exit.i_crit_edge

if.then.i.i.i30.sysc_read_sysconfig.exit.i_crit_edge: ; preds = %if.then.i.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysconfig.exit.i

if.then6.i.i.i36:                                 ; preds = %if.then.i.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %module_va17.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %module_va17.i.i.i18, align 4
  %add.ptr10.i.i.i31 = getelementptr i8, ptr %65, i32 4
  %add.ptr11.i.i.i32 = getelementptr i8, ptr %add.ptr10.i.i.i31, i32 %55
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i.i32) #12, !srcloc !470
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #12
  %conv14.i.i.i33 = zext i16 %67 to i32
  %shl.i.i.i34 = shl nuw i32 %conv14.i.i.i33, 16
  %or.i.i.i35 = or i32 %shl.i.i.i34, %conv.i.i.i26
  br label %sysc_read_sysconfig.exit.i

if.end15.i.i.i37:                                 ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #14
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i24) #12, !srcloc !471
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  br label %sysc_read_sysconfig.exit.i

sysc_read_sysconfig.exit.i:                       ; preds = %if.end15.i.i.i37, %if.then6.i.i.i36, %if.then.i.i.i30.sysc_read_sysconfig.exit.i_crit_edge, %for.cond.i21.sysc_read_sysconfig.exit.i_crit_edge
  %retval.0.i.i38 = phi i32 [ 0, %for.cond.i21.sysc_read_sysconfig.exit.i_crit_edge ], [ %69, %if.end15.i.i.i37 ], [ %or.i.i.i35, %if.then6.i.i.i36 ], [ %conv.i.i.i26, %if.then.i.i.i30.sysc_read_sysconfig.exit.i_crit_edge ]
  %and.i39 = and i32 %retval.0.i.i38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool6.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool6.not.i, label %sysc_read_sysconfig.exit.i.for.end.i45_crit_edge, label %land.lhs.true.i41

sysc_read_sysconfig.exit.i.for.end.i45_crit_edge: ; preds = %sysc_read_sysconfig.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i45

land.lhs.true.i41:                                ; preds = %sysc_read_sysconfig.exit.i
  %call9.i = tail call i64 @ktime_get() #12
  %cmp3.i.i40 = icmp sgt i64 %call9.i, %add.i.i16
  br i1 %cmp3.i.i40, label %if.then12.i, label %cond.false.i42

if.then12.i:                                      ; preds = %land.lhs.true.i41
  %70 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i53.i = icmp slt i32 %71, 0
  br i1 %cmp.i53.i, label %if.then12.i.for.end.i45_crit_edge, label %if.end.i59.i

if.then12.i.for.end.i45_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i45

if.end.i59.i:                                     ; preds = %if.then12.i
  %72 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks.i, align 4
  %and.i.i55.i = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55.i)
  %tobool.not.i.i56.i = icmp eq i32 %and.i.i55.i, 0
  %74 = ptrtoint ptr %module_va17.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %module_va17.i.i.i18, align 4
  %add.ptr18.i.i58.i = getelementptr i8, ptr %75, i32 %71
  br i1 %tobool.not.i.i56.i, label %if.end15.i.i72.i, label %if.then.i.i65.i

if.then.i.i65.i:                                  ; preds = %if.end.i59.i
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i58.i) #12, !srcloc !470
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #12
  %conv.i.i60.i = zext i16 %77 to i32
  %78 = ptrtoint ptr %offsets.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offsets.i.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp.i.i62.i = icmp sgt i32 %79, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %71)
  %cmp4.i.i63.i = icmp eq i32 %79, %71
  %or.cond.i.i64.i = and i1 %cmp.i.i62.i, %cmp4.i.i63.i
  br i1 %or.cond.i.i64.i, label %if.then6.i.i71.i, label %if.then.i.i65.i.for.end.i45_crit_edge

if.then.i.i65.i.for.end.i45_crit_edge:            ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i45

if.then6.i.i71.i:                                 ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %module_va17.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %module_va17.i.i.i18, align 4
  %add.ptr10.i.i66.i = getelementptr i8, ptr %81, i32 %71
  %add.ptr11.i.i67.i = getelementptr i8, ptr %add.ptr10.i.i66.i, i32 4
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i67.i) #12, !srcloc !470
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #12
  %conv14.i.i68.i = zext i16 %83 to i32
  %shl.i.i69.i = shl nuw i32 %conv14.i.i68.i, 16
  %or.i.i70.i = or i32 %shl.i.i69.i, %conv.i.i60.i
  br label %for.end.i45

if.end15.i.i72.i:                                 ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i58.i) #12, !srcloc !471
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #12
  br label %for.end.i45

cond.false.i42:                                   ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 21474800) #12
  br label %for.cond.i21

for.end.i45:                                      ; preds = %if.end15.i.i72.i, %if.then6.i.i71.i, %if.then.i.i65.i.for.end.i45_crit_edge, %if.then12.i.for.end.i45_crit_edge, %sysc_read_sysconfig.exit.i.for.end.i45_crit_edge
  %rstval.0.i43 = phi i32 [ 0, %if.then12.i.for.end.i45_crit_edge ], [ %85, %if.end15.i.i72.i ], [ %or.i.i70.i, %if.then6.i.i71.i ], [ %conv.i.i60.i, %if.then.i.i65.i.for.end.i45_crit_edge ], [ %retval.0.i.i38, %sysc_read_sysconfig.exit.i.for.end.i45_crit_edge ]
  %and23.i = and i32 %rstval.0.i43, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond.i44 = select i1 %tobool24.not.i, i32 0, i32 -110
  br label %cleanup

while.body.i46:                                   ; preds = %if.end32.i.while.body.i46_crit_edge, %if.then5.while.body.i46_crit_edge
  %dec77.i = phi i32 [ %dec.i47, %if.end32.i.while.body.i46_crit_edge ], [ 9999, %if.then5.while.body.i46_crit_edge ]
  %call28.i = tail call fastcc i32 @sysc_read_sysconfig(ptr noundef %ddata) #12
  %and29.i = and i32 %call28.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %while.body.i46.cleanup_crit_edge, label %if.end32.i

while.body.i46.cleanup_crit_edge:                 ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.i:                                       ; preds = %while.body.i46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 429496) #12
  %dec.i47 = add nsw i32 %dec77.i, -1
  %tobool27.not.i = icmp eq i32 %dec77.i, 0
  br i1 %tobool27.not.i, label %if.end32.i.cleanup_crit_edge, label %if.end32.i.while.body.i46_crit_edge

if.end32.i.while.body.i46_crit_edge:              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i46

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end32.i.cleanup_crit_edge, %while.body.i46.cleanup_crit_edge, %for.end.i45, %if.else.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %for.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %cond.i, %for.end.i ], [ %cond.i44, %for.end.i45 ], [ 0, %while.body.i.cleanup_crit_edge ], [ -110, %if.end40.i.cleanup_crit_edge ], [ 0, %while.body.i46.cleanup_crit_edge ], [ -110, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_read_sysstatus(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %4 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %5, i32 %1
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv.i = zext i16 %7 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp4.i = icmp eq i32 %9, %1
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %1
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #12
  %conv14.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %cleanup

if.end15.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.i, %if.then6.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %15, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_read_sysconfig(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %4 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %5, i32 %1
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv.i = zext i16 %7 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp4.i = icmp eq i32 %9, %1
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %1
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #12
  %conv14.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %cleanup

if.end15.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.i, %if.then6.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %15, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i12.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i231 = alloca i32, align 4
  %len.i.i.i.i = alloca i32, align 4
  %nr_addr.i.i = alloca i32, align 4
  %nr_size.i.i = alloca i32, align 4
  %len.i.i220 = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 232, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %offsets = getelementptr %struct.sysc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -19, ptr %offsets, align 8
  %arrayidx4 = getelementptr %struct.sysc, ptr %call.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -19, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.sysc, ptr %call.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -19, ptr %arrayidx6, align 8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = load ptr, ptr @sysc_soc, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 128) #16
  store ptr %call7.i.i.i, ptr @sysc_soc, align 4
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %list_lock.i = getelementptr inbounds %struct.sysc_soc_info, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %list_lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @sysc_init_static_data.__key) #12
  %9 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %disabled_modules.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %disabled_modules.i, ptr %disabled_modules.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %disabled_modules.i, ptr %prev.i.i, align 4
  %restored_modules.i = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %restored_modules.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %restored_modules.i, ptr %restored_modules.i, align 4
  %prev.i124.i = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %restored_modules.i, ptr %prev.i124.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %9, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %9, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i.i, align 8
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %do.body.i.if.end13.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %soc_type_gp.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %soc_type_gp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc_type_gp.i, align 4
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call zeroext i1 %20() #12
  %21 = load ptr, ptr @sysc_soc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load10.i = load i8, ptr %21, align 4
  %bf.shl.i = select i1 %call9.i, i8 -128, i8 0
  %bf.clear11.i = and i8 %bf.load10.i, 127
  %bf.set12.i = or i8 %bf.clear11.i, %bf.shl.i
  store i8 %bf.set12.i, ptr %21, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end13.i_crit_edge, %do.body.i.if.end13.i_crit_edge
  %call14.i = tail call ptr @soc_device_match(ptr noundef nonnull @sysc_soc_match) #12
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end20.i_crit_edge, label %land.lhs.true16.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

land.lhs.true16.i:                                ; preds = %if.end13.i
  %data.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call14.i, i32 0, i32 5
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %tobool17.not.i = icmp eq ptr %24, null
  br i1 %tobool17.not.i, label %land.lhs.true16.i.if.end20.i_crit_edge, label %if.then18.i

land.lhs.true16.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %24 to i32
  %26 = load ptr, ptr @sysc_soc, align 4
  %soc.i = getelementptr inbounds %struct.sysc_soc_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %soc.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i.if.end20.i_crit_edge, %if.end13.i.if.end20.i_crit_edge
  %28 = load ptr, ptr @sysc_soc, align 4
  %soc21.i = getelementptr inbounds %struct.sysc_soc_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %soc21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %soc21.i, align 4
  %.off.i = add i32 %30, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 7
  br i1 %switch.i, label %sw.bb23.i, label %if.end20.i.sw.epilog.i_crit_edge

if.end20.i.sw.epilog.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end20.i
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.44, ptr noundef null) #12
  %tobool25.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool25.not.i, label %sw.bb23.i.sw.epilog.i_crit_edge, label %land.rhs.i

sw.bb23.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.rhs.i:                                       ; preds = %sw.bb23.i
  %call26.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.rhs.i.sw.epilog.i_crit_edge, label %land.rhs31.i

land.rhs.i.sw.epilog.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.rhs31.i:                                     ; preds = %land.rhs.i
  %.b122.i = load i1, ptr @sysc_init_static_data.__already_done, align 1
  br i1 %.b122.i, label %land.rhs31.i.sw.epilog.i_crit_edge, label %if.then38.i, !prof !475

land.rhs31.i.sw.epilog.i_crit_edge:               ; preds = %land.rhs31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then38.i:                                      ; preds = %land.rhs31.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sysc_init_static_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3140, i32 noundef 9, ptr noundef nonnull @.str.46) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then38.i, %land.rhs31.i.sw.epilog.i_crit_edge, %land.rhs.i.sw.epilog.i_crit_edge, %sw.bb23.i.sw.epilog.i_crit_edge, %if.end20.i.sw.epilog.i_crit_edge
  %31 = load ptr, ptr @sysc_soc, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load71.i = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load71.i)
  %tobool72.not.i = icmp sgt i8 %bf.load71.i, -1
  br i1 %tobool72.not.i, label %if.then73.i, label %sw.epilog.i.if.end81.i_crit_edge

sw.epilog.i.if.end81.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then73.i:                                      ; preds = %sw.epilog.i
  %soc74.i = getelementptr inbounds %struct.sysc_soc_info, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %soc74.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %soc74.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.then73.i.if.end81.i_crit_edge [
    i32 3, label %if.then73.i.sw.bb75.i_crit_edge
    i32 4, label %if.then73.i.sw.bb75.i_crit_edge290
    i32 9, label %sw.bb77.i
  ]

if.then73.i.sw.bb75.i_crit_edge290:               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb75.i

if.then73.i.sw.bb75.i_crit_edge:                  ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb75.i

if.then73.i.if.end81.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

sw.bb75.i:                                        ; preds = %if.then73.i.sw.bb75.i_crit_edge, %if.then73.i.sw.bb75.i_crit_edge290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb75.i.if.end81.i_crit_edge, label %if.end.i.i

sw.bb75.i.if.end81.i_crit_edge:                   ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.end.i.i:                                       ; preds = %sw.bb75.i
  %37 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1211121664, ptr %call7.i.i.i.i, align 8
  %38 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i.i = getelementptr inbounds %struct.sysc_soc_info, ptr %38, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i.i, i32 noundef 0) #12
  %node.i.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i.i = getelementptr inbounds %struct.sysc_soc_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %disabled_modules.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disabled_modules.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %disabled_modules.i.i, ptr noundef %41) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end81.sink.split.i_crit_edge

if.end.i.i.if.end81.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.sink.split.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.i.i, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %disabled_modules.i.i, ptr %prev3.i.i.i.i, align 8
  %45 = ptrtoint ptr %disabled_modules.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node.i.i, ptr %disabled_modules.i.i, align 4
  br label %if.end81.sink.split.i

sw.bb77.i:                                        ; preds = %if.then73.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i125.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i126.i = icmp eq ptr %call7.i.i.i125.i, null
  br i1 %tobool.not.i126.i, label %sw.bb77.i.if.end81.i_crit_edge, label %if.end.i131.i

sw.bb77.i.if.end81.i_crit_edge:                   ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.end.i131.i:                                    ; preds = %sw.bb77.i
  %47 = ptrtoint ptr %call7.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1211170816, ptr %call7.i.i.i125.i, align 8
  %48 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i127.i = getelementptr inbounds %struct.sysc_soc_info, ptr %48, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i127.i, i32 noundef 0) #12
  %node.i128.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i125.i, i32 0, i32 1
  %49 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i129.i = getelementptr inbounds %struct.sysc_soc_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %disabled_modules.i129.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disabled_modules.i129.i, align 4
  %call.i.i.i130.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i128.i, ptr noundef %disabled_modules.i129.i, ptr noundef %51) #12
  br i1 %call.i.i.i130.i, label %if.end.i.i.i134.i, label %if.end.i131.i.if.end81.sink.split.i_crit_edge

if.end.i131.i.if.end81.sink.split.i_crit_edge:    ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.sink.split.i

if.end.i.i.i134.i:                                ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i132.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node.i128.i, ptr %prev1.i.i.i132.i, align 4
  %53 = ptrtoint ptr %node.i128.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %node.i128.i, align 4
  %prev3.i.i.i133.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i125.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %disabled_modules.i129.i, ptr %prev3.i.i.i133.i, align 8
  %55 = ptrtoint ptr %disabled_modules.i129.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node.i128.i, ptr %disabled_modules.i129.i, align 4
  br label %if.end81.sink.split.i

if.end81.sink.split.i:                            ; preds = %if.end.i.i.i134.i, %if.end.i131.i.if.end81.sink.split.i_crit_edge, %if.end.i.i.i.i, %if.end.i.i.if.end81.sink.split.i_crit_edge
  %56 = load ptr, ptr @sysc_soc, align 4
  %list_lock2.i135.i = getelementptr inbounds %struct.sysc_soc_info, ptr %56, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock2.i135.i) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end81.sink.split.i, %sw.bb77.i.if.end81.i_crit_edge, %sw.bb75.i.if.end81.i_crit_edge, %if.then73.i.if.end81.i_crit_edge, %sw.epilog.i.if.end81.i_crit_edge
  %call82.i = tail call ptr @soc_device_match(ptr noundef nonnull @sysc_soc_feat_match) #12
  %tobool83.not.i = icmp eq ptr %call82.i, null
  br i1 %tobool83.not.i, label %if.end81.i.if.end12_crit_edge, label %if.end85.i

if.end81.i.if.end12_crit_edge:                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end85.i:                                       ; preds = %if.end81.i
  %data86.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call82.i, i32 0, i32 5
  %57 = ptrtoint ptr %data86.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data86.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %and.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool91.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool91.not.i, label %if.end85.i.if.end94.i_crit_edge, label %if.then92.i

if.end85.i.if.end94.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.then92.i:                                      ; preds = %if.end85.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i138.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i139.i = icmp eq ptr %call7.i.i.i138.i, null
  br i1 %tobool.not.i139.i, label %if.then92.i.if.end94.i_crit_edge, label %if.end.i144.i

if.then92.i.if.end94.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.end.i144.i:                                    ; preds = %if.then92.i
  %61 = ptrtoint ptr %call7.i.i.i138.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1208734720, ptr %call7.i.i.i138.i, align 8
  %62 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i140.i = getelementptr inbounds %struct.sysc_soc_info, ptr %62, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i140.i, i32 noundef 0) #12
  %node.i141.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i138.i, i32 0, i32 1
  %63 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i142.i = getelementptr inbounds %struct.sysc_soc_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %disabled_modules.i142.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disabled_modules.i142.i, align 4
  %call.i.i.i143.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i141.i, ptr noundef %disabled_modules.i142.i, ptr noundef %65) #12
  br i1 %call.i.i.i143.i, label %if.end.i.i.i147.i, label %if.end.i144.i.list_add.exit.i149.i_crit_edge

if.end.i144.i.list_add.exit.i149.i_crit_edge:     ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i149.i

if.end.i.i.i147.i:                                ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i145.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node.i141.i, ptr %prev1.i.i.i145.i, align 4
  %67 = ptrtoint ptr %node.i141.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %node.i141.i, align 4
  %prev3.i.i.i146.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i138.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i146.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %disabled_modules.i142.i, ptr %prev3.i.i.i146.i, align 8
  %69 = ptrtoint ptr %disabled_modules.i142.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node.i141.i, ptr %disabled_modules.i142.i, align 4
  br label %list_add.exit.i149.i

list_add.exit.i149.i:                             ; preds = %if.end.i.i.i147.i, %if.end.i144.i.list_add.exit.i149.i_crit_edge
  %70 = load ptr, ptr @sysc_soc, align 4
  %list_lock2.i148.i = getelementptr inbounds %struct.sysc_soc_info, ptr %70, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock2.i148.i) #12
  br label %if.end94.i

if.end94.i:                                       ; preds = %list_add.exit.i149.i, %if.then92.i.if.end94.i_crit_edge, %if.end85.i.if.end94.i_crit_edge
  %and95.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.if.end99.i_crit_edge, label %if.then97.i

if.end94.i.if.end99.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i

if.then97.i:                                      ; preds = %if.end94.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i151.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i152.i = icmp eq ptr %call7.i.i.i151.i, null
  br i1 %tobool.not.i152.i, label %if.then97.i.if.end99.i_crit_edge, label %if.end.i157.i

if.then97.i.if.end99.i_crit_edge:                 ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i

if.end.i157.i:                                    ; preds = %if.then97.i
  %72 = ptrtoint ptr %call7.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1560281088, ptr %call7.i.i.i151.i, align 8
  %73 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i153.i = getelementptr inbounds %struct.sysc_soc_info, ptr %73, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i153.i, i32 noundef 0) #12
  %node.i154.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i151.i, i32 0, i32 1
  %74 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i155.i = getelementptr inbounds %struct.sysc_soc_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %disabled_modules.i155.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disabled_modules.i155.i, align 4
  %call.i.i.i156.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i154.i, ptr noundef %disabled_modules.i155.i, ptr noundef %76) #12
  br i1 %call.i.i.i156.i, label %if.end.i.i.i160.i, label %if.end.i157.i.list_add.exit.i162.i_crit_edge

if.end.i157.i.list_add.exit.i162.i_crit_edge:     ; preds = %if.end.i157.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i162.i

if.end.i.i.i160.i:                                ; preds = %if.end.i157.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i158.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %node.i154.i, ptr %prev1.i.i.i158.i, align 4
  %78 = ptrtoint ptr %node.i154.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %76, ptr %node.i154.i, align 4
  %prev3.i.i.i159.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i151.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %disabled_modules.i155.i, ptr %prev3.i.i.i159.i, align 8
  %80 = ptrtoint ptr %disabled_modules.i155.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %node.i154.i, ptr %disabled_modules.i155.i, align 4
  br label %list_add.exit.i162.i

list_add.exit.i162.i:                             ; preds = %if.end.i.i.i160.i, %if.end.i157.i.list_add.exit.i162.i_crit_edge
  %81 = load ptr, ptr @sysc_soc, align 4
  %list_lock2.i161.i = getelementptr inbounds %struct.sysc_soc_info, ptr %81, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock2.i161.i) #12
  br label %if.end99.i

if.end99.i:                                       ; preds = %list_add.exit.i162.i, %if.then97.i.if.end99.i_crit_edge, %if.end94.i.if.end99.i_crit_edge
  %and100.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end99.i.if.end12_crit_edge, label %if.then102.i

if.end99.i.if.end12_crit_edge:                    ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then102.i:                                     ; preds = %if.end99.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i164.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not.i165.i = icmp eq ptr %call7.i.i.i164.i, null
  br i1 %tobool.not.i165.i, label %if.then102.i.if.end12_crit_edge, label %if.end.i170.i

if.then102.i.if.end12_crit_edge:                  ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i170.i:                                    ; preds = %if.then102.i
  %83 = ptrtoint ptr %call7.i.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1342177280, ptr %call7.i.i.i164.i, align 8
  %84 = load ptr, ptr @sysc_soc, align 4
  %list_lock.i166.i = getelementptr inbounds %struct.sysc_soc_info, ptr %84, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i166.i, i32 noundef 0) #12
  %node.i167.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i164.i, i32 0, i32 1
  %85 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules.i168.i = getelementptr inbounds %struct.sysc_soc_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %disabled_modules.i168.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %disabled_modules.i168.i, align 4
  %call.i.i.i169.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i167.i, ptr noundef %disabled_modules.i168.i, ptr noundef %87) #12
  br i1 %call.i.i.i169.i, label %if.end.i.i.i173.i, label %if.end.i170.i.list_add.exit.i175.i_crit_edge

if.end.i170.i.list_add.exit.i175.i_crit_edge:     ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i175.i

if.end.i.i.i173.i:                                ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i171.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %node.i167.i, ptr %prev1.i.i.i171.i, align 4
  %89 = ptrtoint ptr %node.i167.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %node.i167.i, align 4
  %prev3.i.i.i172.i = getelementptr inbounds %struct.sysc_address, ptr %call7.i.i.i164.i, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %disabled_modules.i168.i, ptr %prev3.i.i.i172.i, align 8
  %91 = ptrtoint ptr %disabled_modules.i168.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %node.i167.i, ptr %disabled_modules.i168.i, align 4
  br label %list_add.exit.i175.i

list_add.exit.i175.i:                             ; preds = %if.end.i.i.i173.i, %if.end.i170.i.list_add.exit.i175.i_crit_edge
  %92 = load ptr, ptr @sysc_soc, align 4
  %list_lock2.i174.i = getelementptr inbounds %struct.sysc_soc_info, ptr %92, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock2.i174.i) #12
  br label %if.end12

if.end12:                                         ; preds = %list_add.exit.i175.i, %if.then102.i.if.end12_crit_edge, %if.end99.i.if.end12_crit_edge, %if.end81.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 8
  %call.i210 = tail call ptr @of_device_get_match_data(ptr noundef %94) #12
  %tobool.not.i211 = icmp eq ptr %call.i210, null
  br i1 %tobool.not.i211, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %cap1.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 11
  %95 = ptrtoint ptr %cap1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i210, ptr %cap1.i, align 4
  %mod_quirks.i = getelementptr inbounds %struct.sysc_capabilities, ptr %call.i210, i32 0, i32 3
  %96 = ptrtoint ptr %mod_quirks.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mod_quirks.i, align 4
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 12, i32 5
  %98 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %quirks.i, align 4
  %or.i = or i32 %99, %97
  store i32 %or.i, ptr %quirks.i, align 4
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 27
  %102 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %104 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %val.i, align 4, !annotation !476
  %call.i214 = tail call ptr @of_get_property(ptr noundef %103, ptr noundef nonnull @.str.67, ptr noundef null) #12
  %legacy_mode.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 10
  %105 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i214, ptr %legacy_mode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #12
  %106 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %len.i.i, align 4, !annotation !476
  %call.i.i215 = call ptr @of_get_property(ptr noundef %103, ptr noundef nonnull @.str.73, ptr noundef nonnull %len.i.i) #12
  %tobool.not.i.i216 = icmp eq ptr %call.i.i215, null
  br i1 %tobool.not.i.i216, label %if.end16.cleanup.i.i_crit_edge, label %if.end.i.i217

if.end16.cleanup.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end.i.i217:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %quirks.i, align 4
  %or.i.i = or i32 %108, 64
  store i32 %or.i.i, ptr %quirks.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i217, %if.end16.cleanup.i.i_crit_edge
  %call.1.i.i = call ptr @of_get_property(ptr noundef %103, ptr noundef nonnull @.str.74, ptr noundef nonnull %len.i.i) #12
  %tobool.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool.not.1.i.i, label %cleanup.i.i.cleanup.1.i.i_crit_edge, label %if.end.1.i.i

cleanup.i.i.cleanup.1.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i.i

if.end.1.i.i:                                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %quirks.i, align 4
  %or.1.i.i = or i32 %110, 32
  store i32 %or.1.i.i, ptr %quirks.i, align 4
  br label %cleanup.1.i.i

cleanup.1.i.i:                                    ; preds = %if.end.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge
  %call.2.i.i = call ptr @of_get_property(ptr noundef %103, ptr noundef nonnull @.str.75, ptr noundef nonnull %len.i.i) #12
  %tobool.not.2.i.i = icmp eq ptr %call.2.i.i, null
  br i1 %tobool.not.2.i.i, label %cleanup.1.i.i.sysc_parse_dts_quirks.exit.i_crit_edge, label %if.end.2.i.i

cleanup.1.i.i.sysc_parse_dts_quirks.exit.i_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_dts_quirks.exit.i

if.end.2.i.i:                                     ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %quirks.i, align 4
  %or.2.i.i = or i32 %112, 128
  store i32 %or.2.i.i, ptr %quirks.i, align 4
  br label %sysc_parse_dts_quirks.exit.i

sysc_parse_dts_quirks.exit.i:                     ; preds = %if.end.2.i.i, %cleanup.1.i.i.sysc_parse_dts_quirks.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #12
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %103, ptr noundef nonnull @.str.68, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i218 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i218, label %if.then.i, label %sysc_parse_dts_quirks.exit.i.sysc_init_dts_quirks.exit_crit_edge

sysc_parse_dts_quirks.exit.i.sysc_init_dts_quirks.exit_crit_edge: ; preds = %sysc_parse_dts_quirks.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_init_dts_quirks.exit

if.then.i:                                        ; preds = %sysc_parse_dts_quirks.exit.i
  %113 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %114)
  %cmp.i = icmp ugt i32 %114, 255
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i219_crit_edge

if.then.i.if.end.i219_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i219

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.69, i32 noundef %114) #15
  br label %if.end.i219

if.end.i219:                                      ; preds = %do.end.i, %if.then.i.if.end.i219_crit_edge
  %117 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %118 to i8
  %srst_udelay.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 12, i32 4
  %119 = ptrtoint ptr %srst_udelay.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i, ptr %srst_udelay.i, align 2
  br label %sysc_init_dts_quirks.exit

sysc_init_dts_quirks.exit:                        ; preds = %if.end.i219, %sysc_parse_dts_quirks.exit.i.sysc_init_dts_quirks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 8
  %of_node.i221 = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 27
  %122 = ptrtoint ptr %of_node.i221 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %of_node.i221, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_addr.i.i) #12
  %124 = ptrtoint ptr %nr_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %nr_addr.i.i, align 4, !annotation !476
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_size.i.i) #12
  %125 = ptrtoint ptr %nr_size.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %nr_size.i.i, align 4, !annotation !476
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i220) #12
  %126 = ptrtoint ptr %len.i.i220 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %len.i.i220, align 4, !annotation !476
  %call.i.i222 = call ptr @of_get_property(ptr noundef %123, ptr noundef nonnull @.str.77, ptr noundef nonnull %len.i.i220) #12
  %tobool.not.i.i223 = icmp eq ptr %call.i.i222, null
  br i1 %tobool.not.i.i223, label %sysc_init_dts_quirks.exit.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge, label %if.end.i.i224

sysc_init_dts_quirks.exit.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge: ; preds = %sysc_init_dts_quirks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.sink.split.i

if.end.i.i224:                                    ; preds = %sysc_init_dts_quirks.exit
  %127 = ptrtoint ptr %len.i.i220 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i.i220, align 4
  %div47.i.i = lshr i32 %128, 2
  store i32 %div47.i.i, ptr %len.i.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %128)
  %cmp.i.i = icmp ult i32 %128, 12
  br i1 %cmp.i.i, label %if.end.i.i224.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge, label %if.end7.i.i

if.end.i.i224.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.sink.split.i

if.end7.i.i:                                      ; preds = %if.end.i.i224
  %call.i.i.i.i225 = call i32 @of_property_read_variable_u32_array(ptr noundef %123, ptr noundef nonnull @.str.83, ptr noundef nonnull %nr_addr.i.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i225)
  %tobool9.not.i.i = icmp sgt i32 %call.i.i.i.i225, -1
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end7.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge

if.end7.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %call.i.i48.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %123, ptr noundef nonnull @.str.84, ptr noundef nonnull %nr_size.i.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i48.i.i)
  %tobool13.not.i.i = icmp sgt i32 %call.i.i48.i.i, -1
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end11.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge

if.end11.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %129 = ptrtoint ptr %nr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp16.not.i.i = icmp eq i32 %130, 1
  br i1 %cmp16.not.i.i, label %lor.lhs.false.i.i, label %if.end15.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge

if.end15.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.sink.split.i

lor.lhs.false.i.i:                                ; preds = %if.end15.i.i
  %131 = ptrtoint ptr %nr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nr_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp17.not.i.i = icmp eq i32 %132, 1
  br i1 %cmp17.not.i.i, label %if.end.i226, label %lor.lhs.false.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge

lor.lhs.false.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_parse_and_check_child_range.exit.thread.sink.split.i

sysc_parse_and_check_child_range.exit.thread.sink.split.i: ; preds = %lor.lhs.false.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge, %if.end15.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge, %if.end.i.i224.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge, %sysc_init_dts_quirks.exit.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge
  %.str.81.sink.i = phi ptr [ @.str.78, %sysc_init_dts_quirks.exit.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ @.str.81, %if.end.i.i224.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ @.str.86, %lor.lhs.false.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ @.str.86, %if.end15.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ]
  %retval.0.i.ph.ph.i = phi i32 [ -2, %sysc_init_dts_quirks.exit.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ -22, %if.end.i.i224.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ -22, %lor.lhs.false.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ], [ -22, %if.end15.i.i.sysc_parse_and_check_child_range.exit.thread.sink.split.i_crit_edge ]
  %133 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull %.str.81.sink.i, ptr noundef %123) #15
  br label %sysc_parse_and_check_child_range.exit.thread.i

sysc_parse_and_check_child_range.exit.thread.i:   ; preds = %sysc_parse_and_check_child_range.exit.thread.sink.split.i, %if.end11.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge, %if.end7.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -2, %if.end11.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge ], [ -2, %if.end7.i.i.sysc_parse_and_check_child_range.exit.thread.i_crit_edge ], [ %retval.0.i.ph.ph.i, %sysc_parse_and_check_child_range.exit.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i220) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_size.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_addr.i.i) #12
  br label %cleanup

if.end.i226:                                      ; preds = %lor.lhs.false.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i222, i32 1
  %incdec.ptr24.i.i = getelementptr i32, ptr %call.i.i222, i32 2
  %call25.i.i = call i64 @of_translate_address(ptr noundef %123, ptr noundef %incdec.ptr.i.i) #12
  %module_pa.i.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 1
  %135 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %call25.i.i, ptr %module_pa.i.i, align 8
  %136 = ptrtoint ptr %incdec.ptr24.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %incdec.ptr24.i.i, align 4
  %module_size.i.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 2
  %138 = ptrtoint ptr %module_size.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %module_size.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i220) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_size.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_addr.i.i) #12
  %call.i.i.i37.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sysc_defer, i32 noundef 4) #12
  %139 = load volatile i32, ptr @sysc_defer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i38.i = icmp eq i32 %139, 0
  br i1 %tobool.not.i38.i, label %if.end.i226.if.end4.i_crit_edge, label %for.cond.preheader.i.i

if.end.i226.if.end4.i_crit_edge:                  ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

for.cond.preheader.i.i:                           ; preds = %if.end.i226
  %140 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %module_pa.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1153433600, i64 %141)
  %cmp1.not.i.i = icmp ult i64 %141, 1153433600
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.i.i

for.cond.preheader.i.i.for.inc.3.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1156579328, i64 %141)
  %cmp5.not.i.i = icmp ugt i64 %141, 1156579328
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.1.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %call.i.i15.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sysc_defer, i32 noundef 4) #12
  store volatile i32 0, ptr @sysc_defer, align 4
  br label %if.end4.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1241513984, i64 %141)
  %cmp1.not.1.i.i = icmp ult i64 %141, 1241513984
  br i1 %cmp1.not.1.i.i, label %for.inc.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1244856320, i64 %141)
  %cmp5.not.2.i.i = icmp ugt i64 %141, 1244856320
  %142 = add i64 %141, -1256390657
  call void @__sanitizer_cov_trace_const_cmp8(i64 -196609, i64 %142)
  %143 = icmp ult i64 %142, -196609
  %or.cond.i = and i1 %cmp5.not.2.i.i, %143
  br i1 %or.cond.i, label %land.lhs.true.1.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.1.i.i.if.then7.i.i_crit_edge

land.lhs.true.1.i.i.if.then7.i.i_crit_edge:       ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i

land.lhs.true.1.i.i.for.inc.3.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.3.i.i_crit_edge, %for.inc.i.i.for.inc.3.i.i_crit_edge, %for.cond.preheader.i.i.for.inc.3.i.i_crit_edge
  %call.i.i16.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sysc_defer, i32 noundef 4) #12
  %144 = load volatile i32, ptr @sysc_defer, align 4
  br label %do.body1.i.i.i.i

do.body1.i.i.i.i:                                 ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, %for.inc.3.i.i
  %c.0.i.i.i.i = phi i32 [ %144, %for.inc.3.i.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = add i32 %c.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.body1.i.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i.i, !prof !477

do.body1.i.i.i.i.cleanup_crit_edge:               ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond3.i.i.i.i:                                 ; preds = %do.body1.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !478
  call void @llvm.prefetch.p0(ptr nonnull @sysc_defer, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i.i
  %145 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sysc_defer, ptr nonnull @sysc_defer, i32 %c.0.i.i.i.i, i32 %sub.i.i.i.i, ptr nonnull elementtype(i32) @sysc_defer) #12, !srcloc !479
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %145, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %145, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !480
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.cleanup_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, !prof !475

arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i.cleanup_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.then7.i.i, %if.end.i226.if.end4.i_crit_edge
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %call.i, align 8
  %of_node.i41.i = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 27
  %148 = ptrtoint ptr %of_node.i41.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %of_node.i41.i, align 8
  %call.i42.i = call ptr @of_get_next_child(ptr noundef %149, ptr noundef null) #12
  %cmp.not8.i.i = icmp eq ptr %call.i42.i, null
  br i1 %cmp.not8.i.i, label %if.end4.i.sysc_check_children.exit.i_crit_edge, label %if.end4.i.for.body.i.i_crit_edge

if.end4.i.for.body.i.i_crit_edge:                 ; preds = %if.end4.i
  br label %for.body.i.i

if.end4.i.sysc_check_children.exit.i_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_check_children.exit.i

for.body.i.i:                                     ; preds = %sysc_check_one_child.exit.i.i.for.body.i.i_crit_edge, %if.end4.i.for.body.i.i_crit_edge
  %child.09.i.i = phi ptr [ %call3.i.i, %sysc_check_one_child.exit.i.i.for.body.i.i_crit_edge ], [ %call.i42.i, %if.end4.i.for.body.i.i_crit_edge ]
  %call.i.i.i227 = call ptr @of_get_property(ptr noundef nonnull %child.09.i.i, ptr noundef nonnull @.str.67, ptr noundef null) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i227, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %call1.i.i.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.09.i.i, ptr noundef nonnull @.str.88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.89) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.if.end.i.i.i_crit_edge
  %152 = load ptr, ptr @stdout_path, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end2.i.i.i.i.i, label %if.end.i.i.i.sysc_init_stdout_path.exit.i.i.i.i_crit_edge

if.end.i.i.i.sysc_init_stdout_path.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_init_stdout_path.exit.i.i.i.i

if.end2.i.i.i.i.i:                                ; preds = %if.end.i.i.i
  %call.i.i.i.i.i.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.91, ptr noundef null) #12
  %tobool4.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i.i.i, label %if.end2.i.i.i.i.i.err.i.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.i

if.end2.i.i.i.i.i.err.i.i.i.i.i_crit_edge:        ; preds = %if.end2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i.i.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %if.end2.i.i.i.i.i
  %call7.i.i.i.i.i = call ptr @of_get_property(ptr noundef nonnull %call.i.i.i.i.i.i, ptr noundef nonnull @.str.92, ptr noundef null) #12
  %tobool8.not.i.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool8.not.i.i.i.i.i, label %if.end6.i.i.i.i.i.err.i.i.i.i.i_crit_edge, label %if.end10.i.i.i.i.i

if.end6.i.i.i.i.i.err.i.i.i.i.i_crit_edge:        ; preds = %if.end6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i.i.i.i.i

if.end10.i.i.i.i.i:                               ; preds = %if.end6.i.i.i.i.i
  %call.i1.i.i.i.i.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef null) #12
  %tobool12.not.i.i.i.i.i = icmp eq ptr %call.i1.i.i.i.i.i, null
  br i1 %tobool12.not.i.i.i.i.i, label %if.end10.i.i.i.i.i.err.i.i.i.i.i_crit_edge, label %if.end10.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

if.end10.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i.i.i.i

if.end10.i.i.i.i.i.err.i.i.i.i.i_crit_edge:       ; preds = %if.end10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i.i.i.i.i

err.i.i.i.i.i:                                    ; preds = %if.end10.i.i.i.i.i.err.i.i.i.i.i_crit_edge, %if.end6.i.i.i.i.i.err.i.i.i.i.i_crit_edge, %if.end2.i.i.i.i.i.err.i.i.i.i.i_crit_edge
  br label %cleanup.sink.split.i.i.i.i.i

cleanup.sink.split.i.i.i.i.i:                     ; preds = %err.i.i.i.i.i, %if.end10.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi ptr [ inttoptr (i32 -19 to ptr), %err.i.i.i.i.i ], [ %call.i1.i.i.i.i.i, %if.end10.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge ]
  store ptr %.sink.i.i.i.i.i, ptr @stdout_path, align 4
  br label %sysc_init_stdout_path.exit.i.i.i.i

sysc_init_stdout_path.exit.i.i.i.i:               ; preds = %cleanup.sink.split.i.i.i.i.i, %if.end.i.i.i.sysc_init_stdout_path.exit.i.i.i.i_crit_edge
  %153 = load ptr, ptr @stdout_path, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %153, %child.09.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i228, label %sysc_init_stdout_path.exit.i.i.i.i.sysc_check_quirk_stdout.exit.i.i.i_crit_edge

sysc_init_stdout_path.exit.i.i.i.i.sysc_check_quirk_stdout.exit.i.i.i_crit_edge: ; preds = %sysc_init_stdout_path.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_check_quirk_stdout.exit.i.i.i

if.end.i.i.i.i228:                                ; preds = %sysc_init_stdout_path.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %quirks.i, align 4
  %or.i.i.i.i = or i32 %155, 96
  store i32 %or.i.i.i.i, ptr %quirks.i, align 4
  br label %sysc_check_quirk_stdout.exit.i.i.i

sysc_check_quirk_stdout.exit.i.i.i:               ; preds = %if.end.i.i.i.i228, %sysc_init_stdout_path.exit.i.i.i.i.sysc_check_quirk_stdout.exit.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i.i.i) #12
  %156 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %len.i.i.i.i, align 4, !annotation !476
  %call.i.i.i43.i = call ptr @of_get_property(ptr noundef nonnull %child.09.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull %len.i.i.i.i) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i43.i, null
  br i1 %tobool.not.i.i.i.i, label %sysc_check_quirk_stdout.exit.i.i.i.cleanup.i.i.i.i_crit_edge, label %if.end.i10.i.i.i

sysc_check_quirk_stdout.exit.i.i.i.cleanup.i.i.i.i_crit_edge: ; preds = %sysc_check_quirk_stdout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i.i.i

if.end.i10.i.i.i:                                 ; preds = %sysc_check_quirk_stdout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %quirks.i, align 4
  %or.i9.i.i.i = or i32 %158, 64
  store i32 %or.i9.i.i.i, ptr %quirks.i, align 4
  %159 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73) #15
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end.i10.i.i.i, %sysc_check_quirk_stdout.exit.i.i.i.cleanup.i.i.i.i_crit_edge
  %call.1.i.i.i.i = call ptr @of_get_property(ptr noundef nonnull %child.09.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %len.i.i.i.i) #12
  %tobool.not.1.i.i.i.i = icmp eq ptr %call.1.i.i.i.i, null
  br i1 %tobool.not.1.i.i.i.i, label %cleanup.i.i.i.i.cleanup.1.i.i.i.i_crit_edge, label %if.end.1.i.i.i.i

cleanup.i.i.i.i.cleanup.1.i.i.i.i_crit_edge:      ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i.i.i.i

if.end.1.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %quirks.i, align 4
  %or.1.i.i.i.i = or i32 %162, 32
  store i32 %or.1.i.i.i.i, ptr %quirks.i, align 4
  %163 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.74) #15
  br label %cleanup.1.i.i.i.i

cleanup.1.i.i.i.i:                                ; preds = %if.end.1.i.i.i.i, %cleanup.i.i.i.i.cleanup.1.i.i.i.i_crit_edge
  %call.2.i.i.i.i = call ptr @of_get_property(ptr noundef nonnull %child.09.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %len.i.i.i.i) #12
  %tobool.not.2.i.i.i.i = icmp eq ptr %call.2.i.i.i.i, null
  br i1 %tobool.not.2.i.i.i.i, label %cleanup.1.i.i.i.i.sysc_check_one_child.exit.i.i_crit_edge, label %if.end.2.i.i.i.i

cleanup.1.i.i.i.i.sysc_check_one_child.exit.i.i_crit_edge: ; preds = %cleanup.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_check_one_child.exit.i.i

if.end.2.i.i.i.i:                                 ; preds = %cleanup.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %quirks.i, align 4
  %or.2.i.i.i.i = or i32 %166, 128
  store i32 %or.2.i.i.i.i, ptr %quirks.i, align 4
  %167 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.75) #15
  br label %sysc_check_one_child.exit.i.i

sysc_check_one_child.exit.i.i:                    ; preds = %if.end.2.i.i.i.i, %cleanup.1.i.i.i.i.sysc_check_one_child.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i.i.i) #12
  %169 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call.i, align 8
  %of_node2.i.i = getelementptr inbounds %struct.device, ptr %170, i32 0, i32 27
  %171 = ptrtoint ptr %of_node2.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %of_node2.i.i, align 8
  %call3.i.i = call ptr @of_get_next_child(ptr noundef %172, ptr noundef nonnull %child.09.i.i) #12
  %cmp.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.not.i.i, label %sysc_check_one_child.exit.i.i.sysc_check_children.exit.i_crit_edge, label %sysc_check_one_child.exit.i.i.for.body.i.i_crit_edge

sysc_check_one_child.exit.i.i.for.body.i.i_crit_edge: ; preds = %sysc_check_one_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

sysc_check_one_child.exit.i.i.sysc_check_children.exit.i_crit_edge: ; preds = %sysc_check_one_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_check_children.exit.i

sysc_check_children.exit.i:                       ; preds = %sysc_check_one_child.exit.i.i.sysc_check_children.exit.i_crit_edge, %if.end4.i.sysc_check_children.exit.i_crit_edge
  %call5.i = call ptr @of_get_property(ptr noundef %123, ptr noundef nonnull @.str.76, ptr noundef null) #12
  %tobool6.not.i229 = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i229, label %sysc_check_children.exit.i.if.end24_crit_edge, label %if.end8.i

sysc_check_children.exit.i.if.end24_crit_edge:    ; preds = %sysc_check_children.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end8.i:                                        ; preds = %sysc_check_children.exit.i
  %173 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %call.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %174, i32 -16
  %call.i.i45.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i.i.i, i32 noundef 512, ptr noundef nonnull @.str.93) #12
  %tobool.not.i.i46.i = icmp eq ptr %call.i.i45.i, null
  br i1 %tobool.not.i.i46.i, label %if.then.i.i.i, label %if.then6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -19, ptr %offsets, align 4
  br label %for.inc.i49.i

if.then6.i.i.i:                                   ; preds = %if.end8.i
  %176 = ptrtoint ptr %call.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %call.i.i45.i, align 4
  %178 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %module_pa.i.i, align 8
  %180 = trunc i64 %179 to i32
  %conv2.i.i.i = sub i32 %177, %180
  %181 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv2.i.i.i, ptr %offsets, align 4
  %end.i.i.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i45.i, i32 0, i32 1
  %182 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %end.i.i.i.i.i, align 4
  %184 = load i32, ptr %call.i.i45.i, align 4
  %sub.i.i.i.i.i = add i32 %183, 1
  %add.i.i.i.i.i = sub i32 %sub.i.i.i.i.i, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i.i.i.i)
  %cmp.i.i.i47.i = icmp eq i32 %add.i.i.i.i.i, 8
  br i1 %cmp.i.i.i47.i, label %if.then.i.i.i.i, label %if.then6.i.i.i.for.inc.i49.i_crit_edge

if.then6.i.i.i.for.inc.i49.i_crit_edge:           ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i49.i

if.then.i.i.i.i:                                  ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %quirks.i, align 4
  %or.i.i.i48.i = or i32 %186, 5
  store i32 %or.i.i.i48.i, ptr %quirks.i, align 4
  br label %for.inc.i49.i

for.inc.i49.i:                                    ; preds = %if.then.i.i.i.i, %if.then6.i.i.i.for.inc.i49.i_crit_edge, %if.then.i.i.i
  %187 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %188, i32 -16
  %call.i.1.i.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i.1.i.i, i32 noundef 512, ptr noundef nonnull @.str.94) #12
  %tobool.not.i.1.i.i = icmp eq ptr %call.i.1.i.i, null
  br i1 %tobool.not.i.1.i.i, label %for.inc.i49.i.for.inc.1.i.i_crit_edge, label %if.end.i.1.i.i

for.inc.i49.i.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.inc.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = ptrtoint ptr %call.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %call.i.1.i.i, align 4
  %191 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %module_pa.i.i, align 8
  %193 = trunc i64 %192 to i32
  %conv2.i.1.i.i = sub i32 %190, %193
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.i.1.i.i, %for.inc.i49.i.for.inc.1.i.i_crit_edge
  %conv2.i.1.sink.i.i = phi i32 [ %conv2.i.1.i.i, %if.end.i.1.i.i ], [ -19, %for.inc.i49.i.for.inc.1.i.i_crit_edge ]
  %194 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv2.i.1.sink.i.i, ptr %arrayidx4, align 4
  %195 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %call.i, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %196, i32 -16
  %call.i.2.i.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i.2.i.i, i32 noundef 512, ptr noundef nonnull @.str.95) #12
  %tobool.not.i.2.i.i = icmp eq ptr %call.i.2.i.i, null
  br i1 %tobool.not.i.2.i.i, label %for.inc.1.i.i.if.end12.i_crit_edge, label %if.end.i.2.i.i

for.inc.1.i.i.if.end12.i_crit_edge:               ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end.i.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %call.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call.i.2.i.i, align 4
  %199 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %module_pa.i.i, align 8
  %201 = trunc i64 %200 to i32
  %conv2.i.2.i.i = sub i32 %198, %201
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i.2.i.i, %for.inc.1.i.i.if.end12.i_crit_edge
  %conv2.i.2.sink.i.i = phi i32 [ %conv2.i.2.i.i, %if.end.i.2.i.i ], [ -19, %for.inc.1.i.i.if.end12.i_crit_edge ]
  %202 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv2.i.2.sink.i.i, ptr %arrayidx6, align 4
  %203 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %offsets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i51.i = icmp slt i32 %204, 0
  br i1 %cmp.i51.i, label %land.lhs.true.i52.i, label %if.end12.i.if.else.i.i_crit_edge

if.end12.i.if.else.i.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i52.i:                              ; preds = %if.end12.i
  %205 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp3.i.i = icmp slt i32 %206, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.2.sink.i.i)
  %cmp7.i.i = icmp slt i32 %conv2.i.2.sink.i.i, 0
  %or.cond62.i = select i1 %cmp3.i.i, i1 %cmp7.i.i, i1 false
  br i1 %or.cond62.i, label %if.then.i.i, label %land.lhs.true.i52.i.if.else.i.i_crit_edge

land.lhs.true.i52.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %module_size.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %module_size.i.i, align 8
  br label %sysc_ioremap.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i52.i.if.else.i.i_crit_edge, %if.end12.i.if.else.i.i_crit_edge
  %209 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx4, align 4
  %211 = call i32 @llvm.smax.i32(i32 %204, i32 %210) #12
  %212 = call i32 @llvm.smax.i32(i32 %211, i32 %conv2.i.2.sink.i.i) #12
  %213 = call i32 @llvm.smax.i32(i32 %212, i32 1024) #12
  %add.i.i = add nuw i32 %213, 4
  %214 = ptrtoint ptr %module_size.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %module_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %215)
  %cmp24.i.i = icmp ugt i32 %add.i.i, %215
  %spec.select.i.i = select i1 %cmp24.i.i, i32 %215, i32 %213
  br label %sysc_ioremap.exit.i

sysc_ioremap.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %size.0.i.i = phi i32 [ %208, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %216 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %call.i, align 8
  %218 = ptrtoint ptr %module_pa.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %module_pa.i.i, align 8
  %conv.i.i = trunc i64 %219 to i32
  %add29.i.i = add i32 %size.0.i.i, 4
  %call.i55.i = call ptr @devm_ioremap(ptr noundef %217, i32 noundef %conv.i.i, i32 noundef %add29.i.i) #12
  %module_va.i.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 3
  %220 = ptrtoint ptr %module_va.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call.i55.i, ptr %module_va.i.i, align 4
  %tobool.not.i56.not.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool.not.i56.not.i, label %sysc_ioremap.exit.i.cleanup_crit_edge, label %sysc_map_and_check_registers.exit

sysc_ioremap.exit.i.cleanup_crit_edge:            ; preds = %sysc_ioremap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sysc_map_and_check_registers.exit:                ; preds = %sysc_ioremap.exit.i
  %call17.i = call fastcc i32 @sysc_check_registers(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool22.not = icmp eq i32 %call17.i, 0
  br i1 %tobool22.not, label %sysc_map_and_check_registers.exit.if.end24_crit_edge, label %sysc_map_and_check_registers.exit.cleanup_crit_edge

sysc_map_and_check_registers.exit.cleanup_crit_edge: ; preds = %sysc_map_and_check_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sysc_map_and_check_registers.exit.if.end24_crit_edge: ; preds = %sysc_map_and_check_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %sysc_map_and_check_registers.exit.if.end24_crit_edge, %sysc_check_children.exit.i.if.end24_crit_edge
  %221 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %call.i, align 8
  %of_node.i232 = getelementptr inbounds %struct.device, ptr %222, i32 0, i32 27
  %223 = ptrtoint ptr %of_node.i232 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %of_node.i232, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i231) #12
  %225 = ptrtoint ptr %val.i231 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1, ptr %val.i231, align 4, !annotation !476
  %call.i.i.i233 = call i32 @of_property_read_variable_u32_array(ptr noundef %224, ptr noundef nonnull @.str.101, ptr noundef nonnull %val.i231, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i233)
  %tobool.not.i234 = icmp sgt i32 %call.i.i.i233, -1
  br i1 %tobool.not.i234, label %if.end.i236, label %if.end24.sysc_init_sysc_mask.exit_crit_edge

if.end24.sysc_init_sysc_mask.exit_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_init_sysc_mask.exit

if.end.i236:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %226 = ptrtoint ptr %val.i231 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %val.i231, align 4
  %228 = ptrtoint ptr %cap1.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cap1.i, align 4
  %sysc_mask.i = getelementptr inbounds %struct.sysc_capabilities, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %sysc_mask.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %sysc_mask.i, align 4
  %and.i235 = and i32 %231, %227
  %cfg.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 12
  %232 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %and.i235, ptr %cfg.i, align 8
  br label %sysc_init_sysc_mask.exit

sysc_init_sysc_mask.exit:                         ; preds = %if.end.i236, %if.end24.sysc_init_sysc_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i231) #12
  %midlemodes.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 12, i32 2
  %233 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %call.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %234, i32 0, i32 27
  %235 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %237 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 -1, ptr %val.i.i, align 4, !annotation !476
  %call.i.i237 = call ptr @of_find_property(ptr noundef %236, ptr noundef nonnull @.str.102, ptr noundef null) #12
  %call1.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i.i237, ptr noundef null, ptr noundef nonnull %val.i.i) #12
  %tobool.not11.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not11.i.i, label %sysc_init_sysc_mask.exit.if.end.i242_crit_edge, label %sysc_init_sysc_mask.exit.for.body.i.i239_crit_edge

sysc_init_sysc_mask.exit.for.body.i.i239_crit_edge: ; preds = %sysc_init_sysc_mask.exit
  br label %for.body.i.i239

sysc_init_sysc_mask.exit.if.end.i242_crit_edge:   ; preds = %sysc_init_sysc_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i242

for.body.i.i239:                                  ; preds = %if.end.i.i241.for.body.i.i239_crit_edge, %sysc_init_sysc_mask.exit.for.body.i.i239_crit_edge
  %p.012.i.i = phi ptr [ %call4.i.i, %if.end.i.i241.for.body.i.i239_crit_edge ], [ %call1.i.i, %sysc_init_sysc_mask.exit.for.body.i.i239_crit_edge ]
  %238 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %239)
  %cmp.i.i238 = icmp ugt i32 %239, 3
  br i1 %cmp.i.i238, label %sysc_init_idlemodes.exit.thread, label %if.end.i.i241

if.end.i.i241:                                    ; preds = %for.body.i.i239
  %shl.i.i = shl nuw nsw i32 1, %239
  %240 = ptrtoint ptr %midlemodes.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %midlemodes.i, align 1
  %242 = trunc i32 %shl.i.i to i8
  %conv3.i.i = or i8 %241, %242
  store i8 %conv3.i.i, ptr %midlemodes.i, align 1
  %call4.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i.i237, ptr noundef nonnull %p.012.i.i, ptr noundef nonnull %val.i.i) #12
  %tobool.not.i.i240 = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i240, label %if.end.i.i241.if.end.i242_crit_edge, label %if.end.i.i241.for.body.i.i239_crit_edge

if.end.i.i241.for.body.i.i239_crit_edge:          ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i239

if.end.i.i241.if.end.i242_crit_edge:              ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i242

sysc_init_idlemodes.exit.thread:                  ; preds = %for.body.i.i239
  call void @__sanitizer_cov_trace_pc() #14
  %243 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.104, i32 noundef %239) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  br label %cleanup

if.end.i242:                                      ; preds = %if.end.i.i241.if.end.i242_crit_edge, %sysc_init_sysc_mask.exit.if.end.i242_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  %sidlemodes.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 12, i32 3
  %245 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %call.i, align 8
  %of_node.i13.i = getelementptr inbounds %struct.device, ptr %246, i32 0, i32 27
  %247 = ptrtoint ptr %of_node.i13.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %of_node.i13.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i12.i) #12
  %249 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -1, ptr %val.i12.i, align 4, !annotation !476
  %call.i14.i = call ptr @of_find_property(ptr noundef %248, ptr noundef nonnull @.str.103, ptr noundef null) #12
  %call1.i15.i = call ptr @of_prop_next_u32(ptr noundef %call.i14.i, ptr noundef null, ptr noundef nonnull %val.i12.i) #12
  %tobool.not11.i16.i = icmp eq ptr %call1.i15.i, null
  br i1 %tobool.not11.i16.i, label %if.end.i242.if.end32_crit_edge, label %if.end.i242.for.body.i19.i_crit_edge

if.end.i242.for.body.i19.i_crit_edge:             ; preds = %if.end.i242
  br label %for.body.i19.i

if.end.i242.if.end32_crit_edge:                   ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.i19.i:                                   ; preds = %if.end.i25.i.for.body.i19.i_crit_edge, %if.end.i242.for.body.i19.i_crit_edge
  %p.012.i17.i = phi ptr [ %call4.i23.i, %if.end.i25.i.for.body.i19.i_crit_edge ], [ %call1.i15.i, %if.end.i242.for.body.i19.i_crit_edge ]
  %250 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %val.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %251)
  %cmp.i18.i = icmp ugt i32 %251, 3
  br i1 %cmp.i18.i, label %sysc_init_idlemodes.exit, label %if.end.i25.i

if.end.i25.i:                                     ; preds = %for.body.i19.i
  %shl.i21.i = shl nuw nsw i32 1, %251
  %252 = ptrtoint ptr %sidlemodes.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %sidlemodes.i, align 1
  %254 = trunc i32 %shl.i21.i to i8
  %conv3.i22.i = or i8 %253, %254
  store i8 %conv3.i22.i, ptr %sidlemodes.i, align 1
  %call4.i23.i = call ptr @of_prop_next_u32(ptr noundef %call.i14.i, ptr noundef nonnull %p.012.i17.i, ptr noundef nonnull %val.i12.i) #12
  %tobool.not.i24.i = icmp eq ptr %call4.i23.i, null
  br i1 %tobool.not.i24.i, label %if.end.i25.i.if.end32_crit_edge, label %if.end.i25.i.for.body.i19.i_crit_edge

if.end.i25.i.for.body.i19.i_crit_edge:            ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i19.i

if.end.i25.i.if.end32_crit_edge:                  ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

sysc_init_idlemodes.exit:                         ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  %255 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.104, i32 noundef %251) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12.i) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end.i25.i.if.end32_crit_edge, %if.end.i242.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12.i) #12
  call fastcc void @sysc_init_syss_mask(ptr noundef nonnull %call.i)
  %call37 = call fastcc i32 @sysc_init_pdata(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  call fastcc void @sysc_init_early_quirks(ptr noundef nonnull %call.i)
  %call41 = call fastcc i32 @sysc_check_disabled_devices(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %257 = ptrtoint ptr %cap1.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cap1.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %258, align 4
  %261 = zext i32 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %260, label %if.end44.if.end50_crit_edge [
    i32 1, label %if.end44.if.end.i246_crit_edge
    i32 5, label %if.end44.if.end.i246_crit_edge291
  ]

if.end44.if.end.i246_crit_edge291:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i246

if.end44.if.end.i246_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i246

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end.i246:                                      ; preds = %if.end44.if.end.i246_crit_edge, %if.end44.if.end.i246_crit_edge291
  %262 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %quirks.i, align 4
  %264 = and i32 %263, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %264)
  %.not.i = icmp eq i32 %264, 160
  br i1 %.not.i, label %if.then46, label %if.end.i246.if.end50_crit_edge

if.end.i246.if.end50_crit_edge:                   ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then46:                                        ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #14
  %reserved = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 17
  %265 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load = load i8, ptr %reserved, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %reserved, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end.i246.if.end50_crit_edge, %if.end44.if.end50_crit_edge
  %call51 = call fastcc i32 @sysc_get_clocks(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %call55 = call fastcc i32 @sysc_init_resets(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.unprepare_crit_edge

if.end54.unprepare_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %unprepare

if.end58:                                         ; preds = %if.end54
  %call59 = call fastcc i32 @sysc_init_module(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.unprepare_crit_edge

if.end58.unprepare_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %unprepare

if.end62:                                         ; preds = %if.end58
  %266 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_enable(ptr noundef %267) #12
  %268 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %call.i, align 8
  %call65 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %269)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %270 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %call.i, align 8
  br label %unprepare.sink.split

if.end69:                                         ; preds = %if.end62
  %272 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %quirks.i, align 4
  %and = and i32 %273, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.then71, label %if.end69.if.end72_crit_edge

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sysc_disable_main_clocks(ptr noundef nonnull %call.i)
  call fastcc void @sysc_disable_opt_clocks(ptr noundef nonnull %call.i)
  call fastcc void @sysc_clkdm_allow_idle(ptr noundef nonnull %call.i)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %274 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %quirks.i, align 4
  %and75 = and i32 %275, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end72.if.end79_crit_edge

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %rsts = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 9
  %276 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rsts, align 4
  %call78 = call i32 @reset_control_assert(ptr noundef %277) #12
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end72.if.end79_crit_edge
  call fastcc void @sysc_show_registers(ptr noundef nonnull %call.i)
  %278 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %call.i, align 8
  %type = getelementptr inbounds %struct.device, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @sysc_device_type, ptr %type, align 4
  %reserved81 = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 17
  %281 = ptrtoint ptr %reserved81 to i32
  call void @__asan_load1_noabort(i32 %281)
  %bf.load82 = load i8, ptr %reserved81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load82)
  %tobool83.not = icmp sgt i8 %bf.load82, -1
  br i1 %tobool83.not, label %if.then84, label %if.end79.do.body93_crit_edge

if.end79.do.body93_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

if.then84:                                        ; preds = %if.end79
  %282 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %283, i32 0, i32 27
  %284 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %of_node, align 8
  %tobool86.not = icmp eq ptr %1, null
  br i1 %tobool86.not, label %if.then84.cond.end_crit_edge, label %cond.true

if.then84.cond.end_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then84.cond.end_crit_edge
  %cond = phi ptr [ %287, %cond.true ], [ null, %if.then84.cond.end_crit_edge ]
  %call88 = call i32 @of_platform_populate(ptr noundef %285, ptr noundef nonnull @sysc_match_table, ptr noundef %cond, ptr noundef %283) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %cond.end.do.body93_crit_edge, label %err

cond.end.do.body93_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

do.body93:                                        ; preds = %cond.end.do.body93_crit_edge, %if.end79.do.body93_crit_edge
  %idle_work = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18
  call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #12
  %288 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @sysc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry100 = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18, i32 0, i32 1
  %289 = ptrtoint ptr %entry100 to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile ptr %entry100, ptr %entry100, align 4
  %prev.i = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %290 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %entry100, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18, i32 0, i32 2
  %291 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @ti_sysc_idle, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sysc, ptr %call.i, i32 0, i32 18, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @sysc_probe.__key.41) #12
  %292 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %quirks.i, align 4
  %and111 = and i32 %293, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else116, label %if.then113

if.then113:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %294 = load ptr, ptr @system_wq, align 4
  %call.i.i248 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %294, ptr noundef %idle_work, i32 noundef 3000) #12
  br label %if.end119

if.else116:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  %call.i249 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.then113
  %295 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %quirks.i, align 4
  %and122 = and i32 %296, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end119.cleanup_crit_edge, label %if.then124

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sysc_add_restored(ptr noundef nonnull %call.i)
  br label %cleanup

err:                                              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i250 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  br label %unprepare.sink.split

unprepare.sink.split:                             ; preds = %err, %if.then67
  %dev.sink = phi ptr [ %dev, %err ], [ %271, %if.then67 ]
  %error.0.ph = phi i32 [ %call88, %err ], [ %call65, %if.then67 ]
  call void @__pm_runtime_disable(ptr noundef %dev.sink, i1 noundef zeroext true) #12
  br label %unprepare

unprepare:                                        ; preds = %unprepare.sink.split, %if.end58.unprepare_crit_edge, %if.end54.unprepare_crit_edge
  %error.0 = phi i32 [ %call55, %if.end54.unprepare_crit_edge ], [ %call59, %if.end58.unprepare_crit_edge ], [ %error.0.ph, %unprepare.sink.split ]
  call fastcc void @sysc_unprepare(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %unprepare, %if.then124, %if.end119.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %sysc_init_idlemodes.exit, %sysc_init_idlemodes.exit.thread, %sysc_map_and_check_registers.exit.cleanup_crit_edge, %sysc_ioremap.exit.i.cleanup_crit_edge, %arch_atomic_cmpxchg.exit.i.i.i.i.i.cleanup_crit_edge, %do.body1.i.i.i.i.cleanup_crit_edge, %sysc_parse_and_check_child_range.exit.thread.i, %if.end12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %unprepare ], [ -12, %entry.cleanup_crit_edge ], [ %call17.i, %sysc_map_and_check_registers.exit.cleanup_crit_edge ], [ -22, %sysc_init_idlemodes.exit ], [ %call37, %if.end32.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ 0, %if.then124 ], [ 0, %if.end119.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %sysc_init_idlemodes.exit.thread ], [ %retval.0.i.ph.i, %sysc_parse_and_check_child_range.exit.thread.i ], [ -5, %sysc_ioremap.exit.i.cleanup_crit_edge ], [ -517, %do.body1.i.i.i.i.cleanup_crit_edge ], [ -517, %arch_atomic_cmpxchg.exit.i.i.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %idle_work = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 18
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !481
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !482
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !483
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #12
  br label %unprepare

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev4) #12
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %dev4, i32 noundef 4) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev4, i1 noundef zeroext true) #12
  %rsts = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsts, align 4
  %call8 = tail call i32 @reset_control_status(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end.unprepare_crit_edge

if.end.unprepare_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unprepare

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsts, align 4
  %call11 = tail call i32 @reset_control_assert(ptr noundef %10) #12
  br label %unprepare

unprepare:                                        ; preds = %if.then9, %if.end.unprepare_crit_edge, %if.then
  tail call fastcc void @sysc_unprepare(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_init_syss_mask(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !476
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.106, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %cap = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 11
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cap, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %switch = icmp eq i32 %9, 4
  br i1 %switch, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %cfg = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg, align 8
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %or = or i32 %13, 256
  store i32 %or, ptr %quirks, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and8 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true10:                                  ; preds = %if.end7
  %cfg11 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12
  %16 = ptrtoint ptr %cfg11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg11, align 8
  %and13 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end19_crit_edge, label %if.then15

land.lhs.true10.if.end19_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  %quirks17 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %18 = ptrtoint ptr %quirks17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks17, align 4
  %or18 = or i32 %19, 256
  store i32 %or18, ptr %quirks17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %syss_mask = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %syss_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %syss_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then5, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_pdata(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #12
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %legacy_mode = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 10
  %4 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %legacy_mode, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 8
  %module_pa = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  %7 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %module_pa, align 8
  %module_pa9 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %module_pa9 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %module_pa9, align 8
  %module_size = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 2
  %10 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %module_size, align 8
  %module_size10 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %module_size10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %module_size10, align 8
  %offsets = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %offsets11 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %offsets11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %offsets, ptr %offsets11, align 4
  %nr_offsets = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %nr_offsets to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %nr_offsets, align 8
  %cap = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 11
  %15 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cap, align 4
  %cap12 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %cap12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cap12, align 4
  %cfg = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12
  %cfg13 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %cfg13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cfg, ptr %cfg13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end5.if.end14_crit_edge
  %mdata15 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 5
  %19 = ptrtoint ptr %mdata15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %mdata15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_init_early_quirks(ptr nocapture noundef %ddata) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %module_pa = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  %offsets = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %arrayidx12 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %arrayidx18 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %name23 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 14
  %quirks24 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038
  %base = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %module_pa, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp2.not = icmp eq i64 %3, %conv
  br i1 %cmp2.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %rev_offset = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038, i32 2
  %4 = ptrtoint ptr %rev_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev_offset, align 4
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.not = icmp eq i32 %5, %7
  br i1 %cmp7.not, label %if.end10, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %if.end5
  %sysc_offset = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038, i32 3
  %8 = ptrtoint ptr %sysc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysc_offset, align 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.not = icmp eq i32 %9, %11
  br i1 %cmp13.not, label %if.end16, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %if.end10
  %syss_offset = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038, i32 4
  %12 = ptrtoint ptr %syss_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %syss_offset, align 4
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp19.not = icmp eq i32 %13, %15
  br i1 %cmp19.not, label %if.end22, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %name23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %name23, align 8
  %quirks = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.038, i32 7
  %19 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks, align 4
  %21 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks24, align 4
  %or = or i32 %22, %20
  store i32 %or, ptr %quirks24, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.end16.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_check_disabled_devices(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysc_soc, align 4
  %list_lock = getelementptr inbounds %struct.sysc_soc_info, ptr %0, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #12
  %1 = load ptr, ptr @sysc_soc, align 4
  %disabled_modules = getelementptr inbounds %struct.sysc_soc_info, ptr %1, i32 0, i32 3
  %module_pa = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %disabled_modules, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %disabled_modules
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %pos.0, i32 -4
  %3 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %module_pa, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %6 to i64
  %cmp = icmp eq i64 %4, %conv
  br i1 %cmp, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysc_check_disabled_devices.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysc_check_disabled_devices, %if.then9)) #12
          to label %for.end [label %if.then9], !srcloc !469

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysc_check_disabled_devices.__UNIQUE_ID_ddebug192, ptr noundef %8, ptr noundef nonnull @.str.129) #12
  br label %for.end

for.end:                                          ; preds = %if.then9, %do.body, %for.cond.for.end_crit_edge
  %error.0 = phi i32 [ -19, %if.then9 ], [ -19, %do.body ], [ 0, %for.cond.for.end_crit_edge ]
  %9 = load ptr, ptr @sysc_soc, align 4
  %list_lock12 = getelementptr inbounds %struct.sysc_soc_info, ptr %9, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock12) #12
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_get_clocks(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #12
  %clock_roles = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 7
  %4 = ptrtoint ptr %clock_roles to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %clock_roles, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.130, ptr noundef null) #12
  %call4 = tail call ptr @of_prop_next_string(ptr noundef %call3, ptr noundef null) #12
  %tobool5.not144 = icmp eq ptr %call4, null
  br i1 %tobool5.not144, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %nr_clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %nr_ick.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_ick.1, %for.body.for.body_crit_edge ]
  %nr_fck.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %name.0145 = phi ptr [ %call4, %for.body.lr.ph ], [ %call18, %for.body.for.body_crit_edge ]
  %call6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.136, ptr noundef nonnull %name.0145, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %inc = zext i1 %tobool7.not to i32
  %spec.select = add i32 %nr_fck.0146, %inc
  %call10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.137, ptr noundef nonnull %name.0145, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %inc13 = zext i1 %tobool11.not to i32
  %nr_ick.1 = add i32 %nr_ick.0147, %inc13
  %5 = ptrtoint ptr %clock_roles to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock_roles, align 4
  %7 = ptrtoint ptr %nr_clocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_clocks, align 8
  %arrayidx = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name.0145, ptr %arrayidx, align 4
  %10 = load i32, ptr %nr_clocks, align 8
  %inc17 = add i32 %10, 1
  store i32 %inc17, ptr %nr_clocks, align 8
  %call18 = tail call ptr @of_prop_next_string(ptr noundef %call3, ptr noundef nonnull %name.0145) #12
  %tobool5.not = icmp eq ptr %call18, null
  br i1 %tobool5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %nr_fck.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %nr_ick.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %nr_ick.1, %for.body.for.end_crit_edge ]
  %nr_clocks19 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 8
  %11 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_clocks19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp slt i32 %12, 1
  br i1 %cmp, label %for.end.cleanup75_crit_edge, label %if.end21

for.end.cleanup75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

if.end21:                                         ; preds = %for.end
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 4
  %and = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end28thread-pre-split, label %if.then23

if.then23:                                        ; preds = %if.end21
  %15 = tail call i32 @llvm.smax.i32(i32 %12, i32 2) #12
  %arrayidx.i = getelementptr [10 x ptr], ptr @clock_names, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddata, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = tail call ptr @of_clk_get_by_name(ptr noundef %21, ptr noundef %17) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end3.i.i, label %if.then23.sysc_init_ext_opt_clock.exit.thread125_crit_edge

if.then23.sysc_init_ext_opt_clock.exit.thread125_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_init_ext_opt_clock.exit.thread125

if.end3.i.i:                                      ; preds = %if.then23
  %call4.i.i = tail call ptr @of_get_next_available_child(ptr noundef %21, ptr noundef null) #12
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end3.i.i.cleanup75_crit_edge, label %if.end7.i.i

if.end3.i.i.cleanup75_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %22 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddata, align 8
  %call9.i.i = tail call ptr @devm_get_clk_from_child(ptr noundef %23, ptr noundef nonnull %call4.i.i, ptr noundef null) #12
  %cmp.i1.i.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i, label %sysc_init_ext_opt_clock.exit, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 24) #16
  %tobool15.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool15.not.i.i, label %if.end13.i.i.cleanup75_crit_edge, label %if.end17.i.i

if.end13.i.i.cleanup75_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

if.end17.i.i:                                     ; preds = %if.end13.i.i
  %con_id.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %con_id.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %con_id.i.i, align 4
  %26 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddata, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end17.i.i.dev_name.exit.i.i_crit_edge

if.end17.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end17.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %31, %if.end.i.i.i ], [ %29, %if.end17.i.i.dev_name.exit.i.i_crit_edge ]
  %dev_id.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i.i, ptr %dev_id.i.i, align 8
  %clk.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %clk.i.i, align 8
  tail call void @clkdev_add(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %sysc_init_ext_opt_clock.exit.thread125

sysc_init_ext_opt_clock.exit.thread125:           ; preds = %dev_name.exit.i.i, %if.then23.sysc_init_ext_opt_clock.exit.thread125_crit_edge
  %call.i.sink.i = phi ptr [ %call9.i.i, %dev_name.exit.i.i ], [ %call.i.i, %if.then23.sysc_init_ext_opt_clock.exit.thread125_crit_edge ]
  tail call void @clk_put(ptr noundef %call.i.sink.i) #12
  %34 = ptrtoint ptr %clock_roles to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clock_roles, align 4
  %arrayidx8.i = getelementptr ptr, ptr %35, i32 %15
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %17, ptr %arrayidx8.i, align 4
  %37 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_clocks19, align 8
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %nr_clocks19, align 8
  br label %if.end28

sysc_init_ext_opt_clock.exit:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %call9.i.i to i32
  br label %cleanup75

if.end28thread-pre-split:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %nr_clocks19, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %sysc_init_ext_opt_clock.exit.thread125
  %41 = phi i32 [ %.pr, %if.end28thread-pre-split ], [ %inc.i, %sysc_init_ext_opt_clock.exit.thread125 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %41)
  %cmp30 = icmp sgt i32 %41, 10
  br i1 %cmp30, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.131, ptr noundef %3) #15
  br label %cleanup75

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_fck.0.lcssa)
  %cmp34 = icmp sgt i32 %nr_fck.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_ick.0.lcssa)
  %cmp35 = icmp sgt i32 %nr_ick.0.lcssa, 1
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp35
  br i1 %or.cond, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.134, ptr noundef %3) #15
  br label %cleanup75

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_fck.0.lcssa)
  %tobool42.not = icmp eq i32 %nr_fck.0.lcssa, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %inc45 = add nsw i32 %41, 1
  %46 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc45, ptr %nr_clocks19, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ick.0.lcssa)
  %tobool47.not = icmp eq i32 %nr_ick.0.lcssa, 0
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_clocks19, align 8
  %inc50 = add i32 %48, 1
  store i32 %inc50, ptr %nr_clocks19, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46.if.end51_crit_edge
  %49 = ptrtoint ptr %nr_clocks19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_clocks19, align 8
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4) #12
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !477

devm_kcalloc.exit.thread:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %clocks129 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %53 = ptrtoint ptr %clocks129 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %clocks129, align 8
  br label %cleanup75

devm_kcalloc.exit:                                ; preds = %if.end51
  %54 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ddata, align 8
  %56 = extractvalue { i32, i1 } %51, 0
  %call5.i.i120 = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %56, i32 noundef 3520) #12
  %clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %57 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call5.i.i120, ptr %clocks, align 8
  %tobool56.not = icmp eq ptr %call5.i.i120, null
  br i1 %tobool56.not, label %devm_kcalloc.exit.cleanup75_crit_edge, label %devm_kcalloc.exit.for.body61_crit_edge

devm_kcalloc.exit.for.body61_crit_edge:           ; preds = %devm_kcalloc.exit
  br label %for.body61

devm_kcalloc.exit.cleanup75_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

for.body61:                                       ; preds = %for.inc72.for.body61_crit_edge, %devm_kcalloc.exit.for.body61_crit_edge
  %i.0152 = phi i32 [ %inc73, %for.inc72.for.body61_crit_edge ], [ 0, %devm_kcalloc.exit.for.body61_crit_edge ]
  %58 = ptrtoint ptr %clock_roles to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clock_roles, align 4
  %arrayidx64 = getelementptr ptr, ptr %59, i32 %i.0152
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %61, null
  br i1 %tobool65.not, label %for.body61.for.inc72_crit_edge, label %if.end67

for.body61.for.inc72_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

if.end67:                                         ; preds = %for.body61
  %call.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.136, ptr noundef nonnull %61, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end67.if.end13.i_crit_edge, label %if.end4.i

if.end67.if.end13.i_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end4.i:                                        ; preds = %if.end67
  %call1.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.137, ptr noundef nonnull %61, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i.if.end13.i_crit_edge, label %for.cond.preheader.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  %62 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clocks, align 8
  %arrayidx.i121 = getelementptr ptr, ptr %63, i32 2
  %64 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i121, align 4
  %tobool7.not.i = icmp eq ptr %65, null
  br i1 %tobool7.not.i, label %for.cond.preheader.i.if.end13.i_crit_edge, label %for.inc.i

for.cond.preheader.i.if.end13.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %arrayidx.1.i = getelementptr ptr, ptr %63, i32 3
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool7.not.1.i = icmp eq ptr %67, null
  br i1 %tobool7.not.1.i, label %for.inc.i.if.end13.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end13.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr ptr, ptr %63, i32 4
  %68 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool7.not.2.i = icmp eq ptr %69, null
  br i1 %tobool7.not.2.i, label %for.inc.1.i.if.end13.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end13.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr ptr, ptr %63, i32 5
  %70 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool7.not.3.i = icmp eq ptr %71, null
  br i1 %tobool7.not.3.i, label %for.inc.2.i.if.end13.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end13.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr ptr, ptr %63, i32 6
  %72 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool7.not.4.i = icmp eq ptr %73, null
  br i1 %tobool7.not.4.i, label %for.inc.3.i.if.end13.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end13.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr ptr, ptr %63, i32 7
  %74 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool7.not.5.i = icmp eq ptr %75, null
  br i1 %tobool7.not.5.i, label %for.inc.4.i.if.end13.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end13.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr ptr, ptr %63, i32 8
  %76 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool7.not.6.i = icmp eq ptr %77, null
  br i1 %tobool7.not.6.i, label %for.inc.5.i.if.end13.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end13.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr ptr, ptr %63, i32 9
  %78 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool7.not.7.i = icmp eq ptr %79, null
  br i1 %tobool7.not.7.i, label %for.inc.6.i.if.end13.i_crit_edge, label %do.end.i

for.inc.6.i.if.end13.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

do.end.i:                                         ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.146, ptr noundef nonnull %61) #15
  br label %cleanup75

if.end13.i:                                       ; preds = %for.inc.6.i.if.end13.i_crit_edge, %for.inc.5.i.if.end13.i_crit_edge, %for.inc.4.i.if.end13.i_crit_edge, %for.inc.3.i.if.end13.i_crit_edge, %for.inc.2.i.if.end13.i_crit_edge, %for.inc.1.i.if.end13.i_crit_edge, %for.inc.i.if.end13.i_crit_edge, %for.cond.preheader.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge, %if.end67.if.end13.i_crit_edge
  %index.176.i = phi i32 [ 0, %if.end67.if.end13.i_crit_edge ], [ 9, %for.inc.6.i.if.end13.i_crit_edge ], [ 8, %for.inc.5.i.if.end13.i_crit_edge ], [ 7, %for.inc.4.i.if.end13.i_crit_edge ], [ 6, %for.inc.3.i.if.end13.i_crit_edge ], [ 5, %for.inc.2.i.if.end13.i_crit_edge ], [ 4, %for.inc.1.i.if.end13.i_crit_edge ], [ 3, %for.inc.i.if.end13.i_crit_edge ], [ 2, %for.cond.preheader.i.if.end13.i_crit_edge ], [ 1, %if.end4.i.if.end13.i_crit_edge ]
  %82 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ddata, align 8
  %call15.i = tail call ptr @devm_clk_get(ptr noundef %83, ptr noundef nonnull %61) #12
  %84 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clocks, align 8
  %arrayidx17.i = getelementptr ptr, ptr %85, i32 %index.176.i
  %86 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call15.i, ptr %arrayidx17.i, align 4
  %87 = load ptr, ptr %clocks, align 8
  %arrayidx19.i = getelementptr ptr, ptr %87, i32 %index.176.i
  %88 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx19.i, align 4
  %cmp.i.i = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sysc_get_one_clock.exit, label %if.end32.i

if.end32.i:                                       ; preds = %if.end13.i
  %call35.i = tail call i32 @clk_prepare(ptr noundef %89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end32.i.for.inc72_crit_edge, label %do.end40.i

if.end32.i.for.inc72_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

do.end40.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.152, ptr noundef nonnull %61, i32 noundef %call35.i) #15
  br label %cleanup75

sysc_get_one_clock.exit:                          ; preds = %if.end13.i
  %92 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ddata, align 8
  %94 = ptrtoint ptr %89 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.149, ptr noundef nonnull %61, i32 noundef %94) #15
  %95 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clocks, align 8
  %arrayidx30.i = getelementptr ptr, ptr %96, i32 %index.176.i
  %97 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx30.i, align 4
  %tobool69.not = icmp eq ptr %98, null
  br i1 %tobool69.not, label %sysc_get_one_clock.exit.for.inc72_crit_edge, label %cleanup75.loopexit.split.loop.exit149

sysc_get_one_clock.exit.for.inc72_crit_edge:      ; preds = %sysc_get_one_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

for.inc72:                                        ; preds = %sysc_get_one_clock.exit.for.inc72_crit_edge, %if.end32.i.for.inc72_crit_edge, %for.body61.for.inc72_crit_edge
  %inc73 = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc73, 10
  br i1 %exitcond.not, label %for.inc72.cleanup75_crit_edge, label %for.inc72.for.body61_crit_edge

for.inc72.for.body61_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61

for.inc72.cleanup75_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup75

cleanup75.loopexit.split.loop.exit149:            ; preds = %sysc_get_one_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %98 to i32
  br label %cleanup75

cleanup75:                                        ; preds = %cleanup75.loopexit.split.loop.exit149, %for.inc72.cleanup75_crit_edge, %do.end40.i, %do.end.i, %devm_kcalloc.exit.cleanup75_crit_edge, %devm_kcalloc.exit.thread, %do.end39, %do.end, %sysc_init_ext_opt_clock.exit, %if.end13.i.i.cleanup75_crit_edge, %if.end3.i.i.cleanup75_crit_edge, %for.end.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ -12, %entry.cleanup75_crit_edge ], [ 0, %for.end.cleanup75_crit_edge ], [ %39, %sysc_init_ext_opt_clock.exit ], [ -12, %devm_kcalloc.exit.cleanup75_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -19, %if.end3.i.i.cleanup75_crit_edge ], [ -12, %if.end13.i.i.cleanup75_crit_edge ], [ %call35.i, %do.end40.i ], [ -19, %do.end.i ], [ %99, %cleanup75.loopexit.split.loop.exit149 ], [ 0, %for.inc72.cleanup75_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_resets(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef nonnull @.str.154, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %rsts = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 9
  %2 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rsts, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_init_module(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %init_clockdomain.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %init_clockdomain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_clockdomain.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %nr_clocks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 8
  %6 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_clocks.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %7, label %if.end.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.end.i.sw.bb2.i_crit_edge
    i32 0, label %if.end.i.if.end_crit_edge
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.sw.bb2.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %clocks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %9 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clocks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb2.i_crit_edge
  %ick.0.i = phi ptr [ null, %if.end.i.sw.bb2.i_crit_edge ], [ %12, %sw.bb.i ]
  %clocks3.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %13 = ptrtoint ptr %clocks3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clocks3.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %fck.0.i = phi ptr [ null, %if.end.i.sw.epilog.i_crit_edge ], [ %16, %sw.bb2.i ]
  %ick.1.i = phi ptr [ null, %if.end.i.sw.epilog.i_crit_edge ], [ %ick.0.i, %sw.bb2.i ]
  %cookie.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 13
  %call8.i = tail call i32 %5(ptr noundef %1, ptr noundef %fck.0.i, ptr noundef %ick.1.i, ptr noundef %cookie.i) #12
  %17 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call8.i, label %sw.epilog.i.cleanup_crit_edge [
    i32 0, label %sw.epilog.i.if.end_crit_edge
    i32 -19, label %sw.epilog.i.if.end_crit_edge198
  ]

sw.epilog.i.if.end_crit_edge198:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.i.if.end_crit_edge, %sw.epilog.i.if.end_crit_edge198, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %legacy_mode.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 10
  %18 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i105 = icmp eq ptr %19, null
  br i1 %tobool.not.i105, label %lor.lhs.false.i107, label %if.end.sysc_clkdm_deny_idle.exit_crit_edge

if.end.sysc_clkdm_deny_idle.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

lor.lhs.false.i107:                               ; preds = %if.end
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %20 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i106 = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i106, label %if.end.i109, label %lor.lhs.false.i107.sysc_clkdm_deny_idle.exit_crit_edge

lor.lhs.false.i107.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %lor.lhs.false.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.end.i109:                                      ; preds = %lor.lhs.false.i107
  %22 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddata, align 8
  %platform_data.i.i108 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %platform_data.i.i108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data.i.i108, align 8
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %if.end.i109.sysc_clkdm_deny_idle.exit_crit_edge, label %land.lhs.true.i

if.end.i109.sysc_clkdm_deny_idle.exit_crit_edge:  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

land.lhs.true.i:                                  ; preds = %if.end.i109
  %clkdm_deny_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %clkdm_deny_idle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkdm_deny_idle.i, align 4
  %tobool3.not.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, label %if.then4.i

land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_deny_idle.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i110 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 13
  tail call void %27(ptr noundef %23, ptr noundef %cookie.i110) #12
  br label %sysc_clkdm_deny_idle.exit

sysc_clkdm_deny_idle.exit:                        ; preds = %if.then4.i, %land.lhs.true.i.sysc_clkdm_deny_idle.exit_crit_edge, %if.end.i109.sysc_clkdm_deny_idle.exit_crit_edge, %lor.lhs.false.i107.sysc_clkdm_deny_idle.exit_crit_edge, %if.end.sysc_clkdm_deny_idle.exit_crit_edge
  %call1 = tail call fastcc i32 @sysc_enable_opt_clocks(ptr noundef %ddata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %sysc_clkdm_deny_idle.exit.cleanup_crit_edge

sysc_clkdm_deny_idle.exit.cleanup_crit_edge:      ; preds = %sysc_clkdm_deny_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %sysc_clkdm_deny_idle.exit
  %clocks.i111 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %28 = ptrtoint ptr %clocks.i111 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clocks.i111, align 8
  %tobool.not.i112 = icmp eq ptr %29, null
  br i1 %tobool.not.i112, label %if.end4.if.end8_crit_edge, label %for.body.preheader.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body.preheader.i:                             ; preds = %if.end4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  %cmp.i.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.preheader.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.for.inc.i_crit_edge, label %if.end3.i.if.then48_crit_edge

if.end3.i.if.then48_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %clocks.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clocks.i111, align 8
  %arrayidx.1.i = getelementptr ptr, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %35, null
  %cmp.i.1.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i.1.i
  br i1 %spec.select.i.1.i, label %for.inc.i.if.end8_crit_edge, label %if.end3.1.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end3.1.i:                                      ; preds = %for.inc.i
  %call4.1.i = tail call i32 @clk_enable(ptr noundef nonnull %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1.i)
  %tobool5.not.1.i = icmp eq i32 %call4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.end3.1.i.if.end8_crit_edge, label %for.body10.i

if.end3.1.i.if.end8_crit_edge:                    ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body10.i:                                     ; preds = %if.end3.1.i
  %36 = ptrtoint ptr %clocks.i111 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clocks.i111, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.not.i33.i = icmp eq ptr %39, null
  %cmp.i34.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %spec.select.i35.i = or i1 %tobool.not.i33.i, %cmp.i34.i
  br i1 %spec.select.i35.i, label %for.body10.i.if.then48_crit_edge, label %for.body10.i.if.then48.sink.split_crit_edge

for.body10.i.if.then48.sink.split_crit_edge:      ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48.sink.split

for.body10.i.if.then48_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.end8:                                          ; preds = %if.end3.1.i.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %40 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quirks, align 4
  %and = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %rsts = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 9
  %42 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rsts, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.if.then45_crit_edge

if.then10.if.then45_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %44 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp slt i32 %45, 0
  br i1 %cmp.i, label %if.end15.sysc_read_revision.exit_crit_edge, label %if.end.i115

if.end15.sysc_read_revision.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_revision.exit

if.end.i115:                                      ; preds = %if.end15
  %46 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quirks, align 4
  %and.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i114 = icmp eq i32 %and.i.i, 0
  %module_va17.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %48 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %49, i32 %45
  br i1 %tobool.not.i.i114, label %if.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i115
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #12, !srcloc !470
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #12
  %conv.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.i116 = icmp sgt i32 %53, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %45)
  %cmp4.i.i = icmp eq i32 %53, %45
  %or.cond.i.i = and i1 %cmp.i.i116, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.then.i.i.sysc_read_revision.exit_crit_edge

if.then.i.i.sysc_read_revision.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_revision.exit

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %55, i32 %45
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #12, !srcloc !470
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #12
  %conv14.i.i = zext i16 %57 to i32
  %shl.i.i = shl nuw i32 %conv14.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %sysc_read_revision.exit

if.end15.i.i:                                     ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #12, !srcloc !471
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  br label %sysc_read_revision.exit

sysc_read_revision.exit:                          ; preds = %if.end15.i.i, %if.then6.i.i, %if.then.i.i.sysc_read_revision.exit_crit_edge, %if.end15.sysc_read_revision.exit_crit_edge
  %retval.0.i117 = phi i32 [ 0, %if.end15.sysc_read_revision.exit_crit_edge ], [ %59, %if.end15.i.i ], [ %or.i.i, %if.then6.i.i ], [ %conv.i.i, %if.then.i.i.sysc_read_revision.exit_crit_edge ]
  %revision = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 15
  %60 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i117, ptr %revision, align 4
  %module_pa.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  %arrayidx10.i = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %arrayidx16.i = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %name31.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i125.for.body.i_crit_edge, %sysc_read_revision.exit
  %i.055.i = phi i32 [ 0, %sysc_read_revision.exit ], [ %inc.i, %for.inc.i125.for.body.i_crit_edge ]
  %arrayidx.i119 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i
  %base.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 1
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i120 = icmp eq i32 %62, 0
  br i1 %tobool.not.i120, label %for.body.i.if.end.i122_crit_edge, label %land.lhs.true.i121

for.body.i.if.end.i122_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i122

land.lhs.true.i121:                               ; preds = %for.body.i
  %conv.i = zext i32 %62 to i64
  %63 = ptrtoint ptr %module_pa.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %module_pa.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %conv.i)
  %cmp2.not.i = icmp eq i64 %64, %conv.i
  br i1 %cmp2.not.i, label %land.lhs.true.i121.if.end.i122_crit_edge, label %land.lhs.true.i121.for.inc.i125_crit_edge

land.lhs.true.i121.for.inc.i125_crit_edge:        ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i125

land.lhs.true.i121.if.end.i122_crit_edge:         ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i122

if.end.i122:                                      ; preds = %land.lhs.true.i121.if.end.i122_crit_edge, %for.body.i.if.end.i122_crit_edge
  %rev_offset.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 2
  %65 = ptrtoint ptr %rev_offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rev_offset.i, align 4
  %67 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp5.not.i = icmp eq i32 %66, %68
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i122.for.inc.i125_crit_edge

if.end.i122.for.inc.i125_crit_edge:               ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i125

if.end8.i:                                        ; preds = %if.end.i122
  %sysc_offset.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 3
  %69 = ptrtoint ptr %sysc_offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sysc_offset.i, align 4
  %71 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp11.not.i = icmp eq i32 %70, %72
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end8.i.for.inc.i125_crit_edge

if.end8.i.for.inc.i125_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i125

if.end14.i:                                       ; preds = %if.end8.i
  %syss_offset.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 4
  %73 = ptrtoint ptr %syss_offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syss_offset.i, align 4
  %75 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx16.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp17.not.i = icmp eq i32 %74, %76
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end14.i.for.inc.i125_crit_edge

if.end14.i.for.inc.i125_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i125

if.end20.i:                                       ; preds = %if.end14.i
  %revision.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 5
  %77 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %retval.0.i117)
  %cmp22.i = icmp eq i32 %78, %retval.0.i117
  br i1 %cmp22.i, label %if.end20.i.if.then30.i_crit_edge, label %lor.lhs.false.i123

if.end20.i.if.then30.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

lor.lhs.false.i123:                               ; preds = %if.end20.i
  %revision_mask.i = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 6
  %79 = ptrtoint ptr %revision_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %revision_mask.i, align 4
  %81 = xor i32 %78, %retval.0.i117
  %82 = and i32 %80, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp28.i = icmp eq i32 %82, 0
  br i1 %cmp28.i, label %lor.lhs.false.i123.if.then30.i_crit_edge, label %lor.lhs.false.i123.for.inc.i125_crit_edge

lor.lhs.false.i123.for.inc.i125_crit_edge:        ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i125

lor.lhs.false.i123.if.then30.i_crit_edge:         ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

if.then30.i:                                      ; preds = %lor.lhs.false.i123.if.then30.i_crit_edge, %if.end20.i.if.then30.i_crit_edge
  %83 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i119, align 4
  %85 = ptrtoint ptr %name31.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %name31.i, align 8
  %quirks.i124 = getelementptr [37 x %struct.sysc_revision_quirk], ptr @sysc_revision_quirks, i32 0, i32 %i.055.i, i32 7
  %86 = ptrtoint ptr %quirks.i124 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %quirks.i124, align 4
  %88 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %quirks, align 4
  %or.i = or i32 %89, %87
  store i32 %or.i, ptr %quirks, align 4
  br label %for.inc.i125

for.inc.i125:                                     ; preds = %if.then30.i, %lor.lhs.false.i123.for.inc.i125_crit_edge, %if.end14.i.for.inc.i125_crit_edge, %if.end8.i.for.inc.i125_crit_edge, %if.end.i122.for.inc.i125_crit_edge, %land.lhs.true.i121.for.inc.i125_crit_edge
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 37
  br i1 %exitcond.not.i, label %sysc_init_revision_quirks.exit, label %for.inc.i125.for.body.i_crit_edge

for.inc.i125.for.body.i_crit_edge:                ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sysc_init_revision_quirks.exit:                   ; preds = %for.inc.i125
  %90 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i127 = icmp eq ptr %91, null
  br i1 %tobool.not.i127, label %lor.lhs.false.i129, label %if.then18

lor.lhs.false.i129:                               ; preds = %sysc_init_revision_quirks.exit
  %92 = ptrtoint ptr %name31.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name31.i, align 8
  %tobool1.not.i128 = icmp eq ptr %93, null
  br i1 %tobool1.not.i128, label %lor.lhs.false.i129.if.then26_crit_edge, label %if.end.i133

lor.lhs.false.i129.if.then26_crit_edge:           ; preds = %lor.lhs.false.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.end.i133:                                      ; preds = %lor.lhs.false.i129
  %94 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %quirks, align 4
  %and.i131 = and i32 %95, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool2.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool2.not.i132, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #14
  %pre_reset_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 19
  %96 = ptrtoint ptr %pre_reset_quirk.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @sysc_pre_reset_quirk_hdq1w, ptr %pre_reset_quirk.i, align 4
  br label %if.end23

if.end4.i:                                        ; preds = %if.end.i133
  %and7.i = and i32 %95, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end12.i135, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i134 = or i32 %95, 32
  %97 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i134, ptr %quirks, align 4
  br label %if.end23

if.end12.i135:                                    ; preds = %if.end4.i
  %and15.i = and i32 %95, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i135
  call void @__sanitizer_cov_trace_pc() #14
  %pre_reset_quirk18.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 19
  %98 = ptrtoint ptr %pre_reset_quirk18.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @sysc_pre_reset_quirk_i2c, ptr %pre_reset_quirk18.i, align 4
  %post_reset_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 20
  %99 = ptrtoint ptr %post_reset_quirk.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @sysc_post_reset_quirk_i2c, ptr %post_reset_quirk.i, align 8
  br label %if.end23

if.end19.i:                                       ; preds = %if.end12.i135
  %and22.i = and i32 %95, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then24.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_enable_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 22
  %100 = ptrtoint ptr %module_enable_quirk.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @sysc_module_enable_quirk_aess, ptr %module_enable_quirk.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end19.i.if.end25.i_crit_edge
  %and28.i = and i32 %95, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end25.i.if.end32.i_crit_edge, label %if.then30.i136

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then30.i136:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %pre_reset_quirk31.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 19
  %101 = ptrtoint ptr %pre_reset_quirk31.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @sysc_pre_reset_quirk_dss, ptr %pre_reset_quirk31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i136, %if.end25.i.if.end32.i_crit_edge
  %and35.i = and i32 %95, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_unlock_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 24
  %102 = ptrtoint ptr %module_unlock_quirk.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @sysc_module_unlock_quirk_rtc, ptr %module_unlock_quirk.i, align 8
  %module_lock_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 25
  %103 = ptrtoint ptr %module_lock_quirk.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @sysc_module_lock_quirk_rtc, ptr %module_lock_quirk.i, align 4
  br label %if.end23

if.end38.i:                                       ; preds = %if.end32.i
  %and41.i = and i32 %95, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end38.i.if.end45.i_crit_edge, label %if.then43.i

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_enable_quirk44.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 22
  %104 = ptrtoint ptr %module_enable_quirk44.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sysc_module_enable_quirk_otg, ptr %module_enable_quirk44.i, align 8
  %module_disable_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 23
  %105 = ptrtoint ptr %module_disable_quirk.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @sysc_module_disable_quirk_otg, ptr %module_disable_quirk.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.end38.i.if.end45.i_crit_edge
  %and48.i = and i32 %95, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end45.i.if.end52.i_crit_edge, label %if.then50.i

if.end45.i.if.end52.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_enable_quirk51.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 22
  %106 = ptrtoint ptr %module_enable_quirk51.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @sysc_module_enable_quirk_sgx, ptr %module_enable_quirk51.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end45.i.if.end52.i_crit_edge
  %and55.i = and i32 %95, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end52.i.if.end59.i_crit_edge, label %if.then57.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %reset_done_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 21
  %107 = ptrtoint ptr %reset_done_quirk.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @sysc_reset_done_quirk_wdt, ptr %reset_done_quirk.i, align 4
  %module_disable_quirk58.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 23
  %108 = ptrtoint ptr %module_disable_quirk58.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @sysc_reset_done_quirk_wdt, ptr %module_disable_quirk58.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end52.i.if.end59.i_crit_edge
  %and62.i = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end59.i.if.end23_crit_edge, label %if.then64.i

if.end59.i.if.end23_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_disable_quirk65.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 23
  %109 = ptrtoint ptr %module_disable_quirk65.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @sysc_module_disable_quirk_pruss, ptr %module_disable_quirk65.i, align 4
  br label %if.end23

if.then18:                                        ; preds = %sysc_init_revision_quirks.exit
  %110 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ddata, align 8
  %platform_data.i.i137 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %platform_data.i.i137 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %platform_data.i.i137, align 8
  %tobool.not.i138 = icmp eq ptr %113, null
  br i1 %tobool.not.i138, label %if.then18.if.end23_crit_edge, label %lor.lhs.false.i140

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

lor.lhs.false.i140:                               ; preds = %if.then18
  %init_module.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %init_module.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_module.i, align 4
  %tobool1.not.i139 = icmp eq ptr %115, null
  br i1 %tobool1.not.i139, label %lor.lhs.false.i140.if.end23_crit_edge, label %if.end.i144

lor.lhs.false.i140.if.end23_crit_edge:            ; preds = %lor.lhs.false.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i144:                                      ; preds = %lor.lhs.false.i140
  %mdata.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 5
  %116 = ptrtoint ptr %mdata.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mdata.i, align 4
  %cookie.i141 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 13
  %call4.i142 = tail call i32 %115(ptr noundef %111, ptr noundef %117, ptr noundef %cookie.i141) #12
  %118 = zext i32 %call4.i142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %call4.i142, label %if.end.i144.if.then45_crit_edge [
    i32 -17, label %if.end.i144.if.end23_crit_edge
    i32 0, label %if.end.i144.if.end23_crit_edge199
  ]

if.end.i144.if.end23_crit_edge199:                ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i144.if.end23_crit_edge:                   ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i144.if.then45_crit_edge:                  ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.end23:                                         ; preds = %if.end.i144.if.end23_crit_edge, %if.end.i144.if.end23_crit_edge199, %lor.lhs.false.i140.if.end23_crit_edge, %if.then18.if.end23_crit_edge, %if.then64.i, %if.end59.i.if.end23_crit_edge, %if.then37.i, %if.then17.i, %if.then9.i, %if.then3.i
  %119 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr = load ptr, ptr %legacy_mode.i, align 8
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %if.end23.if.then26_crit_edge, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %lor.lhs.false.i129.if.then26_crit_edge
  %120 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ddata, align 8
  %call27 = tail call fastcc i32 @sysc_enable_module(ptr noundef %121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.if.then45_crit_edge

if.then26.if.then45_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %call32 = tail call fastcc i32 @sysc_reset(ptr noundef %ddata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %do.end

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end31
  %122 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.155, i32 noundef %call32) #15
  %124 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %legacy_mode.i, align 8
  %tobool39.not = icmp eq ptr %125, null
  br i1 %tobool39.not, label %if.then40, label %do.end.if.then45_crit_edge

do.end.if.then45_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ddata, align 8
  %call42 = tail call fastcc i32 @sysc_disable_module(ptr noundef %127)
  br label %if.then45

if.then45:                                        ; preds = %if.then40, %do.end.if.then45_crit_edge, %if.then26.if.then45_crit_edge, %if.end.i144.if.then45_crit_edge, %if.then10.if.then45_crit_edge
  %error.0182 = phi i32 [ %call11, %if.then10.if.then45_crit_edge ], [ %call27, %if.then26.if.then45_crit_edge ], [ %call32, %if.then40 ], [ %call32, %do.end.if.then45_crit_edge ], [ %call4.i142, %if.end.i144.if.then45_crit_edge ]
  %rstctrl_deasserted.1.off0181 = phi i1 [ false, %if.then10.if.then45_crit_edge ], [ %tobool9.not, %if.then26.if.then45_crit_edge ], [ %tobool9.not, %if.then40 ], [ %tobool9.not, %do.end.if.then45_crit_edge ], [ %tobool9.not, %if.end.i144.if.then45_crit_edge ]
  %128 = ptrtoint ptr %clocks.i111 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %clocks.i111, align 8
  %tobool.not.i147 = icmp eq ptr %129, null
  br i1 %tobool.not.i147, label %if.then45.if.then48_crit_edge, label %for.body.preheader.i151

if.then45.if.then48_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

for.body.preheader.i151:                          ; preds = %if.then45
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %tobool.not.i.i148 = icmp eq ptr %131, null
  %cmp.i.i149 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i150 = or i1 %tobool.not.i.i148, %cmp.i.i149
  br i1 %spec.select.i.i150, label %for.body.preheader.i151.for.inc.i157_crit_edge, label %if.end3.i152

for.body.preheader.i151.for.inc.i157_crit_edge:   ; preds = %for.body.preheader.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i157

if.end3.i152:                                     ; preds = %for.body.preheader.i151
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %131) #12
  br label %for.inc.i157

for.inc.i157:                                     ; preds = %if.end3.i152, %for.body.preheader.i151.for.inc.i157_crit_edge
  %132 = ptrtoint ptr %clocks.i111 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clocks.i111, align 8
  %arrayidx.1.i153 = getelementptr ptr, ptr %133, i32 1
  %134 = ptrtoint ptr %arrayidx.1.i153 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.1.i153, align 4
  %tobool.not.i.1.i154 = icmp eq ptr %135, null
  %cmp.i.1.i155 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i156 = or i1 %tobool.not.i.1.i154, %cmp.i.1.i155
  br i1 %spec.select.i.1.i156, label %for.inc.i157.if.then48_crit_edge, label %for.inc.i157.if.then48.sink.split_crit_edge

for.inc.i157.if.then48.sink.split_crit_edge:      ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48.sink.split

for.inc.i157.if.then48_crit_edge:                 ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48.sink.split:                             ; preds = %for.inc.i157.if.then48.sink.split_crit_edge, %for.body10.i.if.then48.sink.split_crit_edge
  %.sink = phi ptr [ %39, %for.body10.i.if.then48.sink.split_crit_edge ], [ %135, %for.inc.i157.if.then48.sink.split_crit_edge ]
  %error.1191.ph = phi i32 [ %call4.1.i, %for.body10.i.if.then48.sink.split_crit_edge ], [ %error.0182, %for.inc.i157.if.then48.sink.split_crit_edge ]
  %rstctrl_deasserted.2.off0190.ph = phi i1 [ false, %for.body10.i.if.then48.sink.split_crit_edge ], [ %rstctrl_deasserted.1.off0181, %for.inc.i157.if.then48.sink.split_crit_edge ]
  tail call void @clk_disable(ptr noundef nonnull %.sink) #12
  br label %if.then48

if.then48:                                        ; preds = %if.then48.sink.split, %for.inc.i157.if.then48_crit_edge, %if.then45.if.then48_crit_edge, %for.body10.i.if.then48_crit_edge, %if.end3.i.if.then48_crit_edge
  %error.1191 = phi i32 [ %call4.i, %if.end3.i.if.then48_crit_edge ], [ %call4.1.i, %for.body10.i.if.then48_crit_edge ], [ %error.0182, %for.inc.i157.if.then48_crit_edge ], [ %error.0182, %if.then45.if.then48_crit_edge ], [ %error.1191.ph, %if.then48.sink.split ]
  %rstctrl_deasserted.2.off0190 = phi i1 [ false, %if.end3.i.if.then48_crit_edge ], [ false, %for.body10.i.if.then48_crit_edge ], [ %rstctrl_deasserted.1.off0181, %for.inc.i157.if.then48_crit_edge ], [ %rstctrl_deasserted.1.off0181, %if.then45.if.then48_crit_edge ], [ %rstctrl_deasserted.2.off0190.ph, %if.then48.sink.split ]
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %ddata)
  %136 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i160 = icmp eq ptr %137, null
  br i1 %tobool.not.i160, label %lor.lhs.false.i164, label %if.then48.sysc_clkdm_allow_idle.exit_crit_edge

if.then48.sysc_clkdm_allow_idle.exit_crit_edge:   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

lor.lhs.false.i164:                               ; preds = %if.then48
  %quirks.i161 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %138 = ptrtoint ptr %quirks.i161 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %quirks.i161, align 4
  %and.i162 = and i32 %139, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool1.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool1.not.i163, label %if.end.i167, label %lor.lhs.false.i164.sysc_clkdm_allow_idle.exit_crit_edge

lor.lhs.false.i164.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %lor.lhs.false.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

if.end.i167:                                      ; preds = %lor.lhs.false.i164
  %140 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ddata, align 8
  %platform_data.i.i165 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %platform_data.i.i165 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %platform_data.i.i165, align 8
  %tobool2.not.i166 = icmp eq ptr %143, null
  br i1 %tobool2.not.i166, label %if.end.i167.sysc_clkdm_allow_idle.exit_crit_edge, label %land.lhs.true.i169

if.end.i167.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

land.lhs.true.i169:                               ; preds = %if.end.i167
  %clkdm_allow_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %clkdm_allow_idle.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clkdm_allow_idle.i, align 4
  %tobool3.not.i168 = icmp eq ptr %145, null
  br i1 %tobool3.not.i168, label %land.lhs.true.i169.sysc_clkdm_allow_idle.exit_crit_edge, label %if.then4.i171

land.lhs.true.i169.sysc_clkdm_allow_idle.exit_crit_edge: ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clkdm_allow_idle.exit

if.then4.i171:                                    ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i170 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 13
  tail call void %145(ptr noundef %141, ptr noundef %cookie.i170) #12
  br label %sysc_clkdm_allow_idle.exit

sysc_clkdm_allow_idle.exit:                       ; preds = %if.then4.i171, %land.lhs.true.i169.sysc_clkdm_allow_idle.exit_crit_edge, %if.end.i167.sysc_clkdm_allow_idle.exit_crit_edge, %lor.lhs.false.i164.sysc_clkdm_allow_idle.exit_crit_edge, %if.then48.sysc_clkdm_allow_idle.exit_crit_edge
  br i1 %rstctrl_deasserted.2.off0190, label %land.lhs.true53, label %sysc_clkdm_allow_idle.exit.cleanup_crit_edge

sysc_clkdm_allow_idle.exit.cleanup_crit_edge:     ; preds = %sysc_clkdm_allow_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true53:                                  ; preds = %sysc_clkdm_allow_idle.exit
  %quirks55 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %146 = ptrtoint ptr %quirks55 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %quirks55, align 4
  %and56 = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  %rsts59 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 9
  %148 = ptrtoint ptr %rsts59 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rsts59, align 4
  %call60 = tail call i32 @reset_control_assert(ptr noundef %149) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %land.lhs.true53.cleanup_crit_edge, %sysc_clkdm_allow_idle.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %sysc_clkdm_deny_idle.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sysc_clkdm_deny_idle.exit.cleanup_crit_edge ], [ %error.1191, %if.then58 ], [ %error.1191, %land.lhs.true53.cleanup_crit_edge ], [ %error.1191, %sysc_clkdm_allow_idle.exit.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call8.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !481
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !482
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !483
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_show_registers(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [128 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %arrayidx.i = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 978206976, ptr %buf, align 4
  br label %sysc_show_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.170, i32 noundef %2) #12
  br label %sysc_show_reg.exit

sysc_show_reg.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i21 = phi i32 [ 3, %if.then.i ], [ %call3.i, %if.end.i ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %retval.0.i21
  %arrayidx.i.1 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.1 = icmp slt i32 %5, 0
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %sysc_show_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.170, i32 noundef %5) #12
  br label %sysc_show_reg.exit.1

if.then.i.1:                                      ; preds = %sysc_show_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 978206976, ptr %add.ptr, align 1
  br label %sysc_show_reg.exit.1

sysc_show_reg.exit.1:                             ; preds = %if.then.i.1, %if.end.i.1
  %retval.0.i21.1 = phi i32 [ 3, %if.then.i.1 ], [ %call3.i.1, %if.end.i.1 ]
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i21.1
  %arrayidx.i.2 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.2 = icmp slt i32 %8, 0
  br i1 %cmp.i.2, label %if.then.i.2, label %if.end.i.2

if.end.i.2:                                       ; preds = %sysc_show_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.170, i32 noundef %8) #12
  br label %sysc_show_reg.exit.2

if.then.i.2:                                      ; preds = %sysc_show_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 978206976, ptr %add.ptr.1, align 1
  br label %sysc_show_reg.exit.2

sysc_show_reg.exit.2:                             ; preds = %if.then.i.2, %if.end.i.2
  %retval.0.i21.2 = phi i32 [ 3, %if.then.i.2 ], [ %call3.i.2, %if.end.i.2 ]
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %retval.0.i21.2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i22 = icmp slt i32 %11, 0
  br i1 %cmp.i22, label %if.then.i23, label %if.end.i24

if.then.i23:                                      ; preds = %sysc_show_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 978206976, ptr %add.ptr.2, align 1
  br label %sysc_show_rev.exit

if.end.i24:                                       ; preds = %sysc_show_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %revision.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 15
  %13 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revision.i, align 4
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.171, i32 noundef %14) #12
  br label %sysc_show_rev.exit

sysc_show_rev.exit:                               ; preds = %if.end.i24, %if.then.i23
  %retval.0.i25 = phi i32 [ 3, %if.then.i23 ], [ %call1.i, %if.end.i24 ]
  %name.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 14
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sysc_show_rev.exit.sysc_show_name.exit_crit_edge, label %if.end.i26

sysc_show_rev.exit.sysc_show_name.exit_crit_edge: ; preds = %sysc_show_rev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_show_name.exit

if.end.i26:                                       ; preds = %sysc_show_rev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2 = getelementptr i8, ptr %add.ptr.2, i32 %retval.0.i25
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.172, ptr noundef nonnull %16) #12
  br label %sysc_show_name.exit

sysc_show_name.exit:                              ; preds = %if.end.i26, %sysc_show_rev.exit.sysc_show_name.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysc_show_registers.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysc_show_registers, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !469

if.then:                                          ; preds = %sysc_show_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddata, align 8
  %module_pa = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  %19 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %module_pa, align 8
  %module_size = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 2
  %21 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %module_size, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysc_show_registers.__UNIQUE_ID_ddebug188, ptr noundef %18, ptr noundef nonnull @.str.168, i64 noundef %20, i32 noundef %22, ptr noundef nonnull %buf) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %sysc_show_name.exit
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sysc_idle(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %quirks = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %clocks.i = getelementptr i8, ptr %work, i32 -64
  %2 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.sysc_disable_main_clocks.exit_crit_edge, label %for.body.preheader.i

if.then.sysc_disable_main_clocks.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_disable_main_clocks.exit

for.body.preheader.i:                             ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %5) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.preheader.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks.i, align 8
  %arrayidx.1.i = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %9, null
  %cmp.i.1.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i.1.i
  br i1 %spec.select.i.1.i, label %for.inc.i.sysc_disable_main_clocks.exit_crit_edge, label %if.end3.1.i

for.inc.i.sysc_disable_main_clocks.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_disable_main_clocks.exit

if.end3.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %9) #12
  br label %sysc_disable_main_clocks.exit

sysc_disable_main_clocks.exit:                    ; preds = %if.end3.1.i, %for.inc.i.sysc_disable_main_clocks.exit_crit_edge, %if.then.sysc_disable_main_clocks.exit_crit_edge
  tail call fastcc void @sysc_disable_opt_clocks(ptr noundef %add.ptr)
  %legacy_mode.i = getelementptr i8, ptr %work, i32 -48
  %10 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %legacy_mode.i, align 8
  %tobool.not.i17 = icmp eq ptr %11, null
  br i1 %tobool.not.i17, label %lor.lhs.false.i, label %sysc_disable_main_clocks.exit.if.end_crit_edge

sysc_disable_main_clocks.exit.if.end_crit_edge:   ; preds = %sysc_disable_main_clocks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %sysc_disable_main_clocks.exit
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and.i = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i.i, align 8
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %clkdm_allow_idle.i = getelementptr inbounds %struct.ti_sysc_platform_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %clkdm_allow_idle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clkdm_allow_idle.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then4.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cookie.i = getelementptr i8, ptr %work, i32 -24
  tail call void %19(ptr noundef %15, ptr noundef %cookie.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %sysc_disable_main_clocks.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and3 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 18
  %24 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %if.end6.if.then7_crit_edge, label %pm_runtime_active.exit

if.end6.if.then7_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

pm_runtime_active.exit:                           ; preds = %if.end6
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 15
  %26 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then7_crit_edge, label %pm_runtime_active.exit.cleanup_crit_edge

pm_runtime_active.exit.cleanup_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pm_runtime_active.exit.if.then7_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %pm_runtime_active.exit.if.then7_crit_edge, %if.end6.if.then7_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %pm_runtime_active.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_add_restored(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ddata, ptr %call7.i.i, align 8
  %2 = load ptr, ptr @sysc_soc, align 4
  %list_lock = getelementptr inbounds %struct.sysc_soc_info, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #12
  %node = getelementptr inbounds %struct.sysc_module, ptr %call7.i.i, i32 0, i32 1
  %3 = load ptr, ptr @sysc_soc, align 4
  %restored_modules = getelementptr inbounds %struct.sysc_soc_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %restored_modules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restored_modules, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %restored_modules, ptr noundef %5) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sysc_module, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %restored_modules, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %restored_modules to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %restored_modules, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %10 = load ptr, ptr @sysc_soc, align 4
  %nb = getelementptr inbounds %struct.sysc_soc_info, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nb, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %if.end4, label %list_add.exit.out_unlock_crit_edge

list_add.exit.out_unlock_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end4:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sysc_context_notifier, ptr %nb, align 4
  %call8 = tail call i32 @cpu_pm_register_notifier(ptr noundef %nb) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %list_add.exit.out_unlock_crit_edge
  %14 = load ptr, ptr @sysc_soc, align 4
  %list_lock9 = getelementptr inbounds %struct.sysc_soc_info, ptr %14, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %list_lock9) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_unprepare(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.preheader.for.inc_crit_edge, label %if.then2

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %5) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.preheader.for.inc_crit_edge
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 8
  %arrayidx.1 = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %9, null
  %cmp.i.1 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %9) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %10 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clocks, align 8
  %arrayidx.2 = getelementptr ptr, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %13, null
  %cmp.i.2 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %13) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %14 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks, align 8
  %arrayidx.3 = getelementptr ptr, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %17, null
  %cmp.i.3 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %17) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %18 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clocks, align 8
  %arrayidx.4 = getelementptr ptr, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %21, null
  %cmp.i.4 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.4 = or i1 %tobool.not.i.4, %cmp.i.4
  br i1 %spec.select.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then2.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %21) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %22 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clocks, align 8
  %arrayidx.5 = getelementptr ptr, ptr %23, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %25, null
  %cmp.i.5 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.5 = or i1 %tobool.not.i.5, %cmp.i.5
  br i1 %spec.select.i.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then2.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %25) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then2.5, %for.inc.4.for.inc.5_crit_edge
  %26 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clocks, align 8
  %arrayidx.6 = getelementptr ptr, ptr %27, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.i.6 = icmp eq ptr %29, null
  %cmp.i.6 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %spec.select.i.6 = or i1 %tobool.not.i.6, %cmp.i.6
  br i1 %spec.select.i.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then2.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then2.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %29) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then2.6, %for.inc.5.for.inc.6_crit_edge
  %30 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clocks, align 8
  %arrayidx.7 = getelementptr ptr, ptr %31, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.i.7 = icmp eq ptr %33, null
  %cmp.i.7 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %spec.select.i.7 = or i1 %tobool.not.i.7, %cmp.i.7
  br i1 %spec.select.i.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then2.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then2.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %33) #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then2.7, %for.inc.6.for.inc.7_crit_edge
  %34 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clocks, align 8
  %arrayidx.8 = getelementptr ptr, ptr %35, i32 8
  %36 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.i.8 = icmp eq ptr %37, null
  %cmp.i.8 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i.8 = or i1 %tobool.not.i.8, %cmp.i.8
  br i1 %spec.select.i.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then2.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

if.then2.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %37) #12
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then2.8, %for.inc.7.for.inc.8_crit_edge
  %38 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clocks, align 8
  %arrayidx.9 = getelementptr ptr, ptr %39, i32 9
  %40 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.i.9 = icmp eq ptr %41, null
  %cmp.i.9 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %spec.select.i.9 = or i1 %tobool.not.i.9, %cmp.i.9
  br i1 %spec.select.i.9, label %for.inc.8.cleanup_crit_edge, label %if.then2.9

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %41) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2.9, %for.inc.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_check_registers(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %module_size = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 2
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %entry.for.inc24_crit_edge, label %if.end

entry.for.inc24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %module_size, align 8
  %sub = add i32 %3, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp4 = icmp ugt i32 %1, %sub
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %for.body9.preheader

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body9.preheader:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp12 = icmp sgt i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp19 = icmp eq i32 %1, %5
  %narrow = select i1 %cmp12, i1 %cmp19, i1 false
  %spec.select = zext i1 %narrow to i32
  %arrayidx11.1 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp12.1 = icmp sgt i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp19.1 = icmp eq i32 %1, %7
  %narrow.1 = select i1 %cmp12.1, i1 %cmp19.1, i1 false
  %spec.select.1 = zext i1 %narrow.1 to i32
  %nr_matches.2.1 = add nuw nsw i32 %spec.select, %spec.select.1
  %arrayidx11.2 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp12.2 = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp19.2 = icmp eq i32 %1, %9
  %narrow.2 = select i1 %cmp12.2, i1 %cmp19.2, i1 false
  %spec.select.2 = zext i1 %narrow.2 to i32
  %nr_matches.2.2 = add nuw nsw i32 %nr_matches.2.1, %spec.select.2
  br label %for.inc24

do.end:                                           ; preds = %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge
  %10 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.96) #15
  br label %cleanup

for.inc24:                                        ; preds = %for.body9.preheader, %entry.for.inc24_crit_edge
  %nr_regs.1 = phi i32 [ 0, %entry.for.inc24_crit_edge ], [ 1, %for.body9.preheader ]
  %nr_matches.3 = phi i32 [ 0, %entry.for.inc24_crit_edge ], [ %nr_matches.2.2, %for.body9.preheader ]
  %arrayidx.1 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.1 = icmp slt i32 %13, 0
  br i1 %cmp1.1, label %for.inc24.for.inc24.1_crit_edge, label %if.end.1

for.inc24.for.inc24.1_crit_edge:                  ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.1

if.end.1:                                         ; preds = %for.inc24
  %14 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %module_size, align 8
  %sub.1 = add i32 %15, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub.1)
  %cmp4.1 = icmp ugt i32 %13, %sub.1
  br i1 %cmp4.1, label %if.end.1.do.end_crit_edge, label %for.body9.preheader.1

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body9.preheader.1:                            ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp12.164 = icmp sgt i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp19.165 = icmp eq i32 %13, %17
  %narrow.166 = select i1 %cmp12.164, i1 %cmp19.165, i1 false
  %spec.select.167 = zext i1 %narrow.166 to i32
  %nr_matches.2.168 = add nuw nsw i32 %nr_matches.3, %spec.select.167
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp12.1.1 = icmp sgt i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp19.1.1 = icmp eq i32 %13, %19
  %narrow.1.1 = select i1 %cmp12.1.1, i1 %cmp19.1.1, i1 false
  %spec.select.1.1 = zext i1 %narrow.1.1 to i32
  %nr_matches.2.1.1 = add nuw nsw i32 %nr_matches.2.168, %spec.select.1.1
  %arrayidx11.2.1 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx11.2.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp12.2.1 = icmp sgt i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %cmp19.2.1 = icmp eq i32 %13, %21
  %narrow.2.1 = select i1 %cmp12.2.1, i1 %cmp19.2.1, i1 false
  %spec.select.2.1 = zext i1 %narrow.2.1 to i32
  %nr_matches.2.2.1 = add nuw nsw i32 %nr_matches.2.1.1, %spec.select.2.1
  %inc23.1 = add nuw nsw i32 %nr_regs.1, 1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.body9.preheader.1, %for.inc24.for.inc24.1_crit_edge
  %nr_regs.1.1 = phi i32 [ %nr_regs.1, %for.inc24.for.inc24.1_crit_edge ], [ %inc23.1, %for.body9.preheader.1 ]
  %nr_matches.3.1 = phi i32 [ %nr_matches.3, %for.inc24.for.inc24.1_crit_edge ], [ %nr_matches.2.2.1, %for.body9.preheader.1 ]
  %arrayidx.2 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.2 = icmp slt i32 %23, 0
  br i1 %cmp1.2, label %for.inc24.1.for.inc24.2_crit_edge, label %if.end.2

for.inc24.1.for.inc24.2_crit_edge:                ; preds = %for.inc24.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.2

if.end.2:                                         ; preds = %for.inc24.1
  %24 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %module_size, align 8
  %sub.2 = add i32 %25, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub.2)
  %cmp4.2 = icmp ugt i32 %23, %sub.2
  br i1 %cmp4.2, label %if.end.2.do.end_crit_edge, label %for.body9.preheader.2

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body9.preheader.2:                            ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp12.270 = icmp sgt i32 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp19.271 = icmp eq i32 %23, %27
  %narrow.272 = select i1 %cmp12.270, i1 %cmp19.271, i1 false
  %spec.select.273 = zext i1 %narrow.272 to i32
  %nr_matches.2.274 = add nuw nsw i32 %nr_matches.3.1, %spec.select.273
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp12.1.2 = icmp sgt i32 %29, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %29)
  %cmp19.1.2 = icmp eq i32 %23, %29
  %narrow.1.2 = select i1 %cmp12.1.2, i1 %cmp19.1.2, i1 false
  %spec.select.1.2 = zext i1 %narrow.1.2 to i32
  %nr_matches.2.1.2 = add nuw nsw i32 %nr_matches.2.274, %spec.select.1.2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp12.2.2 = icmp sgt i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %31)
  %cmp19.2.2 = icmp eq i32 %23, %31
  %narrow.2.2 = select i1 %cmp12.2.2, i1 %cmp19.2.2, i1 false
  %spec.select.2.2 = zext i1 %narrow.2.2 to i32
  %nr_matches.2.2.2 = add nuw nsw i32 %nr_matches.2.1.2, %spec.select.2.2
  %inc23.2 = add nuw nsw i32 %nr_regs.1.1, 1
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.body9.preheader.2, %for.inc24.1.for.inc24.2_crit_edge
  %nr_regs.1.2 = phi i32 [ %nr_regs.1.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %inc23.2, %for.body9.preheader.2 ]
  %nr_matches.3.2 = phi i32 [ %nr_matches.3.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %nr_matches.2.2.2, %for.body9.preheader.2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_matches.3.2, i32 %nr_regs.1.2)
  %cmp27 = icmp ugt i32 %nr_matches.3.2, %nr_regs.1.2
  br i1 %cmp27, label %do.end31, label %for.inc24.2.cleanup_crit_edge

for.inc24.2.cleanup_crit_edge:                    ; preds = %for.inc24.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end31:                                         ; preds = %for.inc24.2
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.99, i32 noundef %nr_regs.1.2, i32 noundef %nr_matches.3.2) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %for.inc24.2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end31 ], [ 0, %for.inc24.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_reset(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %legacy_mode = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 10
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %legacy_mode, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cap = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 11
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cap, align 4
  %regbits = getelementptr inbounds %struct.sysc_capabilities, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbits, align 4
  %srst_shift = getelementptr inbounds %struct.sysc_regbits, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %srst_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %srst_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp slt i8 %9, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %conv68 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv68
  %pre_reset_quirk = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 19
  %12 = ptrtoint ptr %pre_reset_quirk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_reset_quirk, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %ddata) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp12 = icmp sgt i32 %1, -1
  br i1 %cmp12, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.then14.sysc_read_sysconfig.exit_crit_edge, label %if.end.i

if.then14.sysc_read_sysconfig.exit_crit_edge:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysconfig.exit

if.end.i:                                         ; preds = %if.then14
  %16 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks, align 4
  %and.i.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %module_va17.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %18 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %19, i32 %15
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #12, !srcloc !470
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #12
  %conv.i.i = zext i16 %21 to i32
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %22 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.i = icmp sgt i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp4.i.i = icmp eq i32 %23, %15
  %or.cond.i.i = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.then.i.i.sysc_read_sysconfig.exit_crit_edge

if.then.i.i.sysc_read_sysconfig.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read_sysconfig.exit

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %25, i32 %15
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #12, !srcloc !470
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  %conv14.i.i = zext i16 %27 to i32
  %shl.i.i = shl nuw i32 %conv14.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %sysc_read_sysconfig.exit

if.end15.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #12, !srcloc !471
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  br label %sysc_read_sysconfig.exit

sysc_read_sysconfig.exit:                         ; preds = %if.end15.i.i, %if.then6.i.i, %if.then.i.i.sysc_read_sysconfig.exit_crit_edge, %if.then14.sysc_read_sysconfig.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then14.sysc_read_sysconfig.exit_crit_edge ], [ %29, %if.end15.i.i ], [ %or.i.i, %if.then6.i.i ], [ %conv.i.i, %if.then.i.i.sysc_read_sysconfig.exit_crit_edge ]
  %or = or i32 %retval.0.i, %shl
  %30 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks, align 4
  %and.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %sysc_read_sysconfig.exit
  %conv.i = trunc i32 %or to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %module_va.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %33 = ptrtoint ptr %module_va.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %module_va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %32) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %35 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i69 = icmp sgt i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %1)
  %cmp5.i = icmp eq i32 %36, %1
  %or.cond.i = and i1 %cmp.i69, %cmp5.i
  br i1 %or.cond.i, label %if.then7.i, label %if.then.i.if.end15_crit_edge

if.then.i.if.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %or, 16
  %conv8.i = trunc i32 %shr.i to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #12
  %38 = ptrtoint ptr %module_va.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module_va.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %39, i32 %1
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %37) #12, !srcloc !472
  br label %if.end15

if.end12.i:                                       ; preds = %sysc_read_sysconfig.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %41 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %42, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %40) #12, !srcloc !473
  br label %if.end15

if.end15:                                         ; preds = %if.end12.i, %if.then7.i, %if.then.i.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %srst_udelay = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 4
  %43 = ptrtoint ptr %srst_udelay to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %srst_udelay, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool17.not = icmp eq i8 %44, 0
  br i1 %tobool17.not, label %if.end15.if.end25_crit_edge, label %if.then18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv21 = zext i8 %44 to i32
  %mul = shl nuw nsw i32 %conv21, 1
  tail call void @usleep_range_state(i32 noundef %conv21, i32 noundef %mul, i32 noundef 2) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end15.if.end25_crit_edge
  %post_reset_quirk = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 20
  %45 = ptrtoint ptr %post_reset_quirk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %post_reset_quirk, align 8
  %tobool26.not = icmp eq ptr %46, null
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %46(ptr noundef %ddata) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %call30 = tail call fastcc i32 @sysc_wait_softreset(ptr noundef %ddata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %do.end

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.30) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end29.if.end33_crit_edge
  %reset_done_quirk = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 21
  %49 = ptrtoint ptr %reset_done_quirk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reset_done_quirk, align 4
  %tobool34.not = icmp eq ptr %50, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %50(ptr noundef %ddata) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call30, %if.then35 ], [ %call30, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_hdq1w(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %3, i32 12
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  %conv.i = zext i16 %5 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %6 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp4.i = icmp eq i32 %7, 12
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.sysc_read.exit_crit_edge

if.then.i.sysc_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module_va17.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  br label %sysc_read.exit

if.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  br label %sysc_read.exit

sysc_read.exit:                                   ; preds = %if.end15.i, %if.then6.i, %if.then.i.sysc_read.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.end15.i ], [ %conv.i, %if.then6.i ], [ %conv.i, %if.then.i.sysc_read.exit_crit_edge ]
  %conv2 = and i32 %retval.0.i, 65503
  %conv3 = or i32 %conv2, 32
  %13 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks.i, align 4
  %and.i8 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %if.end12.i, label %if.then.i13

if.then.i13:                                      ; preds = %sysc_read.exit
  %conv.i10 = trunc i32 %conv3 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i10) #12
  %16 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %15) #12, !srcloc !472
  %offsets.i11 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %18 = ptrtoint ptr %offsets.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %cmp5.i = icmp eq i32 %19, 12
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i13.sysc_write.exit_crit_edge

if.then.i13.sysc_write.exit_crit_edge:            ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %module_va17.i, align 4
  %add.ptr11.i15 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i15, i16 0) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %sysc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv3) #12
  %23 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %22) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i13.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_i2c(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %revision.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 15
  %0 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision.i, align 4
  %and.i = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031616, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 2031616
  %..i = select i1 %cmp.i, i32 36, i32 164
  %quirks.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %module_va17.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %4 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %5, i32 %..i
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #12, !srcloc !470
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv.i.i = zext i16 %7 to i32
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %..i)
  %cmp4.i.i = icmp eq i32 %9, %..i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.then.i.i.sysc_read.exit.i_crit_edge

if.then.i.i.sysc_read.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %11, i32 %..i
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #12, !srcloc !470
  br label %sysc_read.exit.i

if.end15.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #12, !srcloc !471
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  br label %sysc_read.exit.i

sysc_read.exit.i:                                 ; preds = %if.end15.i.i, %if.then6.i.i, %if.then.i.i.sysc_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end15.i.i ], [ %conv.i.i, %if.then6.i.i ], [ %conv.i.i, %if.then.i.i.sysc_read.exit.i_crit_edge ]
  %conv2.i = and i32 %retval.0.i.i, 32767
  %15 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks.i.i, align 4
  %and.i16.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.end12.i.i, label %if.then.i22.i

if.then.i22.i:                                    ; preds = %sysc_read.exit.i
  %conv.i18.i = trunc i32 %conv2.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i18.i) #12
  %18 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %..i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %17) #12, !srcloc !472
  %offsets.i19.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %20 = ptrtoint ptr %offsets.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i20.i = icmp sgt i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %..i)
  %cmp5.i.i = icmp eq i32 %21, %..i
  %or.cond.i21.i = and i1 %cmp.i20.i, %cmp5.i.i
  br i1 %or.cond.i21.i, label %if.then7.i.i, label %if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge

if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge:  ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clk_quirk_i2c.exit

if.then7.i.i:                                     ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i23.i = getelementptr i8, ptr %23, i32 %..i
  %add.ptr11.i24.i = getelementptr i8, ptr %add.ptr10.i23.i, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i24.i, i16 0) #12, !srcloc !472
  br label %sysc_clk_quirk_i2c.exit

if.end12.i.i:                                     ; preds = %sysc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv2.i) #12
  %25 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %26, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %24) #12, !srcloc !473
  br label %sysc_clk_quirk_i2c.exit

sysc_clk_quirk_i2c.exit:                          ; preds = %if.end12.i.i, %if.then7.i.i, %if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_post_reset_quirk_i2c(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %revision.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 15
  %0 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision.i, align 4
  %and.i = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031616, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 2031616
  %..i = select i1 %cmp.i, i32 36, i32 164
  %quirks.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %module_va17.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %4 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %5, i32 %..i
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #12, !srcloc !470
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv.i.i = zext i16 %7 to i32
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %..i)
  %cmp4.i.i = icmp eq i32 %9, %..i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.then.i.i.sysc_read.exit.i_crit_edge

if.then.i.i.sysc_read.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %11, i32 %..i
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #12, !srcloc !470
  br label %sysc_read.exit.i

if.end15.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #12, !srcloc !471
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  br label %sysc_read.exit.i

sysc_read.exit.i:                                 ; preds = %if.end15.i.i, %if.then6.i.i, %if.then.i.i.sysc_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end15.i.i ], [ %conv.i.i, %if.then6.i.i ], [ %conv.i.i, %if.then.i.i.sysc_read.exit.i_crit_edge ]
  %conv2.i = and i32 %retval.0.i.i, 32767
  %or.i = or i32 %conv2.i, 32768
  %15 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks.i.i, align 4
  %and.i16.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.end12.i.i, label %if.then.i22.i

if.then.i22.i:                                    ; preds = %sysc_read.exit.i
  %conv.i18.i = trunc i32 %or.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i18.i) #12
  %18 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %..i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %17) #12, !srcloc !472
  %offsets.i19.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %20 = ptrtoint ptr %offsets.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i20.i = icmp sgt i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %..i)
  %cmp5.i.i = icmp eq i32 %21, %..i
  %or.cond.i21.i = and i1 %cmp.i20.i, %cmp5.i.i
  br i1 %or.cond.i21.i, label %if.then7.i.i, label %if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge

if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge:  ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_clk_quirk_i2c.exit

if.then7.i.i:                                     ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i23.i = getelementptr i8, ptr %23, i32 %..i
  %add.ptr11.i24.i = getelementptr i8, ptr %add.ptr10.i23.i, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i24.i, i16 0) #12, !srcloc !472
  br label %sysc_clk_quirk_i2c.exit

if.end12.i.i:                                     ; preds = %sysc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %25 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %26, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %24) #12, !srcloc !473
  br label %sysc_clk_quirk_i2c.exit

sysc_clk_quirk_i2c.exit:                          ; preds = %if.end12.i.i, %if.then7.i.i, %if.then.i22.i.sysc_clk_quirk_i2c.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_aess(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 124
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 256) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %4 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %5)
  %cmp5.i = icmp eq i32 %5, 124
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module_va13.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 16777216) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_pre_reset_quirk_dss(ptr noundef %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysc_quirk_dispc(ptr noundef %ddata, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %conv.i = trunc i32 %call to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %module_va.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %3 = ptrtoint ptr %module_va.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module_va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %5 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4120, i32 %6)
  %cmp5.i = icmp eq i32 %6, 4120
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %call, 16
  %conv8.i = trunc i32 %shr.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #12
  %8 = ptrtoint ptr %module_va.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module_va.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %9, i32 4124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %7) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %call) #12
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %11 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %12, i32 4120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %10) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  %13 = tail call fastcc i32 @sysc_quirk_dispc(ptr noundef %ddata, i1 noundef zeroext true)
  %call2 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call2, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1874) #12
  %module_va = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %14 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %module_va, align 4
  %add.ptr12120 = getelementptr i8, ptr %15, i32 4120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12120) #12, !srcloc !471
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call)
  %cmp15.not121 = icmp eq i32 %17, %call
  br i1 %cmp15.not121, label %sysc_write.exit.land.lhs.true_crit_edge, label %sysc_write.exit.for.end_crit_edge

sysc_write.exit.for.end_crit_edge:                ; preds = %sysc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sysc_write.exit.land.lhs.true_crit_edge:          ; preds = %sysc_write.exit
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %sysc_write.exit.land.lhs.true_crit_edge
  %call19 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then22, label %if.then33

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module_va, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 4120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #12, !srcloc !471
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  br label %for.end

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #12
  %22 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %module_va, align 4
  %add.ptr12 = getelementptr i8, ptr %23, i32 4120
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #12, !srcloc !471
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  %cmp15.not = icmp eq i32 %25, %call
  br i1 %cmp15.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.for.end_crit_edge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.end:                                          ; preds = %if.then33.for.end_crit_edge, %if.then22, %sysc_write.exit.for.end_crit_edge
  %val.0 = phi i32 [ %21, %if.then22 ], [ %17, %sysc_write.exit.for.end_crit_edge ], [ %25, %if.then33.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %call)
  %cmp36.not = icmp eq i32 %val.0, %call
  br i1 %cmp36.not, label %do.end41, label %for.end.if.end42_crit_edge

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef %call, i32 noundef %call) #15
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %for.end.if.end42_crit_edge
  %28 = load ptr, ptr @sysc_soc, align 4
  %soc = getelementptr inbounds %struct.sysc_soc_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp43 = icmp eq i32 %30, 3
  br i1 %cmp43, label %if.then44, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  %31 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks.i, align 4
  %and.i69 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  %33 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %module_va, align 4
  %add.ptr14.i81 = getelementptr i8, ptr %34, i32 68
  br i1 %tobool.not.i70, label %if.end12.i82, label %if.then.i76

if.then.i76:                                      ; preds = %if.then44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i81, i16 0) #12, !srcloc !472
  %offsets.i73 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %35 = ptrtoint ptr %offsets.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets.i73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %36)
  %cmp5.i75 = icmp eq i32 %36, 68
  br i1 %cmp5.i75, label %if.then7.i79, label %if.then.i76.sysc_write.exit83_crit_edge

if.then.i76.sysc_write.exit83_crit_edge:          ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit83

if.then7.i79:                                     ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %module_va, align 4
  %add.ptr11.i78 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i78, i16 0) #12, !srcloc !472
  br label %sysc_write.exit83

if.end12.i82:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i81, i32 0) #12, !srcloc !473
  br label %sysc_write.exit83

sysc_write.exit83:                                ; preds = %if.end12.i82, %if.then7.i79, %if.then.i76.sysc_write.exit83_crit_edge
  %39 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirks.i, align 4
  %and.i85 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  %41 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module_va, align 4
  %add.ptr14.i97 = getelementptr i8, ptr %42, i32 72
  br i1 %tobool.not.i86, label %if.end12.i98, label %if.then.i92

if.then.i92:                                      ; preds = %sysc_write.exit83
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i97, i16 0) #12, !srcloc !472
  %offsets.i89 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %43 = ptrtoint ptr %offsets.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offsets.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %44)
  %cmp5.i91 = icmp eq i32 %44, 72
  br i1 %cmp5.i91, label %if.then7.i95, label %if.then.i92.if.end45_crit_edge

if.then.i92.if.end45_crit_edge:                   ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then7.i95:                                     ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %module_va, align 4
  %add.ptr11.i94 = getelementptr i8, ptr %46, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i94, i16 0) #12, !srcloc !472
  br label %if.end45

if.end12.i98:                                     ; preds = %sysc_write.exit83
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i97, i32 0) #12, !srcloc !473
  br label %if.end45

if.end45:                                         ; preds = %if.end12.i98, %if.then7.i95, %if.then.i92.if.end45_crit_edge, %if.end42.if.end45_crit_edge
  %47 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks.i, align 4
  %and.i101 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  %49 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %module_va, align 4
  %add.ptr14.i113 = getelementptr i8, ptr %50, i32 64
  br i1 %tobool.not.i102, label %if.end12.i114, label %if.then.i108

if.then.i108:                                     ; preds = %if.end45
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i113, i16 0) #12, !srcloc !472
  %offsets.i105 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %51 = ptrtoint ptr %offsets.i105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offsets.i105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %52)
  %cmp5.i107 = icmp eq i32 %52, 64
  br i1 %cmp5.i107, label %if.then7.i111, label %if.then.i108.cleanup_crit_edge

if.then.i108.cleanup_crit_edge:                   ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i111:                                    ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %module_va, align 4
  %add.ptr11.i110 = getelementptr i8, ptr %54, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i110, i16 0) #12, !srcloc !472
  br label %cleanup

if.end12.i114:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i113, i32 0) #12, !srcloc !473
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i114, %if.then7.i111, %if.then.i108.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_unlock_quirk_rtc(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sysc_quirk_rtc(ptr noundef %ddata, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_lock_quirk_rtc(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sysc_quirk_rtc(ptr noundef %ddata, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_otg(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 1044
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 0) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %4 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1044, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1044
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module_va13.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 1048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_disable_quirk_otg(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 1044
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 256) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %4 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1044, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1044
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module_va13.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 1048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 16777216) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_enable_quirk_sgx(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 65288
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 0) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %4 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65288, i32 %5)
  %cmp5.i = icmp eq i32 %5, 65288
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module_va13.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 65292
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 128) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 128) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_reset_done_quirk_wdt(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va13.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %2 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_va13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 72
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 -21846) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %4 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %5)
  %cmp5.i = icmp eq i32 %5, 72
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %module_va13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module_va13.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 -1431699456) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2012) #12
  %module_va = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %8 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module_va, align 4
  %add.ptr150 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #12, !srcloc !471
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  %and151 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool.not152 = icmp eq i32 %and151, 0
  br i1 %tobool.not152, label %sysc_write.exit.for.end_crit_edge, label %sysc_write.exit.land.lhs.true_crit_edge

sysc_write.exit.land.lhs.true_crit_edge:          ; preds = %sysc_write.exit
  br label %land.lhs.true

sysc_write.exit.for.end_crit_edge:                ; preds = %sysc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %sysc_write.exit.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module_va, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !471
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !487
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #12
  %16 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %module_va, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !471
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  %and = and i32 %19, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %sysc_write.exit.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then16 ], [ %11, %sysc_write.exit.for.end_crit_edge ], [ %19, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %val.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.161) #15
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge
  %22 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks.i, align 4
  %and.i123 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.not.i124 = icmp eq i32 %and.i123, 0
  %24 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module_va, align 4
  %add.ptr14.i135 = getelementptr i8, ptr %25, i32 72
  br i1 %tobool.not.i124, label %if.end12.i136, label %if.then.i130

if.then.i130:                                     ; preds = %if.end36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i135, i16 21845) #12, !srcloc !472
  %offsets.i127 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %26 = ptrtoint ptr %offsets.i127 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets.i127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %27)
  %cmp5.i129 = icmp eq i32 %27, 72
  br i1 %cmp5.i129, label %if.then7.i133, label %if.then.i130.sysc_write.exit137_crit_edge

if.then.i130.sysc_write.exit137_crit_edge:        ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit137

if.then7.i133:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %module_va, align 4
  %add.ptr11.i132 = getelementptr i8, ptr %29, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i132, i16 0) #12, !srcloc !472
  br label %sysc_write.exit137

if.end12.i136:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i135, i32 1431633920) #12, !srcloc !473
  br label %sysc_write.exit137

sysc_write.exit137:                               ; preds = %if.end12.i136, %if.then7.i133, %if.then.i130.sysc_write.exit137_crit_edge
  %call40 = tail call i64 @ktime_get() #12
  %add.i138 = add i64 %call40, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2019) #12
  %30 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %module_va, align 4
  %add.ptr58153 = getelementptr i8, ptr %31, i32 52
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58153) #12, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  %33 = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool63.not155 = icmp eq i32 %33, 0
  br i1 %tobool63.not155, label %sysc_write.exit137.if.end97_crit_edge, label %sysc_write.exit137.land.lhs.true67_crit_edge

sysc_write.exit137.land.lhs.true67_crit_edge:     ; preds = %sysc_write.exit137
  br label %land.lhs.true67

sysc_write.exit137.if.end97_crit_edge:            ; preds = %sysc_write.exit137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.lhs.true67:                                  ; preds = %if.then81.land.lhs.true67_crit_edge, %sysc_write.exit137.land.lhs.true67_crit_edge
  %call68 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call68, i64 %add.i138)
  %cmp3.i140 = icmp sgt i64 %call68, %add.i138
  br i1 %cmp3.i140, label %for.end85, label %if.then81

if.then81:                                        ; preds = %land.lhs.true67
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #12
  %34 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %module_va, align 4
  %add.ptr58 = getelementptr i8, ptr %35, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #12, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  %37 = and i32 %36, 268435456
  %tobool63.not = icmp eq i32 %37, 0
  br i1 %tobool63.not, label %if.then81.if.end97_crit_edge, label %if.then81.land.lhs.true67_crit_edge

if.then81.land.lhs.true67_crit_edge:              ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true67

if.then81.if.end97_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

for.end85:                                        ; preds = %land.lhs.true67
  %38 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module_va, align 4
  %add.ptr75 = getelementptr i8, ptr %39, i32 52
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #12, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !489
  %41 = and i32 %40, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool88.not = icmp eq i32 %41, 0
  br i1 %tobool88.not, label %for.end85.if.end97_crit_edge, label %do.end95

for.end85.if.end97_crit_edge:                     ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end95:                                         ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.164) #15
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %for.end85.if.end97_crit_edge, %if.then81.if.end97_crit_edge, %sysc_write.exit137.if.end97_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysc_module_disable_quirk_pruss(ptr nocapture noundef readonly %ddata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %module_va17.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %4 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module_va17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %5, i32 %1
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv.i = zext i16 %7 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp4.i = icmp eq i32 %9, %1
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.sysc_read.exit_crit_edge

if.then.i.sysc_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %1
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #12
  %conv14.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %sysc_read.exit

if.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %sysc_read.exit

sysc_read.exit:                                   ; preds = %if.end15.i, %if.then6.i, %if.then.i.sysc_read.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.sysc_read.exit_crit_edge ]
  %or = or i32 %retval.0.i, 16
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i, align 4
  %and.i8 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %if.end12.i, label %if.then.i14

if.then.i14:                                      ; preds = %sysc_read.exit
  %conv.i10 = trunc i32 %or to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv.i10) #12
  %21 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %module_va17.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %20) #12, !srcloc !472
  %offsets.i11 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %23 = ptrtoint ptr %offsets.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offsets.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i12 = icmp sgt i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %17)
  %cmp5.i = icmp eq i32 %24, %17
  %or.cond.i13 = and i1 %cmp.i12, %cmp5.i
  br i1 %or.cond.i13, label %if.then7.i, label %if.then.i14.sysc_write.exit_crit_edge

if.then.i14.sysc_write.exit_crit_edge:            ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %retval.0.i, 16
  %conv8.i = trunc i32 %shr.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #12
  %26 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module_va17.i, align 4
  %add.ptr10.i15 = getelementptr i8, ptr %27, i32 %17
  %add.ptr11.i16 = getelementptr i8, ptr %add.ptr10.i15, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i16, i16 %25) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %sysc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %29 = ptrtoint ptr %module_va17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %module_va17.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %30, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %28) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i14.sysc_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_quirk_dispc(ptr noundef %ddata, i1 noundef zeroext %disable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysc_soc, align 4
  %soc = getelementptr inbounds %struct.sysc_soc_info, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %soc, align 4
  %switch.tableidx = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 11
  br i1 %3, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1791, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %switch.tableidx to i11
  %switch.downshift = lshr i11 783, %switch.cast
  %5 = and i11 %switch.downshift, 1
  %6 = sext i11 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %switch.masked.not = icmp eq i11 %5, 0
  %switch.cast90 = trunc i32 %switch.tableidx to i11
  %switch.downshift92 = lshr i11 895, %switch.cast90
  %7 = and i11 %switch.downshift92, 1
  %8 = sext i11 %7 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.masked93.not = icmp eq i11 %7, 0
  %switch.cast94 = trunc i32 %switch.tableidx to i11
  %switch.downshift96 = lshr i11 -784, %switch.cast94
  %9 = and i11 %switch.downshift96, 1
  %10 = sext i11 %9 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.masked97.not = icmp eq i11 %9, 0
  %11 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddata, align 8
  %module_va = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %13 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module_va, align 4
  tail call void @devm_iounmap(ptr noundef %12, ptr noundef %14) #12
  %15 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddata, align 8
  %module_pa = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 1
  %17 = ptrtoint ptr %module_pa to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %module_pa, align 8
  %conv = trunc i64 %18 to i32
  %module_size = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 2
  %19 = ptrtoint ptr %module_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %module_size, align 8
  %call = tail call ptr @devm_ioremap(ptr noundef %16, i32 noundef %conv, i32 noundef %20) #12
  %21 = ptrtoint ptr %module_va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %module_va, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %22 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.ptr18.i = getelementptr i8, ptr %call, i32 4160
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #12, !srcloc !470
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #12
  %conv.i = zext i16 %25 to i32
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %26 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %27)
  %cmp4.i = icmp eq i32 %27, 4160
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.sysc_read.exit_crit_edge

if.then.i.sysc_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %module_va, align 4
  %add.ptr11.i = getelementptr i8, ptr %29, i32 4164
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #12, !srcloc !470
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #12
  %conv14.i = zext i16 %31 to i32
  %shl.i = shl nuw i32 %conv14.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %sysc_read.exit

if.end15.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !471
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  br label %sysc_read.exit

sysc_read.exit:                                   ; preds = %if.end15.i, %if.then6.i, %if.then.i.sysc_read.exit_crit_edge
  %retval.0.i = phi i32 [ %33, %if.end15.i ], [ %or.i, %if.then6.i ], [ %conv.i, %if.then.i.sysc_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  %and11 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %sysc_read.exit.if.end24_crit_edge, label %if.then18

sysc_read.exit.if.end24_crit_edge:                ; preds = %sysc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %sysc_read.exit
  br i1 %switch.masked97.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %or21 = or i32 %and, 16777216
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %or22 = or i32 %and, 12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20, %sysc_read.exit.if.end24_crit_edge
  %irq_mask.1 = phi i32 [ %or21, %if.then20 ], [ %or22, %if.else ], [ %and, %sysc_read.exit.if.end24_crit_edge ]
  %conv26 = zext i1 %disable to i32
  %and11.lobit = lshr exact i32 %and11, 1
  %or31 = or i32 %and11.lobit, %retval.0.i
  %and32 = and i32 %or31, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end24.if.end37_crit_edge, label %if.then34

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %if.end24
  %and36 = and i32 %retval.0.i, -4
  %34 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks.i, align 4
  %and.i6 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %if.end12.i, label %if.then.i11

if.then.i11:                                      ; preds = %if.then34
  %conv.i8 = trunc i32 %and36 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv.i8) #12
  %37 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %module_va, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %36) #12, !srcloc !472
  %offsets.i9 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %39 = ptrtoint ptr %offsets.i9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offsets.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %40)
  %cmp5.i = icmp eq i32 %40, 4160
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i11.if.end37_crit_edge

if.then.i11.if.end37_crit_edge:                   ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then7.i:                                       ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %retval.0.i, 16
  %conv8.i = trunc i32 %shr.i to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #12
  %42 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %module_va, align 4
  %add.ptr11.i13 = getelementptr i8, ptr %43, i32 4164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i13, i16 %41) #12, !srcloc !472
  br label %if.end37

if.end12.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %44 = tail call i32 @llvm.bswap.i32(i32 %and36) #12
  %45 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %module_va, align 4
  %add.ptr14.i = getelementptr i8, ptr %46, i32 4160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %44) #12, !srcloc !473
  br label %if.end37

if.end37:                                         ; preds = %if.end12.i, %if.then7.i, %if.then.i11.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  br i1 %switch.masked.not, label %if.end40, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %47 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks.i, align 4
  %and.i15 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  %49 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %module_va, align 4
  %add.ptr18.i18 = getelementptr i8, ptr %50, i32 4664
  br i1 %tobool.not.i16, label %if.end15.i30, label %if.then.i23

if.then.i23:                                      ; preds = %if.end40
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i18) #12, !srcloc !470
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #12
  %conv.i19 = zext i16 %52 to i32
  %offsets.i20 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %53 = ptrtoint ptr %offsets.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offsets.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4664, i32 %54)
  %cmp4.i22 = icmp eq i32 %54, 4664
  br i1 %cmp4.i22, label %if.then6.i29, label %if.then.i23.sysc_read.exit32_crit_edge

if.then.i23.sysc_read.exit32_crit_edge:           ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit32

if.then6.i29:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %module_va, align 4
  %add.ptr11.i25 = getelementptr i8, ptr %56, i32 4668
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i25) #12, !srcloc !470
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #12
  %conv14.i26 = zext i16 %58 to i32
  %shl.i27 = shl nuw i32 %conv14.i26, 16
  %or.i28 = or i32 %shl.i27, %conv.i19
  br label %sysc_read.exit32

if.end15.i30:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i18) #12, !srcloc !471
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  br label %sysc_read.exit32

sysc_read.exit32:                                 ; preds = %if.end15.i30, %if.then6.i29, %if.then.i23.sysc_read.exit32_crit_edge
  %retval.0.i31 = phi i32 [ %60, %if.end15.i30 ], [ %or.i28, %if.then6.i29 ], [ %conv.i19, %if.then.i23.sysc_read.exit32_crit_edge ]
  %and43 = and i32 %retval.0.i31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %61 = shl nuw nsw i32 %and43, 22
  %62 = or i32 %61, %irq_mask.1
  %disable.not = xor i1 %disable, true
  %brmerge = select i1 %disable.not, i1 true, i1 %tobool44.not
  br i1 %brmerge, label %sysc_read.exit32.if.end57_crit_edge, label %if.then54

sysc_read.exit32.if.end57_crit_edge:              ; preds = %sysc_read.exit32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then54:                                        ; preds = %sysc_read.exit32
  %and56 = and i32 %retval.0.i31, -2
  %63 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %quirks.i, align 4
  %and.i34 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %if.end12.i50, label %if.then.i42

if.then.i42:                                      ; preds = %if.then54
  %conv.i36 = trunc i32 %and56 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv.i36) #12
  %66 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %module_va, align 4
  %add.ptr.i38 = getelementptr i8, ptr %67, i32 4664
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i38, i16 %65) #12, !srcloc !472
  %offsets.i39 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %68 = ptrtoint ptr %offsets.i39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offsets.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4664, i32 %69)
  %cmp5.i41 = icmp eq i32 %69, 4664
  br i1 %cmp5.i41, label %if.then7.i47, label %if.then.i42.if.end57_crit_edge

if.then.i42.if.end57_crit_edge:                   ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then7.i47:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i43 = lshr i32 %retval.0.i31, 16
  %conv8.i44 = trunc i32 %shr.i43 to i16
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv8.i44) #12
  %71 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %module_va, align 4
  %add.ptr11.i46 = getelementptr i8, ptr %72, i32 4668
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i46, i16 %70) #12, !srcloc !472
  br label %if.end57

if.end12.i50:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %73 = tail call i32 @llvm.bswap.i32(i32 %and56) #12
  %74 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %module_va, align 4
  %add.ptr14.i49 = getelementptr i8, ptr %75, i32 4664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i49, i32 %73) #12, !srcloc !473
  br label %if.end57

if.end57:                                         ; preds = %if.end12.i50, %if.then7.i47, %if.then.i42.if.end57_crit_edge, %sysc_read.exit32.if.end57_crit_edge
  br i1 %switch.masked93.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %76 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %quirks.i, align 4
  %and.i53 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  %78 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %module_va, align 4
  %add.ptr18.i56 = getelementptr i8, ptr %79, i32 6216
  br i1 %tobool.not.i54, label %if.end15.i68, label %if.then.i61

if.then.i61:                                      ; preds = %if.end61
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i56) #12, !srcloc !470
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #12
  %conv.i57 = zext i16 %81 to i32
  %offsets.i58 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %82 = ptrtoint ptr %offsets.i58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offsets.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6216, i32 %83)
  %cmp4.i60 = icmp eq i32 %83, 6216
  br i1 %cmp4.i60, label %if.then6.i67, label %if.then.i61.sysc_read.exit70_crit_edge

if.then.i61.sysc_read.exit70_crit_edge:           ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_read.exit70

if.then6.i67:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %module_va, align 4
  %add.ptr11.i63 = getelementptr i8, ptr %85, i32 6220
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i63) #12, !srcloc !470
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #12
  %conv14.i64 = zext i16 %87 to i32
  %shl.i65 = shl nuw i32 %conv14.i64, 16
  %or.i66 = or i32 %shl.i65, %conv.i57
  br label %sysc_read.exit70

if.end15.i68:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i56) #12, !srcloc !471
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #12
  br label %sysc_read.exit70

sysc_read.exit70:                                 ; preds = %if.end15.i68, %if.then6.i67, %if.then.i61.sysc_read.exit70_crit_edge
  %retval.0.i69 = phi i32 [ %89, %if.end15.i68 ], [ %or.i66, %if.then6.i67 ], [ %conv.i57, %if.then.i61.sysc_read.exit70_crit_edge ]
  %and64 = and i32 %retval.0.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %90 = shl nuw nsw i32 %and64, 30
  %91 = or i32 %90, %62
  %brmerge4 = select i1 %disable.not, i1 true, i1 %tobool65.not
  br i1 %brmerge4, label %sysc_read.exit70.cleanup_crit_edge, label %if.then76

sysc_read.exit70.cleanup_crit_edge:               ; preds = %sysc_read.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then76:                                        ; preds = %sysc_read.exit70
  %and78 = and i32 %retval.0.i69, -2
  %92 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks.i, align 4
  %and.i72 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %if.end12.i88, label %if.then.i80

if.then.i80:                                      ; preds = %if.then76
  %conv.i74 = trunc i32 %and78 to i16
  %94 = tail call i16 @llvm.bswap.i16(i16 %conv.i74) #12
  %95 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %module_va, align 4
  %add.ptr.i76 = getelementptr i8, ptr %96, i32 6216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i76, i16 %94) #12, !srcloc !472
  %offsets.i77 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %97 = ptrtoint ptr %offsets.i77 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offsets.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6216, i32 %98)
  %cmp5.i79 = icmp eq i32 %98, 6216
  br i1 %cmp5.i79, label %if.then7.i85, label %if.then.i80.cleanup_crit_edge

if.then.i80.cleanup_crit_edge:                    ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i85:                                     ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i81 = lshr i32 %retval.0.i69, 16
  %conv8.i82 = trunc i32 %shr.i81 to i16
  %99 = tail call i16 @llvm.bswap.i16(i16 %conv8.i82) #12
  %100 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %module_va, align 4
  %add.ptr11.i84 = getelementptr i8, ptr %101, i32 6220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i84, i16 %99) #12, !srcloc !472
  br label %cleanup

if.end12.i88:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %102 = tail call i32 @llvm.bswap.i32(i32 %and78) #12
  %103 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %module_va, align 4
  %add.ptr14.i87 = getelementptr i8, ptr %104, i32 6216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i87, i32 %102) #12, !srcloc !473
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i88, %if.then7.i85, %if.then.i80.cleanup_crit_edge, %sysc_read.exit70.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %switch.lookup.cleanup_crit_edge ], [ %irq_mask.1, %if.end37.cleanup_crit_edge ], [ %62, %if.end57.cleanup_crit_edge ], [ %91, %sysc_read.exit70.cleanup_crit_edge ], [ %91, %if.then.i80.cleanup_crit_edge ], [ %91, %if.then7.i85 ], [ %91, %if.end12.i88 ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysc_quirk_rtc(ptr nocapture noundef readonly %ddata, i1 noundef zeroext %lock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %lock, i32 0, i32 -1784352288
  %spec.select98 = select i1 %lock, i32 0, i32 -2082010349
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !490
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %entry.do.end14_crit_edge
  %call15 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call15, 50000
  %module_va = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %1 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %module_va, align 4
  %add.ptr126 = getelementptr i8, ptr %2, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #12, !srcloc !471
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  %and127 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool20.not128 = icmp eq i32 %and127, 0
  br i1 %tobool20.not128, label %do.end14.for.end_crit_edge, label %do.end14.land.lhs.true_crit_edge

do.end14.land.lhs.true_crit_edge:                 ; preds = %do.end14
  br label %land.lhs.true

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.end14.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then28, label %cond.false

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %module_va, align 4
  %add.ptr32 = getelementptr i8, ptr %6, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #12, !srcloc !471
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #12
  %10 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module_va, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !471
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  %and = and i32 %13, 1
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then28, %do.end14.for.end_crit_edge
  %val.0 = phi i32 [ %8, %if.then28 ], [ %4, %do.end14.for.end_crit_edge ], [ %13, %cond.false.for.end_crit_edge ]
  %and46 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %for.end.if.end53_crit_edge, label %do.end52

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddata, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.159) #15
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %for.end.if.end53_crit_edge
  %quirks.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %16 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks.i, align 4
  %and.i99 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then.i

if.then.i:                                        ; preds = %if.end53
  %conv.i = trunc i32 %spec.select98 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %19 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %module_va, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %18) #12, !srcloc !472
  %offsets.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %21 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %22)
  %cmp5.i = icmp eq i32 %22, 108
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.sysc_write.exit_crit_edge

if.then.i.sysc_write.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %spec.select98, 16
  %conv8.i = trunc i32 %shr.i to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #12
  %24 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module_va, align 4
  %add.ptr11.i = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %23) #12, !srcloc !472
  br label %sysc_write.exit

if.end12.i:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %spec.select98) #12
  %27 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %module_va, align 4
  %add.ptr14.i = getelementptr i8, ptr %28, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %26) #12, !srcloc !473
  br label %sysc_write.exit

sysc_write.exit:                                  ; preds = %if.end12.i, %if.then7.i, %if.then.i.sysc_write.exit_crit_edge
  %29 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks.i, align 4
  %and.i102 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %if.end12.i118, label %if.then.i110

if.then.i110:                                     ; preds = %sysc_write.exit
  %conv.i104 = trunc i32 %spec.select to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv.i104) #12
  %32 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %module_va, align 4
  %add.ptr.i106 = getelementptr i8, ptr %33, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 %31) #12, !srcloc !472
  %offsets.i107 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %34 = ptrtoint ptr %offsets.i107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offsets.i107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %35)
  %cmp5.i109 = icmp eq i32 %35, 112
  br i1 %cmp5.i109, label %if.then7.i115, label %if.then.i110.sysc_write.exit119_crit_edge

if.then.i110.sysc_write.exit119_crit_edge:        ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit119

if.then7.i115:                                    ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i111 = lshr i32 %spec.select, 16
  %conv8.i112 = trunc i32 %shr.i111 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv8.i112) #12
  %37 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %module_va, align 4
  %add.ptr11.i114 = getelementptr i8, ptr %38, i32 116
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i114, i16 %36) #12, !srcloc !472
  br label %sysc_write.exit119

if.end12.i118:                                    ; preds = %sysc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  %40 = ptrtoint ptr %module_va to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %module_va, align 4
  %add.ptr14.i117 = getelementptr i8, ptr %41, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i117, i32 %39) #12, !srcloc !473
  br label %sysc_write.exit119

sysc_write.exit119:                               ; preds = %if.end12.i118, %if.then7.i115, %if.then.i110.sysc_write.exit119_crit_edge
  br i1 %tobool10.not, label %if.then63, label %sysc_write.exit119.do.body65_crit_edge

sysc_write.exit119.do.body65_crit_edge:           ; preds = %sysc_write.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65

if.then63:                                        ; preds = %sysc_write.exit119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body65

do.body65:                                        ; preds = %if.then63, %sysc_write.exit119.do.body65_crit_edge
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !493
  %and.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not, label %if.then78, label %do.body65.do.end81_crit_edge, !prof !477

do.body65.do.end81_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body65.do.end81_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !494
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_context_notifier(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cmd)
  %cond = icmp eq i32 %cmd, 5
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr @sysc_soc, align 4
  %restored_modules.i = getelementptr inbounds %struct.sysc_soc_info, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %restored_modules.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %pos.01.i = load ptr, ptr %restored_modules.i, align 4
  %cmp.i.not3.i = icmp eq ptr %pos.01.i, %restored_modules.i
  br i1 %cmp.i.not3.i, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %pos.04.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.01.i, %sw.bb.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.04.i, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %enabled.i = getelementptr inbounds %struct.sysc, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %enabled.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.i = icmp ne i8 %5, 0
  %call4.i = tail call fastcc i32 @sysc_reinit_module(ptr noundef %3, i1 noundef zeroext %tobool3.i) #12
  %6 = ptrtoint ptr %pos.04.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0.i = load ptr, ptr %pos.04.i, align 4
  %7 = load ptr, ptr @sysc_soc, align 4
  %restored_modules1.i = getelementptr inbounds %struct.sysc_soc_info, ptr %7, i32 0, i32 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %restored_modules1.i
  br i1 %cmp.i.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysc_reinit_module(ptr noundef %ddata, i1 noundef zeroext %leave_enabled) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 8
  %enabled = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 17
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %module_va17.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %8 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %9, i32 %5
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #12, !srcloc !470
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  %conv.i.i = zext i16 %11 to i32
  %offsets.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %12 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp4.i.i = icmp eq i32 %13, %5
  %or.cond.i.i = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.then.i.i.sysc_check_context.exit_crit_edge

if.then.i.i.sysc_check_context.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_check_context.exit

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %module_va17.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %module_va17.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %15, i32 %5
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #12, !srcloc !470
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  %conv14.i.i = zext i16 %17 to i32
  %shl.i.i = shl nuw i32 %conv14.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %sysc_check_context.exit

if.end15.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #12, !srcloc !471
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  br label %sysc_check_context.exit

sysc_check_context.exit:                          ; preds = %if.end15.i.i, %if.then6.i.i, %if.then.i.i.sysc_check_context.exit_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.end15.i.i ], [ %or.i.i, %if.then6.i.i ], [ %conv.i.i, %if.then.i.i.sysc_check_context.exit_crit_edge ]
  %sysconfig.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 16
  %20 = ptrtoint ptr %sysconfig.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysconfig.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %21)
  %cmp.i = icmp eq i32 %retval.0.i.i, %21
  br i1 %cmp.i, label %sysc_check_context.exit.cleanup_crit_edge, label %if.end

sysc_check_context.exit.cleanup_crit_edge:        ; preds = %sysc_check_context.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sysc_check_context.exit
  %call4 = tail call i32 @sysc_runtime_suspend(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.173, i32 noundef %call4) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @sysc_runtime_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %do.end14

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.176, i32 noundef %call9) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end8.if.end15_crit_edge
  %quirks = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 12, i32 5
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks, align 4
  %and = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end25_crit_edge, label %if.then17

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then17:                                        ; preds = %if.end15
  %call18 = tail call fastcc i32 @sysc_reset(ptr noundef %ddata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end24_crit_edge, label %do.end23

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef %call18) #15
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.then17.if.end24_crit_edge
  %sysconfig = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 16
  %24 = ptrtoint ptr %sysconfig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sysconfig, align 8
  %module_unlock_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 24
  %26 = ptrtoint ptr %module_unlock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module_unlock_quirk.i, align 8
  %tobool.not.i59 = icmp eq ptr %27, null
  br i1 %tobool.not.i59, label %if.end24.if.end.i64_crit_edge, label %if.then.i

if.end24.if.end.i64_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i64

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %27(ptr noundef %ddata) #12
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then.i, %if.end24.if.end.i64_crit_edge
  %arrayidx.i60 = getelementptr %struct.sysc, ptr %ddata, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i60, align 4
  %30 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks, align 4
  %and.i.i62 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i.i63, label %if.end12.i.i, label %if.then.i.i69

if.then.i.i69:                                    ; preds = %if.end.i64
  %conv.i.i65 = trunc i32 %25 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i65) #12
  %module_va.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %33 = ptrtoint ptr %module_va.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %module_va.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %29
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %32) #12, !srcloc !472
  %offsets.i.i66 = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 4
  %35 = ptrtoint ptr %offsets.i.i66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets.i.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.i67 = icmp sgt i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %29)
  %cmp5.i.i = icmp eq i32 %36, %29
  %or.cond.i.i68 = and i1 %cmp.i.i67, %cmp5.i.i
  br i1 %or.cond.i.i68, label %if.then7.i.i, label %if.then.i.i69.sysc_write.exit.i_crit_edge

if.then.i.i69.sysc_write.exit.i_crit_edge:        ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %sysc_write.exit.i

if.then7.i.i:                                     ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %25, 16
  %conv8.i.i = trunc i32 %shr.i.i to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #12
  %38 = ptrtoint ptr %module_va.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module_va.i.i, align 4
  %add.ptr10.i.i70 = getelementptr i8, ptr %39, i32 %29
  %add.ptr11.i.i71 = getelementptr i8, ptr %add.ptr10.i.i70, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i71, i16 %37) #12, !srcloc !472
  br label %sysc_write.exit.i

if.end12.i.i:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %module_va13.i.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 3
  %41 = ptrtoint ptr %module_va13.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module_va13.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %42, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %40) #12, !srcloc !473
  br label %sysc_write.exit.i

sysc_write.exit.i:                                ; preds = %if.end12.i.i, %if.then7.i.i, %if.then.i.i69.sysc_write.exit.i_crit_edge
  %module_lock_quirk.i = getelementptr inbounds %struct.sysc, ptr %ddata, i32 0, i32 25
  %43 = ptrtoint ptr %module_lock_quirk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %module_lock_quirk.i, align 4
  %tobool2.not.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i, label %sysc_write.exit.i.if.end25_crit_edge, label %if.then3.i

sysc_write.exit.i.if.end25_crit_edge:             ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then3.i:                                       ; preds = %sysc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %44(ptr noundef %ddata) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then3.i, %sysc_write.exit.i.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %error.0 = phi i32 [ %call9, %if.end15.if.end25_crit_edge ], [ %call18, %sysc_write.exit.i.if.end25_crit_edge ], [ %call18, %if.then3.i ]
  br i1 %leave_enabled, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %call29 = tail call i32 @sysc_runtime_suspend(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.173, i32 noundef %call29) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %sysc_check_context.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sysc_check_context.exit.cleanup_crit_edge ], [ %error.0, %if.end25.cleanup_crit_edge ], [ %call29, %do.end34 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_noirq_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %quirks = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %enabled, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = or i8 %bf.load, 32
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set, ptr %enabled, align 4
  %call6 = tail call i32 @sysc_runtime_suspend(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysc_noirq_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %quirks = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %needs_resume11 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %needs_resume11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load12 = load i8, ptr %needs_resume11, align 4
  %5 = and i8 %bf.load12, 32
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6 = icmp ne i8 %5, 0
  %call7 = tail call fastcc i32 @sysc_reinit_module(ptr noundef %1, i1 noundef zeroext %tobool6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end26_crit_edge, label %if.then5.if.end26.sink.split_crit_edge

if.then5.if.end26.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split

if.then5.if.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool16.not = icmp eq i8 %5, 0
  br i1 %tobool16.not, label %if.else.if.end26_crit_edge, label %if.then17

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then17:                                        ; preds = %if.else
  %call18 = tail call i32 @sysc_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end26_crit_edge, label %if.then17.if.end26.sink.split_crit_edge

if.then17.if.end26.sink.split_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.then17.if.end26.sink.split_crit_edge, %if.then5.if.end26.sink.split_crit_edge
  %call18.sink = phi i32 [ %call7, %if.then5.if.end26.sink.split_crit_edge ], [ %call18, %if.then17.if.end26.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef %call18.sink) #15
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then17.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.then5.if.end26_crit_edge
  %error.0 = phi i32 [ 0, %if.then5.if.end26_crit_edge ], [ 0, %if.then17.if.end26_crit_edge ], [ 0, %if.else.if.end26_crit_edge ], [ %call18.sink, %if.end26.sink.split ]
  %needs_resume27 = getelementptr inbounds %struct.sysc, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %needs_resume27 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load28 = load i8, ptr %needs_resume27, align 4
  %bf.clear29 = and i8 %bf.load28, -33
  store i8 %bf.clear29, ptr %needs_resume27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !193, !195, !196, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !235, !237, !239, !240, !241, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !291, !292, !294, !296, !297, !298, !299, !301, !302, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !342, !343, !344, !345, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !376, !378, !380, !382, !384, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !455, !456, !457, !459}
!llvm.module.flags = !{!460, !461, !462, !463, !464, !465, !466, !467}
!llvm.ident = !{!468}

!0 = !{ptr @__initcall__kmod_ti_sysc__193_3443_sysc_init6, !1, !"__initcall__kmod_ti_sysc__193_3443_sysc_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/ti-sysc.c", i32 3443, i32 1}
!2 = !{ptr @__exitcall_sysc_exit, !3, !"__exitcall_sysc_exit", i1 false, i1 false}
!3 = !{!"../drivers/bus/ti-sysc.c", i32 3451, i32 1}
!4 = !{ptr @__UNIQUE_ID_description194, !5, !"__UNIQUE_ID_description194", i1 false, i1 false}
!5 = !{!"../drivers/bus/ti-sysc.c", i32 3453, i32 1}
!6 = !{ptr @__UNIQUE_ID_file195, !7, !"__UNIQUE_ID_file195", i1 false, i1 false}
!7 = !{!"../drivers/bus/ti-sysc.c", i32 3454, i32 1}
!8 = !{ptr @__UNIQUE_ID_license196, !7, !"__UNIQUE_ID_license196", i1 false, i1 false}
!9 = !{ptr @sysc_nb, !10, !"sysc_nb", i1 false, i1 false}
!10 = !{!"../drivers/bus/ti-sysc.c", i32 2639, i32 30}
!11 = !{ptr @sysc_device_type, !12, !"sysc_device_type", i1 false, i1 false}
!12 = !{!"../drivers/bus/ti-sysc.c", i32 2393, i32 27}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/bus/ti-sysc.c", i32 2383, i32 4}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sysc_child_add_clocks._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sysc_child_add_clocks._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @sysc_child_pm_domain, !22, !"sysc_child_pm_domain", i1 false, i1 false}
!22 = !{!"../drivers/bus/ti-sysc.c", i32 2512, i32 29}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/bus/ti-sysc.c", i32 2448, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug189, !24, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/ti-sysc.c", i32 2453, i32 3}
!31 = !{ptr @sysc_child_suspend_noirq._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sysc_child_suspend_noirq._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/ti-sysc.c", i32 2462, i32 4}
!35 = !{ptr @sysc_child_suspend_noirq.__UNIQUE_ID_ddebug190, !34, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!36 = !{ptr @sysc_child_suspend_noirq._entry.11, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/bus/ti-sysc.c", i32 2470, i32 4}
!38 = !{ptr @sysc_child_suspend_noirq._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bus/ti-sysc.c", i32 1280, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sysc_runtime_suspend_legacy._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sysc_runtime_suspend_legacy._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/ti-sysc.c", i32 1218, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sysc_disable_module._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sysc_disable_module._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/ti-sysc.c", i32 1243, i32 4}
!51 = !{ptr @sysc_disable_module._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sysc_disable_module._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/ti-sysc.c", i32 2489, i32 2}
!55 = !{ptr @sysc_child_resume_noirq.__UNIQUE_ID_ddebug191, !54, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/ti-sysc.c", i32 2497, i32 4}
!58 = !{ptr @sysc_child_resume_noirq._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sysc_child_resume_noirq._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bus/ti-sysc.c", i32 2503, i32 4}
!62 = !{ptr @sysc_child_resume_noirq._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sysc_child_resume_noirq._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/ti-sysc.c", i32 1303, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sysc_runtime_resume_legacy._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sysc_runtime_resume_legacy._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bus/ti-sysc.c", i32 1076, i32 4}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sysc_enable_module._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sysc_enable_module._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bus/ti-sysc.c", i32 1089, i32 4}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sysc_enable_module._entry.29, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sysc_enable_module._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sysc_enable_module._entry.33, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/bus/ti-sysc.c", i32 1125, i32 4}
!81 = !{ptr @sysc_enable_module._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sysc_enable_module._entry.35, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/bus/ti-sysc.c", i32 1147, i32 3}
!84 = !{ptr @sysc_enable_module._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bus/ti-sysc.c", i32 2433, i32 4}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sysc_child_runtime_resume._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @sysc_child_runtime_resume._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bus/ti-sysc.c", i32 3431, i32 13}
!92 = !{ptr @sysc_driver, !93, !"sysc_driver", i1 false, i1 false}
!93 = !{!"../drivers/bus/ti-sysc.c", i32 3427, i32 31}
!94 = !{ptr @sysc_probe.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/bus/ti-sysc.c", i32 3354, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sysc_probe.__key.41, !95, !"__key", i1 false, i1 false}
!98 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sysc_init_static_data.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/bus/ti-sysc.c", i32 3115, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bus/ti-sysc.c", i32 3138, i32 29}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/bus/ti-sysc.c", i32 3139, i32 3}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @sysc_soc, !109, !"sysc_soc", i1 false, i1 false}
!109 = !{!"../drivers/bus/ti-sysc.c", i32 84, i32 30}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bus/ti-sysc.c", i32 3040, i32 2}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bus/ti-sysc.c", i32 3041, i32 2}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bus/ti-sysc.c", i32 3042, i32 2}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bus/ti-sysc.c", i32 3043, i32 2}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bus/ti-sysc.c", i32 3044, i32 2}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/bus/ti-sysc.c", i32 3045, i32 2}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bus/ti-sysc.c", i32 3046, i32 2}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bus/ti-sysc.c", i32 3047, i32 2}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bus/ti-sysc.c", i32 3048, i32 2}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bus/ti-sysc.c", i32 3049, i32 2}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/bus/ti-sysc.c", i32 3050, i32 2}
!132 = !{ptr @sysc_soc_match, !133, !"sysc_soc_match", i1 false, i1 false}
!133 = !{!"../drivers/bus/ti-sysc.c", i32 3039, i32 42}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/bus/ti-sysc.c", i32 3061, i32 2}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/bus/ti-sysc.c", i32 3062, i32 2}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bus/ti-sysc.c", i32 3063, i32 2}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bus/ti-sysc.c", i32 3064, i32 2}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/bus/ti-sysc.c", i32 3067, i32 2}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/bus/ti-sysc.c", i32 3068, i32 2}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/bus/ti-sysc.c", i32 3069, i32 2}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/bus/ti-sysc.c", i32 3070, i32 2}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/bus/ti-sysc.c", i32 3071, i32 2}
!152 = !{ptr @sysc_soc_feat_match, !153, !"sysc_soc_feat_match", i1 false, i1 false}
!153 = !{!"../drivers/bus/ti-sysc.c", i32 3059, i32 42}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/bus/ti-sysc.c", i32 2686, i32 43}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/bus/ti-sysc.c", i32 2689, i32 35}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bus/ti-sysc.c", i32 2692, i32 4}
!160 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sysc_init_dts_quirks._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @sysc_init_dts_quirks._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/bus/ti-sysc.c", i32 2673, i32 4}
!165 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sysc_parse_dts_quirks._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sysc_parse_dts_quirks._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/bus/ti-sysc.c", i32 2650, i32 12}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bus/ti-sysc.c", i32 2652, i32 12}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bus/ti-sysc.c", i32 2654, i32 12}
!174 = distinct !{null, !175, !"sysc_dts_quirks", i1 false, i1 false}
!175 = !{!"../drivers/bus/ti-sysc.c", i32 2649, i32 36}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bus/ti-sysc.c", i32 967, i32 27}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/bus/ti-sysc.c", i32 655, i32 31}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/bus/ti-sysc.c", i32 657, i32 3}
!182 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @sysc_parse_and_check_child_range._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @sysc_parse_and_check_child_range._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/bus/ti-sysc.c", i32 665, i32 3}
!187 = !{ptr @sysc_parse_and_check_child_range._entry.80, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @sysc_parse_and_check_child_range._entry_ptr.82, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/bus/ti-sysc.c", i32 670, i32 35}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/bus/ti-sysc.c", i32 674, i32 35}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/bus/ti-sysc.c", i32 679, i32 3}
!195 = !{ptr @sysc_parse_and_check_child_range._entry.85, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @sysc_parse_and_check_child_range._entry_ptr.87, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @sysc_defer, !198, !"sysc_defer", i1 false, i1 false}
!198 = !{!"../drivers/bus/ti-sysc.c", i32 703, i32 17}
!199 = distinct !{null, !200, !"early_bus_ranges", i1 false, i1 false}
!200 = !{!"../drivers/bus/ti-sysc.c", i32 692, i32 24}
!201 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/bus/ti-sysc.c", i32 795, i32 43}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/bus/ti-sysc.c", i32 796, i32 3}
!205 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @sysc_check_one_child._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @sysc_check_one_child._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/bus/ti-sysc.c", i32 749, i32 28}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/bus/ti-sysc.c", i32 753, i32 29}
!212 = !{ptr @stdout_path, !213, !"stdout_path", i1 false, i1 false}
!213 = !{!"../drivers/bus/ti-sysc.c", i32 736, i32 28}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/bus/ti-sysc.c", i32 85, i32 43}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/bus/ti-sysc.c", i32 85, i32 50}
!218 = !{ptr @.str.95, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/bus/ti-sysc.c", i32 85, i32 58}
!220 = distinct !{null, !221, !"reg_names", i1 false, i1 false}
!221 = !{!"../drivers/bus/ti-sysc.c", i32 85, i32 27}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/bus/ti-sysc.c", i32 883, i32 4}
!224 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @sysc_check_registers._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @sysc_check_registers._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/bus/ti-sysc.c", i32 899, i32 3}
!229 = !{ptr @sysc_check_registers._entry.98, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @sysc_check_registers._entry_ptr.100, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/bus/ti-sysc.c", i32 2263, i32 35}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/bus/ti-sysc.c", i32 2296, i32 8}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/bus/ti-sysc.c", i32 2301, i32 8}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/bus/ti-sysc.c", i32 2282, i32 4}
!239 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @sysc_init_idlemode._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @sysc_init_idlemode._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/bus/ti-sysc.c", i32 2321, i32 35}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/bus/ti-sysc.c", i32 1542, i32 2}
!246 = !{ptr @.str.108, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/bus/ti-sysc.c", i32 1553, i32 2}
!248 = !{ptr @.str.109, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/bus/ti-sysc.c", i32 1558, i32 2}
!250 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/bus/ti-sysc.c", i32 1561, i32 2}
!252 = !{ptr @.str.111, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/bus/ti-sysc.c", i32 1565, i32 2}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/bus/ti-sysc.c", i32 1571, i32 2}
!256 = !{ptr @.str.113, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/bus/ti-sysc.c", i32 1575, i32 2}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/bus/ti-sysc.c", i32 1577, i32 2}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/bus/ti-sysc.c", i32 1580, i32 2}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/bus/ti-sysc.c", i32 1582, i32 2}
!264 = !{ptr @.str.117, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/bus/ti-sysc.c", i32 1586, i32 2}
!266 = !{ptr @.str.118, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/bus/ti-sysc.c", i32 1594, i32 2}
!268 = !{ptr @.str.119, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/bus/ti-sysc.c", i32 1597, i32 2}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/bus/ti-sysc.c", i32 1599, i32 2}
!272 = !{ptr @.str.121, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/bus/ti-sysc.c", i32 1601, i32 2}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/bus/ti-sysc.c", i32 1603, i32 2}
!276 = !{ptr @.str.123, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/bus/ti-sysc.c", i32 1607, i32 2}
!278 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/bus/ti-sysc.c", i32 1609, i32 2}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/bus/ti-sysc.c", i32 1613, i32 2}
!282 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/bus/ti-sysc.c", i32 1619, i32 2}
!284 = !{ptr @.str.127, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/bus/ti-sysc.c", i32 1622, i32 2}
!286 = !{ptr @sysc_revision_quirks, !287, !"sysc_revision_quirks", i1 false, i1 false}
!287 = !{!"../drivers/bus/ti-sysc.c", i32 1540, i32 41}
!288 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/bus/ti-sysc.c", i32 3218, i32 4}
!290 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @sysc_check_disabled_devices.__UNIQUE_ID_ddebug192, !289, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!292 = !{ptr @.str.130, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/bus/ti-sysc.c", i32 439, i32 2}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/bus/ti-sysc.c", i32 458, i32 3}
!296 = !{ptr @.str.132, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @sysc_get_clocks._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @sysc_get_clocks._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/bus/ti-sysc.c", i32 464, i32 3}
!301 = !{ptr @sysc_get_clocks._entry.133, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @sysc_get_clocks._entry_ptr.135, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 2}
!305 = !{ptr @.str.137, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 9}
!307 = !{ptr @.str.138, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 16}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 24}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 32}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 40}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/bus/ti-sysc.c", i32 87, i32 48}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/bus/ti-sysc.c", i32 88, i32 2}
!319 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/bus/ti-sysc.c", i32 88, i32 10}
!321 = !{ptr @.str.145, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/bus/ti-sysc.c", i32 88, i32 18}
!323 = !{ptr @clock_names, !324, !"clock_names", i1 false, i1 false}
!324 = !{!"../drivers/bus/ti-sysc.c", i32 86, i32 27}
!325 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/bus/ti-sysc.c", i32 402, i32 3}
!327 = !{ptr @.str.147, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @sysc_get_one_clock._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @sysc_get_one_clock._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.149, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/bus/ti-sysc.c", i32 408, i32 3}
!332 = !{ptr @sysc_get_one_clock._entry.148, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @sysc_get_one_clock._entry_ptr.150, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.152, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/bus/ti-sysc.c", i32 416, i32 3}
!336 = !{ptr @sysc_get_one_clock._entry.151, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @sysc_get_one_clock._entry_ptr.153, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.154, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/bus/ti-sysc.c", i32 634, i32 54}
!340 = !{ptr @.str.155, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/bus/ti-sysc.c", i32 2235, i32 3}
!342 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @sysc_init_module._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @sysc_init_module._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.157, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/bus/ti-sysc.c", i32 1876, i32 3}
!347 = !{ptr @.str.158, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @sysc_pre_reset_quirk_dss._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @sysc_pre_reset_quirk_dss._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.159, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/bus/ti-sysc.c", i32 1958, i32 3}
!352 = !{ptr @.str.160, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @sysc_quirk_rtc._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @sysc_quirk_rtc._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.161, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/bus/ti-sysc.c", i32 2014, i32 3}
!357 = !{ptr @.str.162, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @sysc_reset_done_quirk_wdt._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @sysc_reset_done_quirk_wdt._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.164, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/bus/ti-sysc.c", i32 2021, i32 3}
!362 = !{ptr @sysc_reset_done_quirk_wdt._entry.163, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @sysc_reset_done_quirk_wdt._entry_ptr.165, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.166, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/bus/ti-sysc.c", i32 2173, i32 3}
!366 = !{ptr @sysc_reset._entry, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @sysc_reset._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.167, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/bus/ti-sysc.c", i32 1035, i32 2}
!370 = !{ptr @.str.168, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @sysc_show_registers.__UNIQUE_ID_ddebug188, !369, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!372 = distinct !{null, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/bus/ti-sysc.c", i32 1006, i32 24}
!374 = !{ptr @.str.170, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/bus/ti-sysc.c", i32 1008, i32 23}
!376 = !{ptr @.str.171, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/bus/ti-sysc.c", i32 997, i32 22}
!378 = !{ptr @.str.172, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/bus/ti-sysc.c", i32 1016, i32 23}
!380 = !{ptr @sysc_match_table, !381, !"sysc_match_table", i1 false, i1 false}
!381 = !{!"../drivers/bus/ti-sysc.c", i32 3246, i32 34}
!382 = !{ptr @.str.173, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/bus/ti-sysc.c", i32 1436, i32 4}
!384 = !{ptr @.str.174, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @sysc_reinit_module._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @sysc_reinit_module._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.176, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/bus/ti-sysc.c", i32 1442, i32 3}
!389 = !{ptr @sysc_reinit_module._entry.175, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @sysc_reinit_module._entry_ptr.177, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.179, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/bus/ti-sysc.c", i32 1448, i32 4}
!393 = !{ptr @sysc_reinit_module._entry.178, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @sysc_reinit_module._entry_ptr.180, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @sysc_reinit_module._entry.181, !396, !"_entry", i1 false, i1 false}
!396 = !{!"../drivers/bus/ti-sysc.c", i32 1459, i32 3}
!397 = !{ptr @sysc_reinit_module._entry_ptr.182, !396, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @sysc_match, !399, !"sysc_match", i1 false, i1 false}
!399 = !{!"../drivers/bus/ti-sysc.c", i32 3406, i32 34}
!400 = !{ptr @sysc_omap2, !401, !"sysc_omap2", i1 false, i1 false}
!401 = !{!"../drivers/bus/ti-sysc.c", i32 2729, i32 39}
!402 = !{ptr @sysc_regbits_omap2, !403, !"sysc_regbits_omap2", i1 false, i1 false}
!403 = !{!"../drivers/bus/ti-sysc.c", i32 2718, i32 34}
!404 = !{ptr @sysc_omap2_timer, !405, !"sysc_omap2_timer", i1 false, i1 false}
!405 = !{!"../drivers/bus/ti-sysc.c", i32 2738, i32 39}
!406 = !{ptr @sysc_omap4, !407, !"sysc_omap4", i1 false, i1 false}
!407 = !{!"../drivers/bus/ti-sysc.c", i32 2803, i32 39}
!408 = !{ptr @sysc_regbits_omap4, !409, !"sysc_regbits_omap4", i1 false, i1 false}
!409 = !{!"../drivers/bus/ti-sysc.c", i32 2792, i32 34}
!410 = !{ptr @sysc_omap4_timer, !411, !"sysc_omap4_timer", i1 false, i1 false}
!411 = !{!"../drivers/bus/ti-sysc.c", i32 2810, i32 39}
!412 = !{ptr @sysc_omap4_simple, !413, !"sysc_omap4_simple", i1 false, i1 false}
!413 = !{!"../drivers/bus/ti-sysc.c", i32 2831, i32 39}
!414 = !{ptr @sysc_regbits_omap4_simple, !415, !"sysc_regbits_omap4_simple", i1 false, i1 false}
!415 = !{!"../drivers/bus/ti-sysc.c", i32 2820, i32 34}
!416 = !{ptr @sysc_34xx_sr, !417, !"sysc_34xx_sr", i1 false, i1 false}
!417 = !{!"../drivers/bus/ti-sysc.c", i32 2850, i32 39}
!418 = !{ptr @sysc_regbits_omap34xx_sr, !419, !"sysc_regbits_omap34xx_sr", i1 false, i1 false}
!419 = !{!"../drivers/bus/ti-sysc.c", i32 2839, i32 34}
!420 = !{ptr @sysc_36xx_sr, !421, !"sysc_36xx_sr", i1 false, i1 false}
!421 = !{!"../drivers/bus/ti-sysc.c", i32 2872, i32 39}
!422 = !{ptr @sysc_regbits_omap36xx_sr, !423, !"sysc_regbits_omap36xx_sr", i1 false, i1 false}
!423 = !{!"../drivers/bus/ti-sysc.c", i32 2861, i32 34}
!424 = !{ptr @sysc_omap4_sr, !425, !"sysc_omap4_sr", i1 false, i1 false}
!425 = !{!"../drivers/bus/ti-sysc.c", i32 2879, i32 39}
!426 = !{ptr @sysc_omap3_sham, !427, !"sysc_omap3_sham", i1 false, i1 false}
!427 = !{!"../drivers/bus/ti-sysc.c", i32 2762, i32 39}
!428 = !{ptr @sysc_regbits_omap3_sham, !429, !"sysc_regbits_omap3_sham", i1 false, i1 false}
!429 = !{!"../drivers/bus/ti-sysc.c", i32 2751, i32 34}
!430 = !{ptr @sysc_omap3_aes, !431, !"sysc_omap3_aes", i1 false, i1 false}
!431 = !{!"../drivers/bus/ti-sysc.c", i32 2783, i32 39}
!432 = !{ptr @sysc_regbits_omap3_aes, !433, !"sysc_regbits_omap3_aes", i1 false, i1 false}
!433 = !{!"../drivers/bus/ti-sysc.c", i32 2772, i32 34}
!434 = !{ptr @sysc_omap4_mcasp, !435, !"sysc_omap4_mcasp", i1 false, i1 false}
!435 = !{!"../drivers/bus/ti-sysc.c", i32 2899, i32 39}
!436 = !{ptr @sysc_regbits_omap4_mcasp, !437, !"sysc_regbits_omap4_mcasp", i1 false, i1 false}
!437 = !{!"../drivers/bus/ti-sysc.c", i32 2888, i32 34}
!438 = !{ptr @sysc_dra7_mcasp, !439, !"sysc_dra7_mcasp", i1 false, i1 false}
!439 = !{!"../drivers/bus/ti-sysc.c", i32 2908, i32 39}
!440 = !{ptr @sysc_omap4_usb_host_fs, !441, !"sysc_omap4_usb_host_fs", i1 false, i1 false}
!441 = !{!"../drivers/bus/ti-sysc.c", i32 2928, i32 39}
!442 = !{ptr @sysc_regbits_omap4_usb_host_fs, !443, !"sysc_regbits_omap4_usb_host_fs", i1 false, i1 false}
!443 = !{!"../drivers/bus/ti-sysc.c", i32 2917, i32 34}
!444 = !{ptr @sysc_dra7_mcan, !445, !"sysc_dra7_mcan", i1 false, i1 false}
!445 = !{!"../drivers/bus/ti-sysc.c", i32 2945, i32 39}
!446 = !{ptr @sysc_regbits_dra7_mcan, !447, !"sysc_regbits_dra7_mcan", i1 false, i1 false}
!447 = !{!"../drivers/bus/ti-sysc.c", i32 2934, i32 34}
!448 = !{ptr @sysc_pruss, !449, !"sysc_pruss", i1 false, i1 false}
!449 = !{!"../drivers/bus/ti-sysc.c", i32 2955, i32 39}
!450 = !{ptr @sysc_pm_ops, !451, !"sysc_pm_ops", i1 false, i1 false}
!451 = !{!"../drivers/bus/ti-sysc.c", i32 1508, i32 32}
!452 = !{ptr @.str.183, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/bus/ti-sysc.c", i32 1496, i32 4}
!454 = !{ptr @.str.184, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @sysc_noirq_resume._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @sysc_noirq_resume._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @sysc_noirq_resume._entry.185, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../drivers/bus/ti-sysc.c", i32 1500, i32 4}
!459 = !{ptr @sysc_noirq_resume._entry_ptr.186, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{i32 1, !"wchar_size", i32 2}
!461 = !{i32 1, !"min_enum_size", i32 4}
!462 = !{i32 8, !"branch-target-enforcement", i32 0}
!463 = !{i32 8, !"sign-return-address", i32 0}
!464 = !{i32 8, !"sign-return-address-all", i32 0}
!465 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!466 = !{i32 7, !"uwtable", i32 1}
!467 = !{i32 7, !"frame-pointer", i32 2}
!468 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!469 = !{i64 2148238084, i64 2148238089, i64 2148238102, i64 2148238146, i64 2148238180, i64 2148238201}
!470 = !{i64 770507}
!471 = !{i64 771345}
!472 = !{i64 770307}
!473 = !{i64 770927}
!474 = !{i32 0, i32 33}
!475 = !{!"branch_weights", i32 2000, i32 1}
!476 = !{!"auto-init"}
!477 = !{!"branch_weights", i32 1, i32 2000}
!478 = !{i64 2148608828}
!479 = !{i64 992518, i64 992542, i64 992563, i64 992580, i64 992597}
!480 = !{i64 2148609054}
!481 = !{i64 2148506424}
!482 = !{i64 993024, i64 993049, i64 993071, i64 993087, i64 993099, i64 993119, i64 993143, i64 993159, i64 993171}
!483 = !{i64 2148506612}
!484 = !{i64 2153223594}
!485 = !{i64 2153224164}
!486 = !{i64 2153233986}
!487 = !{i64 2153234492}
!488 = !{i64 2153237718}
!489 = !{i64 2153238224}
!490 = !{i64 911685, i64 911746}
!491 = !{i64 2153228787}
!492 = !{i64 2153229297}
!493 = !{i64 914417}
!494 = !{i64 914702}
