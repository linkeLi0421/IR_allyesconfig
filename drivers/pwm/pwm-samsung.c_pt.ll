; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-samsung.c_pt.bc'
source_filename = "../drivers/pwm/pwm-samsung.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.samsung_pwm_variant = type { i8, i8, i8, i8, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.samsung_pwm_chip = type { %struct.pwm_chip, %struct.samsung_pwm_variant, i8, i8, ptr, ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.samsung_pwm_channel = type { i32, i32, i32 }

@__initcall__kmod_pwm_samsung__189_651_pwm_samsung_driver_init6 = internal global ptr @pwm_samsung_driver_init, section ".initcall6.init", align 4
@pwm_samsung_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_samsung_probe, ptr @pwm_samsung_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_pwm_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_samsung_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_samsung_driver_exit = internal global ptr @pwm_samsung_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [41 x i8] c"pwm_samsung.file=drivers/pwm/pwm-samsung\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"pwm_samsung.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [55 x i8] c"pwm_samsung.author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [39 x i8] c"pwm_samsung.alias=platform:samsung-pwm\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@samsung_pwm_matches = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c24xx_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p6440-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pc100-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pc100_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_variant }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@pwm_samsung_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @pwm_samsung_resume, ptr null, ptr @pwm_samsung_resume, ptr null, ptr @pwm_samsung_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pwm_samsung_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @pwm_samsung_request, ptr @pwm_samsung_free, ptr null, ptr null, ptr null, ptr null, ptr @pwm_samsung_config, ptr @pwm_samsung_set_polarity, ptr @pwm_samsung_enable, ptr @pwm_samsung_disable }, [56 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no platform data specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm_samsung_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-samsung.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry_ptr = internal global ptr @pwm_samsung_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get timer base clk\0A\00", [34 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry_ptr.9 = internal global ptr @pwm_samsung_probe._entry.7, section ".printk_index", align 4
@pwm_samsung_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable base clock\0A\00", [35 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry_ptr.12 = internal global ptr @pwm_samsung_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm-tclk0\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm-tclk1\00", [22 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register PWM chip\0A\00", [35 x i8] zeroinitializer }, align 32
@pwm_samsung_probe._entry_ptr.17 = internal global ptr @pwm_samsung_probe._entry.15, section ".printk_index", align 4
@pwm_samsung_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm_samsung\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"base_clk at %lu, tclk0 at %lu, tclk1 at %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@pwm_samsung_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 236, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tried to request PWM channel %d without output\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_samsung_request\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pwm_samsung_request._entry_ptr = internal global ptr @pwm_samsung_request._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__pwm_samsung_config.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__pwm_samsung_config\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"duty_ns=%d, period_ns=%d (%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@__pwm_samsung_config.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tin_rate=%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@__pwm_samsung_config.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.3, ptr @.str.26, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tin_ns=%u, tcmp=%u/%u\0A\00", [41 x i8] zeroinitializer }, align 32
@__pwm_samsung_config.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.3, ptr @.str.27, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Forcing manual update\00", [42 x i8] zeroinitializer }, align 32
@pwm_samsung_calc_tin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 199, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tclk of PWM %d is inoperational, using tdiv\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm_samsung_calc_tin\00", [43 x i8] zeroinitializer }, align 32
@pwm_samsung_calc_tin._entry_ptr = internal global ptr @pwm_samsung_calc_tin._entry, section ".printk_index", align 4
@pwm_samsung_calc_tin.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tin parent at %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@samsung_pwm_lock = external dso_local global %struct.spinlock, align 4
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,pwm-outputs\00", [44 x i8] zeroinitializer }, align 32
@pwm_samsung_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: invalid channel index in samsung,pwm-outputs property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm_samsung_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@pwm_samsung_parse_dt._entry_ptr = internal global ptr @pwm_samsung_parse_dt._entry, section ".printk_index", align 4
@s3c24xx_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 16, i8 1, i8 16, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@s3c64xx_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 -32, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@s5p64x0_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 0, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@s5pc100_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 32, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"pwm_samsung_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 642, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 644, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"samsung_pwm_matches\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 480, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"pwm_samsung_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 640, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"pwm_samsung_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 441, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 545, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 557, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 559, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 565, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 574, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 575, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 581, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 586, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 234, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 345, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 350, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 374, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 387, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 198, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 203, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 504, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 506, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"s3c24xx_variant\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 452, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"s3c64xx_variant\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 459, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"s5p64x0_variant\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 466, i32 41 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"s5pc100_variant\00", align 1
@___asan_gen_.161 = private constant [29 x i8] c"../drivers/pwm/pwm-samsung.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 473, i32 41 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_pwm_samsung_driver_exit, ptr @__initcall__kmod_pwm_samsung__189_651_pwm_samsung_driver_init6, ptr @pwm_samsung_calc_tin._entry, ptr @pwm_samsung_calc_tin._entry_ptr, ptr @pwm_samsung_driver_exit, ptr @pwm_samsung_parse_dt._entry, ptr @pwm_samsung_parse_dt._entry_ptr, ptr @pwm_samsung_probe._entry, ptr @pwm_samsung_probe._entry.10, ptr @pwm_samsung_probe._entry.15, ptr @pwm_samsung_probe._entry.7, ptr @pwm_samsung_probe._entry_ptr, ptr @pwm_samsung_probe._entry_ptr.12, ptr @pwm_samsung_probe._entry_ptr.17, ptr @pwm_samsung_probe._entry_ptr.9, ptr @pwm_samsung_request._entry, ptr @pwm_samsung_request._entry_ptr, ptr @pwm_samsung_driver, ptr @.str, ptr @samsung_pwm_matches, ptr @pwm_samsung_pm_ops, ptr @pwm_samsung_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @s3c24xx_variant, ptr @s3c64xx_variant, ptr @s5p64x0_variant, ptr @s5pc100_variant], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_matches to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_calc_tin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_samsung_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p64x0_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pc100_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_samsung_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_samsung_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_samsung_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pwm_samsung_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %npwm, align 4
  %inverter_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 31, ptr %inverter_mask, align 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call.i140 = tail call ptr @of_match_node(ptr noundef nonnull @samsung_pwm_matches, ptr noundef %7) #7
  %tobool.not.i = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i, label %pwm_samsung_parse_dt.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then9
  %variant.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i140, i32 0, i32 3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = call ptr @memcpy(ptr %variant.i, ptr %10, i32 5)
  %call2.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %call3.i = call ptr @of_prop_next_u32(ptr noundef %call2.i, ptr noundef null, ptr noundef nonnull %val.i) #7
  %tobool4.not23.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not23.i, label %if.end.i.pwm_samsung_parse_dt.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.pwm_samsung_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_samsung_parse_dt.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %output_mask.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cur.024.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call11.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i = icmp ugt i32 %13, 4
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #10
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 1, %13
  %16 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %output_mask.i, align 1
  %18 = trunc i32 %shl.i to i8
  %conv10.i = or i8 %17, %18
  store i8 %conv10.i, ptr %output_mask.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %do.end.i
  %call11.i = call ptr @of_prop_next_u32(ptr noundef %call2.i, ptr noundef nonnull %cur.024.i, ptr noundef nonnull %val.i) #7
  %tobool4.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool4.not.i, label %for.inc.i.pwm_samsung_parse_dt.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pwm_samsung_parse_dt.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_samsung_parse_dt.exit.thread

pwm_samsung_parse_dt.exit.thread:                 ; preds = %for.inc.i.pwm_samsung_parse_dt.exit.thread_crit_edge, %if.end.i.pwm_samsung_parse_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end21

pwm_samsung_parse_dt.exit:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data, align 8
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %do.end, label %if.end18

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %variant = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %variant, ptr %20, i32 5)
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %pwm_samsung_parse_dt.exit.thread
  %call22 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call22, ptr %base, align 4
  %cmp.i142 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call30 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #7
  %base_clk = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %base_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call30, ptr %base_clk, align 4
  %cmp.i143 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %25 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_clk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call.i144 = call i32 @clk_prepare(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end.i146, label %if.end39.clk_prepare_enable.exit_crit_edge

if.end39.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i146:                                      ; preds = %if.end39
  %call1.i = call i32 @clk_enable(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i146.for.cond.preheader_crit_edge, label %if.then3.i

if.end.i146.for.cond.preheader_crit_edge:         ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.then3.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call30) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end39.clk_prepare_enable.exit_crit_edge
  %retval.0.i147 = phi i32 [ %call.i144, %if.end39.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147)
  %cmp42 = icmp slt i32 %retval.0.i147, 0
  br i1 %cmp42, label %do.end46, label %clk_prepare_enable.exit.for.cond.preheader_crit_edge

clk_prepare_enable.exit.for.cond.preheader_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %clk_prepare_enable.exit.for.cond.preheader_crit_edge, %if.end.i146.for.cond.preheader_crit_edge
  %output_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 1, i32 3
  br label %for.body

do.end46:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %chan.0156 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %output_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %output_mask, align 1
  %conv = zext i8 %29 to i32
  %shl = shl nuw nsw i32 1, %chan.0156
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %for.body.for.inc_crit_edge, label %if.then51

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan.0156)
  %cmp.i.i = icmp eq i32 %chan.0156, 0
  %call3.i148 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 8
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !102
  %33 = call i32 @llvm.bswap.i32(i32 %32) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %34 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %inverter_mask, align 1
  %36 = trunc i32 %shl to i8
  %conv10.i150 = or i8 %35, %36
  store i8 %conv10.i150, ptr %inverter_mask, align 1
  %add.i.i = shl i32 %chan.0156, 2
  %add.i.i.op.op.op = shl i32 64, %add.i.i
  %shl11.i = select i1 %cmp.i.i, i32 4, i32 %add.i.i.op.op.op
  %or12.i = or i32 %33, %shl11.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @arm_heavy_mb() #7
  %37 = call i32 @llvm.bswap.i32(i32 %or12.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !105
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i148) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then51, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %chan.0156, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call54 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #7
  %tclk0 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %tclk0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call54, ptr %tclk0, align 4
  %call56 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %tclk1 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %tclk1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call56, ptr %tclk1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call58 = call i32 @pwmchip_add(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %do.body67

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  %41 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_clk, align 4
  call void @clk_disable(ptr noundef %42) #7
  call void @clk_unprepare(ptr noundef %42) #7
  br label %cleanup

do.body67:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_samsung_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_samsung_probe, %if.then72)) #7
          to label %cleanup [label %if.then72], !srcloc !106

if.then72:                                        ; preds = %do.body67
  %43 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_clk, align 4
  %call74 = call i32 @clk_get_rate(ptr noundef %44) #7
  %45 = ptrtoint ptr %tclk0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tclk0, align 4
  %cmp.i151 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then72.cond.end_crit_edge, label %cond.true

if.then72.cond.end_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 @clk_get_rate(ptr noundef %46) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then72.cond.end_crit_edge
  %cond = phi i32 [ %call78, %cond.true ], [ 0, %if.then72.cond.end_crit_edge ]
  %47 = ptrtoint ptr %tclk1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tclk1, align 4
  %cmp.i152 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %cond.end.cond.end85_crit_edge, label %cond.true81

cond.end.cond.end85_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end85

cond.true81:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = call i32 @clk_get_rate(ptr noundef %48) #7
  br label %cond.end85

cond.end85:                                       ; preds = %cond.true81, %cond.end.cond.end85_crit_edge
  %cond86 = phi i32 [ %call83, %cond.true81 ], [ 0, %cond.end.cond.end85_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_samsung_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call74, i32 noundef %cond, i32 noundef %cond86) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end85, %do.body67, %do.end64, %do.end46, %do.end36, %if.then25, %do.end, %pwm_samsung_parse_dt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then25 ], [ %27, %do.end36 ], [ %retval.0.i147, %do.end46 ], [ %call58, %do.end64 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -19, %pwm_samsung_parse_dt.exit ], [ 0, %cond.end85 ], [ 0, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #7
  %base_clk = getelementptr inbounds %struct.samsung_pwm_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwm_samsung_set_invert(ptr nocapture noundef %chip, i32 noundef %channel, i1 noundef zeroext %invert) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  %add.i = add i32 %channel, 1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %shl = shl nuw i32 1, %channel
  %inverter_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inverter_mask, align 1
  %6 = trunc i32 %shl to i8
  br i1 %invert, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv10 = or i8 %5, %6
  %7 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %inverter_mask, align 1
  %mul = shl i32 %spec.select.i, 2
  %add = or i32 %mul, 2
  %shl11 = shl nuw i32 1, %add
  %or12 = or i32 %3, %shl11
  br label %do.body22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = xor i8 %6, -1
  %conv16 = and i8 %5, %8
  %9 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv16, ptr %inverter_mask, align 1
  %mul17 = shl i32 %spec.select.i, 2
  %add18 = or i32 %mul17, 2
  %shl19 = shl nuw i32 1, %add18
  %neg20 = xor i32 %shl19, -1
  %and21 = and i32 %3, %neg20
  br label %do.body22

do.body22:                                        ; preds = %if.else, %if.then
  %tcon.0 = phi i32 [ %or12, %if.then ], [ %and21, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %tcon.0)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %10) #7, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_request(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %output_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %output_mask, align 1
  %conv = zext i8 %1 to i32
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_samsung_free(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  tail call void @kfree(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_config(ptr nocapture noundef readonly %chip, ptr noundef %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__pwm_samsung_config(ptr noundef %chip, ptr noundef %pwm, i32 noundef %duty_ns, i32 noundef %period_ns, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_set_polarity(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm, i32 noundef %polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polarity)
  %cmp = icmp eq i32 %polarity, 0
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  tail call fastcc void @pwm_samsung_set_invert(ptr noundef %chip, i32 noundef %1, i1 noundef zeroext %cmp)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_enable(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %add.i = add i32 %1, 1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !102
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %mul = shl i32 %spec.select.i, 2
  %shl = shl nuw i32 1, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %add11 = or i32 %mul, 1
  %shl12 = shl nuw i32 1, %add11
  %or = or i32 %and, %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %6) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i)
  %cmp26 = icmp ult i32 %spec.select.i, 5
  %add29.pn.v = select i1 %cmp26, i32 3, i32 2
  %add29.pn = or i32 %add29.pn.v, %mul
  %cond = shl nuw i32 1, %add29.pn
  %neg21 = xor i32 %shl12, -1
  %and22 = and i32 %and, %neg21
  %or34 = or i32 %cond, %shl
  %or35 = or i32 %or34, %and22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %9) #7, !srcloc !105
  %12 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm, align 8
  %shl42 = shl nuw i32 1, %13
  %disabled_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 3
  %14 = ptrtoint ptr %disabled_mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %disabled_mask, align 2
  %16 = trunc i32 %shl42 to i8
  %17 = xor i8 %16, -1
  %conv46 = and i8 %15, %17
  store i8 %conv46, ptr %disabled_mask, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_samsung_disable(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %add.i = add i32 %1, 1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !102
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i)
  %cmp10 = icmp ult i32 %spec.select.i, 5
  %mul = shl i32 %spec.select.i, 2
  %add.pn.v = select i1 %cmp10, i32 3, i32 2
  %add.pn = or i32 %add.pn.v, %mul
  %cond = shl nuw i32 1, %add.pn
  %neg = xor i32 %cond, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %6) #7, !srcloc !105
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  %mul24 = mul i32 %12, 12
  %add25 = add i32 %mul24, 16
  %add.ptr26 = getelementptr i8, ptr %10, i32 %add25
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp30 = icmp eq i32 %13, -1
  br i1 %cmp30, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !102
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %add.i.i = shl i32 %15, 2
  %add.i.op.op.i = add i32 %add.i.i, 5
  %add.i.op.op.op.i = shl nuw i32 1, %add.i.op.op.i
  %shl.i = select i1 %cmp.i.i, i32 2, i32 %add.i.op.op.op.i
  %or.i = or i32 %shl.i, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %20) #7, !srcloc !105
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %19, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %23) #7, !srcloc !105
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwpwm, align 8
  %shl33 = shl nuw i32 1, %27
  %disabled_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 3
  %28 = ptrtoint ptr %disabled_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %disabled_mask, align 2
  %30 = trunc i32 %shl33 to i8
  %conv35 = or i8 %29, %30
  store i8 %conv35, ptr %disabled_mask, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pwm_samsung_config(ptr nocapture noundef readonly %chip, ptr noundef %pwm, i32 noundef %duty_ns, i32 noundef %period_ns, i1 noundef zeroext %force_period) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %tin_ns2 = getelementptr inbounds %struct.samsung_pwm_channel, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %tin_ns2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tin_ns2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %period_ns)
  %cmp = icmp sgt i32 %period_ns, 1000000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %mul = mul i32 %5, 12
  %add = add i32 %mul, 12
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwpwm, align 8
  %mul9 = mul i32 %10, 12
  %add10 = add i32 %mul9, 16
  %add.ptr11 = getelementptr i8, ptr %8, i32 %add10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %period_ns)
  %cmp16.not = icmp eq i32 %13, %period_ns
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end.if.then17_crit_edge

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end
  %14 = tail call i32 @llvm.bswap.i32(i32 %6)
  %inc = add i32 %14, 1
  br i1 %force_period, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %div = sdiv i32 1000000000, %period_ns
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pwm_samsung_config, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !106

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pwm_samsung_config.__UNIQUE_ID_ddebug184, ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %duty_ns, i32 noundef %period_ns, i32 noundef %div) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.then17
  %17 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwpwm, align 8
  %call28 = tail call fastcc i32 @pwm_samsung_calc_tin(ptr noundef %chip, i32 noundef %18, i32 noundef %div)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pwm_samsung_config, %if.then41)) #7
          to label %do.end46 [label %if.then41], !srcloc !106

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pwm_samsung_config.__UNIQUE_ID_ddebug185, ptr noundef %20, ptr noundef nonnull @.str.25, i32 noundef %call28) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.end
  %div47 = udiv i32 1000000000, %call28
  %div48 = udiv i32 %period_ns, %div47
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %lor.lhs.false.if.end49_crit_edge
  %tcnt.0 = phi i32 [ %div48, %do.end46 ], [ %inc, %lor.lhs.false.if.end49_crit_edge ]
  %tin_ns.0 = phi i32 [ %div47, %do.end46 ], [ %1, %lor.lhs.false.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tcnt.0)
  %cmp50 = icmp ult i32 %tcnt.0, 2
  br i1 %cmp50, label %if.end49.cleanup_crit_edge, label %if.end52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end49
  %div53 = udiv i32 %duty_ns, %tin_ns.0
  call void @__sanitizer_cov_trace_cmp4(i32 %tin_ns.0, i32 %duty_ns)
  %tobool54.not = icmp ugt i32 %tin_ns.0, %duty_ns
  %dec = add i32 %tcnt.0, -1
  %div53.op = xor i32 %div53, -1
  %21 = select i1 %tobool54.not, i32 -2, i32 %div53.op
  %dec58 = add i32 %21, %tcnt.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pwm_samsung_config, %if.then71)) #7
          to label %do.body77 [label %if.then71], !srcloc !106

