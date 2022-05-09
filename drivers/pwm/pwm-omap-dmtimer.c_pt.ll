; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-omap-dmtimer.c_pt.bc'
source_filename = "../drivers/pwm/pwm-omap-dmtimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.dmtimer_platform_data = type { ptr, i32, i32, ptr, ptr }
%struct.omap_dm_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_omap_dmtimer_chip = type { %struct.pwm_chip, %struct.mutex, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_omap_dmtimer__193_476_pwm_omap_dmtimer_driver_init6 = internal global ptr @pwm_omap_dmtimer_driver_init, section ".initcall6.init", align 4
@pwm_omap_dmtimer_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_omap_dmtimer_probe, ptr @pwm_omap_dmtimer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_omap_dmtimer_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_omap_dmtimer_driver_exit = internal global ptr @pwm_omap_dmtimer_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author194 = internal constant [62 x i8] c"pwm_omap_dmtimer.author=Grant Erickson <marathon96@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [50 x i8] c"pwm_omap_dmtimer.author=NeilBrown <neilb@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author196 = internal constant [65 x i8] c"pwm_omap_dmtimer.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file197 = internal constant [51 x i8] c"pwm_omap_dmtimer.file=drivers/pwm/pwm-omap-dmtimer\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [32 x i8] c"pwm_omap_dmtimer.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [68 x i8] c"pwm_omap_dmtimer.description=OMAP PWM Driver using Dual-mode Timers\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap-dmtimer-pwm\00", [47 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-dmtimer-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,timers\00", [22 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to find Timer pdev\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm_omap_dmtimer_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pwm/pwm-omap-dmtimer.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry_ptr = internal global ptr @pwm_omap_dmtimer_probe._entry, section ".printk_index", align 4
@pwm_omap_dmtimer_probe.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm_omap_dmtimer\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dmtimer pdata structure NULL, deferring probe\0A\00", [49 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Incomplete dmtimer pdata structure\0A\00", [60 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry_ptr.11 = internal global ptr @pwm_omap_dmtimer_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,timer-pwm\00", [19 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing ti,timer-pwm capability\0A\00", [63 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry_ptr.15 = internal global ptr @pwm_omap_dmtimer_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,prescaler\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,clock-source\00", [16 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @pwm_omap_dmtimer_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&omap->mutex\00", [19 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register PWM\0A\00", [40 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_probe._entry_ptr.21 = internal global ptr @pwm_omap_dmtimer_probe._entry.19, section ".printk_index", align 4
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm_omap_dmtimer_config\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested duty cycle: %d ns, period: %d ns\0A\00", [52 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid pmtimer fclk\0A\00", [42 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config._entry_ptr = internal global ptr @pwm_omap_dmtimer_config._entry, section ".printk_index", align 4
@pwm_omap_dmtimer_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid pmtimer fclk rate\0A\00", [37 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config._entry_ptr.27 = internal global ptr @pwm_omap_dmtimer_config._entry.25, section ".printk_index", align 4
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.28, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk rate: %luHz\0A\00", [47 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.4, i32 204, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"period %d ns too short for clock rate %lu Hz\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config._entry_ptr.32 = internal global ptr @pwm_omap_dmtimer_config._entry.29, section ".printk_index", align 4
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.33, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"duty cycle %d ns is too short for clock rate %lu Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.34, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"using minimum of 1 clock cycle\0A\00", [32 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.35, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"duty cycle %d ns is too long for period %d ns at clock rate %lu Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.36, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"using maximum of 1 clock cycle less than period\0A\00", [47 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.37, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"effective duty cycle: %lld ns, period: %lld ns\0A\00", [48 x i8] zeroinitializer }, align 32
@pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.4, ptr @.str.38, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"load value: %#08x (%d), match value: %#08x (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"pwm_omap_dmtimer_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 468, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 470, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"pwm_omap_dmtimer_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 462, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 329, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 335, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 342, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 363, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 368, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 369, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 397, i32 47 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 401, i32 47 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"pwm_omap_dmtimer_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 312, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 408, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 412, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 161, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 170, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 176, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 180, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 202, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 209, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 212, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 215, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 218, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 222, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [34 x i8] c"../drivers/pwm/pwm-omap-dmtimer.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 234, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__exitcall_pwm_omap_dmtimer_driver_exit, ptr @__initcall__kmod_pwm_omap_dmtimer__193_476_pwm_omap_dmtimer_driver_init6, ptr @pwm_omap_dmtimer_config._entry, ptr @pwm_omap_dmtimer_config._entry.25, ptr @pwm_omap_dmtimer_config._entry.29, ptr @pwm_omap_dmtimer_config._entry_ptr, ptr @pwm_omap_dmtimer_config._entry_ptr.27, ptr @pwm_omap_dmtimer_config._entry_ptr.32, ptr @pwm_omap_dmtimer_driver_exit, ptr @pwm_omap_dmtimer_probe._entry, ptr @pwm_omap_dmtimer_probe._entry.13, ptr @pwm_omap_dmtimer_probe._entry.19, ptr @pwm_omap_dmtimer_probe._entry.9, ptr @pwm_omap_dmtimer_probe._entry_ptr, ptr @pwm_omap_dmtimer_probe._entry_ptr.11, ptr @pwm_omap_dmtimer_probe._entry_ptr.15, ptr @pwm_omap_dmtimer_probe._entry_ptr.21, ptr @pwm_omap_dmtimer_driver, ptr @.str, ptr @pwm_omap_dmtimer_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @pwm_omap_dmtimer_ops, ptr @pwm_omap_dmtimer_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_omap_dmtimer_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_omap_dmtimer_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_omap_dmtimer_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_omap_dmtimer_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_omap_dmtimer_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_omap_dmtimer_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #5
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_find_device_by_node(ptr noundef nonnull %5) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %err_find_timer_pdev

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.body10, label %if.end20

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_probe.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_probe, %if.then15)) #5
          to label %err_platdata [label %if.then15], !srcloc !105

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_probe.__UNIQUE_ID_ddebug192, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %err_platdata

if.end20:                                         ; preds = %if.end5
  %timer_ops = getelementptr inbounds %struct.dmtimer_platform_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %timer_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer_ops, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end20.do.end50_crit_edge, label %lor.lhs.false

if.end20.do.end50_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %lor.lhs.false.do.end50_crit_edge, label %lor.lhs.false23

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %free = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %lor.lhs.false23.do.end50_crit_edge, label %lor.lhs.false25

lor.lhs.false23.do.end50_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %enable = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %lor.lhs.false25.do.end50_crit_edge, label %lor.lhs.false27

lor.lhs.false25.do.end50_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false27:                                  ; preds = %lor.lhs.false25
  %disable = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disable, align 4
  %tobool28.not = icmp eq ptr %17, null
  br i1 %tobool28.not, label %lor.lhs.false27.do.end50_crit_edge, label %lor.lhs.false29

lor.lhs.false27.do.end50_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false29:                                  ; preds = %lor.lhs.false27
  %get_fclk = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 9
  %18 = ptrtoint ptr %get_fclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_fclk, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %lor.lhs.false29.do.end50_crit_edge, label %lor.lhs.false31

lor.lhs.false29.do.end50_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %start = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 10
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %lor.lhs.false31.do.end50_crit_edge, label %lor.lhs.false33

lor.lhs.false31.do.end50_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %stop = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 11
  %22 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop, align 4
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %lor.lhs.false33.do.end50_crit_edge, label %lor.lhs.false35

lor.lhs.false33.do.end50_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %set_load = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 13
  %24 = ptrtoint ptr %set_load to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_load, align 4
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %lor.lhs.false35.do.end50_crit_edge, label %lor.lhs.false37

lor.lhs.false35.do.end50_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false37:                                  ; preds = %lor.lhs.false35
  %set_match = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 14
  %26 = ptrtoint ptr %set_match to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_match, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %lor.lhs.false37.do.end50_crit_edge, label %lor.lhs.false39

lor.lhs.false37.do.end50_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false39:                                  ; preds = %lor.lhs.false37
  %set_pwm = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 15
  %28 = ptrtoint ptr %set_pwm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_pwm, align 4
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %lor.lhs.false39.do.end50_crit_edge, label %lor.lhs.false41

lor.lhs.false39.do.end50_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false41:                                  ; preds = %lor.lhs.false39
  %get_pwm_status = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 16
  %30 = ptrtoint ptr %get_pwm_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_pwm_status, align 4
  %tobool42.not = icmp eq ptr %31, null
  br i1 %tobool42.not, label %lor.lhs.false41.do.end50_crit_edge, label %lor.lhs.false43

lor.lhs.false41.do.end50_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false43:                                  ; preds = %lor.lhs.false41
  %set_prescaler = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 17
  %32 = ptrtoint ptr %set_prescaler to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_prescaler, align 4
  %tobool44.not = icmp eq ptr %33, null
  br i1 %tobool44.not, label %lor.lhs.false43.do.end50_crit_edge, label %lor.lhs.false45

lor.lhs.false43.do.end50_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.lhs.false45:                                  ; preds = %lor.lhs.false43
  %write_counter = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 19
  %34 = ptrtoint ptr %write_counter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_counter, align 4
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %lor.lhs.false45.do.end50_crit_edge, label %if.end52

lor.lhs.false45.do.end50_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false45.do.end50_crit_edge, %lor.lhs.false43.do.end50_crit_edge, %lor.lhs.false41.do.end50_crit_edge, %lor.lhs.false39.do.end50_crit_edge, %lor.lhs.false37.do.end50_crit_edge, %lor.lhs.false35.do.end50_crit_edge, %lor.lhs.false33.do.end50_crit_edge, %lor.lhs.false31.do.end50_crit_edge, %lor.lhs.false29.do.end50_crit_edge, %lor.lhs.false27.do.end50_crit_edge, %lor.lhs.false25.do.end50_crit_edge, %lor.lhs.false23.do.end50_crit_edge, %lor.lhs.false.do.end50_crit_edge, %if.end20.do.end50_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %err_platdata

if.end52:                                         ; preds = %lor.lhs.false45
  %call53 = call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, ptr noundef null) #5
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %err_platdata

if.end60:                                         ; preds = %if.end52
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  %call62 = call ptr %37(ptr noundef nonnull %5) #5
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end60.err_platdata_crit_edge, label %if.end65

if.end60.err_platdata_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_platdata

if.end65:                                         ; preds = %if.end60
  %call.i182 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #5
  %tobool68.not = icmp eq ptr %call.i182, null
  br i1 %tobool68.not, label %if.end65.err_alloc_omap_crit_edge, label %if.end70

if.end65.err_alloc_omap_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_alloc_omap

if.end70:                                         ; preds = %if.end65
  %pdata71 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %call.i182, i32 0, i32 3
  %38 = ptrtoint ptr %pdata71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %9, ptr %pdata71, align 4
  %dm_timer72 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %call.i182, i32 0, i32 2
  %39 = ptrtoint ptr %dm_timer72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call62, ptr %dm_timer72, align 4
  %dm_timer_pdev = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %call.i182, i32 0, i32 4
  %40 = ptrtoint ptr %dm_timer_pdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1, ptr %dm_timer_pdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 12, i32 18
  %41 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  br i1 %cmp.i, label %if.end70.if.then76_crit_edge, label %pm_runtime_active.exit

if.end70.if.then76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then76

pm_runtime_active.exit:                           ; preds = %if.end70
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 12, i32 15
  %43 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then76_crit_edge, label %pm_runtime_active.exit.if.end81_crit_edge

pm_runtime_active.exit.if.end81_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

pm_runtime_active.exit.if.then76_crit_edge:       ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then76

if.then76:                                        ; preds = %pm_runtime_active.exit.if.then76_crit_edge, %if.end70.if.then76_crit_edge
  %44 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stop, align 4
  %call80 = call i32 %45(ptr noundef nonnull %call62) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %pm_runtime_active.exit.if.end81_crit_edge
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.16, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool85.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool85.not, label %if.then86, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %pdata71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata71, align 4
  %set_prescaler88 = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %set_prescaler88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_prescaler88, align 4
  %52 = ptrtoint ptr %dm_timer72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dm_timer72, align 4
  %54 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v, align 4
  %call90 = call i32 %51(ptr noundef %53, i32 noundef %55) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end81.if.end91_crit_edge
  %56 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node, align 8
  %call.i.i183 = call i32 @of_property_read_variable_u32_array(ptr noundef %57, ptr noundef nonnull @.str.17, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i183)
  %tobool95.not = icmp sgt i32 %call.i.i183, -1
  br i1 %tobool95.not, label %if.then96, label %if.end91.if.end100_crit_edge

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %pdata71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata71, align 4
  %set_source = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %set_source to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_source, align 4
  %62 = ptrtoint ptr %dm_timer72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dm_timer72, align 4
  %64 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v, align 4
  %call99 = call i32 %61(ptr noundef %63, i32 noundef %65) #5
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end91.if.end100_crit_edge
  %66 = ptrtoint ptr %call.i182 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %call.i182, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i182, i32 0, i32 1
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pwm_omap_dmtimer_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i182, i32 0, i32 3
  %68 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %npwm, align 4
  %mutex = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %call.i182, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @pwm_omap_dmtimer_probe.__key) #5
  %call109 = call i32 @pwmchip_add(ptr noundef nonnull %call.i182) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp = icmp slt i32 %call109, 0
  br i1 %cmp, label %do.end113, label %if.end115

do.end113:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %err_alloc_omap

if.end115:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %5) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i182, ptr %driver_data.i.i, align 4
  br label %cleanup

err_alloc_omap:                                   ; preds = %do.end113, %if.end65.err_alloc_omap_crit_edge
  %ret.0 = phi i32 [ %call109, %do.end113 ], [ -12, %if.end65.err_alloc_omap_crit_edge ]
  %70 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %free, align 4
  %call117 = call i32 %71(ptr noundef nonnull %call62) #5
  br label %err_platdata

err_platdata:                                     ; preds = %err_alloc_omap, %if.end60.err_platdata_crit_edge, %do.end58, %do.end50, %if.then15, %do.body10
  %ret.1 = phi i32 [ %ret.0, %err_alloc_omap ], [ -19, %do.end58 ], [ -22, %do.end50 ], [ -517, %if.then15 ], [ -517, %if.end60.err_platdata_crit_edge ], [ -517, %do.body10 ]
  call void @put_device(ptr noundef %dev6) #5
  br label %err_find_timer_pdev

err_find_timer_pdev:                              ; preds = %err_platdata, %do.end
  %ret.2 = phi i32 [ %ret.1, %err_platdata ], [ -19, %do.end ]
  call void @of_node_put(ptr noundef nonnull %5) #5
  br label %cleanup

cleanup:                                          ; preds = %err_find_timer_pdev, %if.end115, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi i32 [ %ret.2, %err_find_timer_pdev ], [ 0, %if.end115 ], [ -19, %of_parse_phandle.exit.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_omap_dmtimer_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %dm_timer_pdev = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dm_timer_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dm_timer_pdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %pm_runtime_active.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then_crit_edge, label %pm_runtime_active.exit.if.end_crit_edge

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pm_runtime_active.exit.if.then_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %pm_runtime_active.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %pdata = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %stop = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop, align 4
  %dm_timer = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dm_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dm_timer, align 4
  %call2 = tail call i32 %10(ptr noundef %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_active.exit.if.end_crit_edge
  %pdata3 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pdata3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata3, align 4
  %free = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free, align 4
  %dm_timer4 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dm_timer4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dm_timer4, align 4
  %call5 = tail call i32 %16(ptr noundef %18) #5
  %19 = ptrtoint ptr %dm_timer_pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dm_timer_pdev, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev7) #5
  %mutex = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_omap_dmtimer_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %pdata.i = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %get_pwm_status.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %get_pwm_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pwm_status.i, align 4
  %dm_timer.i = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm_timer.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5) #5
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %stop = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %9, i32 0, i32 11
  br label %unlock_mutex.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %get_pwm_status.i46 = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %get_pwm_status.i46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_pwm_status.i46, align 4
  %14 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dm_timer.i, align 4
  %call.i48 = tail call i32 %13(ptr noundef %15) #5
  %and.i49 = lshr i32 %call.i48, 7
  %and.lobit.i = and i32 %and.i49, 1
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %17)
  %cmp.not = icmp eq i32 %and.lobit.i, %17
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %get_pwm_status.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %get_pwm_status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_pwm_status.i.i, align 4
  %22 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dm_timer.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %23) #5
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  br i1 %tobool.i.not.i, label %if.end8.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %stop.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop.i, align 4
  %28 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dm_timer.i, align 4
  %call2.i = tail call i32 %27(ptr noundef %29) #5
  %30 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata.i, align 4
  %set_pwm.c.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %set_pwm.c.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_pwm.c.i, align 4
  %34 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dm_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.c.i = icmp eq i32 %17, 1
  %conv.c.i = zext i1 %cmp.c.i to i32
  %call5.c.i = tail call i32 %33(ptr noundef %35, i32 noundef %conv.c.i, i32 noundef 1, i32 noundef 2, i32 noundef 1) #5
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %enable.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable.i.i, align 4
  %40 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dm_timer.i, align 4
  tail call void %39(ptr noundef %41) #5
  %42 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i, align 4
  %write_counter.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %write_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_counter.i.i, align 4
  %46 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dm_timer.i, align 4
  %call.i9.i = tail call i32 %45(ptr noundef %47, i32 noundef -2) #5
  %48 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.i, align 4
  %disable.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %disable.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disable.i.i, align 4
  %52 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dm_timer.i, align 4
  tail call void %51(ptr noundef %53) #5
  %54 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata.i, align 4
  %start.i.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %start.i.i, align 4
  %58 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dm_timer.i, align 4
  %call7.i.i = tail call i32 %57(ptr noundef %59) #5
  br label %if.end6

