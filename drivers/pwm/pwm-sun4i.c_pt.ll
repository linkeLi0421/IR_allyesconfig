; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-sun4i.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sun4i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sun4i_pwm_data = type { i8, i8, i32 }
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
%struct.sun4i_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, [2 x i32] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_sun4i__183_504_sun4i_pwm_driver_init6 = internal global ptr @sun4i_pwm_driver_init, section ".initcall6.init", align 4
@sun4i_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_pwm_probe, ptr @sun4i_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_pwm_driver_exit = internal global ptr @sun4i_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [35 x i8] c"pwm_sun4i.alias=platform:sun4i-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [74 x i8] c"pwm_sun4i.author=Alexandre Belloni <alexandre.belloni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [49 x i8] c"pwm_sun4i.description=Allwinner sun4i PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [37 x i8] c"pwm_sun4i.file=drivers/pwm/pwm-sun4i\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [25 x i8] c"pwm_sun4i.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-pwm\00", [22 x i8] zeroinitializer }, align 32
@sun4i_pwm_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_nobypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_single_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_single_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_pwm_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get mod clock failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get unnamed clock failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get bus clock failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 445, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot deassert reset control: %pe\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_pwm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-sun4i.c\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe._entry_ptr = internal global ptr @sun4i_pwm_probe._entry, section ".printk_index", align 4
@sun4i_pwm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 456, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot prepare and enable bus_clk %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe._entry_ptr.14 = internal global ptr @sun4i_pwm_probe._entry.12, section ".printk_index", align 4
@sun4i_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @sun4i_pwm_apply, ptr @sun4i_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pwm->ctrl_lock\00", [16 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 468, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_pwm_probe._entry_ptr.18 = internal global ptr @sun4i_pwm_probe._entry.16, section ".printk_index", align 4
@sun4i_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 247, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable PWM clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_pwm_apply\00", [16 x i8] zeroinitializer }, align 32
@sun4i_pwm_apply._entry_ptr = internal global ptr @sun4i_pwm_apply._entry, section ".printk_index", align 4
@sun4i_pwm_apply._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.9, i32 255, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"period exceeds the maximum value\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_pwm_apply._entry_ptr.23 = internal global ptr @sun4i_pwm_apply._entry.21, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@prescaler_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 120, i32 180, i32 240, i32 360, i32 480, i32 0, i32 0, i32 0, i32 12000, i32 24000, i32 36000, i32 48000, i32 72000, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@sun4i_pwm_dual_nobypass = internal constant { %struct.sun4i_pwm_data, [24 x i8] } { %struct.sun4i_pwm_data { i8 0, i8 0, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sun4i_pwm_dual_bypass = internal constant { %struct.sun4i_pwm_data, [24 x i8] } { %struct.sun4i_pwm_data { i8 1, i8 0, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sun4i_pwm_single_bypass = internal constant { %struct.sun4i_pwm_data, [24 x i8] } { %struct.sun4i_pwm_data { i8 1, i8 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@sun50i_a64_pwm_data = internal constant { %struct.sun4i_pwm_data, [24 x i8] } { %struct.sun4i_pwm_data { i8 1, i8 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@sun50i_h6_pwm_data = internal constant { %struct.sun4i_pwm_data, [24 x i8] } { %struct.sun4i_pwm_data { i8 1, i8 1, i32 2 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"sun4i_pwm_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 496, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 498, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"sun4i_pwm_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 363, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 419, i32 47 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 422, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 428, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 431, i32 51 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 434, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 439, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 444, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"sun4i_pwm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 330, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 464, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 468, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 247, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 255, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"prescaler_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"sun4i_pwm_dual_nobypass\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 336, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"sun4i_pwm_dual_bypass\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 341, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"sun4i_pwm_single_bypass\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 346, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"sun50i_a64_pwm_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 351, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"sun50i_h6_pwm_data\00", align 1
@___asan_gen_.121 = private constant [27 x i8] c"../drivers/pwm/pwm-sun4i.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 357, i32 36 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_sun4i_pwm_driver_exit, ptr @__initcall__kmod_pwm_sun4i__183_504_sun4i_pwm_driver_init6, ptr @sun4i_pwm_apply._entry, ptr @sun4i_pwm_apply._entry.21, ptr @sun4i_pwm_apply._entry_ptr, ptr @sun4i_pwm_apply._entry_ptr.23, ptr @sun4i_pwm_driver_exit, ptr @sun4i_pwm_probe._entry, ptr @sun4i_pwm_probe._entry.12, ptr @sun4i_pwm_probe._entry.16, ptr @sun4i_pwm_probe._entry_ptr, ptr @sun4i_pwm_probe._entry_ptr.14, ptr @sun4i_pwm_probe._entry_ptr.18, ptr @sun4i_pwm_driver, ptr @.str, ptr @sun4i_pwm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @sun4i_pwm_ops, ptr @sun4i_pwm_probe.__key, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @prescaler_table, ptr @sun4i_pwm_dual_nobypass, ptr @sun4i_pwm_dual_bypass, ptr @sun4i_pwm_single_bypass, ptr @sun50i_a64_pwm_data, ptr @sun50i_h6_pwm_data], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_apply._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prescaler_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_dual_nobypass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_dual_bypass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pwm_single_bypass to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clk = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %clk, align 4
  %cmp.i149 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call15 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %tobool25.not = icmp eq ptr %call15, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call28, ptr %clk, align 4
  %cmp.i150 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then32, label %if.then26.if.end38_crit_edge

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call28 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end38:                                         ; preds = %if.then26.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %call40 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call40, ptr %bus_clk, align 4
  %cmp.i151 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call40 to i32
  %call47 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call.i152 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %rst = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i152, ptr %rst, align 4
  %cmp.i153 = icmp ugt ptr %call.i152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then53, label %if.end58

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i152 to i32
  %call57 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %call60 = tail call i32 @reset_control_deassert(ptr noundef %call.i152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end65, label %do.end

do.end:                                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %11 = inttoptr i32 %call60 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end58
  %12 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_clk, align 4
  %call67 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %14 = inttoptr i32 %call67 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %14) #9
  br label %err_bus