if.then71:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pwm_samsung_config.__UNIQUE_ID_ddebug186, ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %tin_ns.0, i32 noundef %dec58, i32 noundef %dec) #7
  br label %do.body77

do.body77:                                        ; preds = %if.then71, %if.end52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %27 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm, align 8
  %mul82 = mul i32 %28, 12
  %add83 = add i32 %mul82, 12
  %add.ptr84 = getelementptr i8, ptr %26, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %24) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %dec58)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %32 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwpwm, align 8
  %mul90 = mul i32 %33, 12
  %add91 = add i32 %mul90, 16
  %add.ptr92 = getelementptr i8, ptr %31, i32 %add91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %29) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp93 = icmp eq i32 %11, -1
  br i1 %cmp93, label %do.body95, label %do.body77.if.end113_crit_edge

do.body77.if.end113_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

do.body95:                                        ; preds = %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pwm_samsung_config, %if.then107)) #7
          to label %do.end112 [label %if.then107], !srcloc !106

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pwm_samsung_config.__UNIQUE_ID_ddebug187, ptr noundef %35, ptr noundef nonnull @.str.27) #7
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %do.body95
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %36 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !102
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %add.i.i.i = shl i32 %37, 2
  %add.i.op.op.i.i = add i32 %add.i.i.i, 5
  %add.i.op.op.op.i.i = shl nuw i32 1, %add.i.op.op.i.i
  %shl.i.i = select i1 %cmp.i.i.i, i32 2, i32 %add.i.op.op.op.i.i
  %or.i.i = or i32 %shl.i.i, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %42) #7, !srcloc !105
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %41, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %45) #7, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call2.i) #7
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %do.body77.if.end113_crit_edge
  %48 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %period_ns, ptr %call1, align 4
  %49 = ptrtoint ptr %tin_ns2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %tin_ns.0, ptr %tin_ns2, align 4
  %duty_ns116 = getelementptr inbounds %struct.samsung_pwm_channel, ptr %call1, i32 0, i32 1
  %50 = ptrtoint ptr %duty_ns116 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %duty_ns, ptr %duty_ns116, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_samsung_calc_tin(ptr nocapture noundef readonly %chip, i32 noundef %chan, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 1
  %base.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %mul.i = shl i32 %chan, 2
  %shr.i = lshr i32 %3, %mul.i
  %and.i = and i32 %shr.i, 15
  %tclk_mask.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tclk_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tclk_mask.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = shl nuw nsw i32 1, %and.i
  %7 = and i32 %6, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  br i1 %tobool.not.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chan)
  %cmp = icmp ult i32 %chan, 2
  %tclk0 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 6
  %tclk1 = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 7
  %cond.in = select i1 %cmp, ptr %tclk0, ptr %tclk1
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load ptr, ptr %cond.in, align 4
  %cmp.i = icmp ugt ptr %cond, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.then3

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @clk_get_rate(ptr noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.do.end_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.then3.do.end_crit_edge, %if.then.do.end_crit_edge
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %chan) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %base_clk.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 5
  %11 = ptrtoint ptr %base_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %12) #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !102
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan)
  %cmp.i68 = icmp ugt i32 %chan, 1
  %shr.i69 = lshr i32 %16, 8
  %spec.select.i = select i1 %cmp.i68, i32 %shr.i69, i32 %16
  %and.i70 = and i32 %spec.select.i, 255
  %add.i = add nuw nsw i32 %and.i70, 1
  %div.i = udiv i32 %call.i, %add.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_samsung_calc_tin.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_samsung_calc_tin, %if.then16)) #7
          to label %do.end21 [label %if.then16], !srcloc !106

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_samsung_calc_tin.__UNIQUE_ID_ddebug183, ptr noundef %18, ptr noundef nonnull @.str.30, i32 noundef %div.i) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %if.end9
  %19 = ptrtoint ptr %variant1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %variant1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp22 = icmp ult i8 %20, 32
  %div_base = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %div_base to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %div_base, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp2676 = icmp ult i8 %22, 4
  %or.cond = select i1 %cmp22, i1 %cmp2676, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %do.end21.if.end36_crit_edge

