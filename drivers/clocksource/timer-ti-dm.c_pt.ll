; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-ti-dm.c_pt.bc'
source_filename = "../drivers/clocksource/timer-ti-dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmtimer_platform_data = type { ptr, i32, i32, ptr, ptr }
%struct.omap_dm_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_dm_timer = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i8, %struct.timer_regs, i32, i32, i32, ptr, %struct.list_head, %struct.notifier_block }
%struct.timer_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@omap_reserved_systimers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_dm_timer_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: timer not available or enabled.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_dm_timer_trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-ti-dm.c\00", [62 x i8] zeroinitializer }, align 32
@omap_dm_timer_trigger._entry_ptr = internal global ptr @omap_dm_timer_trigger._entry, section ".printk_index", align 4
@omap_timer_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @omap_timer_list, ptr @omap_timer_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_timer_ti_dm__173_967_omap_dm_timer_driver_init6 = internal global ptr @omap_dm_timer_driver_init, section ".initcall6.init", align 4
@omap_dm_timer_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_dm_timer_probe, ptr @omap_dm_timer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_timer_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dm_timer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_dm_timer_driver_exit = internal global ptr @omap_dm_timer_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [52 x i8] c"timer_ti_dm.description=OMAP Dual-Mode Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [49 x i8] c"timer_ti_dm.file=drivers/clocksource/timer-ti-dm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"timer_ti_dm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [41 x i8] c"timer_ti_dm.author=Texas Instruments Inc\00", section ".modinfo", align 1
@dm_timer_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@_omap_dm_timer_request.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer_ti_dm\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_omap_dm_timer_request\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: timer request failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_timer_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@omap_dm_timer_prepare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@omap_dm_timer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 250, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c": No fclk handle.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_dm_timer_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_dm_timer_prepare._entry_ptr = internal global ptr @omap_dm_timer_prepare._entry, section ".printk_index", align 4
@omap_dm_timer_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 159, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Timer failed to reset\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_dm_timer_reset\00", [44 x i8] zeroinitializer }, align 32
@omap_dm_timer_reset._entry_ptr = internal global ptr @omap_dm_timer_reset._entry, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap_timer\00", [21 x i8] zeroinitializer }, align 32
@omap_timer_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@omap_dm_timer_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dm_timer_runtime_suspend, ptr @omap_dm_timer_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_dm_timer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 792, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no platform data.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_dm_timer_probe\00", [44 x i8] zeroinitializer }, align 32
@omap_dm_timer_probe._entry_ptr = internal global ptr @omap_dm_timer_probe._entry, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,timer-alwon\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,timer-dsp\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,timer-pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,timer-secure\00", [16 x i8] zeroinitializer }, align 32
@omap_dm_timer_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 842, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: pm_runtime_get_sync failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_dm_timer_probe._entry_ptr.23 = internal global ptr @omap_dm_timer_probe._entry.21, section ".printk_index", align 4
@omap_dm_timer_probe.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device Probed.\0A\00", [16 x i8] zeroinitializer }, align 32
@omap3plus_pdata = internal constant { %struct.dmtimer_platform_data, [44 x i8] } { %struct.dmtimer_platform_data { ptr null, i32 0, i32 -2147483648, ptr null, ptr @dmtimer_ops }, [44 x i8] zeroinitializer }, align 32
@dmtimer_ops = internal constant { %struct.omap_dm_timer_ops, [40 x i8] } { %struct.omap_dm_timer_ops { ptr @omap_dm_timer_request_by_node, ptr @omap_dm_timer_request_specific, ptr @omap_dm_timer_request, ptr @omap_dm_timer_free, ptr @omap_dm_timer_enable, ptr @omap_dm_timer_disable, ptr @omap_dm_timer_get_irq, ptr @omap_dm_timer_set_int_enable, ptr @omap_dm_timer_set_int_disable, ptr @omap_dm_timer_get_fclk, ptr @omap_dm_timer_start, ptr @omap_dm_timer_stop, ptr @omap_dm_timer_set_source, ptr @omap_dm_timer_set_load, ptr @omap_dm_timer_set_match, ptr @omap_dm_timer_set_pwm, ptr @omap_dm_timer_get_pwm_status, ptr @omap_dm_timer_set_prescaler, ptr @omap_dm_timer_read_counter, ptr @omap_dm_timer_write_counter, ptr @omap_dm_timer_read_status, ptr @omap_dm_timer_write_status }, [40 x i8] zeroinitializer }, align 32
@omap_dm_timer_request_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: Please use omap_dm_timer_request_by_node()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap_dm_timer_request_specific\00", [33 x i8] zeroinitializer }, align 32
@omap_dm_timer_request_specific._entry_ptr = internal global ptr @omap_dm_timer_request_specific._entry, section ".printk_index", align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_sys_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_ext_ck\00", [19 x i8] zeroinitializer }, align 32
@omap_dm_timer_set_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: %s not found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_dm_timer_set_source\00", [39 x i8] zeroinitializer }, align 32
@omap_dm_timer_set_source._entry_ptr = internal global ptr @omap_dm_timer_set_source._entry, section ".printk_index", align 4
@omap_dm_timer_set_source._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to set %s as parent\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_dm_timer_set_source._entry_ptr.34 = internal global ptr @omap_dm_timer_set_source._entry.32, section ".printk_index", align 4
@omap_dm_timer_read_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: timer not iavailable or enabled.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_dm_timer_read_counter\00", [37 x i8] zeroinitializer }, align 32
@omap_dm_timer_read_counter._entry_ptr = internal global ptr @omap_dm_timer_read_counter._entry, section ".printk_index", align 4
@omap_dm_timer_write_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap_dm_timer_write_counter\00", [36 x i8] zeroinitializer }, align 32
@omap_dm_timer_write_counter._entry_ptr = internal global ptr @omap_dm_timer_write_counter._entry, section ".printk_index", align 4
@omap_dm_timer_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_dm_timer_read_status\00", [38 x i8] zeroinitializer }, align 32
@omap_dm_timer_read_status._entry_ptr = internal global ptr @omap_dm_timer_read_status._entry, section ".printk_index", align 4
@switch.table.omap_dm_timer_set_source = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"omap_reserved_systimers\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 36, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 497, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"omap_timer_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 37, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"omap_dm_timer_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 957, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"dm_timer_lock\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 365, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 38, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 248, i32 44 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 250, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 159, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 961, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"omap_timer_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 925, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"omap_dm_timer_pm_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 763, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 792, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 812, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 814, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 816, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 818, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 841, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 854, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"omap3plus_pdata\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 920, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"dmtimer_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 895, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 379, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 185, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 188, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 191, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 215, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 221, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 700, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 710, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [37 x i8] c"../drivers/clocksource/timer-ti-dm.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 678, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [38 x i8] c"switch.table.omap_dm_timer_set_source\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_omap_dm_timer_driver_exit, ptr @__initcall__kmod_timer_ti_dm__173_967_omap_dm_timer_driver_init6, ptr @omap_dm_timer_driver_exit, ptr @omap_dm_timer_prepare._entry, ptr @omap_dm_timer_prepare._entry_ptr, ptr @omap_dm_timer_probe._entry, ptr @omap_dm_timer_probe._entry.21, ptr @omap_dm_timer_probe._entry_ptr, ptr @omap_dm_timer_probe._entry_ptr.23, ptr @omap_dm_timer_read_counter._entry, ptr @omap_dm_timer_read_counter._entry_ptr, ptr @omap_dm_timer_read_status._entry, ptr @omap_dm_timer_read_status._entry_ptr, ptr @omap_dm_timer_request_specific._entry, ptr @omap_dm_timer_request_specific._entry_ptr, ptr @omap_dm_timer_reset._entry, ptr @omap_dm_timer_reset._entry_ptr, ptr @omap_dm_timer_set_source._entry, ptr @omap_dm_timer_set_source._entry.32, ptr @omap_dm_timer_set_source._entry_ptr, ptr @omap_dm_timer_set_source._entry_ptr.34, ptr @omap_dm_timer_trigger._entry, ptr @omap_dm_timer_trigger._entry_ptr, ptr @omap_dm_timer_write_counter._entry, ptr @omap_dm_timer_write_counter._entry_ptr, ptr @omap_reserved_systimers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omap_timer_list, ptr @omap_dm_timer_driver, ptr @dm_timer_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @omap_timer_match, ptr @omap_dm_timer_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @omap3plus_pdata, ptr @dmtimer_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.omap_dm_timer_set_source], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_reserved_systimers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_timer_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_timer_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_timer_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3plus_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_request_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_set_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_set_source._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_read_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_write_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dm_timer_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_dm_timer_set_source to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_dm_timer_reserve_systimer(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_reserved_systimers, align 4
  %sub.i = add i32 %id, -1
  %1 = shl nuw i32 1, %sub.i
  %2 = and i32 %0, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %0, %1
  store i32 %or, ptr @omap_reserved_systimers, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_dm_timer_request_by_cap(i32 noundef %cap) local_unnamed_addr #1 align 64 {
entry:
  %cap.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cap.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cap, ptr %cap.addr, align 4
  %call = call fastcc ptr @_omap_dm_timer_request(i32 noundef 2, ptr noundef nonnull %cap.addr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_omap_dm_timer_request(i32 noundef %req_type, ptr noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %req_type, label %entry.do.body3_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  br label %do.body3

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  br label %do.body3

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

do.body3:                                         ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.do.body3_crit_edge
  %id.0 = phi i32 [ 0, %entry.do.body3_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ %2, %sw.bb ]
  %cap.0 = phi i32 [ 0, %entry.do.body3_crit_edge ], [ 0, %sw.bb2 ], [ %4, %sw.bb1 ], [ 0, %sw.bb ]
  %np.0 = phi ptr [ null, %entry.do.body3_crit_edge ], [ %data, %sw.bb2 ], [ null, %sw.bb1 ], [ null, %sw.bb ]
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #11
  %.pn123 = load ptr, ptr @omap_timer_list, align 4
  %cmp8.not125 = icmp eq ptr %.pn123, @omap_timer_list
  br i1 %cmp8.not125, label %found.thread, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

found.thread:                                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %call4) #11
  br label %do.body70

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn127 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn123, %do.body3.for.body_crit_edge ]
  %timer.0126 = phi ptr [ %timer.1, %for.inc.for.body_crit_edge ], [ null, %do.body3.for.body_crit_edge ]
  %t.0128 = getelementptr i8, ptr %.pn127, i32 -136
  %reserved = getelementptr i8, ptr %.pn127, i32 -92
  %5 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = zext i32 %req_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %req_type, label %if.end.found.sink.split_crit_edge [
    i32 1, label %sw.bb10
    i32 2, label %sw.bb18
    i32 3, label %sw.bb39
  ]

if.end.found.sink.split_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %found.sink.split

sw.bb10:                                          ; preds = %if.end
  %pdev = getelementptr i8, ptr %.pn127, i32 -4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %id11 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0, i32 %10)
  %cmp12 = icmp eq i32 %id.0, %10
  br i1 %cmp12, label %sw.bb10.found.sink.split_crit_edge, label %sw.bb10.for.inc_crit_edge