if.end75:                                         ; preds = %if.end65
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sun4i_pwm_ops, ptr %ops, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %npwm = getelementptr inbounds %struct.sun4i_pwm_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npwm, align 4
  %npwm81 = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %npwm81 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %npwm81, align 4
  %ctrl_lock = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @sun4i_pwm_probe.__key, i16 noundef signext 3) #6
  %call87 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp = icmp slt i32 %call87, 0
  br i1 %cmp, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call87) #9
  %22 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %err_bus

if.end93:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_bus:                                          ; preds = %do.end91, %do.end72
  %ret.0 = phi i32 [ %call67, %do.end72 ], [ %call87, %do.end91 ]
  %25 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rst, align 4
  %call96 = tail call i32 @reset_control_assert(ptr noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %err_bus, %if.end93, %do.end, %if.then53, %if.then43, %if.then32, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %call22, %if.then18 ], [ %call47, %if.then43 ], [ %call57, %if.then53 ], [ %call60, %do.end ], [ %ret.0, %err_bus ], [ 0, %if.end93 ], [ %call36, %if.then32 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %rst = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %cstate.sroa.0.0.copyload204 = load i64, ptr %state1.i, align 8
  %cstate.sroa.5205.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %1 = ptrtoint ptr %cstate.sroa.5205.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %cstate.sroa.5205.0.copyload206 = load i8, ptr %cstate.sroa.5205.0.state1.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.5205.0.copyload206)
  %tobool.not = icmp eq i8 %cstate.sroa.5205.0.copyload206, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk.i = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %call.i192 = tail call i32 @clk_get_rate(ptr noundef %7) #6
  %conv.i = zext i32 %call.i192 to i64
  %data.i = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %has_direct_mod_clk_output.i = getelementptr inbounds %struct.sun4i_pwm_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %has_direct_mod_clk_output.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_direct_mod_clk_output.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i193 = icmp eq i8 %11, 0
  br i1 %tobool.not.i193, label %if.end4.if.end.i195_crit_edge, label %land.lhs.true.i