do.end21.if.end36_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.lr.ph:                                   ; preds = %do.end21
  %conv29 = zext i8 %20 to i32
  %23 = zext i8 %22 to i32
  %add = add nuw nsw i32 %23, %conv29
  %shr = lshr i32 %div.i, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %freq)
  %cmp31 = icmp ult i32 %shr, %freq
  br i1 %cmp31, label %for.body.lr.ph.if.end36.loopexit.split.loop.exit79_crit_edge, label %for.inc

for.body.lr.ph.if.end36.loopexit.split.loop.exit79_crit_edge: ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.loopexit.split.loop.exit79

for.inc:                                          ; preds = %for.body.lr.ph
  %indvars.iv.next = add nuw nsw i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next)
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc.if.end36_crit_edge, label %for.body.1

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.1:                                       ; preds = %for.inc
  %add.1 = add nuw nsw i32 %indvars.iv.next, %conv29
  %shr.1 = lshr i32 %div.i, %add.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %freq)
  %cmp31.1 = icmp ult i32 %shr.1, %freq
  br i1 %cmp31.1, label %for.body.1.if.end36.loopexit.split.loop.exit79_crit_edge, label %for.inc.1

for.body.1.if.end36.loopexit.split.loop.exit79_crit_edge: ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.loopexit.split.loop.exit79