if.end8.critedge.i:                               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %set_pwm.c2.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %25, i32 0, i32 15
  %60 = ptrtoint ptr %set_pwm.c2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_pwm.c2.i, align 4
  %62 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dm_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.c4.i = icmp eq i32 %17, 1
  %conv.c5.i = zext i1 %cmp.c4.i to i32
  %call5.c6.i = tail call i32 %61(ptr noundef %63, i32 noundef %conv.c5.i, i32 noundef 1, i32 noundef 2, i32 noundef 1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end8.critedge.i, %if.then.i, %if.end.if.end6_crit_edge
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %64 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %duty_cycle, align 8
  %conv = trunc i64 %65 to i32
  %66 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %state, align 8
  %conv7 = trunc i64 %67 to i32
  %call8 = tail call fastcc i32 @pwm_omap_dmtimer_config(ptr noundef %chip, ptr noundef %pwm, i32 noundef %conv, i32 noundef %conv7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.unlock_mutex_crit_edge

if.end6.unlock_mutex_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_mutex

if.end11:                                         ; preds = %if.end6
  %68 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata.i, align 4
  %get_pwm_status.i51 = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %get_pwm_status.i51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_pwm_status.i51, align 4
  %72 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dm_timer.i, align 4
  %call.i53 = tail call i32 %71(ptr noundef %73) #5
  %and.i54 = and i32 %call.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.i55.not = icmp eq i32 %and.i54, 0
  br i1 %tobool.i55.not, label %land.lhs.true13, label %if.end11.unlock_mutex_crit_edge

if.end11.unlock_mutex_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_mutex

land.lhs.true13:                                  ; preds = %if.end11
  %enabled14 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %74 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %enabled14, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool15.not = icmp eq i8 %75, 0
  br i1 %tobool15.not, label %land.lhs.true13.unlock_mutex_crit_edge, label %if.then17

land.lhs.true13.unlock_mutex_crit_edge:           ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_mutex

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata.i, align 4
  %set_pwm = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %set_pwm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_pwm, align 4
  %80 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dm_timer.i, align 4
  %82 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp21 = icmp eq i32 %83, 1
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 %79(ptr noundef %81, i32 noundef %conv22, i32 noundef 1, i32 noundef 2, i32 noundef 1) #5
  %84 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata.i, align 4
  %enable.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %enable.i, align 4
  %88 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dm_timer.i, align 4
  tail call void %87(ptr noundef %89) #5
  %90 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdata.i, align 4
  %write_counter.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %91, i32 0, i32 19
  %92 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_counter.i, align 4
  %94 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dm_timer.i, align 4
  %call.i58 = tail call i32 %93(ptr noundef %95, i32 noundef -2) #5
  %96 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdata.i, align 4
  %disable.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %disable.i, align 4
  %100 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dm_timer.i, align 4
  tail call void %99(ptr noundef %101) #5
  %102 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdata.i, align 4
  %start.i = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %103, i32 0, i32 10
  br label %unlock_mutex.sink.split

unlock_mutex.sink.split:                          ; preds = %if.then17, %if.then
  %start.i.sink = phi ptr [ %start.i, %if.then17 ], [ %stop, %if.then ]
  %104 = ptrtoint ptr %start.i.sink to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %start.i.sink, align 4
  %106 = ptrtoint ptr %dm_timer.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dm_timer.i, align 4
  %call7.i = tail call i32 %105(ptr noundef %107) #5
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %unlock_mutex.sink.split, %land.lhs.true13.unlock_mutex_crit_edge, %if.end11.unlock_mutex_crit_edge, %if.end6.unlock_mutex_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end6.unlock_mutex_crit_edge ], [ 0, %if.end11.unlock_mutex_crit_edge ], [ 0, %land.lhs.true13.unlock_mutex_crit_edge ], [ 0, %unlock_mutex.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_omap_dmtimer_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !105

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug184, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %duty_ns, i32 noundef %period_ns) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = sext i32 %duty_ns to i64
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %state.sroa.4.0.copyload2.i = load i64, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %state.sroa.4.0.copyload2.i, i64 %conv)
  %cmp = icmp eq i64 %state.sroa.4.0.copyload2.i, %conv
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %conv6 = sext i32 %period_ns to i64
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %3 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %state.sroa.0.0.copyload1.i, i64 %conv6)
  %cmp8 = icmp eq i64 %state.sroa.0.0.copyload1.i, %conv6
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %pdata = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %get_fclk = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_fclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_fclk, align 4
  %dm_timer = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %dm_timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dm_timer, align 4
  %call12 = tail call ptr %7(ptr noundef %9) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call i32 @clk_get_rate(ptr noundef nonnull %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end25, label %do.body28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26) #8
  br label %cleanup