sw.bb10.for.inc_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb10.found.sink.split_crit_edge:               ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %found.sink.split

sw.bb18:                                          ; preds = %if.end
  %capability = getelementptr i8, ptr %.pn127, i32 -12
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capability, align 4
  %and = and i32 %12, %cap.0
  call void @__sanitizer_cov_trace_cmp4(i32 %cap.0, i32 %and)
  %cmp19 = icmp eq i32 %cap.0, %and
  br i1 %cmp19, label %if.then21, label %sw.bb18.for.inc_crit_edge

sw.bb18.for.inc_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then21:                                        ; preds = %sw.bb18
  %tobool22.not = icmp eq ptr %timer.0126, null
  br i1 %tobool22.not, label %if.then21.if.end28_crit_edge, label %if.then23

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %reserved24 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.0126, i32 0, i32 11
  %13 = ptrtoint ptr %reserved24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load25 = load i8, ptr %reserved24, align 4
  %bf.clear26 = and i8 %bf.load25, 127
  store i8 %bf.clear26, ptr %reserved24, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then21.if.end28_crit_edge
  %14 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load30 = load i8, ptr %reserved, align 4
  %bf.set32 = or i8 %bf.load30, -128
  store i8 %bf.set32, ptr %reserved, align 4
  %15 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capability, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cap.0)
  %cmp34 = icmp eq i32 %16, %cap.0
  br i1 %cmp34, label %if.end28.found_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.found_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

sw.bb39:                                          ; preds = %if.end
  %pdev40 = getelementptr i8, ptr %.pn127, i32 -4
  %17 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev40, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %cmp41 = icmp eq ptr %np.0, %20
  br i1 %cmp41, label %sw.bb39.found.sink.split_crit_edge, label %sw.bb39.for.inc_crit_edge

sw.bb39.for.inc_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb39.found.sink.split_crit_edge:               ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %found.sink.split

for.inc:                                          ; preds = %sw.bb39.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %sw.bb18.for.inc_crit_edge, %sw.bb10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %timer.1 = phi ptr [ %timer.0126, %for.body.for.inc_crit_edge ], [ %timer.0126, %sw.bb39.for.inc_crit_edge ], [ %t.0128, %if.end28.for.inc_crit_edge ], [ %timer.0126, %sw.bb18.for.inc_crit_edge ], [ %timer.0126, %sw.bb10.for.inc_crit_edge ]
  %21 = ptrtoint ptr %.pn127 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn127, align 4
  %cmp8.not = icmp eq ptr %.pn, @omap_timer_list
  br i1 %cmp8.not, label %for.inc.found_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

found.sink.split:                                 ; preds = %sw.bb39.found.sink.split_crit_edge, %sw.bb10.found.sink.split_crit_edge, %if.end.found.sink.split_crit_edge
  %bf.set53 = or i8 %bf.load, -128
  %22 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set53, ptr %reserved, align 4
  br label %found

found:                                            ; preds = %found.sink.split, %for.inc.found_crit_edge, %if.end28.found_crit_edge
  %timer.2 = phi ptr [ %t.0128, %found.sink.split ], [ %t.0128, %if.end28.found_crit_edge ], [ %timer.1, %for.inc.found_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %call4) #11
  %tobool59.not = icmp eq ptr %timer.2, null
  br i1 %tobool59.not, label %found.do.body70_crit_edge, label %land.lhs.true

found.do.body70_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body70

land.lhs.true:                                    ; preds = %found
  %capability.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 14
  %23 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capability.i, align 4
  %and.i = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.if.end47.i_crit_edge

land.lhs.true.if.end47.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.then.i:                                        ; preds = %land.lhs.true
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 16
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %call.i = tail call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #11
  %fclk.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 2
  %27 = ptrtoint ptr %fclk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %fclk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %land.rhs.i, label %if.then.i.if.end47.i_crit_edge

if.then.i.if.end47.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b70.i = load i1, ptr @omap_dm_timer_prepare.__already_done, align 1
  br i1 %.b70.i, label %land.rhs.i.do.end43.i_crit_edge, label %if.then10.i, !prof !118

land.rhs.i.do.end43.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @omap_dm_timer_prepare.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #11
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then10.i, %land.rhs.i.do.end43.i_crit_edge
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %dev45.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.8) #14
  br label %if.then62

if.end47.i:                                       ; preds = %if.then.i.if.end47.i_crit_edge, %land.lhs.true.if.end47.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 16
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i.i, i32 noundef 4) #11
  %32 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %capability.i, align 4
  %and49.i = and i32 %33, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end47.i.if.end56.i_crit_edge, label %if.then51.i

if.end47.i.if.end56.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then51.i:                                      ; preds = %if.end47.i
  %revision.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 13
  %34 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.not.i.i = icmp eq i32 %35, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then51.i.if.then54.i_crit_edge

if.then51.i.if.then54.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54.i

if.end.i.i:                                       ; preds = %if.then51.i
  %posted.i.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 11
  %36 = ptrtoint ptr %posted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i.i = load i8, ptr %posted.i.i.i, align 4
  %37 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.omap_dm_timer_write_reg.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i.i

if.end.i.i.omap_dm_timer_write_reg.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 7
  %38 = ptrtoint ptr %pend.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pend.i.i.i.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !119
  br label %omap_dm_timer_write_reg.exit.i.i

omap_dm_timer_write_reg.exit.i.i:                 ; preds = %while.cond.preheader.i.i.i.i, %if.end.i.i.omap_dm_timer_write_reg.exit.i.i_crit_edge
  %func_base.i.i.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 8
  %41 = ptrtoint ptr %func_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 100663296) #11, !srcloc !120
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %omap_dm_timer_write_reg.exit.i.i
  %timeout.0.i.i = phi i32 [ 100000, %omap_dm_timer_write_reg.exit.i.i ], [ %dec.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %43 = ptrtoint ptr %func_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %func_base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.omap_dm_timer_reset.exit.i_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

land.rhs.i.i.omap_dm_timer_reset.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_reset.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end6.i.i, label %do.end.i.i.omap_dm_timer_reset.exit.i_crit_edge

do.end.i.i.omap_dm_timer_reset.exit.i_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_reset.exit.i

do.end6.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i.i, align 4
  %dev.i73.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73.i, ptr noundef nonnull @.str.12) #14
  br label %if.then54.i

omap_dm_timer_reset.exit.i:                       ; preds = %do.end.i.i.omap_dm_timer_reset.exit.i_crit_edge, %land.rhs.i.i.omap_dm_timer_reset.exit.i_crit_edge
  %48 = ptrtoint ptr %func_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %func_base.i.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %49, i32 16
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #11, !srcloc !119
  %51 = or i32 %50, 268435456
  %52 = ptrtoint ptr %func_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %func_base.i.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %51) #11, !srcloc !120
  %54 = ptrtoint ptr %posted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %posted.i.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %posted.i.i.i, align 4
  br label %if.end56.i

if.then54.i:                                      ; preds = %do.end6.i.i, %if.then51.i.if.then54.i_crit_edge
  %55 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i.i, align 4
  %dev.i75.i = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  %call.i.i76.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i75.i, i32 noundef 4) #11
  br label %if.then62

if.end56.i:                                       ; preds = %omap_dm_timer_reset.exit.i, %if.end47.i.if.end56.i_crit_edge
  %posted.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 11
  %57 = ptrtoint ptr %posted.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i77.i = load i8, ptr %posted.i.i, align 4
  %58 = and i8 %bf.load.i77.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i78.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i78.i, label %if.end.i80.i, label %if.end56.i.if.end67_crit_edge

if.end56.i.if.end67_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end.i80.i:                                     ; preds = %if.end56.i
  %errata.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 15
  %59 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %errata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool1.not.i79.i = icmp sgt i32 %60, -1
  br i1 %tobool1.not.i79.i, label %if.end6.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear5.i.i = and i8 %bf.load.i77.i, -65
  %61 = ptrtoint ptr %posted.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %bf.clear5.i.i, ptr %posted.i.i, align 4
  %func_base.i.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 8
  %62 = ptrtoint ptr %func_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %func_base.i.i.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %63, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81.i, i32 0) #11, !srcloc !120
  br label %if.end67