for.inc.1:                                        ; preds = %for.body.1
  %indvars.iv.next.1 = add nuw nsw i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.1)
  %exitcond.not.1 = icmp eq i32 %indvars.iv.next.1, 4
  br i1 %exitcond.not.1, label %for.inc.1.if.end36_crit_edge, label %for.body.2

for.inc.1.if.end36_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.2:                                       ; preds = %for.inc.1
  %add.2 = add nuw nsw i32 %indvars.iv.next.1, %conv29
  %shr.2 = lshr i32 %div.i, %add.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %freq)
  %cmp31.2 = icmp ult i32 %shr.2, %freq
  br i1 %cmp31.2, label %for.body.2.if.end36.loopexit.split.loop.exit79_crit_edge, label %for.inc.2

for.body.2.if.end36.loopexit.split.loop.exit79_crit_edge: ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.loopexit.split.loop.exit79

for.inc.2:                                        ; preds = %for.body.2
  %indvars.iv.next.2 = add nuw nsw i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.2)
  %exitcond.not.2 = icmp eq i32 %indvars.iv.next.2, 4
  br i1 %exitcond.not.2, label %for.inc.2.if.end36_crit_edge, label %for.body.3

for.inc.2.if.end36_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.3:                                       ; preds = %for.inc.2
  %add.3 = add nuw nsw i32 %indvars.iv.next.2, %conv29
  %shr.3 = lshr i32 %div.i, %add.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %freq)
  %cmp31.3 = icmp ult i32 %shr.3, %freq
  br i1 %cmp31.3, label %for.body.3.if.end36.loopexit.split.loop.exit79_crit_edge, label %for.body.3.if.end36_crit_edge