if.end4.if.end.i195_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

land.lhs.true.i:                                  ; preds = %if.end4
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i194 = icmp eq i8 %13, 0
  br i1 %tobool2.not.i194, label %land.lhs.true.i.if.end.i195_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i195_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %mul.i = mul i64 %15, %conv.i
  %16 = add i64 %mul.i, -1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %16)
  %17 = icmp ult i64 %16, 1000000000
  br i1 %17, label %land.rhs.i, label %land.lhs.true4.i.if.end.i195_crit_edge

land.lhs.true4.i.if.end.i195_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

land.rhs.i:                                       ; preds = %land.lhs.true4.i
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %duty_cycle.i, align 8
  %mul11.i = shl nuw nsw i64 %conv.i, 1
  %mul12.i = mul i64 %mul11.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %mul12.i)
  %cmp13.i = icmp ugt i64 %mul12.i, 999999999
  br i1 %cmp13.i, label %land.rhs.i.if.end17_crit_edge, label %land.rhs.i.if.end.i195_crit_edge

land.rhs.i.if.end.i195_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

land.rhs.i.if.end17_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.i195:                                      ; preds = %land.rhs.i.if.end.i195_crit_edge, %land.lhs.true4.i.if.end.i195_crit_edge, %land.lhs.true.i.if.end.i195_crit_edge, %if.end4.if.end.i195_crit_edge
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %9, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not.i = icmp eq i8 %21, 0
  br i1 %tobool17.not.i, label %if.end.i195.for.body.i.preheader_crit_edge, label %if.end209.i

if.end.i195.for.body.i.preheader_crit_edge:       ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.end209.i:                                      ; preds = %if.end.i195
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %state, align 8
  %mul20.i = mul i64 %23, %conv.i
  %add.i = add i64 %mul20.i, 500000000
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i32 0) #10, !srcloc !82
  %asmresult.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !83
  %asmresult10.i.i = extractvalue { i64, i32 } %25, 0
  %storemerge1249.i = lshr i64 %asmresult10.i.i, 29
  %26 = add nsw i64 %storemerge1249.i, -65537
  call void @__sanitizer_cov_trace_const_cmp8(i64 -65536, i64 %26)
  %cmp212.i = icmp ult i64 %26, -65536
  br i1 %cmp212.i, label %if.end209.i.for.body.i.preheader_crit_edge, label %if.end209.i.if.end679.i_crit_edge

if.end209.i.if.end679.i_crit_edge:                ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end679.i