if.end6.i.i:                                      ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  %func_base.i17.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 8
  %64 = ptrtoint ptr %func_base.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %func_base.i17.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %65, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 67108864) #11, !srcloc !120
  %tsicr.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 12, i32 11
  %66 = ptrtoint ptr %tsicr.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %tsicr.i.i, align 4
  %67 = ptrtoint ptr %posted.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load8.i.i = load i8, ptr %posted.i.i, align 4
  %bf.set10.i.i = or i8 %bf.load8.i.i, 64
  store i8 %bf.set10.i.i, ptr %posted.i.i, align 4
  br label %if.end67

if.then62:                                        ; preds = %if.then54.i, %do.end43.i
  %reserved63 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer.2, i32 0, i32 11
  %68 = ptrtoint ptr %reserved63 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load64 = load i8, ptr %reserved63, align 4
  %bf.clear65 = and i8 %bf.load64, 127
  store i8 %bf.clear65, ptr %reserved63, align 4
  br label %do.body70

if.end67:                                         ; preds = %if.end6.i.i, %if.then2.i.i, %if.end56.i.if.end67_crit_edge
  %69 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i.i, align 4
  %dev.i83.i = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 3
  %call.i.i84.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i83.i, i32 noundef 4) #11
  br label %if.end81

do.body70:                                        ; preds = %if.then62, %found.do.body70_crit_edge, %found.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap_dm_timer_request.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap_dm_timer_request, %if.then77)) #11
          to label %if.end81 [label %if.then77], !srcloc !121

if.then77:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap_dm_timer_request.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %do.body70, %if.end67
  %timer.3112 = phi ptr [ null, %if.then77 ], [ %timer.2, %if.end67 ], [ null, %do.body70 ]
  ret ptr %timer.3112
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_dm_timer_get_irq(ptr noundef readonly %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timer_modify_idlect_mask(i32 noundef %inputmask) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-ti-dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timer_trigger(ptr noundef %timer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs, !prof !123

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %return

if.end:                                           ; preds = %lor.rhs
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_write_reg.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not10.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 134217728
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, %if.end.omap_dm_timer_write_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !120
  br label %return

return:                                           ; preds = %omap_dm_timer_write_reg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %omap_dm_timer_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timers_active() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn11 = load ptr, ptr @omap_timer_list, align 4
  %cmp.not12 = icmp eq ptr %.pn11, @omap_timer_list
  br i1 %cmp.not12, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %reserved = getelementptr i8, ptr %.pn13, i32 -92
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %reserved, align 4
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr i8, ptr %.pn13, i32 -108
  %3 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pend.i.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !119
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not13.i.i = icmp eq i32 %6, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %7 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pend.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !119
  %10 = and i32 %9, 16777216
  %tobool1.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr i8, ptr %.pn13, i32 -104
  %11 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not = icmp eq i32 %14, 0
  br i1 %tobool1.not, label %omap_dm_timer_read_reg.exit.for.inc_crit_edge, label %omap_dm_timer_read_reg.exit.cleanup_crit_edge

omap_dm_timer_read_reg.exit.cleanup_crit_edge:    ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

omap_dm_timer_read_reg.exit.for.inc_crit_edge:    ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %omap_dm_timer_read_reg.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @omap_timer_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %omap_dm_timer_read_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %omap_dm_timer_read_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_dm_timer_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_dm_timer_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_dm_timer_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dm_timer_enable(ptr nocapture noundef readonly %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dm_timer_disable(ptr nocapture noundef readonly %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call, null
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %platform_data.i, align 8
  br label %if.end5

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.thread
  %pdata.0158 = phi ptr [ %call, %if.end.thread ], [ %2, %if.end.if.end5_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %fclk = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -19 to ptr), ptr %fclk, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %io_base = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %if.else51, label %if.then24

if.then24:                                        ; preds = %if.end22
  %call26 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.17, ptr noundef null) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then24.if.end29_crit_edge, label %if.then28

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %capability = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capability, align 4
  %or = or i32 %11, 1073741824
  store i32 %or, ptr %capability, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then24.if.end29_crit_edge
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call31 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef null) #11
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %capability34 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %capability34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capability34, align 4
  %or35 = or i32 %15, 134217728
  store i32 %or35, ptr %capability34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29.if.end36_crit_edge
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call38 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef null) #11
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %capability41 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %capability41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capability41, align 4
  %or42 = or i32 %19, 536870912
  store i32 %or42, ptr %capability41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call45 = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.20, ptr noundef null) #11
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.if.end56_crit_edge, label %if.then47

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %capability48 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %capability48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capability48, align 4
  %or49 = or i32 %23, -2147483648
  store i32 %or49, ptr %capability48, align 4
  br label %if.end56

if.else51:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i, align 4
  %timer_capability = getelementptr inbounds %struct.dmtimer_platform_data, ptr %pdata.0158, i32 0, i32 1
  %27 = ptrtoint ptr %timer_capability to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timer_capability, align 4
  %capability53 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %capability53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %capability53, align 4
  %30 = load i32, ptr @omap_reserved_systimers, align 4
  %sub.i = add i32 %25, -1
  %31 = lshr i32 %30, %sub.i
  %reserved = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 11
  %32 = trunc i32 %31 to i8
  %33 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %reserved, align 4
  %34 = shl i8 %32, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %34, %bf.clear
  store i8 %bf.set, ptr %reserved, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.then47, %if.end43.if.end56_crit_edge
  %capability57 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %capability57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capability57, align 4
  %and = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.then59, label %if.end56.if.then64_crit_edge

if.end56.if.then64_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %nb = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 18
  %37 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @omap_timer_context_notifier, ptr %nb, align 4
  %call61 = tail call i32 @cpu_pm_register_notifier(ptr noundef %nb) #11
  br label %if.then64

if.then64:                                        ; preds = %if.then59, %if.end56.if.then64_crit_edge
  %timer_errata = getelementptr inbounds %struct.dmtimer_platform_data, ptr %pdata.0158, i32 0, i32 2
  %38 = ptrtoint ptr %timer_errata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timer_errata, align 4
  %errata = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %errata to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %errata, align 4
  %pdev66 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %pdev66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pdev, ptr %pdev66, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %reserved67 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 11
  %42 = ptrtoint ptr %reserved67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load68 = load i8, ptr %reserved67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load68)
  %tobool69.not = icmp sgt i8 %bf.load68, -1
  br i1 %tobool69.not, label %if.then70, label %if.then64.do.body81_crit_edge

if.then64.do.body81_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body81

if.then70:                                        ; preds = %if.then64
  %call.i154 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp72 = icmp slt i32 %call.i154, 0
  br i1 %cmp72, label %do.end76, label %if.end77

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16) #14
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %cleanup

if.end77:                                         ; preds = %if.then70
  %43 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !119
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %46)
  %tobool.not.i = icmp ult i32 %46, 65536
  %47 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %48, i32 24
  %add.ptr3.i = getelementptr i8, ptr %48, i32 28
  %add.ptr7.i = getelementptr i8, ptr %48, i32 52
  br label %__omap_dm_timer_init_regs.exit

if.else.i:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr11.i = getelementptr i8, ptr %48, i32 40
  %add.ptr14.i = getelementptr i8, ptr %48, i32 44
  %add.ptr17.i = getelementptr i8, ptr %48, i32 48
  %add.ptr21.i = getelementptr i8, ptr %48, i32 72
  %add.ptr24.i = getelementptr i8, ptr %48, i32 20
  br label %__omap_dm_timer_init_regs.exit

__omap_dm_timer_init_regs.exit:                   ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 1, %if.then.i ], [ 2, %if.else.i ]
  %add.ptr11.sink.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr11.i, %if.else.i ]
  %add.ptr14.sink.i = phi ptr [ %add.ptr3.i, %if.then.i ], [ %add.ptr14.i, %if.else.i ]
  %add.ptr17.sink.i = phi ptr [ %add.ptr3.i, %if.then.i ], [ %add.ptr17.i, %if.else.i ]
  %add.ptr21.sink.i = phi ptr [ %add.ptr7.i, %if.then.i ], [ %add.ptr21.i, %if.else.i ]
  %add.ptr24.sink.i = phi ptr [ %48, %if.then.i ], [ %add.ptr24.i, %if.else.i ]
  %49 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 13
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i, ptr %49, align 4
  %51 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr11.sink.i, ptr %51, align 4
  %53 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr14.sink.i, ptr %53, align 4
  %55 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr17.sink.i, ptr %55, align 4
  %57 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr21.sink.i, ptr %57, align 4
  %59 = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr24.sink.i, ptr %59, align 4
  %call.i155 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #11
  br label %do.body81

do.body81:                                        ; preds = %__omap_dm_timer_init_regs.exit, %if.then64.do.body81_crit_edge
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #11
  %node = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 17
  %61 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omap_timer_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %61, ptr noundef nonnull @omap_timer_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body81.list_add_tail.exit_crit_edge

do.body81.list_add_tail.exit_crit_edge:           ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @omap_timer_list, i32 0, i32 1), align 4
  %62 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @omap_timer_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %call.i, i32 0, i32 17, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %node, ptr %61, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body81.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %call84) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_dm_timer_probe.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_dm_timer_probe, %if.then95)) #11
          to label %cleanup [label %if.then95], !srcloc !121

if.then95:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_dm_timer_probe.__UNIQUE_ID_ddebug172, ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %list_add_tail.exit, %do.end76, %if.then19, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %if.then19 ], [ %call.i154, %do.end76 ], [ -19, %do.end ], [ -12, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then95 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #11
  %init_name.i29 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %dev_name.exit33.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @omap_timer_list, %entry ], [ %.pn, %dev_name.exit33.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp6.not = icmp eq ptr %.pn, @omap_timer_list
  br i1 %cmp6.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pdev8 = getelementptr i8, ptr %.pn, i32 -4
  %1 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev8, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.dev_name.exit_crit_edge

for.body.dev_name.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %for.body.dev_name.exit_crit_edge ]
  %7 = ptrtoint ptr %init_name.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i29, align 8
  %tobool.not.i30 = icmp eq ptr %8, null
  br i1 %tobool.not.i30, label %if.end.i31, label %dev_name.exit.dev_name.exit33_crit_edge

