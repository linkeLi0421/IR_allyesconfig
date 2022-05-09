; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ab-b5ze-s3.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ab-b5ze-s3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abb5zes3_rtc_data = type { ptr, ptr, i32, i8, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ab_b5ze_s3__291_951_abb5zes3_driver_init6 = internal global ptr @abb5zes3_driver_init, section ".initcall6.init", align 4
@abb5zes3_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @abb5zes3_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abb5zes3_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @abb5zes3_rtc_pm_ops, ptr null, ptr null }, ptr @abb5zes3_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_abb5zes3_driver_exit = internal global ptr @abb5zes3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [57 x i8] c"rtc_ab_b5ze_s3.author=Arnaud EBALARD <arno@natisbad.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [79 x i8] c"rtc_ab_b5ze_s3.description=Abracon AB-RTCMC-32.768kHz-B5ZE-S3 RTC/Alarm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"rtc_ab_b5ze_s3.file=drivers/rtc/rtc-ab-b5ze-s3\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [27 x i8] c"rtc_ab_b5ze_s3.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtc-ab-b5ze-s3\00", [17 x i8] zeroinitializer }, align 32
@abb5zes3_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,abb5zes3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @abb5zes3_rtc_suspend, ptr @abb5zes3_rtc_resume, ptr @abb5zes3_rtc_suspend, ptr @abb5zes3_rtc_resume, ptr @abb5zes3_rtc_suspend, ptr @abb5zes3_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@abb5zes3_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"abb5zes3\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@abb5zes3_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@abb5zes3_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rtc_ab_b5ze_s3:833:(&abb5zes3_rtc_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: regmap allocation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abb5zes3_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/rtc/rtc-ab-b5ze-s3.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry_ptr = internal global ptr @abb5zes3_probe._entry, section ".printk_index", align 4
@abb5zes3_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 860, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unable to allocate RTC device (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry_ptr.9 = internal global ptr @abb5zes3_probe._entry.7, section ".printk_index", align 4
@abb5zes3_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtc_ab_b5ze_s3\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: irq %d used by RTC\0A\00", [40 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 876, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: irq %d unavailable (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry_ptr.14 = internal global ptr @abb5zes3_probe._entry.12, section ".printk_index", align 4
@rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @_abb5zes3_rtc_read_time, ptr @abb5zes3_rtc_set_time, ptr @abb5zes3_rtc_read_alarm, ptr @abb5zes3_rtc_set_alarm, ptr null, ptr @abb5zes3_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 890, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: enabling battery low interrupt generation failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@abb5zes3_probe._entry_ptr.17 = internal global ptr @abb5zes3_probe._entry.15, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 629, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: unable to initialize clkout register (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"abb5zes3_rtc_check_setup\00", [39 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr = internal global ptr @abb5zes3_rtc_check_setup._entry, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: unable to disable alarm setting (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.22 = internal global ptr @abb5zes3_rtc_check_setup._entry.20, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: unable to initialize CTRL1 register (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.25 = internal global ptr @abb5zes3_rtc_check_setup._entry.23, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: unable to initialize CTRL2 register (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.28 = internal global ptr @abb5zes3_rtc_check_setup._entry.26, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: unable to initialize CTRL3 register (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.31 = internal global ptr @abb5zes3_rtc_check_setup._entry.29, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 693, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unable to read osc. integrity flag (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.34 = internal global ptr @abb5zes3_rtc_check_setup._entry.32, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"clock integrity not guaranteed. Osc. has stopped or has been interrupted.\0A\00", [53 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.37 = internal global ptr @abb5zes3_rtc_check_setup._entry.35, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.4, i32 699, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"change battery (if not already done) and then set time to reset osc. failure flag.\0A\00", [44 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.40 = internal global ptr @abb5zes3_rtc_check_setup._entry.38, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.4, i32 711, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: unable to read battery low flag (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.43 = internal global ptr @abb5zes3_rtc_check_setup._entry.41, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.19, ptr @.str.4, i32 717, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RTC battery is low; please, consider changing it!\0A\00", [45 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.46 = internal global ptr @abb5zes3_rtc_check_setup._entry.44, section ".printk_index", align 4
@abb5zes3_rtc_check_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.19, ptr @.str.4, i32 722, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: disabling battery low interrupt generation failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_check_setup._entry_ptr.49 = internal global ptr @abb5zes3_rtc_check_setup._entry.47, section ".printk_index", align 4
@_abb5zes3_rtc_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: unable to read control section (%d)!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_abb5zes3_rtc_interrupt\00", [40 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_interrupt._entry_ptr = internal global ptr @_abb5zes3_rtc_interrupt._entry, section ".printk_index", align 4
@_abb5zes3_rtc_interrupt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTC battery is low; please change it!\0A\00", [57 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_interrupt._entry_ptr.54 = internal global ptr @_abb5zes3_rtc_interrupt._entry.52, section ".printk_index", align 4
@_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.4, ptr @.str.55, i8 0, i8 -62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RTC alarm!\0A\00", [20 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.4, ptr @.str.56, i8 0, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RTC timer!\0A\00", [20 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_clear_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: clearing alarm failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_abb5zes3_rtc_clear_alarm\00", [38 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_clear_alarm._entry_ptr = internal global ptr @_abb5zes3_rtc_clear_alarm._entry, section ".printk_index", align 4
@_abb5zes3_rtc_update_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: writing alarm INT failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_abb5zes3_rtc_update_alarm\00", [37 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_update_alarm._entry_ptr = internal global ptr @_abb5zes3_rtc_update_alarm._entry, section ".printk_index", align 4
@_abb5zes3_rtc_update_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: writing timer INT failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_abb5zes3_rtc_update_timer\00", [37 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_update_timer._entry_ptr = internal global ptr @_abb5zes3_rtc_update_timer._entry, section ".printk_index", align 4
@_abb5zes3_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: reading RTC time failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_abb5zes3_rtc_read_time\00", [40 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_read_time._entry_ptr = internal global ptr @_abb5zes3_rtc_read_time._entry, section ".printk_index", align 4
@_abb5zes3_rtc_read_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: reading Timer A section failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_abb5zes3_rtc_read_timer\00", [39 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_read_timer._entry_ptr = internal global ptr @_abb5zes3_rtc_read_timer._entry, section ".printk_index", align 4
@_abb5zes3_rtc_read_timer._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: reading ctrl reg failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_read_timer._entry_ptr.69 = internal global ptr @_abb5zes3_rtc_read_timer._entry.67, section ".printk_index", align 4
@_abb5zes3_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: reading alarm section failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_abb5zes3_rtc_read_alarm\00", [39 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_read_alarm._entry_ptr = internal global ptr @_abb5zes3_rtc_read_alarm._entry, section ".printk_index", align 4
@_abb5zes3_rtc_read_alarm._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.71, ptr @.str.4, i32 401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_read_alarm._entry_ptr.73 = internal global ptr @_abb5zes3_rtc_read_alarm._entry.72, section ".printk_index", align 4
@abb5zes3_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 560, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to disable alarm (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"abb5zes3_rtc_set_alarm\00", [41 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_set_alarm._entry_ptr = internal global ptr @abb5zes3_rtc_set_alarm._entry, section ".printk_index", align 4
@abb5zes3_rtc_set_alarm._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 566, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to disable timer (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_set_alarm._entry_ptr.78 = internal global ptr @abb5zes3_rtc_set_alarm._entry.76, section ".printk_index", align 4
@abb5zes3_rtc_set_alarm._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 584, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: unable to configure alarm (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@abb5zes3_rtc_set_alarm._entry_ptr.81 = internal global ptr @abb5zes3_rtc_set_alarm._entry.79, section ".printk_index", align 4
@_abb5zes3_rtc_set_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: writing timer section failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_abb5zes3_rtc_set_timer\00", [40 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_set_timer._entry_ptr = internal global ptr @_abb5zes3_rtc_set_timer._entry, section ".printk_index", align 4
@_abb5zes3_rtc_set_timer._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to update timer\0A\00", [36 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_set_timer._entry_ptr.86 = internal global ptr @_abb5zes3_rtc_set_timer._entry.84, section ".printk_index", align 4
@_abb5zes3_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: alarm maximum is one month in the future (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_abb5zes3_rtc_set_alarm\00", [40 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_set_alarm._entry_ptr = internal global ptr @_abb5zes3_rtc_set_alarm._entry, section ".printk_index", align 4
@_abb5zes3_rtc_set_alarm._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: writing ALARM section failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@_abb5zes3_rtc_set_alarm._entry_ptr.91 = internal global ptr @_abb5zes3_rtc_set_alarm._entry.89, section ".printk_index", align 4
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"abb5zes3_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 942, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 944, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"abb5zes3_dt_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 929, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"abb5zes3_rtc_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 925, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"abb5zes3_id\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 936, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"abb5zes3_rtc_regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 815, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 833, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 836, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 859, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 872, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 875, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [8 x i8] c"rtc_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 807, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 889, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 628, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 642, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 653, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 668, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 684, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 692, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 698, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 699, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 710, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 717, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 721, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 756, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 767, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 776, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 789, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 164, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 179, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 195, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 220, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 316, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 339, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 363, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 400, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 559, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 565, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 583, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 518, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 526, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 471, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [32 x i8] c"../drivers/rtc/rtc-ab-b5ze-s3.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 489, i32 3 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_abb5zes3_driver_exit, ptr @__initcall__kmod_rtc_ab_b5ze_s3__291_951_abb5zes3_driver_init6, ptr @_abb5zes3_rtc_clear_alarm._entry, ptr @_abb5zes3_rtc_clear_alarm._entry_ptr, ptr @_abb5zes3_rtc_interrupt._entry, ptr @_abb5zes3_rtc_interrupt._entry.52, ptr @_abb5zes3_rtc_interrupt._entry_ptr, ptr @_abb5zes3_rtc_interrupt._entry_ptr.54, ptr @_abb5zes3_rtc_read_alarm._entry, ptr @_abb5zes3_rtc_read_alarm._entry.72, ptr @_abb5zes3_rtc_read_alarm._entry_ptr, ptr @_abb5zes3_rtc_read_alarm._entry_ptr.73, ptr @_abb5zes3_rtc_read_time._entry, ptr @_abb5zes3_rtc_read_time._entry_ptr, ptr @_abb5zes3_rtc_read_timer._entry, ptr @_abb5zes3_rtc_read_timer._entry.67, ptr @_abb5zes3_rtc_read_timer._entry_ptr, ptr @_abb5zes3_rtc_read_timer._entry_ptr.69, ptr @_abb5zes3_rtc_set_alarm._entry, ptr @_abb5zes3_rtc_set_alarm._entry.89, ptr @_abb5zes3_rtc_set_alarm._entry_ptr, ptr @_abb5zes3_rtc_set_alarm._entry_ptr.91, ptr @_abb5zes3_rtc_set_timer._entry, ptr @_abb5zes3_rtc_set_timer._entry.84, ptr @_abb5zes3_rtc_set_timer._entry_ptr, ptr @_abb5zes3_rtc_set_timer._entry_ptr.86, ptr @_abb5zes3_rtc_update_alarm._entry, ptr @_abb5zes3_rtc_update_alarm._entry_ptr, ptr @_abb5zes3_rtc_update_timer._entry, ptr @_abb5zes3_rtc_update_timer._entry_ptr, ptr @abb5zes3_driver_exit, ptr @abb5zes3_probe._entry, ptr @abb5zes3_probe._entry.12, ptr @abb5zes3_probe._entry.15, ptr @abb5zes3_probe._entry.7, ptr @abb5zes3_probe._entry_ptr, ptr @abb5zes3_probe._entry_ptr.14, ptr @abb5zes3_probe._entry_ptr.17, ptr @abb5zes3_probe._entry_ptr.9, ptr @abb5zes3_rtc_check_setup._entry, ptr @abb5zes3_rtc_check_setup._entry.20, ptr @abb5zes3_rtc_check_setup._entry.23, ptr @abb5zes3_rtc_check_setup._entry.26, ptr @abb5zes3_rtc_check_setup._entry.29, ptr @abb5zes3_rtc_check_setup._entry.32, ptr @abb5zes3_rtc_check_setup._entry.35, ptr @abb5zes3_rtc_check_setup._entry.38, ptr @abb5zes3_rtc_check_setup._entry.41, ptr @abb5zes3_rtc_check_setup._entry.44, ptr @abb5zes3_rtc_check_setup._entry.47, ptr @abb5zes3_rtc_check_setup._entry_ptr, ptr @abb5zes3_rtc_check_setup._entry_ptr.22, ptr @abb5zes3_rtc_check_setup._entry_ptr.25, ptr @abb5zes3_rtc_check_setup._entry_ptr.28, ptr @abb5zes3_rtc_check_setup._entry_ptr.31, ptr @abb5zes3_rtc_check_setup._entry_ptr.34, ptr @abb5zes3_rtc_check_setup._entry_ptr.37, ptr @abb5zes3_rtc_check_setup._entry_ptr.40, ptr @abb5zes3_rtc_check_setup._entry_ptr.43, ptr @abb5zes3_rtc_check_setup._entry_ptr.46, ptr @abb5zes3_rtc_check_setup._entry_ptr.49, ptr @abb5zes3_rtc_set_alarm._entry, ptr @abb5zes3_rtc_set_alarm._entry.76, ptr @abb5zes3_rtc_set_alarm._entry.79, ptr @abb5zes3_rtc_set_alarm._entry_ptr, ptr @abb5zes3_rtc_set_alarm._entry_ptr.78, ptr @abb5zes3_rtc_set_alarm._entry_ptr.81, ptr @abb5zes3_driver, ptr @.str, ptr @abb5zes3_dt_match, ptr @abb5zes3_rtc_pm_ops, ptr @abb5zes3_id, ptr @abb5zes3_probe._key, ptr @abb5zes3_rtc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @rtc_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_check_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_interrupt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_clear_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_update_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_update_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_read_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_read_timer._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_read_alarm._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_set_alarm._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abb5zes3_rtc_set_alarm._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_set_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_set_timer._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_abb5zes3_rtc_set_alarm._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @abb5zes3_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @abb5zes3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @abb5zes3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %regs.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 202899457
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899457, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899457
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @abb5zes3_rtc_regmap_config, ptr noundef nonnull @abb5zes3_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i131 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %6) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %regs.i) #6
  %7 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 4
  %8 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 5
  %9 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 6
  %10 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 7
  %11 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 8
  %12 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 11
  %13 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 12
  %14 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 13
  %15 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 16
  %16 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 18
  %17 = call ptr @memset(ptr %regs.i, i32 255, i32 20)
  %call.i = call i32 @regmap_bulk_read(ptr noundef %call2, i32 noundef 0, ptr noundef nonnull %regs.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.1.i, label %if.end6.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

if.end6.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.1.i:                                     ; preds = %if.end6
  %18 = getelementptr inbounds [20 x i8], ptr %regs.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %and12.2.i = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12.2.i)
  %tobool3.not.2.i = icmp eq i8 %and12.2.i, 0
  br i1 %tobool3.not.2.i, label %for.cond.3.i, label %for.cond.1.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.1.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.1.i
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool3.not.4.i = icmp sgt i8 %22, -1
  br i1 %tobool3.not.4.i, label %for.cond.4.i, label %for.cond.3.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.3.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %tobool3.not.5.i = icmp ult i8 %24, 64
  br i1 %tobool3.not.5.i, label %for.cond.5.i, label %for.cond.4.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.4.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %26)
  %tobool3.not.6.i = icmp ult i8 %26, 64
  br i1 %tobool3.not.6.i, label %for.cond.6.i, label %for.cond.5.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.5.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %tobool3.not.7.i = icmp ult i8 %28, 8
  br i1 %tobool3.not.7.i, label %for.cond.7.i, label %for.cond.6.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.6.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %tobool3.not.8.i = icmp ult i8 %30, 32
  br i1 %tobool3.not.8.i, label %for.cond.10.i, label %for.cond.7.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.7.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.10.i:                                    ; preds = %for.cond.7.i
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %12, align 1
  %and12.11.i = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12.11.i)
  %tobool3.not.11.i = icmp eq i8 %and12.11.i, 0
  br i1 %tobool3.not.11.i, label %for.cond.11.i, label %for.cond.10.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.10.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %13, align 1
  %and12.12.i = and i8 %34, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12.12.i)
  %tobool3.not.12.i = icmp eq i8 %and12.12.i, 0
  br i1 %tobool3.not.12.i, label %for.cond.12.i, label %for.cond.11.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.11.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %14, align 1
  %and12.13.i = and i8 %36, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12.13.i)
  %tobool3.not.13.i = icmp eq i8 %and12.13.i, 0
  br i1 %tobool3.not.13.i, label %for.cond.15.i, label %for.cond.12.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.12.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.15.i:                                    ; preds = %for.cond.12.i
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %38)
  %tobool3.not.16.i = icmp ult i8 %38, 8
  br i1 %tobool3.not.16.i, label %for.cond.17.i, label %for.cond.15.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.15.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

for.cond.17.i:                                    ; preds = %for.cond.15.i
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %16, align 1
  %and12.18.i = and i8 %40, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12.18.i)
  %tobool3.not.18.i = icmp eq i8 %and12.18.i, 0
  br i1 %tobool3.not.18.i, label %if.end10, label %for.cond.17.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge

for.cond.17.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge: ; preds = %for.cond.17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abb5zes3_i2c_validate_chip.exit.thread

abb5zes3_i2c_validate_chip.exit.thread:           ; preds = %for.cond.17.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.15.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.12.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.11.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.10.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.7.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.6.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.5.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.4.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.3.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %for.cond.1.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge, %if.end6.abb5zes3_i2c_validate_chip.exit.thread_crit_edge
  %retval.0.i132.ph = phi i32 [ -19, %for.cond.17.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.15.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.12.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.11.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.10.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.7.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.6.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.5.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.4.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.3.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ -19, %for.cond.1.i.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ], [ %call.i, %if.end6.abb5zes3_i2c_validate_chip.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %regs.i) #6
  br label %cleanup

if.end10:                                         ; preds = %for.cond.17.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %regs.i) #6
  %call.i133 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i133, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %regmap15 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %call.i133, i32 0, i32 1
  %41 = ptrtoint ptr %regmap15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call2, ptr %regmap15, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i133, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %reg.i, align 4, !annotation !190
  %call.i.i134 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 15, i32 noundef 255, i32 noundef 56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %cmp.i135 = icmp slt i32 %call.i.i134, 0
  br i1 %cmp.i135, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call.i.i134) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end.i:                                         ; preds = %if.end14
  %call.i133.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 1, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %cmp7.i = icmp slt i32 %call.i133.i, 0
  br i1 %cmp7.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %call.i133.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %call.i134.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 0, i32 noundef 175, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %cmp16.i = icmp slt i32 %call.i134.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %call.i134.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end22.i:                                       ; preds = %if.end13.i
  %call.i135.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 1, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %cmp25.i = icmp slt i32 %call.i135.i, 0
  br i1 %cmp25.i, label %do.end30.i, label %if.end31.i

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19, i32 noundef %call.i135.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end31.i:                                       ; preds = %if.end22.i
  %call.i136.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 2, i32 noundef 235, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %cmp34.i = icmp slt i32 %call.i136.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.end40.i

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.19, i32 noundef %call.i136.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end40.i:                                       ; preds = %if.end31.i
  %call41.i = call i32 @regmap_read(ptr noundef %call2, i32 noundef 3, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end47.i, label %if.end48.i

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.19, i32 noundef %call41.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end48.i:                                       ; preds = %if.end40.i
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg.i, align 4
  %and.i136 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %if.end48.i.if.end56.i_crit_edge, label %do.end52.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

do.end52.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #9
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end52.i, %if.end48.i.if.end56.i_crit_edge
  %call57.i = call i32 @regmap_read(ptr noundef %call2, i32 noundef 2, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.end63.i, label %if.end64.i

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.19, i32 noundef %call57.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

if.end64.i:                                       ; preds = %if.end56.i
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg.i, align 4
  %and65.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  %battery_low.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %call.i133, i32 0, i32 3
  %and65.lobit.i = lshr exact i32 %and65.i, 2
  %48 = trunc i32 %and65.lobit.i to i8
  %49 = ptrtoint ptr %battery_low.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %battery_low.i, align 4
  br i1 %tobool66.not.i, label %abb5zes3_rtc_check_setup.exit, label %do.end72.i

do.end72.i:                                       ; preds = %if.end64.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #9
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool74.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool74.not.i, label %abb5zes3_rtc_check_setup.exit.thread145, label %do.end78.i

abb5zes3_rtc_check_setup.exit.thread145:          ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %if.end19

do.end78.i:                                       ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i) #9
  br label %abb5zes3_rtc_check_setup.exit.thread

abb5zes3_rtc_check_setup.exit.thread:             ; preds = %do.end78.i, %do.end63.i, %do.end47.i, %do.end39.i, %do.end30.i, %do.end21.i, %do.end12.i, %do.end.i
  %retval.0.i138.ph = phi i32 [ %call.i.i.i, %do.end78.i ], [ %call57.i, %do.end63.i ], [ %call41.i, %do.end47.i ], [ %call.i136.i, %do.end39.i ], [ %call.i135.i, %do.end30.i ], [ %call.i134.i, %do.end21.i ], [ %call.i133.i, %do.end12.i ], [ %call.i.i134, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

abb5zes3_rtc_check_setup.exit:                    ; preds = %if.end64.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool17.not = icmp eq i32 %call57.i, 0
  br i1 %tobool17.not, label %abb5zes3_rtc_check_setup.exit.if.end19_crit_edge, label %abb5zes3_rtc_check_setup.exit.cleanup_crit_edge

abb5zes3_rtc_check_setup.exit.cleanup_crit_edge:  ; preds = %abb5zes3_rtc_check_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

abb5zes3_rtc_check_setup.exit.if.end19_crit_edge: ; preds = %abb5zes3_rtc_check_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %abb5zes3_rtc_check_setup.exit.if.end19_crit_edge, %abb5zes3_rtc_check_setup.exit.thread145
  %call20 = call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %50 = ptrtoint ptr %call.i133 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call20, ptr %call.i133, align 4
  %cmp.i.i.not = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %51) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp = icmp sgt i32 %53, 0
  br i1 %cmp, label %if.then29, label %if.end28.if.end54_crit_edge

if.end28.if.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then29:                                        ; preds = %if.end28
  %call31 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %53, ptr noundef null, ptr noundef nonnull @_abb5zes3_rtc_interrupt, i32 noundef 8320, ptr noundef nonnull @.str, ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %do.end51

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #6
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %irq36 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %call.i133, i32 0, i32 2
  %56 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %irq36, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abb5zes3_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abb5zes3_probe, %if.end54)) #6
          to label %if.then44 [label %if.end54], !srcloc !191

if.then44:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abb5zes3_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef %58) #6
  br label %if.end54

do.end51:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef %60, i32 noundef %call31) #9
  br label %land.lhs.true73

if.end54:                                         ; preds = %if.then44, %if.then33, %if.end28.if.end54_crit_edge
  %61 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i133, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rtc_ops, ptr %ops, align 8
  %64 = load ptr, ptr %call.i133, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 946684800, ptr %range_min, align 8
  %66 = load ptr, ptr %call.i133, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %66, i32 0, i32 23
  %67 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 4102444799, ptr %range_max, align 8
  %68 = ptrtoint ptr %battery_low.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %battery_low.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool58.not = icmp eq i8 %69, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end54.err_crit_edge

if.end54.err_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

land.lhs.true:                                    ; preds = %if.end54
  %irq59 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %call.i133, i32 0, i32 2
  %70 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool60.not = icmp eq i32 %71, 0
  br i1 %tobool60.not, label %land.lhs.true.err_crit_edge, label %if.then61

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then61:                                        ; preds = %land.lhs.true
  %call.i.i140 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 2, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool63.not = icmp eq i32 %call.i.i140, 0
  br i1 %tobool63.not, label %if.then61.err_crit_edge, label %do.end67

if.then61.err_crit_edge:                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.end67:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef %call.i.i140) #9
  br label %land.lhs.true73

err:                                              ; preds = %if.then61.err_crit_edge, %land.lhs.true.err_crit_edge, %if.end54.err_crit_edge
  %72 = ptrtoint ptr %call.i133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i133, align 4
  %call71 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err.cleanup_crit_edge, label %err.land.lhs.true73_crit_edge

err.land.lhs.true73_crit_edge:                    ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true73

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true73:                                  ; preds = %err.land.lhs.true73_crit_edge, %do.end67, %do.end51
  %ret.0151 = phi i32 [ %call71, %err.land.lhs.true73_crit_edge ], [ %call.i.i140, %do.end67 ], [ %call31, %do.end51 ]
  %irq74 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %call.i133, i32 0, i32 2
  %74 = ptrtoint ptr %irq74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool75.not = icmp eq i32 %75, 0
  br i1 %tobool75.not, label %land.lhs.true73.cleanup_crit_edge, label %if.then76

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %land.lhs.true73.cleanup_crit_edge, %err.cleanup_crit_edge, %do.end27, %abb5zes3_rtc_check_setup.exit.cleanup_crit_edge, %abb5zes3_rtc_check_setup.exit.thread, %if.end10.cleanup_crit_edge, %abb5zes3_i2c_validate_chip.exit.thread, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then4 ], [ %51, %do.end27 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call57.i, %abb5zes3_rtc_check_setup.exit.cleanup_crit_edge ], [ %ret.0151, %if.then76 ], [ %ret.0151, %land.lhs.true73.cleanup_crit_edge ], [ 0, %err.cleanup_crit_edge ], [ %retval.0.i132.ph, %abb5zes3_i2c_validate_chip.exit.thread ], [ %retval.0.i138.ph, %abb5zes3_rtc_check_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_abb5zes3_rtc_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %regs = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regs) #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %regs, align 1, !annotation !190
  %5 = getelementptr inbounds [3 x i8], ptr %regs, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !190
  %7 = getelementptr inbounds [3 x i8], ptr %regs, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !190
  %regmap = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %regs, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 1
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %do.end8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end.if.end11_crit_edge
  %handled.0 = phi i32 [ 1, %do.end8 ], [ 0, %if.end.if.end11_crit_edge ]
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %5, align 1
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.end11.if.end29_crit_edge, label %do.body17

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.body17:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_abb5zes3_rtc_interrupt, %do.end26)) #6
          to label %if.then23 [label %do.end26], !srcloc !191

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.55) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body17
  call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #6
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i77 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool.not.i = icmp eq i32 %call.i.i77, 0
  br i1 %tobool.not.i, label %do.end26._abb5zes3_rtc_clear_alarm.exit_crit_edge, label %do.end.i

