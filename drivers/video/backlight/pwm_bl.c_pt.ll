; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/pwm_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/pwm_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pwm_bl_data = type { ptr, ptr, i32, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_pwm_bl__305_704_pwm_backlight_driver_init6 = internal global ptr @pwm_backlight_driver_init, section ".initcall6.init", align 4
@pwm_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_backlight_probe, ptr @pwm_backlight_remove, ptr @pwm_backlight_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_backlight_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_backlight_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_backlight_driver_exit = internal global ptr @pwm_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [46 x i8] c"pwm_bl.description=PWM based Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [43 x i8] c"pwm_bl.file=drivers/video/backlight/pwm_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [22 x i8] c"pwm_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [36 x i8] c"pwm_bl.alias=platform:pwm-backlight\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm-backlight\00", [18 x i8] zeroinitializer }, align 32
@pwm_backlight_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_backlight_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_backlight_suspend, ptr @pwm_backlight_resume, ptr null, ptr null, ptr @pwm_backlight_suspend, ptr @pwm_backlight_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find platform data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_backlight_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/backlight/pwm_bl.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr = internal global ptr @pwm_backlight_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to request PWM, trying legacy API\0A\00", [54 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.10 = internal global ptr @pwm_backlight_probe._entry.8, section ".printk_index", align 4
@pwm_backlight_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request PWM\0A\00", [41 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.13 = internal global ptr @pwm_backlight_probe._entry.11, section ".printk_index", align 4
@pwm_backlight_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwm_bl\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"got pwm for backlight\0A\00", [41 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to apply initial PWM state: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.18 = internal global ptr @pwm_backlight_probe._entry.16, section ".printk_index", align 4
@pwm_backlight_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to setup default brightness table\0A\00", [54 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.21 = internal global ptr @pwm_backlight_probe._entry.19, section ".printk_index", align 4
@pwm_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @pwm_backlight_update_status, ptr null, ptr @pwm_backlight_check_fb }, [16 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.24 = internal global ptr @pwm_backlight_probe._entry.22, section ".printk_index", align 4
@pwm_backlight_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid default brightness level: %u, using %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pwm_backlight_probe._entry_ptr.28 = internal global ptr @pwm_backlight_probe._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"post-pwm-on-delay-ms\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm-off-delay-ms\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brightness-levels\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"default-brightness-level\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num-interpolated-steps\00", [41 x i8] zeroinitializer }, align 32
@pwm_backlight_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't interpolate\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm_backlight_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@pwm_backlight_parse_dt._entry_ptr = internal global ptr @pwm_backlight_parse_dt._entry, section ".printk_index", align 4
@pwm_backlight_parse_dt.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"new number of brightness levels: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pwm_backlight_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable power supply\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm_backlight_power_on\00", [41 x i8] zeroinitializer }, align 32
@pwm_backlight_power_on._entry_ptr = internal global ptr @pwm_backlight_power_on._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"pwm_backlight_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 693, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 695, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"pwm_backlight_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 362, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"pwm_backlight_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 684, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 468, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 496, i32 56 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 503, i32 52 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 511, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 519, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 523, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 539, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 577, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"pwm_backlight_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 140, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 606, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 614, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 250, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 252, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 258, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 278, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 290, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 306, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 316, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [36 x i8] c"../drivers/video/backlight/pwm_bl.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 53, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_pwm_backlight_driver_exit, ptr @__initcall__kmod_pwm_bl__305_704_pwm_backlight_driver_init6, ptr @pwm_backlight_driver_exit, ptr @pwm_backlight_parse_dt._entry, ptr @pwm_backlight_parse_dt._entry_ptr, ptr @pwm_backlight_power_on._entry, ptr @pwm_backlight_power_on._entry_ptr, ptr @pwm_backlight_probe._entry, ptr @pwm_backlight_probe._entry.11, ptr @pwm_backlight_probe._entry.16, ptr @pwm_backlight_probe._entry.19, ptr @pwm_backlight_probe._entry.22, ptr @pwm_backlight_probe._entry.25, ptr @pwm_backlight_probe._entry.8, ptr @pwm_backlight_probe._entry_ptr, ptr @pwm_backlight_probe._entry_ptr.10, ptr @pwm_backlight_probe._entry_ptr.13, ptr @pwm_backlight_probe._entry_ptr.18, ptr @pwm_backlight_probe._entry_ptr.21, ptr @pwm_backlight_probe._entry_ptr.24, ptr @pwm_backlight_probe._entry_ptr.28, ptr @pwm_backlight_driver, ptr @.str, ptr @pwm_backlight_of_match, ptr @pwm_backlight_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @pwm_backlight_ops, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_backlight_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_backlight_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_backlight_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %defdata = alloca %struct.platform_pwm_backlight_data, align 4
  %props = alloca %struct.backlight_properties, align 4
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.sroa.gep = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %defdata) #6
  %2 = call ptr @memset(ptr %defdata, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = call ptr @memset(ptr %props, i32 255, i32 28)
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #6
  %9 = call ptr @memset(ptr %state, i32 255, i32 24)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %defdata.sroa.gep = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %defdata, i32 0, i32 8
  %call3 = call fastcc i32 @pwm_backlight_parse_dt(ptr noundef %dev, ptr noundef nonnull %defdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %data.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %defdata, %if.then.if.end6_crit_edge ]
  %data.0.sroa.phi = phi ptr [ %call.sroa.gep, %entry.if.end6_crit_edge ], [ %defdata.sroa.gep, %if.then.if.end6_crit_edge ]
  %10 = ptrtoint ptr %data.0.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.0.sroa.phi, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %init9 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 8
  %12 = ptrtoint ptr %init9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init9, align 4
  %call11 = call i32 %13(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.err_alloc_crit_edge, label %if.end20

if.end15.err_alloc_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

if.end20:                                         ; preds = %if.end15
  %notify = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 9
  %14 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify, align 4
  %notify21 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %notify21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %notify21, align 4
  %notify_after = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 10
  %17 = ptrtoint ptr %notify_after to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notify_after, align 4
  %notify_after22 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %notify_after22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %notify_after22, align 4
  %check_fb = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 12
  %20 = ptrtoint ptr %check_fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %check_fb, align 4
  %check_fb23 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %check_fb23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %check_fb23, align 4
  %exit = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 11
  %23 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exit, align 4
  %exit24 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %exit24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %exit24, align 4
  %dev26 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev26, align 4
  %enabled = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %enabled, align 4
  %post_pwm_on_delay = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 6
  %28 = ptrtoint ptr %post_pwm_on_delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %post_pwm_on_delay, align 4
  %post_pwm_on_delay27 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %post_pwm_on_delay27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %post_pwm_on_delay27, align 4
  %pwm_off_delay = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 7
  %31 = ptrtoint ptr %pwm_off_delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pwm_off_delay, align 4
  %pwm_off_delay28 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %pwm_off_delay28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pwm_off_delay28, align 4
  %call30 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0) #6
  %enable_gpio = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call30, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call30 to i32
  br label %err_alloc

if.end36:                                         ; preds = %if.end20
  %call38 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %power_supply = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %power_supply to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call38, ptr %power_supply, align 4
  %cmp.i341 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call38 to i32
  br label %err_alloc

if.end44:                                         ; preds = %if.end36
  %call46 = call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef null) #6
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call46, ptr %call.i, align 4
  %cmp.i342 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i342, label %land.lhs.true, label %if.end44.if.end61_crit_edge