do.body28:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then40)) #5
          to label %do.end44 [label %if.then40], !srcloc !105

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug185, ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef %call20) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %conv.i = zext i32 %call20 to i64
  %conv1.i = sext i32 %period_ns to i64
  %mul.i = mul nsw i64 %conv.i, %conv1.i
  %add.i = add nsw i64 %mul.i, 500000000
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i32 0) #9, !srcloc !107
  %asmresult.i.i = extractvalue { i64, i32 } %16, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !108
  %asmresult10.i.i = extractvalue { i64, i32 } %17, 0
  %extract270.i = lshr i64 %asmresult10.i.i, 29
  %extract.t271.i = trunc i64 %extract270.i to i32
  %mul.i842 = mul nsw i64 %conv.i, %conv
  %add.i843 = add nsw i64 %mul.i842, 500000000
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i843, i32 0) #9, !srcloc !107
  %asmresult.i.i844 = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i845 = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i843, i64 %asmresult.i.i844, i32 %asmresult4.i.i845) #9, !srcloc !108
  %asmresult10.i.i846 = extractvalue { i64, i32 } %19, 0
  %extract270.i847 = lshr i64 %asmresult10.i.i846, 29
  %extract.t271.i848 = trunc i64 %extract270.i847 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %extract.t271.i)
  %cmp47 = icmp ult i32 %extract.t271.i, 2
  br i1 %cmp47, label %do.end52, label %if.end54