do.end26._abb5zes3_rtc_clear_alarm.exit_crit_edge: ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_clear_alarm.exit

do.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %call.i.i77) #9
  br label %_abb5zes3_rtc_clear_alarm.exit

_abb5zes3_rtc_clear_alarm.exit:                   ; preds = %do.end.i, %do.end26._abb5zes3_rtc_clear_alarm.exit_crit_edge
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  %regmap.i79 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i79, align 4
  %call.i.i80 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool2.not.i = icmp eq i32 %call.i.i80, 0
  br i1 %tobool2.not.i, label %_abb5zes3_rtc_clear_alarm.exit.if.end29thread-pre-split_crit_edge, label %do.end.i81

_abb5zes3_rtc_clear_alarm.exit.if.end29thread-pre-split_crit_edge: ; preds = %_abb5zes3_rtc_clear_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29thread-pre-split

do.end.i81:                                       ; preds = %_abb5zes3_rtc_clear_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call.i.i80) #9
  br label %if.end29thread-pre-split

if.end29thread-pre-split:                         ; preds = %do.end.i81, %_abb5zes3_rtc_clear_alarm.exit.if.end29thread-pre-split_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %5, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.end11.if.end29_crit_edge
  %28 = phi i8 [ %.pr, %if.end29thread-pre-split ], [ %17, %if.end11.if.end29_crit_edge ]
  %handled.1 = phi i32 [ 1, %if.end29thread-pre-split ], [ %handled.0, %if.end11.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool33.not = icmp sgt i8 %28, -1
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %do.body35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_abb5zes3_rtc_interrupt, %do.end52)) #6
          to label %if.then49 [label %do.end52], !srcloc !191

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.56) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body35
  call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #6
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i, align 4
  %regmap.i83 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i83, align 4
  %call.i.i84 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool2.not.i85 = icmp eq i32 %call.i.i84, 0
  br i1 %tobool2.not.i85, label %do.end52._abb5zes3_rtc_update_timer.exit_crit_edge, label %do.end.i86