dev_name.exit.dev_name.exit33_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit33

if.end.i31:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit33

dev_name.exit33:                                  ; preds = %if.end.i31, %dev_name.exit.dev_name.exit33_crit_edge
  %retval.0.i32 = phi ptr [ %10, %if.end.i31 ], [ %8, %dev_name.exit.dev_name.exit33_crit_edge ]
  %call12 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef %retval.0.i32) #15
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then, label %dev_name.exit33.for.cond_crit_edge

dev_name.exit33.for.cond_crit_edge:               ; preds = %dev_name.exit33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %dev_name.exit33
  %capability = getelementptr i8, ptr %.pn, i32 -12
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capability, align 4
  %and = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %nb = getelementptr i8, ptr %.pn, i32 8
  %call15 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #11
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ -22, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %call2) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev10, i1 noundef zeroext true) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_timer_context_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -144
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %capability = getelementptr i8, ptr %nb, i32 -20
  %1 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capability, align 4
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %enabled = getelementptr i8, ptr %nb, i32 -108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_timer_save_context(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %capability3 = getelementptr i8, ptr %nb, i32 -20
  %5 = ptrtoint ptr %capability3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capability3, align 4
  %and4 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false6:                                   ; preds = %sw.bb2
  %enabled7 = getelementptr i8, ptr %nb, i32 -108
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled7, i32 noundef 4) #11
  %7 = ptrtoint ptr %enabled7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %enabled7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %lor.lhs.false6.sw.epilog_crit_edge, label %if.end11

lor.lhs.false6.sw.epilog_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end11:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_timer_restore_context(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11, %lor.lhs.false6.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.end, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !129
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !130
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_timer_save_context(ptr noundef %timer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %func_base.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %0 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !119
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %context = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %context, align 4
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %5 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

entry.omap_dm_timer_read_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %entry
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %7 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pend.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !119
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not13.i.i = icmp eq i32 %10, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %11 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pend.i.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !119
  %14 = and i32 %13, 16777216
  %tobool1.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %entry.omap_dm_timer_read_reg.exit_crit_edge
  %15 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %tclr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %tclr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tclr, align 4
  %20 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i27 = load i8, ptr %posted.i, align 4
  %21 = and i8 %bf.load.i27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i28 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i28, label %omap_dm_timer_read_reg.exit.omap_dm_timer_read_reg.exit33_crit_edge, label %while.cond.preheader.i.i30

omap_dm_timer_read_reg.exit.omap_dm_timer_read_reg.exit33_crit_edge: ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit33

while.cond.preheader.i.i30:                       ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i29 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %22 = ptrtoint ptr %pend.i.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pend.i.i29, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !119
  br label %omap_dm_timer_read_reg.exit33

omap_dm_timer_read_reg.exit33:                    ; preds = %while.cond.preheader.i.i30, %omap_dm_timer_read_reg.exit.omap_dm_timer_read_reg.exit33_crit_edge
  %25 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #11, !srcloc !119
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %twer = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %twer to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %twer, align 4
  %30 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i35 = load i8, ptr %posted.i, align 4
  %31 = and i8 %bf.load.i35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i36 = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i36, label %omap_dm_timer_read_reg.exit33.omap_dm_timer_read_reg.exit46_crit_edge, label %while.cond.preheader.i.i40

omap_dm_timer_read_reg.exit33.omap_dm_timer_read_reg.exit46_crit_edge: ; preds = %omap_dm_timer_read_reg.exit33
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit46

while.cond.preheader.i.i40:                       ; preds = %omap_dm_timer_read_reg.exit33
  %pend.i.i37 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %32 = ptrtoint ptr %pend.i.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pend.i.i37, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !119
  %35 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not13.i.i39 = icmp eq i32 %35, 0
  br i1 %tobool1.not13.i.i39, label %while.cond.preheader.i.i40.omap_dm_timer_read_reg.exit46_crit_edge, label %while.cond.preheader.i.i40.do.end.i.i43_crit_edge

while.cond.preheader.i.i40.do.end.i.i43_crit_edge: ; preds = %while.cond.preheader.i.i40
  br label %do.end.i.i43

while.cond.preheader.i.i40.omap_dm_timer_read_reg.exit46_crit_edge: ; preds = %while.cond.preheader.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit46

do.end.i.i43:                                     ; preds = %do.end.i.i43.do.end.i.i43_crit_edge, %while.cond.preheader.i.i40.do.end.i.i43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %36 = ptrtoint ptr %pend.i.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pend.i.i37, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !119
  %39 = and i32 %38, 67108864
  %tobool1.not.i.i42 = icmp eq i32 %39, 0
  br i1 %tobool1.not.i.i42, label %do.end.i.i43.omap_dm_timer_read_reg.exit46_crit_edge, label %do.end.i.i43.do.end.i.i43_crit_edge

do.end.i.i43.do.end.i.i43_crit_edge:              ; preds = %do.end.i.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i43

do.end.i.i43.omap_dm_timer_read_reg.exit46_crit_edge: ; preds = %do.end.i.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit46

omap_dm_timer_read_reg.exit46:                    ; preds = %do.end.i.i43.omap_dm_timer_read_reg.exit46_crit_edge, %while.cond.preheader.i.i40.omap_dm_timer_read_reg.exit46_crit_edge, %omap_dm_timer_read_reg.exit33.omap_dm_timer_read_reg.exit46_crit_edge
  %40 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #11, !srcloc !119
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  %tldr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 6
  %44 = ptrtoint ptr %tldr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tldr, align 4
  %45 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i48 = load i8, ptr %posted.i, align 4
  %46 = and i8 %bf.load.i48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i49 = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i49, label %omap_dm_timer_read_reg.exit46.omap_dm_timer_read_reg.exit59_crit_edge, label %while.cond.preheader.i.i53

omap_dm_timer_read_reg.exit46.omap_dm_timer_read_reg.exit59_crit_edge: ; preds = %omap_dm_timer_read_reg.exit46
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit59

while.cond.preheader.i.i53:                       ; preds = %omap_dm_timer_read_reg.exit46
  %pend.i.i50 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %47 = ptrtoint ptr %pend.i.i50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pend.i.i50, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !119
  %50 = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not13.i.i52 = icmp eq i32 %50, 0
  br i1 %tobool1.not13.i.i52, label %while.cond.preheader.i.i53.omap_dm_timer_read_reg.exit59_crit_edge, label %while.cond.preheader.i.i53.do.end.i.i56_crit_edge

while.cond.preheader.i.i53.do.end.i.i56_crit_edge: ; preds = %while.cond.preheader.i.i53
  br label %do.end.i.i56

while.cond.preheader.i.i53.omap_dm_timer_read_reg.exit59_crit_edge: ; preds = %while.cond.preheader.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit59

do.end.i.i56:                                     ; preds = %do.end.i.i56.do.end.i.i56_crit_edge, %while.cond.preheader.i.i53.do.end.i.i56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %51 = ptrtoint ptr %pend.i.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pend.i.i50, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !119
  %54 = and i32 %53, 268435456
  %tobool1.not.i.i55 = icmp eq i32 %54, 0
  br i1 %tobool1.not.i.i55, label %do.end.i.i56.omap_dm_timer_read_reg.exit59_crit_edge, label %do.end.i.i56.do.end.i.i56_crit_edge

do.end.i.i56.do.end.i.i56_crit_edge:              ; preds = %do.end.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i56

do.end.i.i56.omap_dm_timer_read_reg.exit59_crit_edge: ; preds = %do.end.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit59

omap_dm_timer_read_reg.exit59:                    ; preds = %do.end.i.i56.omap_dm_timer_read_reg.exit59_crit_edge, %while.cond.preheader.i.i53.omap_dm_timer_read_reg.exit59_crit_edge, %omap_dm_timer_read_reg.exit46.omap_dm_timer_read_reg.exit59_crit_edge
  %55 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %56, i32 56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #11, !srcloc !119
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  %tmar = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 9
  %59 = ptrtoint ptr %tmar to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmar, align 4
  %irq_ena = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 5
  %60 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irq_ena, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !119
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %tier = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 2
  %64 = ptrtoint ptr %tier to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tier, align 4
  %65 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i61 = load i8, ptr %posted.i, align 4
  %66 = and i8 %bf.load.i61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i62 = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i62, label %omap_dm_timer_read_reg.exit59.omap_dm_timer_read_reg.exit67_crit_edge, label %while.cond.preheader.i.i64

omap_dm_timer_read_reg.exit59.omap_dm_timer_read_reg.exit67_crit_edge: ; preds = %omap_dm_timer_read_reg.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit67

while.cond.preheader.i.i64:                       ; preds = %omap_dm_timer_read_reg.exit59
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i63 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %67 = ptrtoint ptr %pend.i.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pend.i.i63, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !119
  br label %omap_dm_timer_read_reg.exit67

omap_dm_timer_read_reg.exit67:                    ; preds = %while.cond.preheader.i.i64, %omap_dm_timer_read_reg.exit59.omap_dm_timer_read_reg.exit67_crit_edge
  %70 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %71, i32 64
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66) #11, !srcloc !119
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %tsicr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 11
  %74 = ptrtoint ptr %tsicr to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %tsicr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_timer_restore_context(ptr noundef readonly %timer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %func_base.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %3 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !120
  %twer = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %twer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %twer, align 4
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %7 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %8 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %entry.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i

entry.omap_dm_timer_write_reg.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %9 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pend.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !119
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %while.cond.preheader.i.i, %entry.omap_dm_timer_write_reg.exit_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  %13 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !120
  %tcrr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 5
  %15 = ptrtoint ptr %tcrr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcrr, align 4
  %17 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i24 = load i8, ptr %posted.i, align 4
  %18 = and i8 %bf.load.i24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i25 = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i25, label %omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit30_crit_edge, label %while.cond.preheader.i.i27

omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit30_crit_edge: ; preds = %omap_dm_timer_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit30

while.cond.preheader.i.i27:                       ; preds = %omap_dm_timer_write_reg.exit
  %pend.i.i26 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %19 = ptrtoint ptr %pend.i.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pend.i.i26, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !119
  %22 = and i32 %21, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not10.i.i = icmp eq i32 %22, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i27.omap_dm_timer_write_reg.exit30_crit_edge, label %while.cond.preheader.i.i27.do.end.i.i_crit_edge

while.cond.preheader.i.i27.do.end.i.i_crit_edge:  ; preds = %while.cond.preheader.i.i27
  br label %do.end.i.i

while.cond.preheader.i.i27.omap_dm_timer_write_reg.exit30_crit_edge: ; preds = %while.cond.preheader.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit30

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i27.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %23 = ptrtoint ptr %pend.i.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pend.i.i26, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !119
  %26 = and i32 %25, 33554432
  %tobool1.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_write_reg.exit30_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_write_reg.exit30_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit30

omap_dm_timer_write_reg.exit30:                   ; preds = %do.end.i.i.omap_dm_timer_write_reg.exit30_crit_edge, %while.cond.preheader.i.i27.omap_dm_timer_write_reg.exit30_crit_edge, %omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit30_crit_edge
  %27 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %28 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %27) #11, !srcloc !120
  %tldr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 6
  %30 = ptrtoint ptr %tldr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tldr, align 4
  %32 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i32 = load i8, ptr %posted.i, align 4
  %33 = and i8 %bf.load.i32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i33 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i33, label %omap_dm_timer_write_reg.exit30.omap_dm_timer_write_reg.exit43_crit_edge, label %while.cond.preheader.i.i37

omap_dm_timer_write_reg.exit30.omap_dm_timer_write_reg.exit43_crit_edge: ; preds = %omap_dm_timer_write_reg.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit43

while.cond.preheader.i.i37:                       ; preds = %omap_dm_timer_write_reg.exit30
  %pend.i.i34 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %34 = ptrtoint ptr %pend.i.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pend.i.i34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !119
  %37 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not10.i.i36 = icmp eq i32 %37, 0
  br i1 %tobool1.not10.i.i36, label %while.cond.preheader.i.i37.omap_dm_timer_write_reg.exit43_crit_edge, label %while.cond.preheader.i.i37.do.end.i.i40_crit_edge

while.cond.preheader.i.i37.do.end.i.i40_crit_edge: ; preds = %while.cond.preheader.i.i37
  br label %do.end.i.i40

while.cond.preheader.i.i37.omap_dm_timer_write_reg.exit43_crit_edge: ; preds = %while.cond.preheader.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit43

do.end.i.i40:                                     ; preds = %do.end.i.i40.do.end.i.i40_crit_edge, %while.cond.preheader.i.i37.do.end.i.i40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %38 = ptrtoint ptr %pend.i.i34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pend.i.i34, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !119
  %41 = and i32 %40, 67108864
  %tobool1.not.i.i39 = icmp eq i32 %41, 0
  br i1 %tobool1.not.i.i39, label %do.end.i.i40.omap_dm_timer_write_reg.exit43_crit_edge, label %do.end.i.i40.do.end.i.i40_crit_edge

do.end.i.i40.do.end.i.i40_crit_edge:              ; preds = %do.end.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i40

do.end.i.i40.omap_dm_timer_write_reg.exit43_crit_edge: ; preds = %do.end.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit43

omap_dm_timer_write_reg.exit43:                   ; preds = %do.end.i.i40.omap_dm_timer_write_reg.exit43_crit_edge, %while.cond.preheader.i.i37.omap_dm_timer_write_reg.exit43_crit_edge, %omap_dm_timer_write_reg.exit30.omap_dm_timer_write_reg.exit43_crit_edge
  %42 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  %43 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %44, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 %42) #11, !srcloc !120
  %tmar = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 9
  %45 = ptrtoint ptr %tmar to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tmar, align 4
  %47 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i45 = load i8, ptr %posted.i, align 4
  %48 = and i8 %bf.load.i45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i46 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i46, label %omap_dm_timer_write_reg.exit43.omap_dm_timer_write_reg.exit56_crit_edge, label %while.cond.preheader.i.i50