if.end44.if.end61_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end44
  %cmp51.not = icmp ne ptr %call46, inttoptr (i32 -517 to ptr)
  %tobool53.not = icmp eq ptr %8, null
  %or.cond = select i1 %cmp51.not, i1 %tobool53.not, i1 false
  br i1 %or.cond, label %do.end57, label %if.end61thread-pre-split

do.end57:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %legacy = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %legacy to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %legacy, align 4
  %40 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data.0, align 4
  %call59 = call ptr @pwm_request(i32 noundef %41, ptr noundef nonnull @.str) #6
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call59, ptr %call.i, align 4
  br label %if.end61

if.end61thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %call.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %do.end57, %if.end44.if.end61_crit_edge
  %44 = phi ptr [ %.pr, %if.end61thread-pre-split ], [ %call59, %do.end57 ], [ %call46, %if.end44.if.end61_crit_edge ]
  %cmp.i343 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i343, label %if.then64, label %do.body75

if.then64:                                        ; preds = %if.end61
  %cmp67.not = icmp eq ptr %44, inttoptr (i32 -517 to ptr)
  br i1 %cmp67.not, label %if.then64.err_alloc_crit_edge, label %do.end71

if.then64.err_alloc_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

do.end71:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_alloc

do.body75:                                        ; preds = %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_backlight_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_backlight_probe, %if.then80)) #6
          to label %do.end84 [label %if.then80], !srcloc !93

if.then80:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_backlight_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %do.body75
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %47, i32 0, i32 7
  %48 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %47, i32 0, i32 6
  %49 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %47, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %args.sroa.0.0.copyload8.i, ptr %state, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %52 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %53 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 4
  %54 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %usage_power.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %args.sroa.0.0.copyload8.i)
  %tobool86.not = icmp eq i64 %args.sroa.0.0.copyload8.i, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %do.end84.if.end92_crit_edge

do.end84.if.end92_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true87:                                  ; preds = %do.end84
  %pwm_period_ns = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 4
  %55 = ptrtoint ptr %pwm_period_ns to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pwm_period_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp88.not = icmp eq i32 %56, 0
  br i1 %cmp88.not, label %land.lhs.true87.if.end92_crit_edge, label %if.then89

land.lhs.true87.if.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %56 to i64
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv, ptr %state, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %land.lhs.true87.if.end92_crit_edge, %do.end84.if.end92_crit_edge
  %call94 = call i32 @pwm_apply_state(ptr noundef %47, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call94) #9
  br label %err_alloc

if.end101:                                        ; preds = %if.end92
  %58 = call ptr @memset(ptr %props, i32 0, i32 28)
  %levels = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 5
  %59 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %levels, align 4
  %tobool102.not = icmp eq ptr %60, null
  br i1 %tobool102.not, label %if.else121, label %if.then103

if.then103:                                       ; preds = %if.end101
  %levels105 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %levels105 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %levels105, align 4
  %max_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 1
  %scale = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then103
  %i.0361 = phi i32 [ 0, %if.then103 ], [ %inc, %for.inc.for.body_crit_edge ]
  %62 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %levels, align 4
  %arrayidx = getelementptr i32, ptr %63, i32 %i.0361
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %66 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp109 = icmp ugt i32 %65, %67
  br i1 %cmp109, label %if.then111, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then111:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %scale, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0361, 1
  %69 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_brightness, align 4
  %cmp106.not = icmp ugt i32 %inc, %70
  br i1 %cmp106.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.i = add nuw i32 %70, 1
  %71 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %levels, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %arrayidx2.i = getelementptr i32, ptr %72, i32 %70
  %75 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx2.i, align 4
  %sub3.i = sub i32 %76, %74
  %mul.i = shl i32 %sub3.i, 7
  %div.i = udiv i32 %mul.i, %add.i
  %div5.i = udiv i32 %sub3.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp37.i.not = icmp eq i32 %70, 0
  br i1 %cmp37.i.not, label %for.end.if.then117_crit_edge, label %for.body.i.preheader

for.end.if.then117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117

for.body.i.preheader:                             ; preds = %for.end
  %div736.i362 = lshr i32 %div.i, 7
  %arrayidx10.i363 = getelementptr i32, ptr %72, i32 1
  %77 = ptrtoint ptr %arrayidx10.i363 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx10.i363, align 4
  %add8.i365 = sub i32 %74, %78
  %sub11.i366 = add i32 %add8.i365, %div736.i362
  %79 = call i32 @llvm.abs.i32(i32 %sub11.i366, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %div5.i)
  %cmp14.i367 = icmp ugt i32 %79, %div5.i
  br i1 %cmp14.i367, label %for.body.i.preheader.if.else_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.else_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.038.i368 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 1, %for.body.i.preheader.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038.i368, i32 %70)
  %exitcond.not.i = icmp eq i32 %i.038.i368, %70
  br i1 %exitcond.not.i, label %for.cond.i.pwm_backlight_is_linear.exit_crit_edge, label %for.body.i