do.end52._abb5zes3_rtc_update_timer.exit_crit_edge: ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_update_timer.exit

do.end.i86:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %call.i.i84) #9
  br label %_abb5zes3_rtc_update_timer.exit

_abb5zes3_rtc_update_timer.exit:                  ; preds = %do.end.i86, %do.end52._abb5zes3_rtc_update_timer.exit_crit_edge
  %timer_alarm = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %timer_alarm to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %timer_alarm, align 1
  br label %cleanup

cleanup:                                          ; preds = %_abb5zes3_rtc_update_timer.exit, %if.end29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %_abb5zes3_rtc_update_timer.exit ], [ %handled.1, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regs) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_abb5zes3_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %regs = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %regs) #6
  %2 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 4
  %3 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 5
  %4 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 6
  %5 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 7
  %6 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 8
  %7 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 9
  %regmap = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %8 = call ptr @memset(ptr %regs, i32 255, i32 10)
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %regs, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool2.not = icmp sgt i8 %13, -1
  br i1 %tobool2.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %and7 = and i8 %13, 127
  %call20 = call i32 @_bcd2bin(i8 noundef zeroext %and7) #10
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20, ptr %tm, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %call33 = call i32 @_bcd2bin(i8 noundef zeroext %16) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call33, ptr %tm_min, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regs, align 1
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool39.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  br i1 %tobool39.not, label %cond.end85, label %cond.false56