for.body.3.if.end36_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.3.if.end36.loopexit.split.loop.exit79_crit_edge: ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.loopexit.split.loop.exit79

if.end36.loopexit.split.loop.exit79:              ; preds = %for.body.3.if.end36.loopexit.split.loop.exit79_crit_edge, %for.body.2.if.end36.loopexit.split.loop.exit79_crit_edge, %for.body.1.if.end36.loopexit.split.loop.exit79_crit_edge, %for.body.lr.ph.if.end36.loopexit.split.loop.exit79_crit_edge
  %indvars.iv.lcssa = phi i32 [ %23, %for.body.lr.ph.if.end36.loopexit.split.loop.exit79_crit_edge ], [ %indvars.iv.next, %for.body.1.if.end36.loopexit.split.loop.exit79_crit_edge ], [ %indvars.iv.next.1, %for.body.2.if.end36.loopexit.split.loop.exit79_crit_edge ], [ %indvars.iv.next.2, %for.body.3.if.end36.loopexit.split.loop.exit79_crit_edge ]
  %24 = trunc i32 %indvars.iv.lcssa to i8
  br label %if.end36

if.end36:                                         ; preds = %if.end36.loopexit.split.loop.exit79, %for.body.3.if.end36_crit_edge, %for.inc.2.if.end36_crit_edge, %for.inc.1.if.end36_crit_edge, %for.inc.if.end36_crit_edge, %do.end21.if.end36_crit_edge
  %div.1 = phi i8 [ %22, %do.end21.if.end36_crit_edge ], [ %24, %if.end36.loopexit.split.loop.exit79 ], [ 4, %for.body.3.if.end36_crit_edge ], [ 4, %for.inc.2.if.end36_crit_edge ], [ 4, %for.inc.1.if.end36_crit_edge ], [ 4, %for.inc.if.end36_crit_edge ]
  %conv37 = zext i8 %div.1 to i32
  %shl = shl nuw i32 1, %conv37
  %conv38 = trunc i32 %shl to i8
  %conv1.i = and i32 %shl, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv38)
  %tobool.not.i.i = icmp eq i8 %conv38, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #7, !range !122
  %sub.i.i = sub nuw nsw i32 32, %25
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %div_base.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %chip, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %div_base.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %div_base.i, align 1
  %conv2.i = zext i8 %27 to i32
  %28 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %cond.i.i, %28
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !102
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %conv14.i = and i32 %mul.i, 252
  %shl.i = shl i32 15, %conv14.i
  %neg.i = xor i32 %shl.i, -1
  %and.i74 = and i32 %32, %neg.i
  %conv15.i = and i32 %sub3.i, 255
  %shl17.i = shl i32 %conv15.i, %conv14.i
  %or.i = or i32 %shl17.i, %and.i74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %33) #7, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call8.i) #7
  %shr40 = lshr i32 %div.i, %conv37
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr40, %if.end36 ], [ %call4, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_samsung_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %output_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %1, i32 0, i32 1, i32 3
  %inverter_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %1, i32 0, i32 2
  %base.i.i = getelementptr inbounds %struct.samsung_pwm_chip, ptr %1, i32 0, i32 4
  %disabled_mask = getelementptr inbounds %struct.samsung_pwm_chip, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %3, i32 %i.047
  %call2 = tail call ptr @pwm_get_chip_data(ptr noundef %arrayidx) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %output_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %output_mask, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %i.047
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %inverter_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %inverter_mask, align 1
  %conv5 = zext i8 %7 to i32
  %and7 = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  tail call fastcc void @pwm_samsung_set_invert(ptr noundef %1, i32 noundef %i.047, i1 noundef zeroext %tobool8)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %duty_ns = getelementptr inbounds %struct.samsung_pwm_channel, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %duty_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duty_ns, align 4
  %call13 = tail call fastcc i32 @__pwm_samsung_config(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %11, i32 noundef %9, i1 noundef zeroext true)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %hwpwm.i.i = getelementptr %struct.pwm_device, ptr %3, i32 %i.047, i32 2
  %12 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !102
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %add.i.i.i = shl i32 %13, 2
  %add.i.op.op.i.i = add i32 %add.i.i.i, 5
  %add.i.op.op.op.i.i = shl nuw i32 1, %add.i.op.op.i.i
  %shl.i.i = select i1 %cmp.i.i.i, i32 2, i32 %add.i.op.op.op.i.i
  %or.i.i = or i32 %shl.i.i, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %18) #7, !srcloc !105
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %17, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %21) #7, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call2.i) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %24 = ptrtoint ptr %disabled_mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %disabled_mask, align 2
  %conv15 = zext i8 %25 to i32
  %and17 = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pwm_samsung_disable(ptr noundef %1, ptr noundef %arrayidx)
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %hwpwm.i = getelementptr %struct.pwm_device, ptr %3, i32 %i.047, i32 2
  %26 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwpwm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  %add.i.i = add i32 %27, 1
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !102
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %mul.i = shl i32 %spec.select.i.i, 2
  %shl.i = shl nuw i32 1, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %31, %neg.i
  %add11.i = or i32 %mul.i, 1
  %shl12.i = shl nuw i32 1, %add11.i
  %or.i = or i32 %and.i, %shl12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %32) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i.i)
  %cmp26.i = icmp ult i32 %spec.select.i.i, 5
  %add29.pn.v.i = select i1 %cmp26.i, i32 3, i32 2
  %add29.pn.i = or i32 %add29.pn.v.i, %mul.i
  %cond.i = shl nuw i32 1, %add29.pn.i
  %neg21.i = xor i32 %shl12.i, -1
  %and22.i = and i32 %and.i, %neg21.i
  %or34.i = or i32 %cond.i, %shl.i
  %or35.i = or i32 %or34.i, %and22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #7
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %35) #7, !srcloc !105
  %38 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwpwm.i, align 8
  %shl42.i = shl nuw i32 1, %39
  %40 = ptrtoint ptr %disabled_mask to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %disabled_mask, align 2
  %42 = trunc i32 %shl42.i to i8
  %43 = xor i8 %42, -1
  %conv46.i = and i8 %41, %43
  store i8 %conv46.i, ptr %disabled_mask, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call4.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_pwm_samsung__189_651_pwm_samsung_driver_init6, !1, !"__initcall__kmod_pwm_samsung__189_651_pwm_samsung_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-samsung.c", i32 651, i32 1}