if.end209.i.for.body.i.preheader_crit_edge:       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end209.i.for.body.i.preheader_crit_edge, %if.end.i195.for.body.i.preheader_crit_edge
  %div.11353.i.ph = phi i64 [ 0, %if.end.i195.for.body.i.preheader_crit_edge ], [ %storemerge1249.i, %if.end209.i.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %prescaler.11354.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %div.11353.i = phi i64 [ %div.31329.i, %for.inc.i.for.body.i_crit_edge ], [ %div.11353.i.ph, %for.body.i.preheader ]
  %27 = lshr i32 57568, %prescaler.11354.i
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool222.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool222.not.not.i, label %cleanup.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr [16 x i32], ptr @prescaler_table, i32 0, i32 %prescaler.11354.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %div438.i = udiv i32 %call.i192, %30
  %conv439.i = zext i32 %div438.i to i64
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %state, align 8
  %mul447.i = mul i64 %32, %conv439.i
  %33 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul447.i, i32 0) #10, !srcloc !82
  %asmresult.i1259.i = extractvalue { i64, i32 } %33, 0
  %asmresult4.i1260.i = extractvalue { i64, i32 } %33, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul447.i, i64 %asmresult.i1259.i, i32 %asmresult4.i1260.i) #10, !srcloc !83
  %asmresult10.i1264.i = extractvalue { i64, i32 } %34, 0
  %storemerge.i = lshr i64 %asmresult10.i1264.i, 29
  %sub669.i = add nsw i64 %storemerge.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %sub669.i)
  %cmp670.i = icmp ult i64 %sub669.i, 65536
  br i1 %cmp670.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %div.31329.i = phi i64 [ %storemerge.i, %cleanup.i.for.inc.i_crit_edge ], [ %div.11353.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %prescaler.11354.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i.for.end.i_crit_edge
  %prescaler.1.lcssa.i = phi i32 [ %prescaler.11354.i, %cleanup.i.for.end.i_crit_edge ], [ 15, %for.inc.i.for.end.i_crit_edge ]
  %div.4.i = phi i64 [ %storemerge.i, %cleanup.i.for.end.i_crit_edge ], [ %div.31329.i, %for.inc.i.for.end.i_crit_edge ]
  %35 = add i64 %div.4.i, -65537
  call void @__sanitizer_cov_trace_const_cmp8(i64 -65536, i64 %35)
  %cmp675.i = icmp ult i64 %35, -65536
  br i1 %cmp675.i, label %do.end10, label %for.end.i.if.end679.i_crit_edge

for.end.i.if.end679.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end679.i

if.end679.i:                                      ; preds = %for.end.i.if.end679.i_crit_edge, %if.end209.i.if.end679.i_crit_edge
  %div.5.i = phi i64 [ %div.4.i, %for.end.i.if.end679.i_crit_edge ], [ %storemerge1249.i, %if.end209.i.if.end679.i_crit_edge ]
  %prescaler.2.i = phi i32 [ %prescaler.1.lcssa.i, %for.end.i.if.end679.i_crit_edge ], [ 15, %if.end209.i.if.end679.i_crit_edge ]
  %conv680.i = trunc i64 %div.5.i to i32
  %duty_cycle681.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %36 = ptrtoint ptr %duty_cycle681.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %duty_cycle681.i, align 8
  %mul682.i = mul i64 %37, %div.5.i
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %state, align 8
  %conv685.i = trunc i64 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul682.i)
  %cmp886.i = icmp ult i64 %mul682.i, 4294967296
  br i1 %cmp886.i, label %if.then894.i, label %if.else900.i, !prof !84

if.then894.i:                                     ; preds = %if.end679.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv895.i = trunc i64 %mul682.i to i32
  %div898.i = udiv i32 %conv895.i, %conv685.i
  br label %if.end17

if.else900.i:                                     ; preds = %if.end679.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv685.i, i64 %mul682.i) #10, !srcloc !85
  %asmresult1.i1291.i = extractvalue { i64, i64 } %40, 1
  %extract.t1351.i = trunc i64 %asmresult1.i1291.i to i32
  br label %if.end17

do.end10:                                         ; preds = %for.end.i
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.22) #9
  br i1 %tobool.not, label %if.then14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %cleanup