omap_dm_timer_write_reg.exit43.omap_dm_timer_write_reg.exit56_crit_edge: ; preds = %omap_dm_timer_write_reg.exit43
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit56

while.cond.preheader.i.i50:                       ; preds = %omap_dm_timer_write_reg.exit43
  %pend.i.i47 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %49 = ptrtoint ptr %pend.i.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pend.i.i47, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !119
  %52 = and i32 %51, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool1.not10.i.i49 = icmp eq i32 %52, 0
  br i1 %tobool1.not10.i.i49, label %while.cond.preheader.i.i50.omap_dm_timer_write_reg.exit56_crit_edge, label %while.cond.preheader.i.i50.do.end.i.i53_crit_edge

while.cond.preheader.i.i50.do.end.i.i53_crit_edge: ; preds = %while.cond.preheader.i.i50
  br label %do.end.i.i53

while.cond.preheader.i.i50.omap_dm_timer_write_reg.exit56_crit_edge: ; preds = %while.cond.preheader.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit56

do.end.i.i53:                                     ; preds = %do.end.i.i53.do.end.i.i53_crit_edge, %while.cond.preheader.i.i50.do.end.i.i53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %53 = ptrtoint ptr %pend.i.i47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pend.i.i47, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !119
  %56 = and i32 %55, 268435456
  %tobool1.not.i.i52 = icmp eq i32 %56, 0
  br i1 %tobool1.not.i.i52, label %do.end.i.i53.omap_dm_timer_write_reg.exit56_crit_edge, label %do.end.i.i53.do.end.i.i53_crit_edge

do.end.i.i53.do.end.i.i53_crit_edge:              ; preds = %do.end.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i53

do.end.i.i53.omap_dm_timer_write_reg.exit56_crit_edge: ; preds = %do.end.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit56

omap_dm_timer_write_reg.exit56:                   ; preds = %do.end.i.i53.omap_dm_timer_write_reg.exit56_crit_edge, %while.cond.preheader.i.i50.omap_dm_timer_write_reg.exit56_crit_edge, %omap_dm_timer_write_reg.exit43.omap_dm_timer_write_reg.exit56_crit_edge
  %57 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %58 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %59, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %57) #11, !srcloc !120
  %tsicr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 11
  %60 = ptrtoint ptr %tsicr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tsicr, align 4
  %62 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i58 = load i8, ptr %posted.i, align 4
  %63 = and i8 %bf.load.i58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i59 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i59, label %omap_dm_timer_write_reg.exit56.omap_dm_timer_write_reg.exit64_crit_edge, label %while.cond.preheader.i.i61

omap_dm_timer_write_reg.exit56.omap_dm_timer_write_reg.exit64_crit_edge: ; preds = %omap_dm_timer_write_reg.exit56
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit64

while.cond.preheader.i.i61:                       ; preds = %omap_dm_timer_write_reg.exit56
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i60 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %64 = ptrtoint ptr %pend.i.i60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pend.i.i60, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !119
  br label %omap_dm_timer_write_reg.exit64

omap_dm_timer_write_reg.exit64:                   ; preds = %while.cond.preheader.i.i61, %omap_dm_timer_write_reg.exit56.omap_dm_timer_write_reg.exit64_crit_edge
  %67 = tail call i32 @llvm.bswap.i32(i32 %61) #11
  %68 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %69, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %67) #11, !srcloc !120
  %tier = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 2
  %70 = ptrtoint ptr %tier to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tier, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %irq_ena = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 5
  %73 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_ena, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #11, !srcloc !120
  %tclr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 4
  %75 = ptrtoint ptr %tclr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tclr, align 4
  %77 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i66 = load i8, ptr %posted.i, align 4
  %78 = and i8 %bf.load.i66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i67 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i67, label %omap_dm_timer_write_reg.exit64.omap_dm_timer_write_reg.exit77_crit_edge, label %while.cond.preheader.i.i71

omap_dm_timer_write_reg.exit64.omap_dm_timer_write_reg.exit77_crit_edge: ; preds = %omap_dm_timer_write_reg.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit77

while.cond.preheader.i.i71:                       ; preds = %omap_dm_timer_write_reg.exit64
  %pend.i.i68 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %79 = ptrtoint ptr %pend.i.i68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pend.i.i68, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !119
  %82 = and i32 %81, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool1.not10.i.i70 = icmp eq i32 %82, 0
  br i1 %tobool1.not10.i.i70, label %while.cond.preheader.i.i71.omap_dm_timer_write_reg.exit77_crit_edge, label %while.cond.preheader.i.i71.do.end.i.i74_crit_edge

while.cond.preheader.i.i71.do.end.i.i74_crit_edge: ; preds = %while.cond.preheader.i.i71
  br label %do.end.i.i74

while.cond.preheader.i.i71.omap_dm_timer_write_reg.exit77_crit_edge: ; preds = %while.cond.preheader.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit77

do.end.i.i74:                                     ; preds = %do.end.i.i74.do.end.i.i74_crit_edge, %while.cond.preheader.i.i71.do.end.i.i74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %83 = ptrtoint ptr %pend.i.i68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pend.i.i68, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #11, !srcloc !119
  %86 = and i32 %85, 16777216
  %tobool1.not.i.i73 = icmp eq i32 %86, 0
  br i1 %tobool1.not.i.i73, label %do.end.i.i74.omap_dm_timer_write_reg.exit77_crit_edge, label %do.end.i.i74.do.end.i.i74_crit_edge