cond.false56:                                     ; preds = %cond.end
  %23 = and i8 %22, 31
  %call61 = call i32 @_bcd2bin(i8 noundef zeroext %23) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call61, ptr %tm_hour, align 4
  %25 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool67.not = icmp eq i8 %25, 0
  br i1 %tobool67.not, label %cond.false56.cond.end102_crit_edge, label %if.then68

cond.false56.cond.end102_crit_edge:               ; preds = %cond.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end102

if.then68:                                        ; preds = %cond.false56
  call void @__sanitizer_cov_trace_pc() #8
  %add70 = add i32 %call61, 12
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add70, ptr %tm_hour, align 4
  br label %cond.end102

cond.end85:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  %tm_hour87 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour87 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call84, ptr %tm_hour87, align 4
  br label %cond.end102

cond.end102:                                      ; preds = %cond.end85, %if.then68, %cond.false56.cond.end102_crit_edge
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %call101 = call i32 @_bcd2bin(i8 noundef zeroext %29) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %30 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call101, ptr %tm_mday, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 1
  %call116 = call i32 @_bcd2bin(i8 noundef zeroext %32) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %33 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call116, ptr %tm_wday, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %call131 = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %sub = add i32 %call131, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %tm_mon, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %call146 = call i32 @_bcd2bin(i8 noundef zeroext %38) #10
  %add149 = add i32 %call146, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %39 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add149, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end102, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %cond.end102 ], [ -61, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %regs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %regs) #6
  %2 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 8
  %8 = call ptr @memset(ptr %regs, i32 255, i32 3)
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #10
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call4, ptr %2, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call17, ptr %3, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #10
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call33, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mday, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call49, ptr %5, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_wday, align 4
  %call65 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #10
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call65, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon, align 4
  %add71 = add i32 %25, 1
  %call85 = tail call zeroext i8 @_bin2bcd(i32 noundef %add71) #10
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call85, ptr %7, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year, align 4
  %sub = add i32 %28, -100
  %call104 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %29 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 9
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call104, ptr %29, align 1
  %regmap = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call110 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 3, ptr noundef %2, i32 noundef 7) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %regs) #6
  ret i32 %call110
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_read_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %rtc_tm.i6 = alloca %struct.rtc_time, align 4
  %regs.i7 = alloca [4 x i8], align 4
  %reg.i8 = alloca i32, align 4
  %rtc_tm.i = alloca %struct.rtc_time, align 4
  %regs.i = alloca [3 x i8], align 1
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timer_alarm = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %timer_alarm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timer_alarm, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rtc_tm.i) #6
  %4 = call ptr @memset(ptr %rtc_tm.i, i32 255, i32 36)
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regs.i) #6
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %regs.i, align 1, !annotation !190
  %6 = getelementptr inbounds [3 x i8], ptr %regs.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !190
  %8 = getelementptr inbounds [3 x i8], ptr %regs.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !190
  %regmap.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 15, ptr noundef nonnull %regs.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %call1.i) #9
  br label %_abb5zes3_rtc_read_timer.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call i32 @_abb5zes3_rtc_read_time(ptr noundef %dev, ptr noundef nonnull %rtc_tm.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i._abb5zes3_rtc_read_timer.exit_crit_edge

if.end.i._abb5zes3_rtc_read_timer.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_read_timer.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %rtc_tm.i) #6
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.not.i.i = icmp eq i8 %14, 2
  br i1 %cmp.not.i.i, label %if.end11.i, label %if.end5.i._abb5zes3_rtc_read_timer.exit_crit_edge