if.end17:                                         ; preds = %if.else900.i, %if.then894.i, %land.rhs.i.if.end17_crit_edge
  %duty.0.ph = phi i32 [ %extract.t1351.i, %if.else900.i ], [ %div898.i, %if.then894.i ], [ 0, %land.rhs.i.if.end17_crit_edge ]
  %period.0.ph = phi i32 [ %conv680.i, %if.else900.i ], [ %conv680.i, %if.then894.i ], [ 0, %land.rhs.i.if.end17_crit_edge ]
  %prescaler.0.ph = phi i32 [ %prescaler.2.i, %if.else900.i ], [ %prescaler.2.i, %if.then894.i ], [ 0, %land.rhs.i.if.end17_crit_edge ]
  %tobool21.not = phi i1 [ true, %if.else900.i ], [ true, %if.then894.i ], [ false, %land.rhs.i.if.end17_crit_edge ]
  %ctrl_lock = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ctrl_lock) #6
  %base.i = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 4
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !86
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %has_direct_mod_clk_output = getelementptr inbounds %struct.sun4i_pwm_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %has_direct_mod_clk_output to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_direct_mod_clk_output, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool19.not = icmp eq i8 %52, 0
  br i1 %tobool19.not, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  %hwpwm25 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %53 = ptrtoint ptr %hwpwm25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwpwm25, align 8
  %mul26 = mul i32 %54, 15
  %shl27 = shl i32 512, %mul26
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl27, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !89
  tail call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #6
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl27, -1
  %and = and i32 %48, %neg
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %if.end17.if.end28_crit_edge
  %ctrl.0 = phi i32 [ %and, %if.end24 ], [ %48, %if.end17.if.end28_crit_edge ]
  %hwpwm29 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %58 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwpwm29, align 8
  %mul30 = mul i32 %59, 15
  %shr = lshr i32 %ctrl.0, %mul30
  %and31 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %prescaler.0.ph)
  %cmp.not = icmp eq i32 %and31, %prescaler.0.ph
  br i1 %cmp.not, label %if.end28.if.end47_crit_edge, label %if.then32

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %shl35 = shl i32 64, %mul30
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %ctrl.0, %neg36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %and37) #6
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #6, !srcloc !89
  %63 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hwpwm29, align 8
  %mul39 = mul i32 %64, 15
  %shl40 = shl i32 15, %mul39
  %neg41 = xor i32 %shl40, -1
  %and42 = and i32 %and37, %neg41
  %shl45 = shl i32 %prescaler.0.ph, %mul39
  %or46 = or i32 %and42, %shl45
  br label %if.end47

if.end47:                                         ; preds = %if.then32, %if.end28.if.end47_crit_edge
  %ctrl.1 = phi i32 [ %or46, %if.then32 ], [ %ctrl.0, %if.end28.if.end47_crit_edge ]
  %and48 = and i32 %duty.0.ph, 65535
  %sub = shl i32 %period.0.ph, 16
  %shl49 = add i32 %sub, -65536
  %or50 = or i32 %shl49, %and48
  %65 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwpwm29, align 8
  %mul52 = shl i32 %66, 2
  %add = add i32 %mul52, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %or50) #6
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #6, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add54 = add i64 %cstate.sroa.0.0.copyload204, 1000
  %call55 = tail call i32 @nsecs_to_jiffies(i64 noundef %add54) #6
  %add56 = add i32 %call55, %70
  %71 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hwpwm29, align 8
  %arrayidx = getelementptr %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 7, i32 %72
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add56, ptr %arrayidx, align 4
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %74 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp58.not = icmp eq i32 %75, 0
  %76 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hwpwm29, align 8
  %mul66 = mul i32 %77, 15
  %shl67 = shl i32 32, %mul66
  %neg63 = xor i32 %shl67, -1
  %and64 = and i32 %ctrl.1, %neg63
  %or68 = or i32 %shl67, %ctrl.1
  %ctrl.2 = select i1 %cmp58.not, i32 %or68, i32 %and64
  %78 = load i32, ptr %hwpwm29, align 8
  %mul71 = mul i32 %78, 15
  %shl72 = shl i32 64, %mul71
  %or73 = or i32 %shl72, %ctrl.2
  %enabled74 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %79 = ptrtoint ptr %enabled74 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %enabled74, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool75.not = icmp eq i8 %80, 0
  %shl79 = shl i32 16, %mul71
  %or80 = select i1 %tobool75.not, i32 0, i32 %shl79
  %ctrl.3 = or i32 %or73, %or80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %ctrl.3) #6
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #6, !srcloc !89
  tail call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #6
  %84 = ptrtoint ptr %enabled74 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %enabled74, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool84.not = icmp eq i8 %85, 0
  br i1 %tobool84.not, label %if.end86, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end86:                                         ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %87 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hwpwm29, align 8
  %arrayidx89 = getelementptr %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 7, i32 %88
  %89 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx89, align 4
  %sub90 = sub i32 %86, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub90)
  %cmp91 = icmp slt i32 %sub90, 0
  br i1 %cmp91, label %if.then92, label %if.end86.if.end105_crit_edge