for.cond.i.pwm_backlight_is_linear.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_is_linear.exit

for.body.i:                                       ; preds = %for.cond.i
  %inc.i = add nuw i32 %i.038.i368, 1
  %mul6.i = mul i32 %inc.i, %div.i
  %div736.i = lshr i32 %mul6.i, 7
  %arrayidx10.i = getelementptr i32, ptr %72, i32 %inc.i
  %80 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx10.i, align 4
  %add8.i = sub i32 %74, %81
  %sub11.i = add i32 %add8.i, %div736.i
  %82 = call i32 @llvm.abs.i32(i32 %sub11.i, i1 false) #6
  %cmp14.i = icmp ugt i32 %82, %div5.i
  br i1 %cmp14.i, label %for.body.i.pwm_backlight_is_linear.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.pwm_backlight_is_linear.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_is_linear.exit

pwm_backlight_is_linear.exit:                     ; preds = %for.body.i.pwm_backlight_is_linear.exit_crit_edge, %for.cond.i.pwm_backlight_is_linear.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038.i368, i32 %70)
  %cmp.i344.le = icmp ult i32 %i.038.i368, %70
  br i1 %cmp.i344.le, label %pwm_backlight_is_linear.exit.if.else_crit_edge, label %pwm_backlight_is_linear.exit.if.then117_crit_edge

pwm_backlight_is_linear.exit.if.then117_crit_edge: ; preds = %pwm_backlight_is_linear.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117

pwm_backlight_is_linear.exit.if.else_crit_edge:   ; preds = %pwm_backlight_is_linear.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then117:                                       ; preds = %pwm_backlight_is_linear.exit.if.then117_crit_edge, %for.end.if.then117_crit_edge
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %5, align 4
  br label %if.end163

if.else:                                          ; preds = %pwm_backlight_is_linear.exit.if.else_crit_edge, %for.body.i.preheader.if.else_crit_edge
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %5, align 4
  br label %if.end163

if.else121:                                       ; preds = %if.end101
  %max_brightness122 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 1
  %85 = ptrtoint ptr %max_brightness122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_brightness122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool123.not = icmp eq i32 %86, 0
  br i1 %tobool123.not, label %if.then124, label %if.else159

if.then124:                                       ; preds = %if.else121
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %88, i32 0, i32 7
  %89 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %90 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %state, align 8
  %conv128 = trunc i64 %91 to i32
  %call129 = call fastcc i32 @pwm_backlight_brightness_default(ptr noundef %dev, ptr noundef nonnull %data.0, i32 noundef %conv128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end135, label %for.cond138.preheader

for.cond138.preheader:                            ; preds = %if.then124
  %scale145 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 7
  %levels154 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 3
  br label %for.body142

do.end135:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %err_alloc

for.body142:                                      ; preds = %if.end152.for.body142_crit_edge, %for.cond138.preheader
  %i.1370 = phi i32 [ 0, %for.cond138.preheader ], [ %inc156, %if.end152.for.body142_crit_edge ]
  %92 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %levels, align 4
  %arrayidx144 = getelementptr i32, ptr %93, i32 %i.1370
  %94 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx144, align 4
  %96 = ptrtoint ptr %scale145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scale145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp146 = icmp ugt i32 %95, %97
  br i1 %cmp146, label %if.then148, label %for.body142.if.end152_crit_edge

for.body142.if.end152_crit_edge:                  ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then148:                                       ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %scale145 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %scale145, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %for.body142.if.end152_crit_edge
  %99 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %levels, align 4
  %101 = ptrtoint ptr %levels154 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %levels154, align 4
  %inc156 = add i32 %i.1370, 1
  %102 = ptrtoint ptr %max_brightness122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_brightness122, align 4
  %cmp140.not = icmp ugt i32 %inc156, %103
  br i1 %cmp140.not, label %for.end157, label %if.end152.for.body142_crit_edge

if.end152.for.body142_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body142

for.end157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %5, align 4
  br label %if.end163

if.else159:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  %scale161 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 7
  %105 = ptrtoint ptr %scale161 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %86, ptr %scale161, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else159, %for.end157, %if.else, %if.then117
  %lth_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 3
  %106 = ptrtoint ptr %lth_brightness to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lth_brightness, align 4
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %state, align 8
  %scale166 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 7
  %110 = ptrtoint ptr %scale166 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %scale166, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %109)
  %cmp164.i.i = icmp ult i64 %109, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !94

if.then168.i.i:                                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %109 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %111
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  %112 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %109) #10, !srcloc !95
  %asmresult1.i.i.i = extractvalue { i64, i64 } %112, 1
  %extract.t359 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t359, %if.else174.i.i ]
  %conv168 = mul i32 %dividend.addr.0.i.i.off0, %107
  %lth_brightness169 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 2
  %113 = ptrtoint ptr %lth_brightness169 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv168, ptr %lth_brightness169, align 4
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %4, align 4
  %max_brightness170 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 1
  %115 = ptrtoint ptr %max_brightness170 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_brightness170, align 4
  %117 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %118 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %if.end.i, label %div_u64.exit.dev_name.exit_crit_edge