if.end5.i._abb5zes3_rtc_read_timer.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_read_timer.exit

if.end11.i:                                       ; preds = %if.end5.i
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 1
  %conv.i = trunc i64 %call6.i to i32
  %conv12.i = zext i8 %16 to i32
  %add.i = add i32 %conv12.i, %conv.i
  %conv13.i = zext i32 %add.i to i64
  call void @rtc_time64_to_tm(i64 noundef %conv13.i, ptr noundef %time.i) #6
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 1, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end21.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %call15.i) #9
  br label %_abb5zes3_rtc_read_timer.exit

if.end21.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i, align 4
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 2
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %alarm, align 4
  br label %_abb5zes3_rtc_read_timer.exit

_abb5zes3_rtc_read_timer.exit:                    ; preds = %if.end21.i, %do.end20.i, %if.end5.i._abb5zes3_rtc_read_timer.exit_crit_edge, %if.end.i._abb5zes3_rtc_read_timer.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call15.i, %do.end20.i ], [ 0, %if.end21.i ], [ %call2.i, %if.end.i._abb5zes3_rtc_read_timer.exit_crit_edge ], [ -22, %if.end5.i._abb5zes3_rtc_read_timer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regs.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rtc_tm.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rtc_tm.i6) #6
  %25 = call ptr @memset(ptr %rtc_tm.i6, i32 255, i32 36)
  %time.i10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i7) #6
  %26 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %regs.i7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i8) #6
  %27 = ptrtoint ptr %reg.i8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %reg.i8, align 4, !annotation !190
  %regmap.i11 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i11, align 4
  %call1.i12 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef 10, ptr noundef nonnull %regs.i7, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %if.end.i15, label %do.end.i14