do.end.i.i74.do.end.i.i74_crit_edge:              ; preds = %do.end.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i74

do.end.i.i74.omap_dm_timer_write_reg.exit77_crit_edge: ; preds = %do.end.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit77

omap_dm_timer_write_reg.exit77:                   ; preds = %do.end.i.i74.omap_dm_timer_write_reg.exit77_crit_edge, %while.cond.preheader.i.i71.omap_dm_timer_write_reg.exit77_crit_edge, %omap_dm_timer_write_reg.exit64.omap_dm_timer_write_reg.exit77_crit_edge
  %87 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  %88 = ptrtoint ptr %func_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %func_base.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %89, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 %87) #11, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request_by_node(ptr noundef %np) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc ptr @_omap_dm_timer_request(i32 noundef 3, ptr noundef nonnull %np)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request_specific(i32 noundef %id) #1 align 64 {
entry:
  %id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %1 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call fastcc ptr @_omap_dm_timer_request(i32 noundef 1, ptr noundef nonnull %id.addr)
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_omap_dm_timer_request(i32 noundef 0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_free(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !123

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %fclk = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fclk, align 4
  tail call void @clk_put(ptr noundef %1) #11
  %reserved = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %do.end, label %if.end.if.end25_crit_edge, !prof !123

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 423, i32 noundef 9, ptr noundef null) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load33 = load i8, ptr %reserved, align 4
  %bf.clear = and i8 %bf.load33, 127
  store i8 %bf.clear, ptr %reserved, align 4
  br label %return

return:                                           ; preds = %if.end25, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_int_enable(ptr noundef readonly %timer, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !123

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #11
  %irq_ena.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 5
  %3 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_ena.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !120
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %5 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #11, !srcloc !120
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i8, i32 noundef 4) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_int_disable(ptr noundef readonly %timer, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %revision = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 13
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_ena = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 5
  %4 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ena, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %neg = xor i32 %mask, -1
  %and = and i32 %7, %neg
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %l.0 = phi i32 [ %and, %if.then4 ], [ %mask, %if.end.if.end5_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %l.0)
  %irq_dis = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 6
  %9 = ptrtoint ptr %irq_dis to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_dis, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !120
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %11 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.end5.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end5.omap_dm_timer_read_reg.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %13 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pend.i.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !119
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %while.cond.preheader.i.i, %if.end5.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %16 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %neg7 = xor i32 %mask, -1
  %and8 = and i32 %19, %neg7
  %20 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i20 = load i8, ptr %posted.i, align 4
  %21 = and i8 %bf.load.i20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i21 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i21, label %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i23

omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i23:                       ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pend.i.i22 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %22 = ptrtoint ptr %pend.i.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pend.i.i22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !119
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %while.cond.preheader.i.i23, %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge
  %25 = tail call i32 @llvm.bswap.i32(i32 %and8) #11
  %26 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 %25) #11, !srcloc !120
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %dev.i27 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %call.i.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i27, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dm_timer_write_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @omap_dm_timer_get_fclk(ptr noundef readonly %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fclk = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fclk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %1
  br label %return

return:                                           ; preds = %land.lhs.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_start(ptr noundef readonly %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not13.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 16777216
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %omap_dm_timer_read_reg.exit.cleanup_crit_edge

omap_dm_timer_read_reg.exit.cleanup_crit_edge:    ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %omap_dm_timer_read_reg.exit
  %or = or i32 %15, 1
  %16 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i13 = load i8, ptr %posted.i, align 4
  %17 = and i8 %bf.load.i13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i14 = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i14, label %if.then5.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i16

if.then5.omap_dm_timer_write_reg.exit_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i16:                       ; preds = %if.then5
  %pend.i.i15 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %18 = ptrtoint ptr %pend.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pend.i.i15, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !119
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not10.i.i = icmp eq i32 %21, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i16.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i16.do.end.i.i19_crit_edge

while.cond.preheader.i.i16.do.end.i.i19_crit_edge: ; preds = %while.cond.preheader.i.i16
  br label %do.end.i.i19

while.cond.preheader.i.i16.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i19:                                     ; preds = %do.end.i.i19.do.end.i.i19_crit_edge, %while.cond.preheader.i.i16.do.end.i.i19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %22 = ptrtoint ptr %pend.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pend.i.i15, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !119
  %25 = and i32 %24, 16777216
  %tobool1.not.i.i18 = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i18, label %do.end.i.i19.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i19.do.end.i.i19_crit_edge

do.end.i.i19.do.end.i.i19_crit_edge:              ; preds = %do.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i19

do.end.i.i19.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i19.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i16.omap_dm_timer_write_reg.exit_crit_edge, %if.then5.omap_dm_timer_write_reg.exit_crit_edge
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %27 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %26) #11, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_write_reg.exit, %omap_dm_timer_read_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %omap_dm_timer_write_reg.exit ], [ 0, %omap_dm_timer_read_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_stop(ptr noundef readonly %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %capability = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 14
  %0 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capability, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fclk = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 2
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %call, %if.then5 ]
  %posted = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %4 = ptrtoint ptr %posted to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %posted, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.end6.__omap_dm_timer_read.exit.i_crit_edge, label %while.cond.preheader.i.i

if.end6.__omap_dm_timer_read.exit.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read.exit.i

while.cond.preheader.i.i:                         ; preds = %if.end6
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %6 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pend.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !119
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not13.i.i = icmp eq i32 %9, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.__omap_dm_timer_read.exit.i_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.__omap_dm_timer_read.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %10 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pend.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !119
  %13 = and i32 %12, 16777216
  %tobool1.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.__omap_dm_timer_read.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.__omap_dm_timer_read.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read.exit.i

__omap_dm_timer_read.exit.i:                      ; preds = %do.end.i.i.__omap_dm_timer_read.exit.i_crit_edge, %while.cond.preheader.i.i.__omap_dm_timer_read.exit.i_crit_edge, %if.end6.__omap_dm_timer_read.exit.i_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %14 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %__omap_dm_timer_read.exit.i.__omap_dm_timer_stop.exit_crit_edge, label %if.then.i

__omap_dm_timer_read.exit.i.__omap_dm_timer_stop.exit_crit_edge: ; preds = %__omap_dm_timer_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_stop.exit

if.then.i:                                        ; preds = %__omap_dm_timer_read.exit.i
  %and1.i = and i32 %17, -2
  br i1 %tobool.not.i.i, label %__omap_dm_timer_read.exit40.critedge.i, label %while.cond.preheader.i24.i

while.cond.preheader.i24.i:                       ; preds = %if.then.i
  %pend.i23.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %18 = ptrtoint ptr %pend.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pend.i23.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !119
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not10.i.i = icmp eq i32 %21, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i34.critedge.i, label %while.cond.preheader.i24.i.do.end.i27.i_crit_edge

while.cond.preheader.i24.i.do.end.i27.i_crit_edge: ; preds = %while.cond.preheader.i24.i
  br label %do.end.i27.i

do.end.i27.i:                                     ; preds = %do.end.i27.i.do.end.i27.i_crit_edge, %while.cond.preheader.i24.i.do.end.i27.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %22 = ptrtoint ptr %pend.i23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pend.i23.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !119
  %25 = and i32 %24, 16777216
  %tobool1.not.i26.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i26.i, label %__omap_dm_timer_write.exit.i, label %do.end.i27.i.do.end.i27.i_crit_edge

do.end.i27.i.do.end.i27.i_crit_edge:              ; preds = %do.end.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i27.i

__omap_dm_timer_write.exit.i:                     ; preds = %do.end.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #11
  %27 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %26) #11, !srcloc !120
  br label %while.cond.preheader.i34.i

while.cond.preheader.i34.critedge.i:              ; preds = %while.cond.preheader.i24.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #11
  %30 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i29.c41.i = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.c41.i, i32 %29) #11, !srcloc !120
  br label %while.cond.preheader.i34.i

while.cond.preheader.i34.i:                       ; preds = %while.cond.preheader.i34.critedge.i, %__omap_dm_timer_write.exit.i
  %32 = ptrtoint ptr %pend.i23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pend.i23.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !119
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not13.i33.i = icmp eq i32 %35, 0
  br i1 %tobool1.not13.i33.i, label %while.cond.preheader.i34.i.__omap_dm_timer_read.exit40.i_crit_edge, label %while.cond.preheader.i34.i.do.end.i37.i_crit_edge

while.cond.preheader.i34.i.do.end.i37.i_crit_edge: ; preds = %while.cond.preheader.i34.i
  br label %do.end.i37.i

while.cond.preheader.i34.i.__omap_dm_timer_read.exit40.i_crit_edge: ; preds = %while.cond.preheader.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read.exit40.i

do.end.i37.i:                                     ; preds = %do.end.i37.i.do.end.i37.i_crit_edge, %while.cond.preheader.i34.i.do.end.i37.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %36 = ptrtoint ptr %pend.i23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pend.i23.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !119
  %39 = and i32 %38, 16777216
  %tobool1.not.i36.i = icmp eq i32 %39, 0
  br i1 %tobool1.not.i36.i, label %do.end.i37.i.__omap_dm_timer_read.exit40.i_crit_edge, label %do.end.i37.i.do.end.i37.i_crit_edge

do.end.i37.i.do.end.i37.i_crit_edge:              ; preds = %do.end.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i37.i

do.end.i37.i.__omap_dm_timer_read.exit40.i_crit_edge: ; preds = %do.end.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read.exit40.i