div_u64.exit.dev_name.exit_crit_edge:             ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %div_u64.exit.dev_name.exit_crit_edge
  %retval.0.i345 = phi ptr [ %121, %if.end.i ], [ %119, %div_u64.exit.dev_name.exit_crit_edge ]
  %call175 = call ptr @backlight_device_register(ptr noundef %retval.0.i345, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @pwm_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i346 = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %do.end180, label %if.end188

do.end180:                                        ; preds = %dev_name.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %122 = ptrtoint ptr %call175 to i32
  %legacy183 = getelementptr inbounds %struct.pwm_bl_data, ptr %call.i, i32 0, i32 8
  %123 = ptrtoint ptr %legacy183 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %legacy183, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool184.not = icmp eq i8 %124, 0
  br i1 %tobool184.not, label %do.end180.err_alloc_crit_edge, label %if.then185

do.end180.err_alloc_crit_edge:                    ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

if.then185:                                       ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i, align 4
  call void @pwm_free(ptr noundef %126) #6
  br label %err_alloc

if.end188:                                        ; preds = %dev_name.exit
  %dft_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 2
  %127 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dft_brightness, align 4
  %129 = ptrtoint ptr %max_brightness170 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_brightness170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp190 = icmp ugt i32 %128, %130
  br i1 %cmp190, label %do.end195, label %if.end188.if.end201_crit_edge

if.end188.if.end201_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

do.end195:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %128, i32 noundef %130) #9
  %131 = ptrtoint ptr %max_brightness170 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_brightness170, align 4
  %133 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %dft_brightness, align 4
  br label %if.end201

if.end201:                                        ; preds = %do.end195, %if.end188.if.end201_crit_edge
  %134 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dft_brightness, align 4
  %136 = ptrtoint ptr %call175 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %call175, align 8
  %137 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev26, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 27
  %139 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %of_node.i, align 8
  %141 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %enable_gpio, align 4
  %tobool.not.i347 = icmp eq ptr %142, null
  br i1 %tobool.not.i347, label %if.end201.if.end.i350_crit_edge, label %land.lhs.true.i

if.end201.if.end.i350_crit_edge:                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i350

land.lhs.true.i:                                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  %call.i348 = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348)
  %cmp.i349 = icmp ne i32 %call.i348, 0
  br label %if.end.i350

if.end.i350:                                      ; preds = %land.lhs.true.i, %if.end201.if.end.i350_crit_edge
  %active.0.off0.i = phi i1 [ true, %if.end201.if.end.i350_crit_edge ], [ %cmp.i349, %land.lhs.true.i ]
  %143 = ptrtoint ptr %power_supply to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %power_supply, align 4
  %call2.i = call i32 @regulator_is_enabled(ptr noundef %144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp ne i32 %call2.i, 0
  %145 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call.i, align 4
  %state.sroa.4.0.state1.i.sroa_idx.i.i = getelementptr inbounds %struct.pwm_device, ptr %146, i32 0, i32 7, i32 3
  %147 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %state.sroa.4.0.copyload1.i.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i.i)
  %tobool.i.i = icmp ne i8 %state.sroa.4.0.copyload1.i.i, 0
  %148 = select i1 %tobool.i.i, i1 %tobool3.not.i, i1 false
  %spec.select35.i = select i1 %148, i1 %active.0.off0.i, i1 false
  %149 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %enable_gpio, align 4
  %tobool10.not.i = icmp eq ptr %150, null
  br i1 %tobool10.not.i, label %if.end.i350.if.end15.i_crit_edge, label %if.then11.i

if.end.i350.if.end15.i_crit_edge:                 ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i1 %spec.select35.i to i32
  %call14.i = call i32 @gpiod_direction_output(ptr noundef nonnull %150, i32 noundef %conv.i) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end.i350.if.end15.i_crit_edge
  %tobool16.not.i = icmp eq ptr %140, null
  br i1 %tobool16.not.i, label %if.end15.i.pwm_backlight_initial_power_state.exit_crit_edge, label %lor.lhs.false.i

if.end15.i.pwm_backlight_initial_power_state.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_initial_power_state.exit

lor.lhs.false.i:                                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %phandle.i = getelementptr inbounds %struct.device_node, ptr %140, i32 0, i32 1
  %151 = ptrtoint ptr %phandle.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %phandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool17.not.i = icmp eq i32 %152, 0
  %153 = select i1 %tobool17.not.i, i1 true, i1 %spec.select35.i
  %spec.select36.i = select i1 %153, i32 0, i32 4
  br label %pwm_backlight_initial_power_state.exit

pwm_backlight_initial_power_state.exit:           ; preds = %lor.lhs.false.i, %if.end15.i.pwm_backlight_initial_power_state.exit_crit_edge
  %retval.0.i351 = phi i32 [ 0, %if.end15.i.pwm_backlight_initial_power_state.exit_crit_edge ], [ %spec.select36.i, %lor.lhs.false.i ]
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call175, i32 0, i32 2
  %154 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %retval.0.i351, ptr %power, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call175, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call175, i32 0, i32 3
  %155 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i, align 4
  %tobool.not.i352 = icmp eq ptr %156, null
  br i1 %tobool.not.i352, label %pwm_backlight_initial_power_state.exit.backlight_update_status.exit_crit_edge, label %land.lhs.true.i353