do.end.i14:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call1.i12) #9
  br label %_abb5zes3_rtc_read_alarm.exit

if.end.i15:                                       ; preds = %if.else
  %30 = getelementptr inbounds [4 x i8], ptr %regs.i7, i32 0, i32 2
  %31 = getelementptr inbounds [4 x i8], ptr %regs.i7, i32 0, i32 1
  %32 = ptrtoint ptr %time.i10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %time.i10, align 4
  %33 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regs.i7, align 4
  %35 = and i8 %34, 127
  %call14.i = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call14.i, ptr %tm_min.i, align 4
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %31, align 1
  %39 = and i8 %38, 63
  %call35.i = call i32 @_bcd2bin(i8 noundef zeroext %39) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call35.i, ptr %tm_hour.i, align 4
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %30, align 2
  %43 = and i8 %42, 63
  %call58.i = call i32 @_bcd2bin(i8 noundef zeroext %43) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call58.i, ptr %tm_mday.i, align 4
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tm_wday.i, align 4
  %call61.i = call i32 @_abb5zes3_rtc_read_time(ptr noundef %dev, ptr noundef nonnull %rtc_tm.i6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end.i15._abb5zes3_rtc_read_alarm.exit_crit_edge

if.end.i15._abb5zes3_rtc_read_alarm.exit_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_read_alarm.exit

if.end64.i:                                       ; preds = %if.end.i15
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm.i6, i32 0, i32 5
  %46 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_year.i, align 4
  %tm_year65.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %tm_year65.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tm_year65.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm.i6, i32 0, i32 4
  %49 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_mon.i, align 4
  %tm_mon66.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %tm_mon66.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tm_mon66.i, align 4
  %call67.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %rtc_tm.i6) #6
  %conv68.i = trunc i64 %call67.i to i32
  %call69.i = call i64 @rtc_tm_to_time64(ptr noundef %time.i10) #6
  %conv70.i = trunc i64 %call69.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv70.i, i32 %conv68.i)
  %cmp.i = icmp ult i32 %conv70.i, %conv68.i
  br i1 %cmp.i, label %if.then72.i, label %if.end64.i.if.end83.i_crit_edge

if.end64.i.if.end83.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

if.then72.i:                                      ; preds = %if.end64.i
  %52 = ptrtoint ptr %tm_mon66.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_mon66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %53)
  %cmp74.i = icmp eq i32 %53, 11
  br i1 %cmp74.i, label %if.then76.i, label %if.then72.i.if.end83.sink.split.i_crit_edge

if.then72.i.if.end83.sink.split.i_crit_edge:      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.sink.split.i

if.then76.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %tm_mon66.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tm_mon66.i, align 4
  %55 = ptrtoint ptr %tm_year65.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_year65.i, align 4
  br label %if.end83.sink.split.i

if.end83.sink.split.i:                            ; preds = %if.then76.i, %if.then72.i.if.end83.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %56, %if.then76.i ], [ %53, %if.then72.i.if.end83.sink.split.i_crit_edge ]
  %tm_year65.sink.i = phi ptr [ %tm_year65.i, %if.then76.i ], [ %tm_mon66.i, %if.then72.i.if.end83.sink.split.i_crit_edge ]
  %add79.i = add i32 %.sink.i, 1
  %57 = ptrtoint ptr %tm_year65.sink.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add79.i, ptr %tm_year65.sink.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end83.sink.split.i, %if.end64.i.if.end83.i_crit_edge
  %58 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i11, align 4
  %call85.i = call i32 @regmap_read(ptr noundef %59, i32 noundef 0, ptr noundef nonnull %reg.i8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end91.i, label %do.end90.i

do.end90.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.71, i32 noundef %call85.i) #9
  br label %_abb5zes3_rtc_read_alarm.exit

if.end91.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %reg.i8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg.i8, align 4
  %62 = trunc i32 %61 to i8
  %63 = lshr i8 %62, 1
  %64 = and i8 %63, 1
  %65 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %alarm, align 4
  br label %_abb5zes3_rtc_read_alarm.exit

_abb5zes3_rtc_read_alarm.exit:                    ; preds = %if.end91.i, %do.end90.i, %if.end.i15._abb5zes3_rtc_read_alarm.exit_crit_edge, %do.end.i14
  %retval.0.i17 = phi i32 [ %call1.i12, %do.end.i14 ], [ %call85.i, %do.end90.i ], [ 0, %if.end91.i ], [ %call61.i, %if.end.i15._abb5zes3_rtc_read_alarm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i7) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rtc_tm.i6) #6
  br label %if.end

if.end:                                           ; preds = %_abb5zes3_rtc_read_alarm.exit, %_abb5zes3_rtc_read_timer.exit
  %ret.0 = phi i32 [ %retval.0.i, %_abb5zes3_rtc_read_timer.exit ], [ %retval.0.i17, %_abb5zes3_rtc_read_alarm.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %regs.i71 = alloca [4 x i8], align 1
  %rtc_tm.i = alloca %struct.rtc_time, align 4
  %regs.i = alloca [2 x i8], align 1
  %rtc_tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rtc_tm) #6
  %2 = call ptr @memset(ptr %rtc_tm, i32 255, i32 36)
  %call1 = call i32 @_abb5zes3_rtc_read_time(ptr noundef %dev, ptr noundef nonnull %rtc_tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call2 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %rtc_tm) #6
  %conv = trunc i64 %call2 to i32
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv4 = trunc i64 %call3 to i32
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.if.end8_crit_edge, label %_abb5zes3_rtc_update_alarm.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

_abb5zes3_rtc_update_alarm.exit:                  ; preds = %if.end
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %_abb5zes3_rtc_update_alarm.exit.if.end8_crit_edge

_abb5zes3_rtc_update_alarm.exit.if.end8_crit_edge: ; preds = %_abb5zes3_rtc_update_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %_abb5zes3_rtc_update_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %call.i.i) #9
  br label %cleanup

if.end8:                                          ; preds = %_abb5zes3_rtc_update_alarm.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %regmap.i63 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i63, align 4
  %call.i.i64 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool2.not.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool2.not.i65, label %if.end8.if.end16_crit_edge, label %_abb5zes3_rtc_update_timer.exit

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

_abb5zes3_rtc_update_timer.exit:                  ; preds = %if.end8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %call.i.i64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp10 = icmp slt i32 %call.i.i64, 0
  br i1 %cmp10, label %do.end15, label %_abb5zes3_rtc_update_timer.exit.if.end16_crit_edge

_abb5zes3_rtc_update_timer.exit.if.end16_crit_edge: ; preds = %_abb5zes3_rtc_update_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end15:                                         ; preds = %_abb5zes3_rtc_update_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %call.i.i64) #9
  br label %cleanup