do.end52:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %period_ns, i32 noundef %call20) #8
  br label %cleanup

if.end54:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t271.i848)
  %cmp55 = icmp eq i32 %extract.t271.i848, 0
  br i1 %cmp55, label %do.body58, label %if.else

do.body58:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then70)) #5
          to label %do.body75 [label %if.then70], !srcloc !105

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug186, ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef %duty_ns, i32 noundef %call20) #5
  br label %do.body75

do.body75:                                        ; preds = %if.then70, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then87)) #5
          to label %do.body131 [label %if.then87], !srcloc !105

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug187, ptr noundef %25, ptr noundef nonnull @.str.34) #5
  br label %do.body131

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t271.i848, i32 %extract.t271.i)
  %cmp92.not = icmp ult i32 %extract.t271.i848, %extract.t271.i
  br i1 %cmp92.not, label %if.else.do.body131_crit_edge, label %do.body95

if.else.do.body131_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body131

do.body95:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then107)) #5
          to label %do.body112 [label %if.then107], !srcloc !105

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug188, ptr noundef %27, ptr noundef nonnull @.str.35, i32 noundef %duty_ns, i32 noundef %period_ns, i32 noundef %call20) #5
  br label %do.body112

do.body112:                                       ; preds = %if.then107, %do.body95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then124)) #5
          to label %do.end128 [label %if.then124], !srcloc !105

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug189, ptr noundef %29, ptr noundef nonnull @.str.36) #5
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body112
  %sub = add i32 %extract.t271.i, -1
  br label %do.body131