pwm_backlight_initial_power_state.exit.backlight_update_status.exit_crit_edge: ; preds = %pwm_backlight_initial_power_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i353:                               ; preds = %pwm_backlight_initial_power_state.exit
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %158, null
  br i1 %tobool2.not.i, label %land.lhs.true.i353.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i353.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #8
  %call.i354 = call i32 %158(ptr noundef %call175) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i353.backlight_update_status.exit_crit_edge, %pwm_backlight_initial_power_state.exit.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %159 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call175, ptr %driver_data.i.i, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.then185, %do.end180.err_alloc_crit_edge, %do.end135, %do.end99, %do.end71, %if.then64.err_alloc_crit_edge, %if.then41, %if.then33, %if.end15.err_alloc_crit_edge
  %ret.0 = phi i32 [ %35, %if.then33 ], [ %37, %if.then41 ], [ %45, %do.end71 ], [ -517, %if.then64.err_alloc_crit_edge ], [ %call94, %do.end99 ], [ %122, %if.then185 ], [ %122, %do.end180.err_alloc_crit_edge ], [ %call129, %do.end135 ], [ -12, %if.end15.err_alloc_crit_edge ]
  %exit207 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data.0, i32 0, i32 11
  %160 = ptrtoint ptr %exit207 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %exit207, align 4
  %tobool208.not = icmp eq ptr %161, null
  br i1 %tobool208.not, label %err_alloc.cleanup_crit_edge, label %if.then209

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then209:                                       ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #8
  call void %161(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %err_alloc.cleanup_crit_edge, %backlight_update_status.exit, %if.then8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %backlight_update_status.exit ], [ %call3, %do.end ], [ %call11, %if.then8.cleanup_crit_edge ], [ %ret.0, %if.then209 ], [ %ret.0, %err_alloc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %defdata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i12 = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i12, align 4
  tail call void @backlight_device_unregister(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.pwm_backlight_power_off.exit_crit_edge, label %if.end.i

entry.pwm_backlight_power_off.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_power_off.exit

if.end.i:                                         ; preds = %entry
  %enable_gpio.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %10, i32 noundef 0) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pwm_off_delay.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %pwm_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pwm_off_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %12) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %enabled9.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %13 = ptrtoint ptr %enabled9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled9.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %14 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %duty_cycle.i, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %16, ptr noundef nonnull %state.i) #6
  %power_supply.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_supply.i, align 4
  %call11.i = call i32 @regulator_disable(ptr noundef %18) #6
  %19 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %enabled.i, align 4
  br label %pwm_backlight_power_off.exit

pwm_backlight_power_off.exit:                     ; preds = %if.end8.i, %entry.pwm_backlight_power_off.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  %exit = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %pwm_backlight_power_off.exit.if.end_crit_edge, label %if.then

pwm_backlight_power_off.exit.if.end_crit_edge:    ; preds = %pwm_backlight_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pwm_backlight_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void %21(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %pwm_backlight_power_off.exit.if.end_crit_edge
  %legacy = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %legacy, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not = icmp eq i8 %23, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  call void @pwm_free(ptr noundef %25) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_backlight_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i2 = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.pwm_backlight_power_off.exit_crit_edge, label %if.end.i

entry.pwm_backlight_power_off.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_power_off.exit

if.end.i:                                         ; preds = %entry
  %enable_gpio.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %10, i32 noundef 0) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pwm_off_delay.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %pwm_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pwm_off_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %12) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %enabled9.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %13 = ptrtoint ptr %enabled9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled9.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %14 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %duty_cycle.i, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %16, ptr noundef nonnull %state.i) #6
  %power_supply.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_supply.i, align 4
  %call11.i = call i32 @regulator_disable(ptr noundef %18) #6
  %19 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %enabled.i, align 4
  br label %pwm_backlight_power_off.exit

pwm_backlight_power_off.exit:                     ; preds = %if.end8.i, %entry.pwm_backlight_power_off.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_backlight_parse_dt(ptr noundef %dev, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %num_steps = alloca i32, align 4
  %length = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_steps) #6
  %2 = ptrtoint ptr %num_steps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_steps, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #6
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %length, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !97
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %if.end

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %data, i32 0, i32 52)
  %post_pwm_on_delay = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef %post_pwm_on_delay, i32 noundef 1, i32 noundef 0) #6
  %pwm_off_delay = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 7
  %call.i.i147 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, ptr noundef %pwm_off_delay, i32 noundef 1, i32 noundef 0) #6
  %call2 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %length) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup84_crit_edge, label %if.end5

if.end.cleanup84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %div146 = lshr i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not = icmp ult i32 %7, 4
  br i1 %cmp.not, label %if.end5.cleanup84_crit_edge, label %if.then6

if.end5.cleanup84_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.then6:                                         ; preds = %if.end5
  %mul = and i32 %7, -4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #6
  %levels = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %levels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %levels, align 4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then6.cleanup84_crit_edge, label %if.end11

if.then6.cleanup84_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end11:                                         ; preds = %if.then6
  %call.i148 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %call.i, i32 noundef %div146, i32 noundef 0) #6
  %9 = call i32 @llvm.smin.i32(i32 %call.i148, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp14 = icmp slt i32 %call.i148, 0
  br i1 %cmp14, label %if.end11.cleanup84_crit_edge, label %if.end16

if.end11.cleanup84_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end16:                                         ; preds = %if.end11
  %call.i.i149 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i149, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp18 = icmp slt i32 %call.i.i149, 0
  br i1 %cmp18, label %if.end16.cleanup84_crit_edge, label %if.end20

if.end16.cleanup84_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end20:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %dft_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dft_brightness, align 4
  %call.i.i150 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %num_steps, i32 noundef 1, i32 noundef 0) #6
  %14 = ptrtoint ptr %num_steps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.end20.cleanup80_crit_edge, label %if.then23

if.end20.cleanup80_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp24 = icmp ult i32 %7, 8
  br i1 %cmp24, label %do.end, label %if.end26

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  br label %cleanup84

if.end26:                                         ; preds = %if.then23
  %sub = add nsw i32 %div146, -1
  %mul27 = mul i32 %15, %sub
  %add = add i32 %mul27, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_backlight_parse_dt.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_backlight_parse_dt, %if.then33)) #6
          to label %do.end36 [label %if.then33], !srcloc !93

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_backlight_parse_dt.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %add) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %if.end26
  %mul37 = shl i32 %add, 2
  %call.i151 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul37, i32 noundef 3520) #6
  %tobool39.not = icmp eq ptr %call.i151, null
  br i1 %tobool39.not, label %do.end36.cleanup84_crit_edge, label %if.end41

do.end36.cleanup84_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup84