__omap_dm_timer_read.exit40.critedge.i:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #11
  %41 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i29.c.i = getelementptr i8, ptr %42, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.c.i, i32 %40) #11, !srcloc !120
  br label %__omap_dm_timer_read.exit40.i

__omap_dm_timer_read.exit40.i:                    ; preds = %__omap_dm_timer_read.exit40.critedge.i, %do.end.i37.i.__omap_dm_timer_read.exit40.i_crit_edge, %while.cond.preheader.i34.i.__omap_dm_timer_read.exit40.i_crit_edge
  %43 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %44, i32 36
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #11, !srcloc !119
  %div.i = udiv i32 3500000, %rate.0
  %add.i = add nuw nsw i32 %div.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %add.i) #11
  br label %__omap_dm_timer_stop.exit

__omap_dm_timer_stop.exit:                        ; preds = %__omap_dm_timer_read.exit40.i, %__omap_dm_timer_read.exit.i.__omap_dm_timer_stop.exit_crit_edge
  %irq_stat.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 4
  %47 = ptrtoint ptr %irq_stat.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_stat.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 33554432) #11, !srcloc !120
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %49 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %__omap_dm_timer_stop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__omap_dm_timer_stop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_source(ptr noundef readonly %timer, i32 noundef %source) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fclk = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fclk, align 4
  %cmp.i = icmp ule ptr %1, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %2 = icmp ult i32 %source, 3
  %or.cond = and i1 %cmp.i, %2
  br i1 %or.cond, label %switch.lookup, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %lor.lhs.false
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.omap_dm_timer_set_source, i32 0, i32 %source
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %pdev = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %switch.lookup.if.end12_crit_edge, label %land.lhs.true

switch.lookup.if.end12_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %switch.lookup
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true.if.end12_crit_edge, label %if.then8

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 %9(ptr noundef %5, i32 noundef %source) #11
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %switch.lookup.if.end12_crit_edge
  %call14 = tail call ptr @__clk_get_hw(ptr noundef %1) #11
  %call15 = tail call i32 @clk_hw_get_num_parents(ptr noundef %call14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp = icmp ult i32 %call15, 2
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call20 = tail call ptr @clk_get(ptr noundef %dev19, ptr noundef nonnull %switch.load) #11
  %cmp.i53 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull %switch.load) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fclk, align 4
  %call26 = tail call i32 @clk_set_parent(ptr noundef %13, ptr noundef %call20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef nonnull %switch.load) #14
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end24.if.end34_crit_edge
  tail call void @clk_put(ptr noundef %call20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end, %if.end12.cleanup_crit_edge, %if.then8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then8 ], [ -22, %do.end ], [ %call26, %if.end34 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_load(ptr noundef readonly %timer, i32 noundef %load) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !123

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_write_reg.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not10.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 67108864
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, %if.end.omap_dm_timer_write_reg.exit_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %load) #11
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %13 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !120
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i8, i32 noundef 4) #11
  br label %return

return:                                           ; preds = %omap_dm_timer_write_reg.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dm_timer_write_reg.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_match(ptr noundef readonly %timer, i32 noundef %enable, i32 noundef %match) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not13.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 16777216
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %15 = and i32 %14, -1073741825
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %masksel = select i1 %tobool4.not, i32 0, i32 64
  %l.0 = or i32 %16, %masksel
  %17 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i15 = load i8, ptr %posted.i, align 4
  %18 = and i8 %bf.load.i15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i16 = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i16, label %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i18

omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i18:                       ; preds = %omap_dm_timer_read_reg.exit
  %pend.i.i17 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %19 = ptrtoint ptr %pend.i.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pend.i.i17, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !119
  %22 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not10.i.i = icmp eq i32 %22, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i18.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i18.do.end.i.i21_crit_edge

while.cond.preheader.i.i18.do.end.i.i21_crit_edge: ; preds = %while.cond.preheader.i.i18
  br label %do.end.i.i21

while.cond.preheader.i.i18.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i21:                                     ; preds = %do.end.i.i21.do.end.i.i21_crit_edge, %while.cond.preheader.i.i18.do.end.i.i21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %23 = ptrtoint ptr %pend.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pend.i.i17, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !119
  %26 = and i32 %25, 268435456
  %tobool1.not.i.i20 = icmp eq i32 %26, 0
  br i1 %tobool1.not.i.i20, label %do.end.i.i21.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i21.do.end.i.i21_crit_edge

do.end.i.i21.do.end.i.i21_crit_edge:              ; preds = %do.end.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i21

do.end.i.i21.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i21.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i18.omap_dm_timer_write_reg.exit_crit_edge, %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge
  %27 = tail call i32 @llvm.bswap.i32(i32 %match) #11
  %28 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %27) #11, !srcloc !120
  %30 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i25 = load i8, ptr %posted.i, align 4
  %31 = and i8 %bf.load.i25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i26 = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i26, label %omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit36_crit_edge, label %while.cond.preheader.i.i30

omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit36_crit_edge: ; preds = %omap_dm_timer_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit36

while.cond.preheader.i.i30:                       ; preds = %omap_dm_timer_write_reg.exit
  %pend.i.i27 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %32 = ptrtoint ptr %pend.i.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pend.i.i27, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !119
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not10.i.i29 = icmp eq i32 %35, 0
  br i1 %tobool1.not10.i.i29, label %while.cond.preheader.i.i30.omap_dm_timer_write_reg.exit36_crit_edge, label %while.cond.preheader.i.i30.do.end.i.i33_crit_edge

while.cond.preheader.i.i30.do.end.i.i33_crit_edge: ; preds = %while.cond.preheader.i.i30
  br label %do.end.i.i33

while.cond.preheader.i.i30.omap_dm_timer_write_reg.exit36_crit_edge: ; preds = %while.cond.preheader.i.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit36

do.end.i.i33:                                     ; preds = %do.end.i.i33.do.end.i.i33_crit_edge, %while.cond.preheader.i.i30.do.end.i.i33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %36 = ptrtoint ptr %pend.i.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pend.i.i27, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !119
  %39 = and i32 %38, 16777216
  %tobool1.not.i.i32 = icmp eq i32 %39, 0
  br i1 %tobool1.not.i.i32, label %do.end.i.i33.omap_dm_timer_write_reg.exit36_crit_edge, label %do.end.i.i33.do.end.i.i33_crit_edge

do.end.i.i33.do.end.i.i33_crit_edge:              ; preds = %do.end.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i33

do.end.i.i33.omap_dm_timer_write_reg.exit36_crit_edge: ; preds = %do.end.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit36

omap_dm_timer_write_reg.exit36:                   ; preds = %do.end.i.i33.omap_dm_timer_write_reg.exit36_crit_edge, %while.cond.preheader.i.i30.omap_dm_timer_write_reg.exit36_crit_edge, %omap_dm_timer_write_reg.exit.omap_dm_timer_write_reg.exit36_crit_edge
  %40 = tail call i32 @llvm.bswap.i32(i32 %l.0) #11
  %41 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %42, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %40) #11, !srcloc !120
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %dev.i38 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %call.i.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i38, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_write_reg.exit36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dm_timer_write_reg.exit36 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_pwm(ptr noundef readonly %timer, i32 noundef %def_on, i32 noundef %toggle, i32 noundef %trigger, i32 noundef %autoreload) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not13.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 16777216
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %15 = and i32 %14, 2107899903
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %def_on)
  %tobool4.not = icmp eq i32 %def_on, 0
  %or = or i32 %16, 128
  %spec.select = select i1 %tobool4.not, i32 %16, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %toggle)
  %tobool7.not = icmp eq i32 %toggle, 0
  %or9 = or i32 %spec.select, 4096
  %l.1 = select i1 %tobool7.not, i32 %spec.select, i32 %or9
  %shl = shl i32 %trigger, 10
  %or11 = or i32 %l.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %autoreload)
  %tobool12.not = icmp eq i32 %autoreload, 0
  %or14 = or i32 %or11, 2
  %l.2 = select i1 %tobool12.not, i32 %or11, i32 %or14
  %17 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i26 = load i8, ptr %posted.i, align 4
  %18 = and i8 %bf.load.i26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i27 = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i27, label %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i29

omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i29:                       ; preds = %omap_dm_timer_read_reg.exit
  %pend.i.i28 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %19 = ptrtoint ptr %pend.i.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pend.i.i28, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !119
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not10.i.i = icmp eq i32 %22, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i29.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i29.do.end.i.i32_crit_edge

while.cond.preheader.i.i29.do.end.i.i32_crit_edge: ; preds = %while.cond.preheader.i.i29
  br label %do.end.i.i32

while.cond.preheader.i.i29.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i32:                                     ; preds = %do.end.i.i32.do.end.i.i32_crit_edge, %while.cond.preheader.i.i29.do.end.i.i32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %23 = ptrtoint ptr %pend.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pend.i.i28, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !119
  %26 = and i32 %25, 16777216
  %tobool1.not.i.i31 = icmp eq i32 %26, 0
  br i1 %tobool1.not.i.i31, label %do.end.i.i32.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i32.do.end.i.i32_crit_edge

do.end.i.i32.do.end.i.i32_crit_edge:              ; preds = %do.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i32

do.end.i.i32.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i32.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i29.omap_dm_timer_write_reg.exit_crit_edge, %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge
  %27 = tail call i32 @llvm.bswap.i32(i32 %l.2) #11
  %28 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %27) #11, !srcloc !120
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %dev.i36 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %call.i.i37 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i36, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dm_timer_write_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_get_pwm_status(ptr noundef readonly %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not13.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 16777216
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i8, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_read_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %omap_dm_timer_read_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_prescaler(ptr noundef readonly %timer, i32 noundef %prescaler) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  %0 = add i32 %prescaler, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %0)
  %1 = icmp ult i32 %0, -9
  %2 = or i1 %tobool.not, %1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end, !prof !131

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 16
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #11
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %5 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_read_reg.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %7 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pend.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !119
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not13.i.i = icmp eq i32 %10, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %11 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pend.i.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !119
  %14 = and i32 %13, 16777216
  %tobool1.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_read_reg.exit