do.body131:                                       ; preds = %do.end128, %if.else.do.body131_crit_edge, %if.then87, %do.body75
  %duty_cycles.0 = phi i32 [ %sub, %do.end128 ], [ %extract.t271.i848, %if.else.do.body131_crit_edge ], [ 1, %if.then87 ], [ 1, %do.body75 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then143)) #5
          to label %do.end576 [label %if.then143], !srcloc !105

if.then143:                                       ; preds = %do.body131
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %conv145 = zext i32 %duty_cycles.0 to i64
  %mul = mul nuw nsw i64 %conv145, 1000000000
  %div816 = lshr i32 %call20, 1
  %conv146 = zext i32 %div816 to i64
  %add = add nuw nsw i64 %mul, %conv146
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp324 = icmp ult i64 %add, 4294967296
  br i1 %cmp324, label %if.then332, label %if.else338, !prof !109

if.then332:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  %conv333 = trunc i64 %add to i32
  %div336 = udiv i32 %conv333, %call20
  %conv337 = zext i32 %div336 to i64
  br label %if.else551

if.else338:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call20, i64 %add) #9, !srcloc !110
  %asmresult1.i = extractvalue { i64, i64 } %32, 1
  br label %if.else551

if.else551:                                       ; preds = %if.else338, %if.then332
  %_tmp.0 = phi i64 [ %conv337, %if.then332 ], [ %asmresult1.i, %if.else338 ]
  %conv347 = and i64 %extract270.i, 4294967295
  %mul348 = mul nuw nsw i64 %conv347, 1000000000
  %add351 = add nuw nsw i64 %mul348, %conv146
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add351)
  %cmp553 = icmp ult i64 %add351, 4294967296
  br i1 %cmp553, label %if.then561, label %if.else567, !prof !109