if.end41:                                         ; preds = %do.end36
  %16 = ptrtoint ptr %num_steps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp43161.not = icmp eq i32 %sub, 0
  br i1 %cmp43161.not, label %if.end41.cleanup_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.body55.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %indvars.iv.next = add i32 %indvars.iv, %17
  %exitcond164.not = icmp eq i32 %add48, %sub
  br i1 %exitcond164.not, label %cleanup.loopexit, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end41.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.loopexit.for.body_crit_edge ], [ %17, %if.end41.for.body_crit_edge ]
  %i.0162 = phi i32 [ %add48, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %mul44 = mul i32 %i.0162, %17
  %add45 = add i32 %mul44, %17
  %18 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %levels, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 %i.0162
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add48 = add nuw i32 %i.0162, 1
  %arrayidx49 = getelementptr i32, ptr %19, i32 %add48
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx49, align 4
  %conv = zext i32 %23 to i64
  %conv50 = zext i32 %21 to i64
  %sub51 = sub nsw i64 %conv, %conv50
  call void @__sanitizer_cov_trace_cmp4(i32 %mul44, i32 %add45)
  %cmp53159 = icmp ult i32 %mul44, %add45
  br i1 %cmp53159, label %for.body.for.body55_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body.for.body55_crit_edge:                    ; preds = %for.body
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body.for.body55_crit_edge
  %x.0160 = phi i32 [ %inc, %for.body55.for.body55_crit_edge ], [ %mul44, %for.body.for.body55_crit_edge ]
  %sub57 = sub nuw i32 %x.0160, %mul44
  %conv58 = zext i32 %sub57 to i64
  %mul59 = mul i64 %sub51, %conv58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %24 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %remainder.i, align 4, !annotation !97
  %call.i152 = call i64 @div_s64_rem(i64 noundef %mul59, i32 noundef %17, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %25 = trunc i64 %call.i152 to i32
  %conv62 = add i32 %21, %25
  %arrayidx63 = getelementptr i32, ptr %call.i151, i32 %x.0160
  %26 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv62, ptr %arrayidx63, align 4
  %inc = add i32 %x.0160, 1
  %exitcond.not = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond.not, label %for.body55.for.cond.loopexit_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55

for.body55.for.cond.loopexit_crit_edge:           ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

cleanup.loopexit:                                 ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = mul i32 %17, %sub
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end41.cleanup_crit_edge
  %x2.0.lcssa = phi i32 [ -1, %if.end41.cleanup_crit_edge ], [ %27, %cleanup.loopexit ]
  %y2.0.lcssa = phi i32 [ -1, %if.end41.cleanup_crit_edge ], [ %23, %cleanup.loopexit ]
  %arrayidx67 = getelementptr i32, ptr %call.i151, i32 %x2.0.lcssa
  %28 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %y2.0.lcssa, ptr %arrayidx67, align 4
  %29 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %levels, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %30) #6
  %31 = ptrtoint ptr %levels to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i151, ptr %levels, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup, %if.end20.cleanup80_crit_edge
  %num_levels.1 = phi i32 [ %add, %cleanup ], [ %div146, %if.end20.cleanup80_crit_edge ]
  %sub79 = add i32 %num_levels.1, -1
  %max_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub79, ptr %max_brightness, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %cleanup80, %do.end36.cleanup84_crit_edge, %do.end, %if.end16.cleanup84_crit_edge, %if.end11.cleanup84_crit_edge, %if.then6.cleanup84_crit_edge, %if.end5.cleanup84_crit_edge, %if.end.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.3 = phi i32 [ -19, %entry.cleanup84_crit_edge ], [ 0, %if.end.cleanup84_crit_edge ], [ 0, %cleanup80 ], [ 0, %if.end5.cleanup84_crit_edge ], [ %10, %if.end16.cleanup84_crit_edge ], [ %9, %if.end11.cleanup84_crit_edge ], [ -12, %if.then6.cleanup84_crit_edge ], [ -12, %do.end36.cleanup84_crit_edge ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_steps) #6
  ret i32 %retval.3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_backlight_brightness_default(ptr noundef %dev, ptr nocapture noundef %data, i32 noundef %period) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.ctlz.i32(i32 %period, i1 true) #6, !range !98
  %sub.i = sub nuw nsw i32 32, %0
  %1 = sub i32 %period, %0
  %sub = add i32 %1, 31
  %div = udiv i32 %sub, %sub.i
  %2 = tail call i32 @llvm.smin.i32(i32 %div, i32 4096)
  %max_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_brightness, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !99

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %levels328 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %levels328 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %levels328, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #6
  %levels = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %levels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %levels, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7331.not = icmp eq i32 %10, 0
  br i1 %cmp7331.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = zext i32 %period to i64
  br label %for.body

for.body:                                         ; preds = %if.end214.for.body_crit_edge, %for.body.lr.ph
  %11 = phi i32 [ %10, %for.body.lr.ph ], [ %16, %if.end214.for.body_crit_edge ]
  %i.0332 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end214.for.body_crit_edge ]
  %mul = shl i32 %i.0332, 16
  %div9 = udiv i32 %mul, %11
  %mul.i = mul i32 %div9, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 524289
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = mul i32 %div9, 1000
  %add.i = add i32 %mul2.i, 4516
  %div3.i = udiv i32 %add.i, 9033
  %conv.i = zext i32 %div3.i to i64
  br label %if.end208

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add4.i = add i32 %mul.i, 1048576
  %div5.i = udiv i32 %add4.i, 116
  %conv6.i = zext i32 %div5.i to i64
  %mul7.i = mul nuw nsw i64 %conv6.i, %conv6.i
  %mul8.i = mul i64 %mul7.i, %conv6.i
  %add9.i = add i64 %mul8.i, 2147483648
  %shr.i = lshr i64 %add9.i, 32
  br label %if.end208

if.end208:                                        ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i64 [ %conv.i, %if.then.i ], [ %shr.i, %if.else.i ]
  %mul11 = mul nuw i64 %retval1.0.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976677887, i64 %mul11)
  %cmp211 = icmp ugt i64 %mul11, 281474976677887
  br i1 %cmp211, label %if.end208.cleanup_crit_edge, label %if.end214