omap_dm_timer_read_reg.exit:                      ; preds = %do.end.i.i.omap_dm_timer_read_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_read_reg.exit_crit_edge, %if.end.omap_dm_timer_read_reg.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %15 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %18 = and i32 %17, -1006632961
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %shl = shl i32 %prescaler, 2
  %or = or i32 %shl, %19
  %or8 = or i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prescaler)
  %cmp634 = icmp slt i32 %prescaler, 0
  %l.0 = select i1 %cmp634, i32 %19, i32 %or8
  %20 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i22 = load i8, ptr %posted.i, align 4
  %21 = and i8 %bf.load.i22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i23 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i23, label %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i25

omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %omap_dm_timer_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i25:                       ; preds = %omap_dm_timer_read_reg.exit
  %pend.i.i24 = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %22 = ptrtoint ptr %pend.i.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pend.i.i24, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !119
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not10.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i25.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i25.do.end.i.i28_crit_edge

while.cond.preheader.i.i25.do.end.i.i28_crit_edge: ; preds = %while.cond.preheader.i.i25
  br label %do.end.i.i28

while.cond.preheader.i.i25.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i28:                                     ; preds = %do.end.i.i28.do.end.i.i28_crit_edge, %while.cond.preheader.i.i25.do.end.i.i28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %26 = ptrtoint ptr %pend.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pend.i.i24, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !119
  %29 = and i32 %28, 16777216
  %tobool1.not.i.i27 = icmp eq i32 %29, 0
  br i1 %tobool1.not.i.i27, label %do.end.i.i28.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i28.do.end.i.i28_crit_edge

do.end.i.i28.do.end.i.i28_crit_edge:              ; preds = %do.end.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i28

do.end.i.i28.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i28.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i25.omap_dm_timer_write_reg.exit_crit_edge, %omap_dm_timer_read_reg.exit.omap_dm_timer_write_reg.exit_crit_edge
  %30 = tail call i32 @llvm.bswap.i32(i32 %l.0) #11
  %31 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %30) #11, !srcloc !120
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 4
  %dev.i32 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call.i.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i32, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_dm_timer_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dm_timer_write_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_read_counter(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs, !prof !123

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #14
  br label %return

if.end:                                           ; preds = %lor.rhs
  %posted = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %posted, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.__omap_dm_timer_read_counter.exit_crit_edge, label %while.cond.preheader.i.i

if.end.__omap_dm_timer_read_counter.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read_counter.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not13.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not13.i.i, label %while.cond.preheader.i.i.__omap_dm_timer_read_counter.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.__omap_dm_timer_read_counter.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read_counter.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !127
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 33554432
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.__omap_dm_timer_read_counter.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.__omap_dm_timer_read_counter.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__omap_dm_timer_read_counter.exit

__omap_dm_timer_read_counter.exit:                ; preds = %do.end.i.i.__omap_dm_timer_read_counter.exit_crit_edge, %while.cond.preheader.i.i.__omap_dm_timer_read_counter.exit_crit_edge, %if.end.__omap_dm_timer_read_counter.exit_crit_edge
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %12 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !119
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  br label %return

return:                                           ; preds = %__omap_dm_timer_read_counter.exit, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %15, %__omap_dm_timer_read_counter.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_write_counter(ptr noundef %timer, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs, !prof !123

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37) #14
  br label %return

if.end:                                           ; preds = %lor.rhs
  %posted.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %posted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %posted.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i

if.end.omap_dm_timer_write_reg.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

while.cond.preheader.i.i:                         ; preds = %if.end
  %pend.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pend.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !119
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not10.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not10.i.i, label %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %while.cond.preheader.i.i.do.end.i.i_crit_edge

while.cond.preheader.i.i.do.end.i.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  br label %do.end.i.i

while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.cond.preheader.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !125
  %8 = ptrtoint ptr %pend.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pend.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !119
  %11 = and i32 %10, 33554432
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_dm_timer_write_reg.exit

omap_dm_timer_write_reg.exit:                     ; preds = %do.end.i.i.omap_dm_timer_write_reg.exit_crit_edge, %while.cond.preheader.i.i.omap_dm_timer_write_reg.exit_crit_edge, %if.end.omap_dm_timer_write_reg.exit_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %value) #11
  %func_base.i.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 8
  %13 = ptrtoint ptr %func_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !120
  %tcrr = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 12, i32 5
  %15 = ptrtoint ptr %tcrr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %value, ptr %tcrr, align 4
  br label %return

return:                                           ; preds = %omap_dm_timer_write_reg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %omap_dm_timer_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_read_status(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs, !prof !123

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %irq_stat = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 4
  %2 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_stat, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !119
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_write_status(ptr noundef %timer, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.rhs, !prof !123

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled, i32 noundef 4) #11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.rhs.return_crit_edge, label %if.end, !prof !123

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #11
  %irq_stat.i = getelementptr inbounds %struct.omap_dm_timer, ptr %timer, i32 0, i32 4
  %3 = ptrtoint ptr %irq_stat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_stat.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !120
  br label %return

return:                                           ; preds = %if.end, %lor.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.rhs.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_runtime_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %enabled, align 4
  %capability = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capability, align 4
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %func_base = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %func_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func_base, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_timer_save_context(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_runtime_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %capability = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %func_base = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %func_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func_base, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_timer_restore_context(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %enabled = getelementptr inbounds %struct.omap_dm_timer, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #11
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 497, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_dm_timer_trigger._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_dm_timer_trigger._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_timer_ti_dm__173_967_omap_dm_timer_driver_init6, !7, !"__initcall__kmod_timer_ti_dm__173_967_omap_dm_timer_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 967, i32 1}
!8 = !{ptr @__exitcall_omap_dm_timer_driver_exit, !7, !"__exitcall_omap_dm_timer_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description174, !10, !"__UNIQUE_ID_description174", i1 false, i1 false}
!10 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 969, i32 1}
!11 = !{ptr @__UNIQUE_ID_file175, !12, !"__UNIQUE_ID_file175", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 970, i32 1}
!13 = !{ptr @__UNIQUE_ID_license176, !12, !"__UNIQUE_ID_license176", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author177, !15, !"__UNIQUE_ID_author177", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 971, i32 1}
!16 = !{ptr @omap_reserved_systimers, !17, !"omap_reserved_systimers", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 36, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 365, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @_omap_dm_timer_request.__UNIQUE_ID_ddebug171, !19, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 38, i32 8}
!25 = !{ptr @dm_timer_lock, !24, !"dm_timer_lock", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 248, i32 44}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 249, i32 7}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 250, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @omap_dm_timer_prepare._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @omap_dm_timer_prepare._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 159, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @omap_dm_timer_reset._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap_dm_timer_reset._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @omap_timer_list, !43, !"omap_timer_list", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 37, i32 8}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 961, i32 13}
!46 = !{ptr @omap_dm_timer_driver, !47, !"omap_dm_timer_driver", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 957, i32 31}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 792, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @omap_dm_timer_probe._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @omap_dm_timer_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 812, i32 38}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 814, i32 38}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 816, i32 38}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 818, i32 38}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 841, i32 4}
!63 = !{ptr @omap_dm_timer_probe._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_dm_timer_probe._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 854, i32 2}
!67 = !{ptr @omap_dm_timer_probe.__UNIQUE_ID_ddebug172, !66, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!68 = !{ptr @omap_timer_match, !69, !"omap_timer_match", i1 false, i1 false}
!69 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 925, i32 34}
!70 = !{ptr @omap3plus_pdata, !71, !"omap3plus_pdata", i1 false, i1 false}
!71 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 920, i32 43}
!72 = !{ptr @dmtimer_ops, !73, !"dmtimer_ops", i1 false, i1 false}
!73 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 895, i32 39}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 379, i32 3}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @omap_dm_timer_request_specific._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap_dm_timer_request_specific._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 185, i32 17}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 188, i32 17}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 191, i32 17}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 215, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @omap_dm_timer_set_source._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @omap_dm_timer_set_source._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 221, i32 3}
!92 = !{ptr @omap_dm_timer_set_source._entry.32, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_dm_timer_set_source._entry_ptr.34, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 700, i32 3}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @omap_dm_timer_read_counter._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @omap_dm_timer_read_counter._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 710, i32 3}
!101 = !{ptr @omap_dm_timer_write_counter._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @omap_dm_timer_write_counter._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 678, i32 3}
!105 = !{ptr @omap_dm_timer_read_status._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @omap_dm_timer_read_status._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @omap_dm_timer_pm_ops, !108, !"omap_dm_timer_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/clocksource/timer-ti-dm.c", i32 763, i32 32}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 4266230}
!120 = !{i64 4265812}
!121 = !{i64 2148743543, i64 2148743548, i64 2148743561, i64 2148743605, i64 2148743639, i64 2148743660}
!122 = !{i64 2152687593, i64 2152688091, i64 2152687630, i64 2152687686, i64 2152687720, i64 2152687744, i64 2152687785, i64 2152687806, i64 2152687834, i64 2152687868}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2152663146}
!125 = !{i64 2152662988}
!126 = !{i64 2152662033}
!127 = !{i64 2152661875}
!128 = !{i64 2148261147}
!129 = !{i64 745970, i64 745995, i64 746017, i64 746033, i64 746045, i64 746065, i64 746089, i64 746105, i64 746117}
!130 = !{i64 2148261335}
!131 = !{!"branch_weights", i32 6004, i32 2000}