if.end16:                                         ; preds = %_abb5zes3_rtc_update_timer.exit.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %timer_alarm = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %timer_alarm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timer_alarm, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv)
  %cmp17 = icmp ugt i32 %conv4, %conv
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.else_crit_edge

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %sub = sub i32 %conv4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %sub)
  %cmp19 = icmp ult i32 %sub, 241
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true
  %conv23 = trunc i32 %sub to i8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs.i) #6
  %14 = getelementptr inbounds [2 x i8], ptr %regs.i, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %regs.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv23, ptr %14, align 1
  %regmap.i68 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i68, align 4
  %call2.i = call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 16, ptr noundef nonnull %regs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i69, label %if.end.i

do.end.i69:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #9
  br label %_abb5zes3_rtc_set_timer.exit

if.end.i:                                         ; preds = %if.then21
  %19 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i68, align 4
  %call.i.i70 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 15, i32 noundef 6, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.end8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end8.i, %if.end.i.if.end9.i_crit_edge
  %timer_alarm.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %timer_alarm.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %timer_alarm.i, align 1
  %22 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not.i = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %cond.i.i = select i1 %tobool10.not.i, i32 0, i32 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 1, i32 noundef 4, i32 noundef %cond.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end9.i._abb5zes3_rtc_set_timer.exit_crit_edge, label %do.end.i.i

if.end9.i._abb5zes3_rtc_set_timer.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_set_timer.exit

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %call.i.i.i) #9
  br label %_abb5zes3_rtc_set_timer.exit

_abb5zes3_rtc_set_timer.exit:                     ; preds = %do.end.i.i, %if.end9.i._abb5zes3_rtc_set_timer.exit_crit_edge, %do.end.i69
  %retval.0.i = phi i32 [ %call2.i, %do.end.i69 ], [ 0, %if.end9.i._abb5zes3_rtc_set_timer.exit_crit_edge ], [ %call.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs.i) #6
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i71) #6
  %30 = getelementptr inbounds [4 x i8], ptr %regs.i71, i32 0, i32 1
  %31 = getelementptr inbounds [4 x i8], ptr %regs.i71, i32 0, i32 2
  %32 = getelementptr inbounds [4 x i8], ptr %regs.i71, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rtc_tm.i) #6
  %33 = call ptr @memset(ptr %rtc_tm.i, i32 255, i32 36)
  %34 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i73 = icmp eq i8 %35, 0
  br i1 %tobool.not.i73, label %if.else.cond.end.i_crit_edge, label %if.else.i

if.else.cond.end.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

if.else.i:                                        ; preds = %if.else
  %call1.i = call i32 @_abb5zes3_rtc_read_time(ptr noundef %dev, ptr noundef nonnull %rtc_tm.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i74 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i74, label %if.end.i76, label %if.else.i._abb5zes3_rtc_set_alarm.exit_crit_edge

if.else.i._abb5zes3_rtc_set_alarm.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_set_alarm.exit

if.end.i76:                                       ; preds = %if.else.i
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm.i, i32 0, i32 4
  %36 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %37)
  %cmp.i75 = icmp eq i32 %37, 11
  br i1 %cmp.i75, label %if.then4.i, label %if.end.i76.if.end9.i77_crit_edge

if.end.i76.if.end9.i77_crit_edge:                 ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i77

if.then4.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm.i, i32 0, i32 5
  %39 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_year.i, align 4
  br label %if.end9.i77

if.end9.i77:                                      ; preds = %if.then4.i, %if.end.i76.if.end9.i77_crit_edge
  %.sink.i = phi i32 [ %40, %if.then4.i ], [ %37, %if.end.i76.if.end9.i77_crit_edge ]
  %tm_mon.sink.i = phi ptr [ %tm_year.i, %if.then4.i ], [ %tm_mon.i, %if.end.i76.if.end9.i77_crit_edge ]
  %add8.i = add i32 %.sink.i, 1
  %41 = ptrtoint ptr %tm_mon.sink.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add8.i, ptr %tm_mon.sink.i, align 4
  %call10.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %rtc_tm.i) #6
  %conv.i = trunc i64 %call10.i to i32
  %call11.i = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv12.i = trunc i64 %call11.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %conv12.i, %conv.i
  br i1 %cmp13.i, label %do.end.i78, label %if.end9.i77.cond.end.i_crit_edge

if.end9.i77.cond.end.i_crit_edge:                 ; preds = %if.end9.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

do.end.i78:                                       ; preds = %if.end9.i77
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef 0) #9
  br label %_abb5zes3_rtc_set_alarm.exit

cond.end.i:                                       ; preds = %if.end9.i77.cond.end.i_crit_edge, %if.else.cond.end.i_crit_edge
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_min.i, align 4
  %call24.i = call zeroext i8 @_bin2bcd(i32 noundef %43) #10
  %conv26.i = and i8 %call24.i, 127
  %44 = ptrtoint ptr %regs.i71 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv26.i, ptr %regs.i71, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_hour.i, align 4
  %call37.i = call zeroext i8 @_bin2bcd(i32 noundef %46) #10
  %conv42.i = and i8 %call37.i, 63
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv42.i, ptr %30, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_mday.i, align 4
  %call54.i = call zeroext i8 @_bin2bcd(i32 noundef %49) #10
  %conv59.i = and i8 %call54.i, 63
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv59.i, ptr %31, align 1
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %32, align 1
  %regmap.i79 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %29, i32 0, i32 1
  %52 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i79, align 4
  %call62.i = call i32 @regmap_bulk_write(ptr noundef %53, i32 noundef 10, ptr noundef nonnull %regs.i71, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end68.i, label %if.end69.i

do.end68.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %call62.i) #9
  br label %_abb5zes3_rtc_set_alarm.exit

if.end69.i:                                       ; preds = %cond.end.i
  %timer_alarm.i80 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %29, i32 0, i32 4
  %54 = ptrtoint ptr %timer_alarm.i80 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %timer_alarm.i80, align 1
  %55 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i81 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i.i81, align 4
  %cond.i.i82 = select i1 %tobool.not.i73, i32 0, i32 2
  %call.i.i.i83 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 0, i32 noundef 2, i32 noundef %cond.i.i82, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i83)
  %tobool2.not.i.i84 = icmp eq i32 %call.i.i.i83, 0
  br i1 %tobool2.not.i.i84, label %if.end69.i._abb5zes3_rtc_set_alarm.exit_crit_edge, label %do.end.i.i85

if.end69.i._abb5zes3_rtc_set_alarm.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_abb5zes3_rtc_set_alarm.exit

do.end.i.i85:                                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call.i.i.i83) #9
  br label %_abb5zes3_rtc_set_alarm.exit

_abb5zes3_rtc_set_alarm.exit:                     ; preds = %do.end.i.i85, %if.end69.i._abb5zes3_rtc_set_alarm.exit_crit_edge, %do.end68.i, %do.end.i78, %if.else.i._abb5zes3_rtc_set_alarm.exit_crit_edge
  %retval.1.i = phi i32 [ %call62.i, %do.end68.i ], [ 0, %if.end69.i._abb5zes3_rtc_set_alarm.exit_crit_edge ], [ %call.i.i.i83, %do.end.i.i85 ], [ %call1.i, %if.else.i._abb5zes3_rtc_set_alarm.exit_crit_edge ], [ -22, %do.end.i78 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rtc_tm.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i71) #6
  br label %if.end26