if.end208.cleanup_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end214:                                        ; preds = %if.end208
  %add14 = add nuw nsw i64 %mul11, 32768
  %shr = lshr i64 %add14, 16
  %conv215 = trunc i64 %shr to i32
  %12 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %levels, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %i.0332
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv215, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0332, 1
  %15 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_brightness, align 4
  %cmp7 = icmp ult i32 %inc, %16
  br i1 %cmp7, label %if.end214.for.body_crit_edge, label %if.end214.for.end_crit_edge

if.end214.for.end_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end214.for.body_crit_edge:                     ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end214.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %16, %if.end214.for.end_crit_edge ]
  %div218321 = lshr i32 %.lcssa, 1
  %dft_brightness = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div218321, ptr %dft_brightness, align 4
  %dec = add i32 %.lcssa, -1
  %18 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec, ptr %max_brightness, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end208.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %if.end208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %state.i36 = alloca %struct.pwm_state, align 8
  %state.i = alloca %struct.pwm_state, align 8
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #6
  %10 = call ptr @memset(ptr %state, i32 255, i32 24)
  %notify = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %backlight_get_brightness.exit.if.end_crit_edge, label %if.then

backlight_get_brightness.exit.if.end_crit_edge:   ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 %12(ptr noundef %14, i32 noundef %retval.0.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %backlight_get_brightness.exit.if.end_crit_edge
  %brightness.0 = phi i32 [ %call3, %if.then ], [ %retval.0.i, %backlight_get_brightness.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness.0)
  %cmp = icmp sgt i32 %brightness.0, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %16, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %lth_brightness.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %lth_brightness.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lth_brightness.i, align 4
  %20 = load ptr, ptr %1, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %state.sroa.0.0.copyload289.i = load i64, ptr %state1.i.i, align 8
  %levels.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %levels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %levels.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then4.if.end.i_crit_edge, label %if.then.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %23, i32 %brightness.0
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %storemerge.i.in = phi i32 [ %25, %if.then.i ], [ %brightness.0, %if.then4.if.end.i_crit_edge ]
  %storemerge.i = zext i32 %storemerge.i.in to i64
  %conv3.i = zext i32 %19 to i64
  %sub.i = sub i64 %state.sroa.0.0.copyload289.i, %conv3.i
  %mul.i = mul i64 %sub.i, %storemerge.i
  %scale.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp175.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !94

if.then179.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv180.i = trunc i64 %mul.i to i32
  %div183.i = udiv i32 %conv180.i, %27
  br label %compute_duty_cycle.exit

if.else185.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %mul.i) #10, !srcloc !95
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t309.i = trunc i64 %asmresult1.i.i to i32
  br label %compute_duty_cycle.exit

compute_duty_cycle.exit:                          ; preds = %if.else185.i, %if.then179.i
  %duty_cycle.0.off0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t309.i, %if.else185.i ]
  %conv193.i = add i32 %duty_cycle.0.off0.i, %19
  %conv = sext i32 %conv193.i to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %29 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %duty_cycle, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call7 = call i32 @pwm_apply_state(ptr noundef %31, ptr noundef nonnull %state) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %state1.i.i32 = getelementptr inbounds %struct.pwm_device, ptr %33, i32 0, i32 7
  %34 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i32, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enabled.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i33 = icmp eq i8 %36, 0
  br i1 %tobool.not.i33, label %if.end.i35, label %compute_duty_cycle.exit.pwm_backlight_power_on.exit_crit_edge

compute_duty_cycle.exit.pwm_backlight_power_on.exit_crit_edge: ; preds = %compute_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_power_on.exit

if.end.i35:                                       ; preds = %compute_duty_cycle.exit
  %power_supply.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %power_supply.i, align 4
  %call.i = call i32 @regulator_enable(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i34 = icmp slt i32 %call.i, 0
  br i1 %cmp.i34, label %do.end.i, label %if.end.i35.if.end2.i_crit_edge

if.end.i35.if.end2.i_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

do.end.i:                                         ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.37) #9
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.end.i, %if.end.i35.if.end2.i_crit_edge
  %enabled3.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %41 = ptrtoint ptr %enabled3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %enabled3.i, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call5.i = call i32 @pwm_apply_state(ptr noundef %43, ptr noundef nonnull %state.i) #6
  %post_pwm_on_delay.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 9
  %44 = ptrtoint ptr %post_pwm_on_delay.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %post_pwm_on_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not.i = icmp eq i32 %45, 0
  br i1 %tobool6.not.i, label %if.end2.i.if.end9.i_crit_edge, label %if.then7.i

if.end2.i.if.end9.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef %45) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end2.i.if.end9.i_crit_edge
  %enable_gpio.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enable_gpio.i, align 4
  %tobool10.not.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then11.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %47, i32 noundef 1) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end13.i_crit_edge
  %48 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %enabled.i, align 4
  br label %pwm_backlight_power_on.exit

pwm_backlight_power_on.exit:                      ; preds = %if.end13.i, %compute_duty_cycle.exit.pwm_backlight_power_on.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i36) #6
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %state1.i.i37 = getelementptr inbounds %struct.pwm_device, ptr %50, i32 0, i32 7
  %51 = call ptr @memcpy(ptr %state.i36, ptr %state1.i.i37, i32 24)
  %enabled.i38 = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %enabled.i38 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enabled.i38, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i39 = icmp eq i8 %53, 0
  br i1 %tobool.not.i39, label %if.else.pwm_backlight_power_off.exit_crit_edge, label %if.end.i41

if.else.pwm_backlight_power_off.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_power_off.exit

if.end.i41:                                       ; preds = %if.else
  %enable_gpio.i40 = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %enable_gpio.i40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable_gpio.i40, align 4
  %tobool1.not.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i, label %if.end.i41.if.end4.i_crit_edge, label %if.then2.i