!2 = !{ptr @__exitcall_pwm_samsung_driver_exit, !1, !"__exitcall_pwm_samsung_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file190, !4, !"__UNIQUE_ID_file190", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-samsung.c", i32 653, i32 1}
!5 = !{ptr @__UNIQUE_ID_license191, !4, !"__UNIQUE_ID_license191", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author192, !7, !"__UNIQUE_ID_author192", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-samsung.c", i32 654, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias193, !9, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-samsung.c", i32 655, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-samsung.c", i32 644, i32 11}
!12 = !{ptr @pwm_samsung_driver, !13, !"pwm_samsung_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-samsung.c", i32 642, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-samsung.c", i32 545, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pwm_samsung_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pwm_samsung_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-samsung.c", i32 557, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-samsung.c", i32 559, i32 3}
!26 = !{ptr @pwm_samsung_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pwm_samsung_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-samsung.c", i32 565, i32 3}
!30 = !{ptr @pwm_samsung_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pwm_samsung_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-samsung.c", i32 574, i32 41}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-samsung.c", i32 575, i32 41}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-samsung.c", i32 581, i32 3}
!38 = !{ptr @pwm_samsung_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pwm_samsung_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-samsung.c", i32 586, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pwm_samsung_probe.__UNIQUE_ID_ddebug188, !41, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!44 = !{ptr @pwm_samsung_ops, !45, !"pwm_samsung_ops", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-samsung.c", i32 441, i32 29}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-samsung.c", i32 234, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pwm_samsung_request._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @pwm_samsung_request._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-samsung.c", i32 345, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug184, !53, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pwm/pwm-samsung.c", i32 350, i32 3}
!58 = !{ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug185, !57, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pwm/pwm-samsung.c", i32 374, i32 2}
!61 = !{ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug186, !60, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-samsung.c", i32 387, i32 3}
!64 = !{ptr @__pwm_samsung_config.__UNIQUE_ID_ddebug187, !63, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pwm/pwm-samsung.c", i32 198, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pwm_samsung_calc_tin._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @pwm_samsung_calc_tin._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pwm/pwm-samsung.c", i32 203, i32 2}
!72 = !{ptr @pwm_samsung_calc_tin.__UNIQUE_ID_ddebug183, !71, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pwm/pwm-samsung.c", i32 504, i32 2}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pwm/pwm-samsung.c", i32 506, i32 4}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pwm_samsung_parse_dt._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pwm_samsung_parse_dt._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @samsung_pwm_matches, !81, !"samsung_pwm_matches", i1 false, i1 false}
!81 = !{!"../drivers/pwm/pwm-samsung.c", i32 480, i32 34}
!82 = !{ptr @s3c24xx_variant, !83, !"s3c24xx_variant", i1 false, i1 false}
!83 = !{!"../drivers/pwm/pwm-samsung.c", i32 452, i32 41}
!84 = !{ptr @s3c64xx_variant, !85, !"s3c64xx_variant", i1 false, i1 false}
!85 = !{!"../drivers/pwm/pwm-samsung.c", i32 459, i32 41}
!86 = !{ptr @s5p64x0_variant, !87, !"s5p64x0_variant", i1 false, i1 false}
!87 = !{!"../drivers/pwm/pwm-samsung.c", i32 466, i32 41}
!88 = !{ptr @s5pc100_variant, !89, !"s5pc100_variant", i1 false, i1 false}
!89 = !{!"../drivers/pwm/pwm-samsung.c", i32 473, i32 41}
!90 = !{ptr @pwm_samsung_pm_ops, !91, !"pwm_samsung_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/pwm/pwm-samsung.c", i32 640, i32 8}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2044874}
!103 = !{i64 2152953887}
!104 = !{i64 2152954519}
!105 = !{i64 2044456}
!106 = !{i64 2148737366, i64 2148737371, i64 2148737384, i64 2148737428, i64 2148737462, i64 2148737483}
!107 = !{i64 2152932878}
!108 = !{i64 2152933352}
!109 = !{i64 2152934352}
!110 = !{i64 2152935491}
!111 = !{i64 2152936059}
!112 = !{i64 2152936886}
!113 = !{i64 2152922361}
!114 = !{i64 2152922706}
!115 = !{i64 2152923229}
!116 = !{i64 2152937996}
!117 = !{i64 2152938641}
!118 = !{i64 2152946009}
!119 = !{i64 2152946499}
!120 = !{i64 2152925168}
!121 = !{i64 2152925758}
!122 = !{i32 0, i32 33}
!123 = !{i64 2152924281}
!124 = !{i64 2152924503}