if.then561:                                       ; preds = %if.else551
  call void @__sanitizer_cov_trace_pc() #7
  %conv562 = trunc i64 %add351 to i32
  %div565 = udiv i32 %conv562, %call20
  %conv566 = zext i32 %div565 to i64
  br label %if.end571

if.else567:                                       ; preds = %if.else551
  call void @__sanitizer_cov_trace_pc() #7
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call20, i64 %add351) #9, !srcloc !110
  %asmresult1.i871 = extractvalue { i64, i64 } %33, 1
  br label %if.end571

if.end571:                                        ; preds = %if.else567, %if.then561
  %_tmp346.0 = phi i64 [ %conv566, %if.then561 ], [ %asmresult1.i871, %if.else567 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug190, ptr noundef %31, ptr noundef nonnull @.str.37, i64 noundef %_tmp.0, i64 noundef %_tmp346.0) #5
  br label %do.end576

do.end576:                                        ; preds = %if.end571, %do.body131
  %add578 = sub i32 0, %extract.t271.i
  %34 = xor i32 %extract.t271.i, -1
  %sub580 = add i32 %duty_cycles.0, %34
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata, align 4
  %set_load = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %set_load to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_load, align 4
  %39 = ptrtoint ptr %dm_timer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dm_timer, align 4
  %call583 = tail call i32 %38(ptr noundef %40, i32 noundef %add578) #5
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 4
  %set_match = getelementptr inbounds %struct.omap_dm_timer_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %set_match to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_match, align 4
  %45 = ptrtoint ptr %dm_timer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dm_timer, align 4
  %call586 = tail call i32 %44(ptr noundef %46, i32 noundef 1, i32 noundef %sub580) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_omap_dmtimer_config, %if.then599)) #5
          to label %cleanup [label %if.then599], !srcloc !105