if.end86.if.end105_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then92:                                        ; preds = %if.end86
  %sub96 = sub i32 %90, %86
  %call97 = tail call i32 @jiffies_to_usecs(i32 noundef %sub96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1499, i32 %call97)
  %cmp98 = icmp ugt i32 %call97, 1499
  br i1 %cmp98, label %if.then99, label %if.else102

if.then99:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %div100 = udiv i32 %call97, 1000
  %add101 = add nuw nsw i32 %div100, 1
  tail call void @msleep(i32 noundef %add101) #6
  br label %if.end105

if.else102:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %mul103 = shl nuw nsw i32 %call97, 1
  tail call void @usleep_range_state(i32 noundef %call97, i32 noundef %mul103, i32 noundef 2) #6
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then99, %if.end86.if.end105_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ctrl_lock) #6
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !86
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %95 = ptrtoint ptr %hwpwm29 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hwpwm29, align 8
  %mul109 = mul i32 %96, 15
  %97 = shl i32 80, %mul109
  %98 = xor i32 %97, -1
  %and117 = and i32 %94, %98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %99 = tail call i32 @llvm.bswap.i32(i32 %and117) #6
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #6, !srcloc !89
  tail call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #6
  %102 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %103) #6
  tail call void @clk_unprepare(ptr noundef %103) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.end47.cleanup_crit_edge, %if.then22, %if.then14, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end105 ], [ %retval.0.i.ph, %do.end ], [ -22, %if.then14 ], [ -22, %do.end10.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %conv = zext i32 %call1 to i64
  %base.i = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %mul = mul i32 %7, 15
  %shl = shl i32 512, %mul
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end424_crit_edge, label %land.lhs.true

entry.if.end424_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end424

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %has_direct_mod_clk_output = getelementptr inbounds %struct.sun4i_pwm_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %has_direct_mod_clk_output to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_direct_mod_clk_output, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end424_crit_edge, label %if.then

land.lhs.true.if.end424_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end424

if.then:                                          ; preds = %land.lhs.true
  %sub = add nuw nsw i64 %conv, 999999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999999999, i32 %call1)
  %cmp181 = icmp ult i32 %call1, -999999999
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !84

if.then185:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv186 = trunc i64 %sub to i32
  %div189 = udiv i32 %conv186, %call1
  %conv190 = zext i32 %div189 to i64
  br label %if.end421

if.else191:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %sub) #10, !srcloc !85
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  br label %if.end421

if.end421:                                        ; preds = %if.else191, %if.then185
  %_tmp.0 = phi i64 [ %conv190, %if.then185 ], [ %asmresult1.i, %if.else191 ]
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %_tmp.0, ptr %state, align 8
  %sub201 = add i64 %_tmp.0, 1
  %shr227 = lshr i64 %sub201, 1
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shr227, ptr %duty_cycle, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %15 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %polarity, align 8
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

if.end424:                                        ; preds = %land.lhs.true.if.end424_crit_edge, %entry.if.end424_crit_edge
  %shr427 = lshr i32 %5, %mul
  %and428 = and i32 %shr427, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and428)
  %cmp429 = icmp eq i32 %and428, 15
  br i1 %cmp429, label %land.lhs.true431, label %if.end424.if.end441_crit_edge

if.end424.if.end441_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end441

land.lhs.true431:                                 ; preds = %if.end424
  %data432 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %data432 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data432, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool433.not = icmp eq i8 %20, 0
  br i1 %tobool433.not, label %land.lhs.true431.if.end441_crit_edge, label %land.lhs.true431.if.end445_crit_edge