if.end26:                                         ; preds = %_abb5zes3_rtc_set_alarm.exit, %_abb5zes3_rtc_set_timer.exit
  %ret.0 = phi i32 [ %retval.0.i, %_abb5zes3_rtc_set_timer.exit ], [ %retval.1.i, %_abb5zes3_rtc_set_alarm.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool27.not = icmp eq i32 %ret.0, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %do.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end26.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i64, %do.end15 ], [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %do.end31 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rtc_tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %timer_alarm = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %timer_alarm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timer_alarm, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %regmap.i13 = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i13, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %cond.i = select i1 %tobool5.not, i32 0, i32 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 4, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then2.if.end7_crit_edge, label %do.end.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %call.i.i) #9
  br label %if.end7

if.else:                                          ; preds = %if.then
  %cond.i14 = select i1 %tobool5.not, i32 0, i32 2
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 2, i32 noundef %cond.i14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool2.not.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool2.not.i16, label %if.else.if.end7_crit_edge, label %do.end.i17

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end.i17:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call.i.i15) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end.i17, %if.else.if.end7_crit_edge, %do.end.i, %if.then2.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 0, %if.then2.if.end7_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %if.else.if.end7_crit_edge ], [ %call.i.i15, %do.end.i17 ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abb5zes3_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.abb5zes3_rtc_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__initcall__kmod_rtc_ab_b5ze_s3__291_951_abb5zes3_driver_init6, !1, !"__initcall__kmod_rtc_ab_b5ze_s3__291_951_abb5zes3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 951, i32 1}
!2 = !{ptr @__exitcall_abb5zes3_driver_exit, !1, !"__exitcall_abb5zes3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 953, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 954, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 955, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 944, i32 11}
!12 = !{ptr @abb5zes3_driver, !13, !"abb5zes3_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 942, i32 26}
!14 = !{ptr @abb5zes3_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 833, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 836, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @abb5zes3_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @abb5zes3_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 859, i32 3}
!27 = !{ptr @abb5zes3_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @abb5zes3_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 872, i32 4}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @abb5zes3_probe.__UNIQUE_ID_ddebug290, !30, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 875, i32 4}
!35 = !{ptr @abb5zes3_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @abb5zes3_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 889, i32 4}
!39 = !{ptr @abb5zes3_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @abb5zes3_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @abb5zes3_rtc_regmap_config, !42, !"abb5zes3_rtc_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 815, i32 35}
!43 = distinct !{null, !44, !"mask", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 136, i32 18}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 628, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @abb5zes3_rtc_check_setup._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 642, i32 3}
!52 = !{ptr @abb5zes3_rtc_check_setup._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 653, i32 3}
!56 = !{ptr @abb5zes3_rtc_check_setup._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 668, i32 3}
!60 = !{ptr @abb5zes3_rtc_check_setup._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 684, i32 3}
!64 = !{ptr @abb5zes3_rtc_check_setup._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 692, i32 3}
!68 = !{ptr @abb5zes3_rtc_check_setup._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 698, i32 3}
!72 = !{ptr @abb5zes3_rtc_check_setup._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 699, i32 3}
!76 = !{ptr @abb5zes3_rtc_check_setup._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 710, i32 3}
!80 = !{ptr @abb5zes3_rtc_check_setup._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 717, i32 3}
!84 = !{ptr @abb5zes3_rtc_check_setup._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 721, i32 4}
!88 = !{ptr @abb5zes3_rtc_check_setup._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @abb5zes3_rtc_check_setup._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 756, i32 3}
!92 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @_abb5zes3_rtc_interrupt._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @_abb5zes3_rtc_interrupt._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 767, i32 3}
!97 = !{ptr @_abb5zes3_rtc_interrupt._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @_abb5zes3_rtc_interrupt._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 776, i32 3}
!101 = !{ptr @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug288, !100, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 789, i32 3}
!104 = !{ptr @_abb5zes3_rtc_interrupt.__UNIQUE_ID_ddebug289, !103, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 164, i32 3}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @_abb5zes3_rtc_clear_alarm._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @_abb5zes3_rtc_clear_alarm._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 179, i32 3}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @_abb5zes3_rtc_update_alarm._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @_abb5zes3_rtc_update_alarm._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 195, i32 3}
!117 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @_abb5zes3_rtc_update_timer._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @_abb5zes3_rtc_update_timer._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @rtc_ops, !121, !"rtc_ops", i1 false, i1 false}
!121 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 807, i32 35}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 220, i32 3}
!124 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @_abb5zes3_rtc_read_time._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @_abb5zes3_rtc_read_time._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 316, i32 3}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @_abb5zes3_rtc_read_timer._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @_abb5zes3_rtc_read_timer._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 339, i32 3}
!134 = !{ptr @_abb5zes3_rtc_read_timer._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @_abb5zes3_rtc_read_timer._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 363, i32 3}
!138 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @_abb5zes3_rtc_read_alarm._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @_abb5zes3_rtc_read_alarm._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @_abb5zes3_rtc_read_alarm._entry.72, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 400, i32 3}
!143 = !{ptr @_abb5zes3_rtc_read_alarm._entry_ptr.73, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 559, i32 3}
!146 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @abb5zes3_rtc_set_alarm._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @abb5zes3_rtc_set_alarm._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 565, i32 3}
!151 = !{ptr @abb5zes3_rtc_set_alarm._entry.76, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @abb5zes3_rtc_set_alarm._entry_ptr.78, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 583, i32 3}
!155 = !{ptr @abb5zes3_rtc_set_alarm._entry.79, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @abb5zes3_rtc_set_alarm._entry_ptr.81, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 518, i32 3}
!159 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @_abb5zes3_rtc_set_timer._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @_abb5zes3_rtc_set_timer._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 526, i32 3}
!164 = !{ptr @_abb5zes3_rtc_set_timer._entry.84, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @_abb5zes3_rtc_set_timer._entry_ptr.86, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 471, i32 4}
!168 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @_abb5zes3_rtc_set_alarm._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @_abb5zes3_rtc_set_alarm._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 489, i32 3}
!173 = !{ptr @_abb5zes3_rtc_set_alarm._entry.89, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @_abb5zes3_rtc_set_alarm._entry_ptr.91, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @abb5zes3_dt_match, !176, !"abb5zes3_dt_match", i1 false, i1 false}
!176 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 929, i32 34}
!177 = !{ptr @abb5zes3_rtc_pm_ops, !178, !"abb5zes3_rtc_pm_ops", i1 false, i1 false}
!178 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 925, i32 8}
!179 = !{ptr @abb5zes3_id, !180, !"abb5zes3_id", i1 false, i1 false}
!180 = !{!"../drivers/rtc/rtc-ab-b5ze-s3.c", i32 936, i32 35}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{i64 2148980490, i64 2148980495, i64 2148980508, i64 2148980552, i64 2148980586, i64 2148980607}
!192 = !{i8 0, i8 2}