if.then599:                                       ; preds = %do.end576
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug191, ptr noundef %48, ptr noundef nonnull @.str.38, i32 noundef %add578, i32 noundef %add578, i32 noundef %sub580, i32 noundef %sub580) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then599, %do.end576, %do.end52, %do.end25, %do.end17, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end52 ], [ -22, %do.end25 ], [ -22, %do.end17 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then599 ], [ 0, %do.end576 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_pwm_omap_dmtimer__193_476_pwm_omap_dmtimer_driver_init6, !1, !"__initcall__kmod_pwm_omap_dmtimer__193_476_pwm_omap_dmtimer_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 476, i32 1}
!2 = !{ptr @__exitcall_pwm_omap_dmtimer_driver_exit, !1, !"__exitcall_pwm_omap_dmtimer_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author194, !4, !"__UNIQUE_ID_author194", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 478, i32 1}
!5 = !{ptr @__UNIQUE_ID_author195, !6, !"__UNIQUE_ID_author195", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 479, i32 1}
!7 = !{ptr @__UNIQUE_ID_author196, !8, !"__UNIQUE_ID_author196", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 480, i32 1}
!9 = !{ptr @__UNIQUE_ID_file197, !10, !"__UNIQUE_ID_file197", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 481, i32 1}
!11 = !{ptr @__UNIQUE_ID_license198, !10, !"__UNIQUE_ID_license198", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description199, !13, !"__UNIQUE_ID_description199", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 482, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 470, i32 11}
!16 = !{ptr @pwm_omap_dmtimer_driver, !17, !"pwm_omap_dmtimer_driver", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 468, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 329, i32 31}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 335, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pwm_omap_dmtimer_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pwm_omap_dmtimer_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 342, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pwm_omap_dmtimer_probe.__UNIQUE_ID_ddebug192, !29, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 363, i32 3}
!34 = !{ptr @pwm_omap_dmtimer_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pwm_omap_dmtimer_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 368, i32 30}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 369, i32 3}
!40 = !{ptr @pwm_omap_dmtimer_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pwm_omap_dmtimer_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 397, i32 47}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 401, i32 47}
!46 = !{ptr @pwm_omap_dmtimer_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 408, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 412, i32 3}
!51 = !{ptr @pwm_omap_dmtimer_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pwm_omap_dmtimer_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @pwm_omap_dmtimer_ops, !54, !"pwm_omap_dmtimer_ops", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 312, i32 29}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 161, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug184, !56, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 170, i32 3}
!61 = !{ptr @pwm_omap_dmtimer_config._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pwm_omap_dmtimer_config._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 176, i32 3}
!65 = !{ptr @pwm_omap_dmtimer_config._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pwm_omap_dmtimer_config._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 180, i32 2}
!69 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug185, !68, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 202, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pwm_omap_dmtimer_config._entry.29, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pwm_omap_dmtimer_config._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 209, i32 3}
!77 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug186, !76, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 212, i32 3}
!80 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug187, !79, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 215, i32 3}
!83 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug188, !82, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 218, i32 3}
!86 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug189, !85, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 222, i32 2}
!89 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug190, !88, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 234, i32 2}
!92 = !{ptr @pwm_omap_dmtimer_config.__UNIQUE_ID_ddebug191, !91, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!93 = !{ptr @pwm_omap_dmtimer_of_match, !94, !"pwm_omap_dmtimer_of_match", i1 false, i1 false}
!94 = !{!"../drivers/pwm/pwm-omap-dmtimer.c", i32 462, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148733657, i64 2148733662, i64 2148733675, i64 2148733719, i64 2148733753, i64 2148733774}
!106 = !{i8 0, i8 2}
!107 = !{i64 1156832, i64 1156859, i64 1156881, i64 1156909}
!108 = !{i64 1157240, i64 1157267, i64 1157300, i64 1157321, i64 1157348, i64 1157374}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2148642376, i64 2148642656, i64 2148642990, i64 2148643324}