land.lhs.true431.if.end445_crit_edge:             ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end445

land.lhs.true431.if.end441_crit_edge:             ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end441

if.end441:                                        ; preds = %land.lhs.true431.if.end441_crit_edge, %if.end424.if.end441_crit_edge
  %arrayidx = getelementptr [16 x i32], ptr @prescaler_table, i32 0, i32 %and428
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = lshr i32 57568, %and428
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp442.not = icmp eq i32 %24, 0
  br i1 %cmp442.not, label %if.end441.if.end445_crit_edge, label %if.end441.cleanup_crit_edge

if.end441.cleanup_crit_edge:                      ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end441.if.end445_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end445

if.end445:                                        ; preds = %if.end441.if.end445_crit_edge, %land.lhs.true431.if.end445_crit_edge
  %prescaler.01394 = phi i32 [ %22, %if.end441.if.end445_crit_edge ], [ 1, %land.lhs.true431.if.end445_crit_edge ]
  %shl448 = shl i32 32, %mul
  %and449 = and i32 %shl448, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and449)
  %tobool450.not = icmp eq i32 %and449, 0
  %spec.select = zext i1 %tobool450.not to i32
  %25 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %25, align 8
  %27 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm, align 8
  %mul457 = mul i32 %28, 15
  %shl458 = shl i32 80, %mul457
  %and459 = and i32 %shl458, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and459, i32 %shl458)
  %cmp463 = icmp eq i32 %and459, %shl458
  %.sink1456 = zext i1 %cmp463 to i8
  %29 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink1456, ptr %29, align 4
  %31 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwpwm, align 8
  %mul471 = shl i32 %32, 2
  %add472 = add i32 %mul471, 4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %add472
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !86
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %conv474 = zext i32 %prescaler.01394 to i64
  %mul475 = mul nuw nsw i64 %conv474, 1000000000
  %and476 = and i32 %36, 65535
  %conv477 = zext i32 %and476 to i64
  %mul478 = mul i64 %mul475, %conv477
  %div4801295 = lshr i64 %conv, 1
  %add481 = add i64 %mul478, %div4801295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add481)
  %cmp684 = icmp ult i64 %add481, 4294967296
  br i1 %cmp684, label %if.then692, label %if.else698, !prof !84

if.then692:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #8
  %conv693 = trunc i64 %add481 to i32
  %div696 = udiv i32 %conv693, %call1
  %conv697 = zext i32 %div696 to i64
  br label %if.else917

if.else698:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #8
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %add481) #10, !srcloc !85
  %asmresult1.i1336 = extractvalue { i64, i64 } %37, 1
  br label %if.else917

if.else917:                                       ; preds = %if.else698, %if.then692
  %_tmp479.0 = phi i64 [ %conv697, %if.then692 ], [ %asmresult1.i1336, %if.else698 ]
  %duty_cycle705 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %38 = ptrtoint ptr %duty_cycle705 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %_tmp479.0, ptr %duty_cycle705, align 8
  %shr708 = lshr i32 %36, 16
  %add710 = add nuw nsw i32 %shr708, 1
  %conv711 = zext i32 %add710 to i64
  %mul712 = mul i64 %mul475, %conv711
  %add716 = add i64 %mul712, %div4801295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add716)
  %cmp919 = icmp ult i64 %add716, 4294967296
  br i1 %cmp919, label %if.then927, label %if.else933, !prof !84

if.then927:                                       ; preds = %if.else917
  call void @__sanitizer_cov_trace_pc() #8
  %conv928 = trunc i64 %add716 to i32
  %div931 = udiv i32 %conv928, %call1
  %conv932 = zext i32 %div931 to i64
  br label %if.end937

if.else933:                                       ; preds = %if.else917
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %add716) #10, !srcloc !85
  %asmresult1.i1361 = extractvalue { i64, i64 } %39, 1
  br label %if.end937