if.end.i41.if.end4.i_crit_edge:                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %55, i32 noundef 0) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i41.if.end4.i_crit_edge
  %pwm_off_delay.i = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %pwm_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pwm_off_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool5.not.i = icmp eq i32 %57, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %57) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %enabled9.i = getelementptr inbounds %struct.pwm_state, ptr %state.i36, i32 0, i32 3
  %58 = ptrtoint ptr %enabled9.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %enabled9.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i36, i32 0, i32 1
  %59 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %duty_cycle.i, align 8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @pwm_apply_state(ptr noundef %61, ptr noundef nonnull %state.i36) #6
  %power_supply.i43 = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %power_supply.i43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %power_supply.i43, align 4
  %call11.i = call i32 @regulator_disable(ptr noundef %63) #6
  %64 = ptrtoint ptr %enabled.i38 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %enabled.i38, align 4
  br label %pwm_backlight_power_off.exit

pwm_backlight_power_off.exit:                     ; preds = %if.end8.i, %if.else.pwm_backlight_power_off.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i36) #6
  br label %if.end8

if.end8:                                          ; preds = %pwm_backlight_power_off.exit, %pwm_backlight_power_on.exit
  %notify_after = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 12
  %65 = ptrtoint ptr %notify_after to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %notify_after, align 4
  %tobool9.not = icmp eq ptr %66, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev12, align 4
  call void %66(ptr noundef %68, i32 noundef %brightness.0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_check_fb(ptr nocapture noundef readonly %bl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %check_fb = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %check_fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pwm_bl_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 %3(ptr noundef %5, ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %notify = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %call4 = tail call i32 %5(ptr noundef %7, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.pwm_backlight_power_off.exit_crit_edge, label %if.end.i

if.end.pwm_backlight_power_off.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_backlight_power_off.exit

if.end.i:                                         ; preds = %if.end
  %enable_gpio.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %pwm_off_delay.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %pwm_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwm_off_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %16) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %enabled9.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %17 = ptrtoint ptr %enabled9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled9.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %duty_cycle.i, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %20, ptr noundef nonnull %state.i) #6
  %power_supply.i = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %power_supply.i, align 4
  %call11.i = call i32 @regulator_disable(ptr noundef %22) #6
  %23 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %enabled.i, align 4
  br label %pwm_backlight_power_off.exit

pwm_backlight_power_off.exit:                     ; preds = %if.end8.i, %if.end.pwm_backlight_power_off.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  %notify_after = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %notify_after to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %notify_after, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %pwm_backlight_power_off.exit.if.end9_crit_edge, label %if.then6

pwm_backlight_power_off.exit.if.end9_crit_edge:   ; preds = %pwm_backlight_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %pwm_backlight_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.pwm_bl_data, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  call void %25(ptr noundef %27, i32 noundef 0) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %pwm_backlight_power_off.exit.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_backlight_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %1) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_pwm_bl__305_704_pwm_backlight_driver_init6, !1, !"__initcall__kmod_pwm_bl__305_704_pwm_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/pwm_bl.c", i32 704, i32 1}
!2 = !{ptr @__exitcall_pwm_backlight_driver_exit, !1, !"__exitcall_pwm_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description306, !4, !"__UNIQUE_ID_description306", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/pwm_bl.c", i32 706, i32 1}
!5 = !{ptr @__UNIQUE_ID_file307, !6, !"__UNIQUE_ID_file307", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/pwm_bl.c", i32 707, i32 1}
!7 = !{ptr @__UNIQUE_ID_license308, !6, !"__UNIQUE_ID_license308", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias309, !9, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/pwm_bl.c", i32 708, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/pwm_bl.c", i32 695, i32 12}
!12 = !{ptr @pwm_backlight_driver, !13, !"pwm_backlight_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/pwm_bl.c", i32 693, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/pwm_bl.c", i32 468, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pwm_backlight_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pwm_backlight_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/pwm_bl.c", i32 496, i32 56}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/pwm_bl.c", i32 503, i32 52}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/pwm_bl.c", i32 511, i32 3}
!28 = !{ptr @pwm_backlight_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pwm_backlight_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/pwm_bl.c", i32 519, i32 4}
!32 = !{ptr @pwm_backlight_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pwm_backlight_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/pwm_bl.c", i32 523, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pwm_backlight_probe.__UNIQUE_ID_ddebug304, !35, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/pwm_bl.c", i32 539, i32 3}
!40 = !{ptr @pwm_backlight_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pwm_backlight_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/pwm_bl.c", i32 577, i32 4}
!44 = !{ptr @pwm_backlight_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pwm_backlight_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/pwm_bl.c", i32 606, i32 3}
!48 = !{ptr @pwm_backlight_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pwm_backlight_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/pwm_bl.c", i32 614, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pwm_backlight_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @pwm_backlight_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/pwm_bl.c", i32 250, i32 29}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/pwm_bl.c", i32 252, i32 29}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/pwm_bl.c", i32 258, i32 32}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/pwm_bl.c", i32 278, i32 36}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/pwm_bl.c", i32 290, i32 30}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/pwm_bl.c", i32 306, i32 5}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pwm_backlight_parse_dt._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @pwm_backlight_parse_dt._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/pwm_bl.c", i32 316, i32 4}
!72 = !{ptr @pwm_backlight_parse_dt.__UNIQUE_ID_ddebug303, !71, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!73 = !{ptr @pwm_backlight_ops, !74, !"pwm_backlight_ops", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/pwm_bl.c", i32 140, i32 35}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/pwm_bl.c", i32 53, i32 3}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pwm_backlight_power_on._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pwm_backlight_power_on._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @pwm_backlight_of_match, !81, !"pwm_backlight_of_match", i1 false, i1 false}
!81 = !{!"../drivers/video/backlight/pwm_bl.c", i32 362, i32 34}
!82 = !{ptr @pwm_backlight_pm_ops, !83, !"pwm_backlight_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/video/backlight/pwm_bl.c", i32 684, i32 32}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148772644, i64 2148772649, i64 2148772662, i64 2148772706, i64 2148772740, i64 2148772761}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2147998317, i64 2147998597, i64 2147998931, i64 2147999265}
!96 = !{i8 0, i8 2}
!97 = !{!"auto-init"}
!98 = !{i32 0, i32 33}
!99 = !{!"branch_weights", i32 1, i32 2000}