if.end937:                                        ; preds = %if.else933, %if.then927
  %_tmp714.0 = phi i64 [ %conv932, %if.then927 ], [ %asmresult1.i1361, %if.else933 ]
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %_tmp714.0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end937, %if.end441.cleanup_crit_edge, %if.end421
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_pwm_sun4i__183_504_sun4i_pwm_driver_init6, !1, !"__initcall__kmod_pwm_sun4i__183_504_sun4i_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-sun4i.c", i32 504, i32 1}
!2 = !{ptr @__exitcall_sun4i_pwm_driver_exit, !1, !"__exitcall_sun4i_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias184, !4, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-sun4i.c", i32 506, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-sun4i.c", i32 507, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-sun4i.c", i32 508, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-sun4i.c", i32 509, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-sun4i.c", i32 498, i32 11}
!14 = !{ptr @sun4i_pwm_driver, !15, !"sun4i_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-sun4i.c", i32 496, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-sun4i.c", i32 419, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-sun4i.c", i32 422, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-sun4i.c", i32 428, i32 11}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-sun4i.c", i32 431, i32 51}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-sun4i.c", i32 434, i32 10}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-sun4i.c", i32 439, i32 10}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-sun4i.c", i32 444, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sun4i_pwm_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @sun4i_pwm_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-sun4i.c", i32 455, i32 3}
!38 = !{ptr @sun4i_pwm_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun4i_pwm_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @sun4i_pwm_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-sun4i.c", i32 464, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-sun4i.c", i32 468, i32 3}
!45 = !{ptr @sun4i_pwm_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun4i_pwm_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sun4i_pwm_ops, !48, !"sun4i_pwm_ops", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-sun4i.c", i32 330, i32 29}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-sun4i.c", i32 247, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun4i_pwm_apply._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun4i_pwm_apply._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pwm/pwm-sun4i.c", i32 255, i32 3}
!56 = !{ptr @sun4i_pwm_apply._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sun4i_pwm_apply._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @prescaler_table, !59, !"prescaler_table", i1 false, i1 false}
!59 = !{!"../drivers/pwm/pwm-sun4i.c", i32 59, i32 18}
!60 = !{ptr @sun4i_pwm_dt_ids, !61, !"sun4i_pwm_dt_ids", i1 false, i1 false}
!61 = !{!"../drivers/pwm/pwm-sun4i.c", i32 363, i32 34}
!62 = !{ptr @sun4i_pwm_dual_nobypass, !63, !"sun4i_pwm_dual_nobypass", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-sun4i.c", i32 336, i32 36}
!64 = !{ptr @sun4i_pwm_dual_bypass, !65, !"sun4i_pwm_dual_bypass", i1 false, i1 false}
!65 = !{!"../drivers/pwm/pwm-sun4i.c", i32 341, i32 36}
!66 = !{ptr @sun4i_pwm_single_bypass, !67, !"sun4i_pwm_single_bypass", i1 false, i1 false}
!67 = !{!"../drivers/pwm/pwm-sun4i.c", i32 346, i32 36}
!68 = !{ptr @sun50i_a64_pwm_data, !69, !"sun50i_a64_pwm_data", i1 false, i1 false}
!69 = !{!"../drivers/pwm/pwm-sun4i.c", i32 351, i32 36}
!70 = !{ptr @sun50i_h6_pwm_data, !71, !"sun50i_h6_pwm_data", i1 false, i1 false}
!71 = !{!"../drivers/pwm/pwm-sun4i.c", i32 357, i32 36}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 1156224, i64 1156251, i64 1156273, i64 1156301}
!83 = !{i64 1156632, i64 1156659, i64 1156692, i64 1156713, i64 1156740, i64 1156766}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148641768, i64 2148642048, i64 2148642382, i64 2148642716}
!86 = !{i64 3081057}
!87 = !{i64 2153011373}
!88 = !{i64 2153011758}
!89 = !{i64 3080639}
