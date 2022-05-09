; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adt7470.c_pt.bc'
source_filename = "../drivers/hwmon/adt7470.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.adt7470_data = type { ptr, %struct.mutex, i8, i8, i32, i32, i32, i32, [10 x i8], [10 x i8], [10 x i8], [4 x i16], [4 x i16], [4 x i16], i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_adt7470__321_1325_adt7470_driver_init6 = internal global ptr @adt7470_driver_init, section ".initcall6.init", align 4
@adt7470_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @adt7470_remove, ptr @adt7470_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adt7470_id, ptr @adt7470_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adt7470_driver_exit = internal global ptr @adt7470_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [57 x i8] c"adt7470.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [35 x i8] c"adt7470.description=ADT7470 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [35 x i8] c"adt7470.file=drivers/hwmon/adt7470\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"adt7470.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7470\00", [24 x i8] zeroinitializer }, align 32
@adt7470_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adt7470\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 46, i16 47, i16 -2], [24 x i8] zeroinitializer }, align 32
@adt7470_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adt7470_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"adt7470:1267:(&adt7470_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@adt7470_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adt7470_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1274, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s chip found\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adt7470_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adt7470.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adt7470_probe._entry_ptr = internal global ptr @adt7470_probe._entry, section ".printk_index", align 4
@adt7470_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @adt7470_hwmon_ops, ptr @adt7470_info }, [24 x i8] zeroinitializer }, align 32
@adt7470_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @adt7470_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@adt7470_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @adt7470_is_visible, ptr @adt7470_read, ptr null, ptr @adt7470_write }, [16 x i8] zeroinitializer }, align 32
@adt7470_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.9, ptr @.compoundliteral.11, ptr @.compoundliteral.13, ptr null], [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adt7470_freq_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 11, i32 15, i32 22, i32 29, i32 35, i32 44, i32 59, i32 88, i32 1400, i32 22500], [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 8354, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 314, i32 314, i32 314, i32 314, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.10 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 11, i32 3, i32 3, i32 3, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.12 }, [24 x i8] zeroinitializer }, align 32
@adt7470_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7470_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7470_attrs = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @dev_attr_alarm_mask, ptr @dev_attr_num_temp_sensors, ptr @dev_attr_auto_update_interval, ptr @sensor_dev_attr_force_pwm_max, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm4_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm4_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm4_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm4_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_alarm_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_mask_show, ptr @alarm_mask_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_num_temp_sensors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @num_temp_sensors_show, ptr @num_temp_sensors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_auto_update_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_update_interval_show, ptr @auto_update_interval_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_force_pwm_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @force_pwm_max_show, ptr @force_pwm_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alarm_mask\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"num_temp_sensors\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"auto_update_interval\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"force_pwm_max\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm4_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@switch.table.adt7470_is_visible = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 292, i16 0, i16 420, i16 420, i16 0, i16 0, i16 292], [18 x i8] zeroinitializer }, align 32
@switch.table.adt7470_is_visible.40 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 292, i16 0, i16 420, i16 420, i16 0, i16 0, i16 0, i16 292], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"adt7470_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1313, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1316, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"adt7470_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1307, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 26, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"adt7470_regmap_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1247, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1267, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1272, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1274, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"adt7470_chip_info\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1215, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"adt7470_groups\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1291, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"adt7470_hwmon_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1184, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"adt7470_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1190, i32 41 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"adt7470_freq_map\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 724, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"adt7470_group\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1095, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"adt7470_attrs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1067, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"dev_attr_alarm_mask\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"dev_attr_num_temp_sensors\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"dev_attr_auto_update_interval\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_force_pwm_max\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm4_auto_point1_pwm\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm4_auto_point2_pwm\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point1_temp\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point1_temp\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm4_auto_point1_temp\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point2_temp\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point2_temp\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm4_auto_point2_temp\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_temp\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm2_auto_channels_temp\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm3_auto_channels_temp\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm4_auto_channels_temp\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1036, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 599, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1037, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 512, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1038, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1040, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1042, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1043, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1044, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1045, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1047, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1048, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1049, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1050, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1052, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1053, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1054, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1055, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1057, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1058, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1059, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1060, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1062, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1063, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1064, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [27 x i8] c"../drivers/hwmon/adt7470.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1065, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant [32 x i8] c"switch.table.adt7470_is_visible\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [35 x i8] c"switch.table.adt7470_is_visible.40\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_adt7470_driver_exit, ptr @__initcall__kmod_adt7470__321_1325_adt7470_driver_init6, ptr @adt7470_driver_exit, ptr @adt7470_probe._entry, ptr @adt7470_probe._entry_ptr, ptr @adt7470_driver, ptr @.str, ptr @adt7470_id, ptr @normal_i2c, ptr @adt7470_probe._key, ptr @adt7470_regmap_config, ptr @.str.1, ptr @adt7470_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adt7470_chip_info, ptr @adt7470_groups, ptr @.str.8, ptr @adt7470_hwmon_ops, ptr @adt7470_info, ptr @adt7470_freq_map, ptr @.compoundliteral, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @adt7470_group, ptr @adt7470_attrs, ptr @dev_attr_alarm_mask, ptr @dev_attr_num_temp_sensors, ptr @dev_attr_auto_update_interval, ptr @sensor_dev_attr_force_pwm_max, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm4_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm4_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm4_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm4_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.adt7470_is_visible, ptr @switch.table.adt7470_is_visible.40], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_freq_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7470_attrs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarm_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_num_temp_sensors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_auto_update_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_force_pwm_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adt7470_is_visible to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adt7470_is_visible.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adt7470_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adt7470_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adt7470_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %auto_update = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %auto_update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auto_update, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 208, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_temp_sensors = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_temp_sensors, align 4
  %auto_update_interval = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 24
  %1 = ptrtoint ptr %auto_update_interval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2000, ptr %auto_update_interval, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @adt7470_regmap_config, ptr noundef nonnull @adt7470_probe._key, ptr noundef nonnull @.str.1) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @adt7470_probe.__key) #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %name) #12
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 64, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp = icmp slt i32 %call.i64, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call19 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adt7470_chip_info, ptr noundef nonnull @adt7470_groups) #9
  %cmp.i65 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %init_name.i = getelementptr inbounds %struct.device, ptr %call19, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call19, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end23.dev_name.exit_crit_edge ]
  %call25 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @adt7470_update_thread, ptr noundef %client, i32 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #9
  %cmp.i66 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then33, label %if.end29

if.end29:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @wake_up_process(ptr noundef %call25) #9
  %auto_update = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 23
  %12 = ptrtoint ptr %auto_update to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %auto_update, align 4
  br label %cleanup

if.then33:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %auto_update68 = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 23
  %13 = ptrtoint ptr %auto_update68 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %auto_update68, align 4
  %14 = ptrtoint ptr %call25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29, %if.then21, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %7, %if.then21 ], [ %14, %if.then33 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i64, %if.end8.cleanup_crit_edge ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 65
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 112
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 2
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @strscpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_update_thread(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %p, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call175 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call175, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  %auto_update_interval = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %if.else.i.while.body_crit_edge, %while.body.lr.ph
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call2 = tail call fastcc i32 @adt7470_read_temperatures(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %__here

__here:                                           ; preds = %while.body
  %2 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@adt7470_update_thread, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %call65 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call65, label %__here.while.end_crit_edge, label %if.else.i

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.else.i:                                        ; preds = %__here
  %9 = ptrtoint ptr %auto_update_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %auto_update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #9
  %call69 = tail call i32 @schedule_timeout(i32 noundef %call2.i) #9
  %call1 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call1, label %if.else.i.while.end_crit_edge, label %if.else.i.while.body_crit_edge

if.else.i.while.body_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.else.i.while.end_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.else.i.while.end_crit_edge, %__here.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @adt7470_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog14_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 8, label %sw.bb8
  ]

entry.sw.epilog14_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb:                                            ; preds = %entry
  %1 = add i32 %attr, -1
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %switch.lookup, label %sw.bb.sw.epilog14_crit_edge

sw.bb.sw.epilog14_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb3:                                           ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.lookup17, label %sw.bb3.sw.epilog14_crit_edge

sw.bb3.sw.epilog14_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb8:                                           ; preds = %entry
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %attr, label %sw.bb8.sw.epilog14_crit_edge [
    i32 0, label %sw.bb8.sw.bb9_crit_edge
    i32 1, label %sw.bb8.sw.bb9_crit_edge20
    i32 3, label %sw.bb10
  ]

sw.bb8.sw.bb9_crit_edge20:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb8.sw.bb9_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb8.sw.epilog14_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb9:                                           ; preds = %sw.bb8.sw.bb9_crit_edge, %sw.bb8.sw.bb9_crit_edge20
  br label %sw.epilog14

sw.bb10:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  %. = select i1 %cmp, i16 420, i16 0
  br label %sw.epilog14

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.adt7470_is_visible, i32 0, i32 %2
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog14

switch.lookup17:                                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep18 = getelementptr inbounds [8 x i16], ptr @switch.table.adt7470_is_visible.40, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load19 = load i16, ptr %switch.gep18, align 2
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %switch.lookup17, %switch.lookup, %sw.bb10, %sw.bb9, %sw.bb8.sw.epilog14_crit_edge, %sw.bb3.sw.epilog14_crit_edge, %sw.bb.sw.epilog14_crit_edge, %entry.sw.epilog14_crit_edge
  %mode.0 = phi i16 [ 0, %entry.sw.epilog14_crit_edge ], [ 0, %sw.bb8.sw.epilog14_crit_edge ], [ 420, %sw.bb9 ], [ 0, %sw.bb3.sw.epilog14_crit_edge ], [ 0, %sw.bb.sw.epilog14_crit_edge ], [ %., %sw.bb10 ], [ %switch.load, %switch.lookup ], [ %switch.load19, %switch.lookup17 ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %cfg_reg_1.i.i = alloca i32, align 4
  %cfg_reg_2.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call.i to i32
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %2 = add i32 %attr, -1
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31) #9
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %if.end.i.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb7.i
    i32 6, label %sw.bb11.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.adt7470_data, ptr %call.i, i32 0, i32 8, i32 %channel
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %6 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %val, align 4
  br label %return

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4.i = getelementptr %struct.adt7470_data, ptr %call.i, i32 0, i32 9, i32 %channel
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = sext i8 %9 to i32
  %mul6.i = mul nsw i32 %conv5.i, 1000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul6.i, ptr %val, align 4
  br label %return

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i = getelementptr %struct.adt7470_data, ptr %call.i, i32 0, i32 10, i32 %channel
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = sext i8 %12 to i32
  %mul10.i = mul nsw i32 %conv9.i, 1000
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul10.i, ptr %val, align 4
  br label %return

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %alarm.i = getelementptr inbounds %struct.adt7470_data, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %alarm.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %alarm.i, align 2
  %conv12.i = zext i16 %15 to i32
  %and.i = and i32 %conv12.i, %channel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %lnot.ext.i, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i13 = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev) #9
  %cmp.i.i14 = icmp ugt ptr %call.i13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i14, label %if.then.i15, label %if.end.i16

if.then.i15:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call.i13 to i32
  br label %return

if.end.i16:                                       ; preds = %sw.bb1
  %18 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %attr, label %if.end.i16.return_crit_edge [
    i32 1, label %sw.bb.i18
    i32 3, label %sw.bb12.i
    i32 4, label %sw.bb29.i
    i32 8, label %sw.bb46.i
  ]

if.end.i16.return_crit_edge:                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i18:                                        ; preds = %if.end.i16
  %arrayidx.i17 = getelementptr %struct.adt7470_data, ptr %call.i13, i32 0, i32 11, i32 %channel
  %19 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i17, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %20, label %if.then7.i [
    i16 0, label %sw.bb.i18.if.else.i_crit_edge
    i16 -1, label %sw.bb.i18.if.else.i_crit_edge34
  ]

sw.bb.i18.if.else.i_crit_edge34:                  ; preds = %sw.bb.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

sw.bb.i18.if.else.i_crit_edge:                    ; preds = %sw.bb.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then7.i:                                       ; preds = %sw.bb.i18
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i19 = zext i16 %20 to i32
  %div.i = udiv i32 5400000, %conv.i19
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.i, ptr %val, align 4
  br label %return

if.else.i:                                        ; preds = %sw.bb.i18.if.else.i_crit_edge, %sw.bb.i18.if.else.i_crit_edge34
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  br label %return

sw.bb12.i:                                        ; preds = %if.end.i16
  %arrayidx13.i = getelementptr %struct.adt7470_data, ptr %call.i13, i32 0, i32 12, i32 %channel
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx13.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %25, label %if.then22.i [
    i16 0, label %sw.bb12.i.if.else27.i_crit_edge
    i16 -1, label %sw.bb12.i.if.else27.i_crit_edge35
  ]

sw.bb12.i.if.else27.i_crit_edge35:                ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i

sw.bb12.i.if.else27.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i

if.then22.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i = zext i16 %25 to i32
  %div26.i = udiv i32 5400000, %conv14.i
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div26.i, ptr %val, align 4
  br label %return

if.else27.i:                                      ; preds = %sw.bb12.i.if.else27.i_crit_edge, %sw.bb12.i.if.else27.i_crit_edge35
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val, align 4
  br label %return

sw.bb29.i:                                        ; preds = %if.end.i16
  %arrayidx30.i = getelementptr %struct.adt7470_data, ptr %call.i13, i32 0, i32 13, i32 %channel
  %29 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx30.i, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %30, label %if.then39.i [
    i16 0, label %sw.bb29.i.if.else44.i_crit_edge
    i16 -1, label %sw.bb29.i.if.else44.i_crit_edge36
  ]

sw.bb29.i.if.else44.i_crit_edge36:                ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

sw.bb29.i.if.else44.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

if.then39.i:                                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.i = zext i16 %30 to i32
  %div43.i = udiv i32 5400000, %conv31.i
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div43.i, ptr %val, align 4
  br label %return

if.else44.i:                                      ; preds = %sw.bb29.i.if.else44.i_crit_edge, %sw.bb29.i.if.else44.i_crit_edge36
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %val, align 4
  br label %return

sw.bb46.i:                                        ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  %alarm.i20 = getelementptr inbounds %struct.adt7470_data, ptr %call.i13, i32 0, i32 14
  %34 = ptrtoint ptr %alarm.i20 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %alarm.i20, align 2
  %conv47.i = zext i16 %35 to i32
  %add.i = add i32 %channel, 12
  %36 = lshr i32 %conv47.i, %add.i
  %37 = and i32 %36, 1
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %call.i22 = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev) #9
  %cmp.i.i23 = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i23, label %if.then.i24, label %if.end.i25

if.then.i24:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call.i22 to i32
  br label %return

if.end.i25:                                       ; preds = %sw.bb3
  %40 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %attr, label %if.end.i25.return_crit_edge [
    i32 0, label %sw.bb.i28
    i32 1, label %sw.bb3.i32
    i32 3, label %sw.bb6.i
  ]

if.end.i25.return_crit_edge:                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i28:                                        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i26 = getelementptr %struct.adt7470_data, ptr %call.i22, i32 0, i32 17, i32 %channel
  %41 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i26, align 1
  %conv.i27 = zext i8 %42 to i32
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i27, ptr %val, align 4
  br label %return

sw.bb3.i32:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4.i29 = getelementptr %struct.adt7470_data, ptr %call.i22, i32 0, i32 19, i32 %channel
  %44 = ptrtoint ptr %arrayidx4.i29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i29, align 1
  %conv5.i30 = zext i8 %45 to i32
  %add.i31 = add nuw nsw i32 %conv5.i30, 1
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i31, ptr %val, align 4
  br label %return

sw.bb6.i:                                         ; preds = %if.end.i25
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg_reg_1.i.i) #9
  %49 = ptrtoint ptr %cfg_reg_1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %cfg_reg_1.i.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg_reg_2.i.i) #9
  %50 = ptrtoint ptr %cfg_reg_2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %cfg_reg_2.i.i, align 4, !annotation !138
  %lock.i.i = getelementptr inbounds %struct.adt7470_data, ptr %48, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %52, i32 noundef 64, ptr noundef nonnull %cfg_reg_1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i15.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i15.i, label %sw.bb6.i.out.i.i_crit_edge, label %if.end.i.i

sw.bb6.i.out.i.i_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end.i.i:                                       ; preds = %sw.bb6.i
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %54, i32 noundef 116, ptr noundef nonnull %cfg_reg_2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock.i.i) #9
  %55 = ptrtoint ptr %cfg_reg_2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg_reg_2.i.i, align 4
  %and.i.i = lshr i32 %56, 4
  %shr.i.i = and i32 %and.i.i, 7
  %57 = ptrtoint ptr %cfg_reg_1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg_reg_1.i.i, align 4
  %and8.i.i = lshr i32 %58, 3
  %59 = and i32 %and8.i.i, 8
  %60 = or i32 %59, %shr.i.i
  %61 = xor i32 %60, 8
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 9) #9
  %arrayidx.i.i = getelementptr [10 x i32], ptr @adt7470_freq_map, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i, align 4
  br label %pwm1_freq_get.exit.i

out.i.i:                                          ; preds = %if.end.i.i.out.i.i_crit_edge, %sw.bb6.i.out.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call1.i.i, %sw.bb6.i.out.i.i_crit_edge ], [ %call3.i.i, %if.end.i.i.out.i.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i) #9
  br label %pwm1_freq_get.exit.i

pwm1_freq_get.exit.i:                             ; preds = %out.i.i, %if.end6.i.i
  %retval.0.i.i = phi i32 [ %err.0.i.i, %out.i.i ], [ %64, %if.end6.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg_reg_2.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg_reg_1.i.i) #9
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %pwm1_freq_get.exit.i, %sw.bb3.i32, %sw.bb.i28, %if.end.i25.return_crit_edge, %if.then.i24, %sw.bb46.i, %if.else44.i, %if.then39.i, %if.else27.i, %if.then22.i, %if.else.i, %if.then7.i, %if.end.i16.return_crit_edge, %if.then.i15, %sw.bb11.i, %sw.bb7.i, %sw.bb3.i, %sw.bb.i, %if.end.i.return_crit_edge, %if.then.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %1, %if.then.i ], [ -95, %if.end.i.return_crit_edge ], [ 0, %sw.bb11.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb.i ], [ %17, %if.then.i15 ], [ -95, %if.end.i16.return_crit_edge ], [ 0, %if.then39.i ], [ 0, %if.else44.i ], [ 0, %if.then22.i ], [ 0, %if.else27.i ], [ 0, %if.then7.i ], [ 0, %if.else.i ], [ 0, %sw.bb46.i ], [ %39, %if.then.i24 ], [ -95, %if.end.i25.return_crit_edge ], [ 0, %pwm1_freq_get.exit.i ], [ 0, %sw.bb3.i32 ], [ 0, %sw.bb.i28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7470_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %regval.i39.i = alloca [2 x i8], align 1
  %regval.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %val, i32 -128000) #9
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  %cond19.in.v.i = select i1 %cmp8.i, i32 500, i32 -500
  %cond19.in.i = add nsw i32 %cond19.in.v.i, %4
  %cond19.i = sdiv i32 %cond19.in.i, 1000
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 5, label %sw.bb.i
    i32 7, label %sw.bb24.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adt7470_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %conv20.i = trunc i32 %cond19.i to i8
  %arrayidx.i = getelementptr %struct.adt7470_data, ptr %2, i32 0, i32 9, i32 %channel
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv20.i, ptr %arrayidx.i, align 1
  br label %cleanup.sink.split.i

sw.bb24.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %lock25.i = getelementptr inbounds %struct.adt7470_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock25.i, i32 noundef 0) #9
  %conv26.i = trunc i32 %cond19.i to i8
  %arrayidx27.i = getelementptr %struct.adt7470_data, ptr %2, i32 0, i32 10, i32 %channel
  %7 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv26.i, ptr %arrayidx27.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb24.i, %sw.bb.i
  %.sink60.i = phi i32 [ 68, %sw.bb.i ], [ 69, %sw.bb24.i ]
  %lock.sink.i = phi ptr [ %lock.i, %sw.bb.i ], [ %lock25.i, %sw.bb24.i ]
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %mul.i = shl i32 %channel, 1
  %add21.i = add i32 %.sink60.i, %mul.i
  %call22.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add21.i, i32 noundef %cond19.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.sink.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i = icmp slt i32 %val, 1
  br i1 %cmp.i, label %sw.bb1.return_crit_edge, label %if.end.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %div44.i = udiv i32 5400000, %val
  %12 = tail call i32 @llvm.umax.i32(i32 %div44.i, i32 1) #9
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 65534) #9
  %14 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 3, label %sw.bb.i17
    i32 4, label %sw.bb10.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i17:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i14 = getelementptr inbounds %struct.adt7470_data, ptr %11, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i14, i32 noundef 0) #9
  %conv.i = trunc i32 %13 to i16
  %arrayidx.i15 = getelementptr %struct.adt7470_data, ptr %11, i32 0, i32 12, i32 %channel
  %15 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayidx.i15, align 2
  %mul.i16 = shl i32 %channel, 1
  %add.i = add i32 %mul.i16, 88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #9
  %16 = getelementptr inbounds [2 x i8], ptr %regval.i.i, i32 0, i32 1
  %conv.i.i = trunc i32 %13 to i8
  %17 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %regval.i.i, align 1
  %shr.i.i = lshr i32 %13, 8
  %conv1.i.i = trunc i32 %shr.i.i to i8
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1.i.i, ptr %16, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef %add.i, ptr noundef nonnull %regval.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  br label %cleanup.sink.split.i19

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock11.i = getelementptr inbounds %struct.adt7470_data, ptr %11, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock11.i, i32 noundef 0) #9
  %conv12.i = trunc i32 %13 to i16
  %arrayidx13.i = getelementptr %struct.adt7470_data, ptr %11, i32 0, i32 13, i32 %channel
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv12.i, ptr %arrayidx13.i, align 2
  %mul14.i = shl i32 %channel, 1
  %add15.i = add i32 %mul14.i, 96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i39.i) #9
  %22 = getelementptr inbounds [2 x i8], ptr %regval.i39.i, i32 0, i32 1
  %conv.i40.i = trunc i32 %13 to i8
  %23 = ptrtoint ptr %regval.i39.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i40.i, ptr %regval.i39.i, align 1
  %shr.i41.i = lshr i32 %13, 8
  %conv1.i42.i = trunc i32 %shr.i41.i to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i42.i, ptr %22, align 1
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 4
  %call.i43.i = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %add15.i, ptr noundef nonnull %regval.i39.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i39.i) #9
  br label %cleanup.sink.split.i19

cleanup.sink.split.i19:                           ; preds = %sw.bb10.i, %sw.bb.i17
  %lock.sink.i18 = phi ptr [ %lock.i14, %sw.bb.i17 ], [ %lock11.i, %sw.bb10.i ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %sw.bb.i17 ], [ %call.i43.i, %sw.bb10.i ]
  call void @mutex_unlock(ptr noundef %lock.sink.i18) #9
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i21 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i21, align 4
  %29 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 0, label %sw.bb.i26
    i32 1, label %sw.bb12.i
    i32 3, label %sw.bb31.i
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i26:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #9
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 255) #9
  %lock.i22 = getelementptr inbounds %struct.adt7470_data, ptr %28, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i22, i32 noundef 0) #9
  %conv.i23 = trunc i32 %31 to i8
  %arrayidx.i24 = getelementptr %struct.adt7470_data, ptr %28, i32 0, i32 17, i32 %channel
  %32 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i23, ptr %arrayidx.i24, align 1
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %add.i25 = add i32 %channel, 50
  %call10.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %add.i25, i32 noundef %31) #9
  br label %cleanup.sink.split.i31

sw.bb12.i:                                        ; preds = %sw.bb3
  %val.off.i = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val.off.i)
  %switch.i = icmp ult i32 %val.off.i, 2
  br i1 %switch.i, label %if.end18.i, label %sw.bb12.i.return_crit_edge

sw.bb12.i.return_crit_edge:                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end18.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = and i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  %..i = select i1 %tobool.not.i, i32 128, i32 64
  %lock19.i = getelementptr inbounds %struct.adt7470_data, ptr %28, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock19.i, i32 noundef 0) #9
  %conv20.i27 = trunc i32 %val.off.i to i8
  %arrayidx21.i = getelementptr %struct.adt7470_data, ptr %28, i32 0, i32 19, i32 %channel
  %36 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv20.i27, ptr %arrayidx21.i, align 1
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %28, align 4
  %div.i = sdiv i32 %channel, 2
  %add23.i = add nsw i32 %div.i, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.off.i)
  %tobool24.not.i = icmp eq i32 %val.off.i, 0
  %spec.select.i = select i1 %tobool24.not.i, i32 0, i32 %..i
  %call.i.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %add23.i, i32 noundef %..i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup.sink.split.i31

sw.bb31.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %val)
  %cmp12.not.i.i = icmp sgt i32 %val, 13
  br i1 %cmp12.not.i.i, label %for.cond.1.i.i, label %sw.bb31.i.for.end.i.i_crit_edge

sw.bb31.i.for.end.i.i_crit_edge:                  ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.1.i.i:                                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %val)
  %cmp12.not.1.i.i = icmp ugt i32 %val, 19
  br i1 %cmp12.not.1.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.for.end.i.i_crit_edge

for.cond.1.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %val)
  %cmp12.not.2.i.i = icmp ugt i32 %val, 26
  br i1 %cmp12.not.2.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.for.end.i.i_crit_edge

for.cond.2.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %val)
  %cmp12.not.3.i.i = icmp ugt i32 %val, 32
  br i1 %cmp12.not.3.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.for.end.i.i_crit_edge

for.cond.3.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %val)
  %cmp12.not.4.i.i = icmp ugt i32 %val, 40
  br i1 %cmp12.not.4.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.for.end.i.i_crit_edge

for.cond.4.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %val)
  %cmp12.not.5.i.i = icmp ugt i32 %val, 52
  br i1 %cmp12.not.5.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.for.end.i.i_crit_edge

for.cond.5.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %val)
  %cmp12.not.6.i.i = icmp ugt i32 %val, 74
  br i1 %cmp12.not.6.i.i, label %for.cond.7.i.i, label %for.cond.6.i.i.for.end.i.i_crit_edge

for.cond.6.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 744, i32 %val)
  %cmp12.not.7.i.i = icmp ugt i32 %val, 744
  br i1 %cmp12.not.7.i.i, label %for.cond.8.i.i, label %for.cond.7.i.i.for.end.i.i_crit_edge

for.cond.7.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11950, i32 %val)
  %cmp12.not.8.i.i = icmp ugt i32 %val, 11950
  %spec.select.i.i = select i1 %cmp12.not.8.i.i, i32 144, i32 128
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.8.i.i, %for.cond.7.i.i.for.end.i.i_crit_edge, %for.cond.6.i.i.for.end.i.i_crit_edge, %for.cond.5.i.i.for.end.i.i_crit_edge, %for.cond.4.i.i.for.end.i.i_crit_edge, %for.cond.3.i.i.for.end.i.i_crit_edge, %for.cond.2.i.i.for.end.i.i_crit_edge, %for.cond.1.i.i.for.end.i.i_crit_edge, %sw.bb31.i.for.end.i.i_crit_edge
  %__fc_i.0.lcssa50.i.i = phi i32 [ 0, %sw.bb31.i.for.end.i.i_crit_edge ], [ 16, %for.cond.1.i.i.for.end.i.i_crit_edge ], [ 32, %for.cond.2.i.i.for.end.i.i_crit_edge ], [ 48, %for.cond.3.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.4.i.i.for.end.i.i_crit_edge ], [ 80, %for.cond.5.i.i.for.end.i.i_crit_edge ], [ 96, %for.cond.6.i.i.for.end.i.i_crit_edge ], [ 112, %for.cond.7.i.i.for.end.i.i_crit_edge ], [ %spec.select.i.i, %for.cond.8.i.i ]
  %cmp1549.i.i = phi i1 [ false, %sw.bb31.i.for.end.i.i_crit_edge ], [ false, %for.cond.1.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.2.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.3.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.4.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.5.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.6.i.i.for.end.i.i_crit_edge ], [ false, %for.cond.7.i.i.for.end.i.i_crit_edge ], [ true, %for.cond.8.i.i ]
  %39 = phi i32 [ 64, %sw.bb31.i.for.end.i.i_crit_edge ], [ 64, %for.cond.1.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.2.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.3.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.4.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.5.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.6.i.i.for.end.i.i_crit_edge ], [ 64, %for.cond.7.i.i.for.end.i.i_crit_edge ], [ 0, %for.cond.8.i.i ]
  %lock.i.i = getelementptr inbounds %struct.adt7470_data, ptr %28, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %28, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 64, i32 noundef 64, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp21.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp21.i.i, label %for.end.i.i.cleanup.sink.split.i31_crit_edge, label %if.end24.i.i

for.end.i.i.cleanup.sink.split.i31_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i31

if.end24.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %28, align 4
  %44 = add nsw i32 %__fc_i.0.lcssa50.i.i, -128
  %shl.i.i = select i1 %cmp1549.i.i, i32 %44, i32 %__fc_i.0.lcssa50.i.i
  %call.i46.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 116, i32 noundef 112, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup.sink.split.i31

cleanup.sink.split.i31:                           ; preds = %if.end24.i.i, %for.end.i.i.cleanup.sink.split.i31_crit_edge, %if.end18.i, %sw.bb.i26
  %lock.sink.i29 = phi ptr [ %lock.i22, %sw.bb.i26 ], [ %lock19.i, %if.end18.i ], [ %lock.i.i, %for.end.i.i.cleanup.sink.split.i31_crit_edge ], [ %lock.i.i, %if.end24.i.i ]
  %retval.0.ph.i30 = phi i32 [ %call10.i, %sw.bb.i26 ], [ %call.i.i28, %if.end18.i ], [ %call.i.i.i, %for.end.i.i.cleanup.sink.split.i31_crit_edge ], [ %call.i46.i.i, %if.end24.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock.sink.i29) #9
  br label %return

return:                                           ; preds = %cleanup.sink.split.i31, %sw.bb12.i.return_crit_edge, %sw.bb3.return_crit_edge, %cleanup.sink.split.i19, %if.end.i.return_crit_edge, %sw.bb1.return_crit_edge, %cleanup.sink.split.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ %call22.i, %cleanup.sink.split.i ], [ -22, %sw.bb1.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i19 ], [ -22, %sw.bb12.i.return_crit_edge ], [ -95, %sw.bb3.return_crit_edge ], [ %retval.0.ph.i30, %cleanup.sink.split.i31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adt7470_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %regval.i119.i = alloca [2 x i8], align 1
  %regval.i.i65 = alloca [2 x i8], align 1
  %val.i66 = alloca i32, align 4
  %regval.i152.i = alloca [2 x i8], align 1
  %regval.i.i = alloca [2 x i8], align 1
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sensors_last_updated = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sensors_last_updated to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated, align 4
  %add.neg = add i32 %2, -500
  %sub = sub i32 %add.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sensors_valid = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %tobool10.not = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool.not, %land.lhs.true ]
  %limits_last_updated = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %limits_last_updated to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limits_last_updated, align 4
  %add1.neg = add i32 %2, -6000
  %sub2 = sub i32 %add1.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp3 = icmp slt i32 %sub2, 0
  br i1 %cmp3, label %if.end9, label %if.end14.thread

if.end9:                                          ; preds = %if.end
  %limits_valid = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %limits_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %limits_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp ne i8 %10, 0
  %11 = select i1 %tobool10.not, i1 %tobool7.not, i1 false
  br i1 %11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br i1 %tobool10.not, label %if.end24, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end14.thread:                                  ; preds = %if.end
  %lock115 = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock115, i32 noundef 0) #9
  br i1 %tobool10.not, label %if.end14.thread.if.then26_crit_edge, label %if.end14.thread.if.then16_crit_edge

if.end14.thread.if.then16_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end14.thread.if.then26_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then16:                                        ; preds = %if.end14.thread.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %lock121 = phi ptr [ %lock115, %if.end14.thread.if.then16_crit_edge ], [ %lock, %if.end14.if.then16_crit_edge ]
  %tobool12.not101117 = phi i1 [ false, %if.end14.thread.if.then16_crit_edge ], [ %tobool7.not, %if.end14.if.then16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %temperatures_probed.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %temperatures_probed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temperatures_probed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @adt7470_read_temperatures(ptr noundef %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %temp.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 8
  %call1.i = tail call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 32, ptr noundef %temp.i, i32 noundef 10) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %call1.i, %if.else.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp.i, label %if.end.i.adt7470_update_sensors.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %16 = getelementptr inbounds [2 x i8], ptr %regval.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #9
  %17 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %regval.i.i, align 1, !annotation !138
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %16, align 1, !annotation !138
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 42, ptr noundef nonnull %regval.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.cond.preheader.i.adt7470_read_word_data.exit.thread.i_crit_edge, label %if.end8.i

for.cond.preheader.i.adt7470_read_word_data.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i

adt7470_read_word_data.exit.thread.i:             ; preds = %if.end8.2.i.adt7470_read_word_data.exit.thread.i_crit_edge, %if.end8.1.i.adt7470_read_word_data.exit.thread.i_crit_edge, %if.end8.i.adt7470_read_word_data.exit.thread.i_crit_edge, %for.cond.preheader.i.adt7470_read_word_data.exit.thread.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %for.cond.preheader.i.adt7470_read_word_data.exit.thread.i_crit_edge ], [ %call.i.1.i, %if.end8.i.adt7470_read_word_data.exit.thread.i_crit_edge ], [ %call.i.2.i, %if.end8.1.i.adt7470_read_word_data.exit.thread.i_crit_edge ], [ %call.i.3.i, %if.end8.2.i.adt7470_read_word_data.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  br label %adt7470_update_sensors.exit.thread

if.end8.i:                                        ; preds = %for.cond.preheader.i
  %21 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regval.i.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %16, align 1
  %conv2.i.i = zext i8 %24 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  %conv.i = trunc i32 %or.i.i to i16
  %arrayidx9.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 11, i32 0
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %arrayidx9.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #9
  %27 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %regval.i.i, align 1, !annotation !138
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %16, align 1, !annotation !138
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.1.i = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 44, ptr noundef nonnull %regval.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.end8.i.adt7470_read_word_data.exit.thread.i_crit_edge, label %if.end8.1.i

if.end8.i.adt7470_read_word_data.exit.thread.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i

if.end8.1.i:                                      ; preds = %if.end8.i
  %31 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regval.i.i, align 1
  %conv.i.1.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %16, align 1
  %conv2.i.1.i = zext i8 %34 to i16
  %shl.i.1.i = shl nuw i16 %conv2.i.1.i, 8
  %or.i.1.i = or i16 %shl.i.1.i, %conv.i.1.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  %arrayidx9.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %or.i.1.i, ptr %arrayidx9.1.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #9
  %36 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %regval.i.i, align 1, !annotation !138
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %16, align 1, !annotation !138
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i.2.i = call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef 46, ptr noundef nonnull %regval.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.end8.1.i.adt7470_read_word_data.exit.thread.i_crit_edge, label %if.end8.2.i

if.end8.1.i.adt7470_read_word_data.exit.thread.i_crit_edge: ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i

if.end8.2.i:                                      ; preds = %if.end8.1.i
  %40 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %regval.i.i, align 1
  %conv.i.2.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %16, align 1
  %conv2.i.2.i = zext i8 %43 to i16
  %shl.i.2.i = shl nuw i16 %conv2.i.2.i, 8
  %or.i.2.i = or i16 %shl.i.2.i, %conv.i.2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  %arrayidx9.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 11, i32 2
  %44 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or.i.2.i, ptr %arrayidx9.2.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #9
  %45 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %regval.i.i, align 1, !annotation !138
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %16, align 1, !annotation !138
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i.3.i = call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef 48, ptr noundef nonnull %regval.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp.i.3.i, label %if.end8.2.i.adt7470_read_word_data.exit.thread.i_crit_edge, label %if.end8.3.i

if.end8.2.i.adt7470_read_word_data.exit.thread.i_crit_edge: ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i

if.end8.3.i:                                      ; preds = %if.end8.2.i
  %49 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %regval.i.i, align 1
  %conv.i.3.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %16, align 1
  %conv2.i.3.i = zext i8 %52 to i32
  %shl.i.3.i = shl nuw nsw i32 %conv2.i.3.i, 8
  %or.i.3.i = or i32 %shl.i.3.i, %conv.i.3.i
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.3.i, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #9
  %conv.3.i = trunc i32 %or.i.3.i to i16
  %arrayidx9.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 11, i32 3
  %54 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.3.i, ptr %arrayidx9.3.i, align 2
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %pwm.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 17
  %call12.i = call i32 @regmap_bulk_read(ptr noundef %56, i32 noundef 50, ptr noundef %pwm.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end8.3.i.adt7470_update_sensors.exit.thread_crit_edge, label %for.body20.i.preheader

if.end8.3.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

for.body20.i.preheader:                           ; preds = %if.end8.3.i
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call27.i = call i32 @regmap_read(ptr noundef %58, i32 noundef 104, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %for.body20.i.preheader.adt7470_update_sensors.exit.thread_crit_edge, label %if.end31.i

for.body20.i.preheader.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %for.body20.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end31.i:                                       ; preds = %for.body20.i.preheader
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i, align 4
  %61 = trunc i32 %60 to i8
  %62 = lshr i8 %61, 7
  %arrayidx35.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 19, i32 0
  %63 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx35.i, align 1
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call39.i = call i32 @regmap_read(ptr noundef %65, i32 noundef 124, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end31.i.adt7470_update_sensors.exit.thread_crit_edge, label %if.end43.i

if.end31.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end43.i:                                       ; preds = %if.end31.i
  %66 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %67, 4
  %conv47.i = trunc i32 %shr.i to i8
  %68 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 22, i32 0
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv47.i, ptr %68, align 1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call27.i.1 = call i32 @regmap_read(ptr noundef %71, i32 noundef 104, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.1)
  %cmp28.i.1 = icmp slt i32 %call27.i.1, 0
  br i1 %cmp28.i.1, label %if.end43.i.adt7470_update_sensors.exit.thread_crit_edge, label %if.end31.i.1

if.end43.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end31.i.1:                                     ; preds = %if.end43.i
  %72 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i, align 4
  %74 = trunc i32 %73 to i8
  %75 = lshr i8 %74, 6
  %76 = and i8 %75, 1
  %arrayidx35.i.1 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 19, i32 1
  %77 = ptrtoint ptr %arrayidx35.i.1 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx35.i.1, align 1
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call39.i.1 = call i32 @regmap_read(ptr noundef %79, i32 noundef 124, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.1)
  %cmp40.i.1 = icmp slt i32 %call39.i.1, 0
  br i1 %cmp40.i.1, label %if.end31.i.1.adt7470_update_sensors.exit.thread_crit_edge, label %if.end43.i.1

if.end31.i.1.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end31.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end43.i.1:                                     ; preds = %if.end31.i.1
  %80 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i, align 4
  %82 = trunc i32 %81 to i8
  %conv51.i.1 = and i8 %82, 15
  %83 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 22, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv51.i.1, ptr %83, align 1
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call27.i.2 = call i32 @regmap_read(ptr noundef %86, i32 noundef 105, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.2)
  %cmp28.i.2 = icmp slt i32 %call27.i.2, 0
  br i1 %cmp28.i.2, label %if.end43.i.1.adt7470_update_sensors.exit.thread_crit_edge, label %if.end31.i.2

if.end43.i.1.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end43.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end31.i.2:                                     ; preds = %if.end43.i.1
  %87 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i, align 4
  %89 = trunc i32 %88 to i8
  %90 = lshr i8 %89, 7
  %arrayidx35.i.2 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 19, i32 2
  %91 = ptrtoint ptr %arrayidx35.i.2 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx35.i.2, align 1
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call39.i.2 = call i32 @regmap_read(ptr noundef %93, i32 noundef 125, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.2)
  %cmp40.i.2 = icmp slt i32 %call39.i.2, 0
  br i1 %cmp40.i.2, label %if.end31.i.2.adt7470_update_sensors.exit.thread_crit_edge, label %if.end43.i.2

if.end31.i.2.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end31.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end43.i.2:                                     ; preds = %if.end31.i.2
  %94 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i, align 4
  %shr.i.2 = lshr i32 %95, 4
  %conv47.i.2 = trunc i32 %shr.i.2 to i8
  %96 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 22, i32 2
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv47.i.2, ptr %96, align 1
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call27.i.3 = call i32 @regmap_read(ptr noundef %99, i32 noundef 105, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.3)
  %cmp28.i.3 = icmp slt i32 %call27.i.3, 0
  br i1 %cmp28.i.3, label %if.end43.i.2.adt7470_update_sensors.exit.thread_crit_edge, label %if.end31.i.3

if.end43.i.2.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end43.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end31.i.3:                                     ; preds = %if.end43.i.2
  %100 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i, align 4
  %102 = trunc i32 %101 to i8
  %103 = lshr i8 %102, 6
  %104 = and i8 %103, 1
  %arrayidx35.i.3 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 19, i32 3
  %105 = ptrtoint ptr %arrayidx35.i.3 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx35.i.3, align 1
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call39.i.3 = call i32 @regmap_read(ptr noundef %107, i32 noundef 125, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.3)
  %cmp40.i.3 = icmp slt i32 %call39.i.3, 0
  br i1 %cmp40.i.3, label %if.end31.i.3.adt7470_update_sensors.exit.thread_crit_edge, label %if.end43.i.3

if.end31.i.3.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end31.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end43.i.3:                                     ; preds = %if.end31.i.3
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i, align 4
  %110 = trunc i32 %109 to i8
  %conv51.i.3 = and i8 %110, 15
  %111 = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 22, i32 3
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv51.i.3, ptr %111, align 1
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call59.i = call i32 @regmap_read(ptr noundef %114, i32 noundef 64, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end43.i.3.adt7470_update_sensors.exit.thread_crit_edge, label %if.end63.i

if.end43.i.3.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end43.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end63.i:                                       ; preds = %if.end43.i.3
  %115 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val.i, align 4
  %117 = trunc i32 %116 to i8
  %118 = lshr i8 %117, 2
  %119 = and i8 %118, 1
  %force_pwm_max.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 16
  %120 = ptrtoint ptr %force_pwm_max.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %force_pwm_max.i, align 2
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %call72.i = call i32 @regmap_read(ptr noundef %122, i32 noundef 65, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %if.end63.i.adt7470_update_sensors.exit.thread_crit_edge, label %if.end76.i

if.end63.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end76.i:                                       ; preds = %if.end63.i
  %123 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i, align 4
  %conv77.i = trunc i32 %124 to i16
  %alarm.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 14
  %125 = ptrtoint ptr %alarm.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv77.i, ptr %alarm.i, align 2
  %and80.i = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end76.i.if.end92.i_crit_edge, label %if.then82.i

if.end76.i.if.end92.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

if.then82.i:                                      ; preds = %if.end76.i
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call84.i = call i32 @regmap_read(ptr noundef %127, i32 noundef 66, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp slt i32 %call84.i, 0
  br i1 %cmp85.i, label %if.then82.i.adt7470_update_sensors.exit.thread_crit_edge, label %if.end88.i

if.then82.i.adt7470_update_sensors.exit.thread_crit_edge: ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_sensors.exit.thread

if.end88.i:                                       ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i, align 4
  %130 = ptrtoint ptr %alarm.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %alarm.i, align 2
  %.tr.i = trunc i32 %129 to i16
  %132 = shl i16 %.tr.i, 8
  %conv91.i = or i16 %132, %131
  store i16 %conv91.i, ptr %alarm.i, align 2
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end88.i, %if.end76.i.if.end92.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i152.i) #9
  %133 = ptrtoint ptr %regval.i152.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %regval.i152.i, align 1, !annotation !138
  %134 = getelementptr inbounds [2 x i8], ptr %regval.i152.i, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %134, align 1, !annotation !138
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %call.i153.i = call i32 @regmap_bulk_read(ptr noundef %137, i32 noundef 114, ptr noundef nonnull %regval.i152.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %cmp.i154.i = icmp slt i32 %call.i153.i, 0
  br i1 %cmp.i154.i, label %adt7470_read_word_data.exit161.thread.i, label %if.end24.thread

adt7470_read_word_data.exit161.thread.i:          ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i152.i) #9
  br label %adt7470_update_sensors.exit.thread

adt7470_update_sensors.exit.thread:               ; preds = %adt7470_read_word_data.exit161.thread.i, %if.then82.i.adt7470_update_sensors.exit.thread_crit_edge, %if.end63.i.adt7470_update_sensors.exit.thread_crit_edge, %if.end43.i.3.adt7470_update_sensors.exit.thread_crit_edge, %if.end31.i.3.adt7470_update_sensors.exit.thread_crit_edge, %if.end43.i.2.adt7470_update_sensors.exit.thread_crit_edge, %if.end31.i.2.adt7470_update_sensors.exit.thread_crit_edge, %if.end43.i.1.adt7470_update_sensors.exit.thread_crit_edge, %if.end31.i.1.adt7470_update_sensors.exit.thread_crit_edge, %if.end43.i.adt7470_update_sensors.exit.thread_crit_edge, %if.end31.i.adt7470_update_sensors.exit.thread_crit_edge, %for.body20.i.preheader.adt7470_update_sensors.exit.thread_crit_edge, %if.end8.3.i.adt7470_update_sensors.exit.thread_crit_edge, %adt7470_read_word_data.exit.thread.i, %if.end.i.adt7470_update_sensors.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ %call.i153.i, %adt7470_read_word_data.exit161.thread.i ], [ %call.i.lcssa.i, %adt7470_read_word_data.exit.thread.i ], [ %call84.i, %if.then82.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %call72.i, %if.end63.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %call59.i, %if.end43.i.3.adt7470_update_sensors.exit.thread_crit_edge ], [ %call12.i, %if.end8.3.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %err.0.i, %if.end.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %call27.i, %for.body20.i.preheader.adt7470_update_sensors.exit.thread_crit_edge ], [ %call39.i, %if.end31.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %call27.i.1, %if.end43.i.adt7470_update_sensors.exit.thread_crit_edge ], [ %call39.i.1, %if.end31.i.1.adt7470_update_sensors.exit.thread_crit_edge ], [ %call27.i.2, %if.end43.i.1.adt7470_update_sensors.exit.thread_crit_edge ], [ %call39.i.2, %if.end31.i.2.adt7470_update_sensors.exit.thread_crit_edge ], [ %call27.i.3, %if.end43.i.2.adt7470_update_sensors.exit.thread_crit_edge ], [ %call39.i.3, %if.end31.i.3.adt7470_update_sensors.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cond.true

if.end24:                                         ; preds = %if.end14
  br i1 %tobool7.not, label %if.end24.cond.true_crit_edge, label %if.end24.if.then26_crit_edge

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end24.cond.true_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.end24.thread:                                  ; preds = %if.end92.i
  %138 = ptrtoint ptr %regval.i152.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %regval.i152.i, align 1
  %conv.i155.i = zext i8 %139 to i16
  %140 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %134, align 1
  %conv2.i156.i = zext i8 %141 to i16
  %shl.i157.i = shl nuw i16 %conv2.i156.i, 8
  %or.i158.i = or i16 %shl.i157.i, %conv.i155.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i152.i) #9
  %alarms_mask.i = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 15
  %142 = ptrtoint ptr %alarms_mask.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %or.i158.i, ptr %alarms_mask.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %143 = ptrtoint ptr %sensors_last_updated to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %2, ptr %sensors_last_updated, align 4
  %sensors_valid23 = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 2
  %144 = ptrtoint ptr %sensors_valid23 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %sensors_valid23, align 4
  br i1 %tobool12.not101117, label %out.thread113, label %if.end24.thread.if.then26_crit_edge

if.end24.thread.if.then26_crit_edge:              ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

out.thread113:                                    ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock121) #9
  br label %cleanup

if.then26:                                        ; preds = %if.end24.thread.if.then26_crit_edge, %if.end24.if.then26_crit_edge, %if.end14.thread.if.then26_crit_edge
  %lock120 = phi ptr [ %lock121, %if.end24.thread.if.then26_crit_edge ], [ %lock, %if.end24.if.then26_crit_edge ], [ %lock115, %if.end14.thread.if.then26_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i66) #9
  %145 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %val.i66, align 4, !annotation !138
  br label %for.body.i

for.cond13.preheader.i:                           ; preds = %if.end10.i
  %146 = getelementptr inbounds [2 x i8], ptr %regval.i.i65, i32 0, i32 1
  %147 = getelementptr inbounds [2 x i8], ptr %regval.i119.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %148 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -1, ptr %regval.i.i65, align 1, !annotation !138
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -1, ptr %146, align 1, !annotation !138
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %call.i.i67 = call i32 @regmap_bulk_read(ptr noundef %151, i32 noundef 88, ptr noundef nonnull %regval.i.i65, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i.i68, label %for.cond13.preheader.i.adt7470_read_word_data.exit.thread.i74_crit_edge, label %if.end23.i

for.cond13.preheader.i.adt7470_read_word_data.exit.thread.i74_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i74

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.then26
  %i.0136.i = phi i32 [ 0, %if.then26 ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %mul.i = shl nuw i32 %i.0136.i, 1
  %add.i = add nuw nsw i32 %mul.i, 68
  %call.i69 = call i32 @regmap_read(ptr noundef %153, i32 noundef %add.i, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp1.i = icmp slt i32 %call.i69, 0
  br i1 %cmp1.i, label %for.body.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end.i71

for.body.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end.i71:                                       ; preds = %for.body.i
  %154 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val.i66, align 4
  %conv.i70 = trunc i32 %155 to i8
  %arrayidx.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 9, i32 %i.0136.i
  %156 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv.i70, ptr %arrayidx.i, align 1
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %add5.i = add nuw nsw i32 %mul.i, 69
  %call6.i = call i32 @regmap_read(ptr noundef %158, i32 noundef %add5.i, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i71.adt7470_update_limits.exit.thread_crit_edge, label %if.end10.i

if.end.i71.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end10.i:                                       ; preds = %if.end.i71
  %159 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %val.i66, align 4
  %conv11.i = trunc i32 %160 to i8
  %arrayidx12.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 10, i32 %i.0136.i
  %161 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %inc.i = add nuw nsw i32 %i.0136.i, 1
  %exitcond.not.i72 = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i72, label %for.cond13.preheader.i, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

adt7470_read_word_data.exit.thread.i74:           ; preds = %if.end32.2.i.adt7470_read_word_data.exit.thread.i74_crit_edge, %if.end32.1.i.adt7470_read_word_data.exit.thread.i74_crit_edge, %if.end32.i.adt7470_read_word_data.exit.thread.i74_crit_edge, %for.cond13.preheader.i.adt7470_read_word_data.exit.thread.i74_crit_edge
  %call.i.lcssa.i73 = phi i32 [ %call.i.i67, %for.cond13.preheader.i.adt7470_read_word_data.exit.thread.i74_crit_edge ], [ %call.i.1.i79, %if.end32.i.adt7470_read_word_data.exit.thread.i74_crit_edge ], [ %call.i.2.i85, %if.end32.1.i.adt7470_read_word_data.exit.thread.i74_crit_edge ], [ %call.i.3.i91, %if.end32.2.i.adt7470_read_word_data.exit.thread.i74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i65) #9
  br label %adt7470_update_limits.exit.thread

if.end23.i:                                       ; preds = %for.cond13.preheader.i
  %162 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %regval.i.i65, align 1
  %conv.i.i75 = zext i8 %163 to i32
  %164 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %146, align 1
  %conv2.i.i76 = zext i8 %165 to i32
  %shl.i.i77 = shl nuw nsw i32 %conv2.i.i76, 8
  %or.i.i78 = or i32 %shl.i.i77, %conv.i.i75
  %166 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or.i.i78, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %conv24.i = trunc i32 %or.i.i78 to i16
  %arrayidx25.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 12, i32 0
  %167 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv24.i, ptr %arrayidx25.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %168 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %regval.i119.i, align 1, !annotation !138
  %169 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -1, ptr %147, align 1, !annotation !138
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %call.i120.i = call i32 @regmap_bulk_read(ptr noundef %171, i32 noundef 96, ptr noundef nonnull %regval.i119.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp.i121.i = icmp slt i32 %call.i120.i, 0
  br i1 %cmp.i121.i, label %if.end23.i.adt7470_read_word_data.exit128.thread.i_crit_edge, label %if.end32.i

if.end23.i.adt7470_read_word_data.exit128.thread.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit128.thread.i

adt7470_read_word_data.exit128.thread.i:          ; preds = %if.end23.3.i.adt7470_read_word_data.exit128.thread.i_crit_edge, %if.end23.2.i.adt7470_read_word_data.exit128.thread.i_crit_edge, %if.end23.1.i.adt7470_read_word_data.exit128.thread.i_crit_edge, %if.end23.i.adt7470_read_word_data.exit128.thread.i_crit_edge
  %call.i120.lcssa.i = phi i32 [ %call.i120.i, %if.end23.i.adt7470_read_word_data.exit128.thread.i_crit_edge ], [ %call.i120.1.i, %if.end23.1.i.adt7470_read_word_data.exit128.thread.i_crit_edge ], [ %call.i120.2.i, %if.end23.2.i.adt7470_read_word_data.exit128.thread.i_crit_edge ], [ %call.i120.3.i, %if.end23.3.i.adt7470_read_word_data.exit128.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i119.i) #9
  br label %adt7470_update_limits.exit.thread

if.end32.i:                                       ; preds = %if.end23.i
  %172 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %regval.i119.i, align 1
  %conv.i122.i = zext i8 %173 to i32
  %174 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %147, align 1
  %conv2.i123.i = zext i8 %175 to i32
  %shl.i124.i = shl nuw nsw i32 %conv2.i123.i, 8
  %or.i125.i = or i32 %shl.i124.i, %conv.i122.i
  %176 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i125.i, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %conv33.i = trunc i32 %or.i125.i to i16
  %arrayidx34.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 13, i32 0
  %177 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv33.i, ptr %arrayidx34.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %178 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %regval.i.i65, align 1, !annotation !138
  %179 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -1, ptr %146, align 1, !annotation !138
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  %call.i.1.i79 = call i32 @regmap_bulk_read(ptr noundef %181, i32 noundef 90, ptr noundef nonnull %regval.i.i65, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i79)
  %cmp.i.1.i80 = icmp slt i32 %call.i.1.i79, 0
  br i1 %cmp.i.1.i80, label %if.end32.i.adt7470_read_word_data.exit.thread.i74_crit_edge, label %if.end23.1.i

if.end32.i.adt7470_read_word_data.exit.thread.i74_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i74

if.end23.1.i:                                     ; preds = %if.end32.i
  %182 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %regval.i.i65, align 1
  %conv.i.1.i81 = zext i8 %183 to i32
  %184 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %146, align 1
  %conv2.i.1.i82 = zext i8 %185 to i32
  %shl.i.1.i83 = shl nuw nsw i32 %conv2.i.1.i82, 8
  %or.i.1.i84 = or i32 %shl.i.1.i83, %conv.i.1.i81
  %186 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or.i.1.i84, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %conv24.1.i = trunc i32 %or.i.1.i84 to i16
  %arrayidx25.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 12, i32 1
  %187 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv24.1.i, ptr %arrayidx25.1.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %188 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -1, ptr %regval.i119.i, align 1, !annotation !138
  %189 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -1, ptr %147, align 1, !annotation !138
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %call.i120.1.i = call i32 @regmap_bulk_read(ptr noundef %191, i32 noundef 98, ptr noundef nonnull %regval.i119.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.1.i)
  %cmp.i121.1.i = icmp slt i32 %call.i120.1.i, 0
  br i1 %cmp.i121.1.i, label %if.end23.1.i.adt7470_read_word_data.exit128.thread.i_crit_edge, label %if.end32.1.i

if.end23.1.i.adt7470_read_word_data.exit128.thread.i_crit_edge: ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit128.thread.i

if.end32.1.i:                                     ; preds = %if.end23.1.i
  %192 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %regval.i119.i, align 1
  %conv.i122.1.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %147, align 1
  %conv2.i123.1.i = zext i8 %195 to i32
  %shl.i124.1.i = shl nuw nsw i32 %conv2.i123.1.i, 8
  %or.i125.1.i = or i32 %shl.i124.1.i, %conv.i122.1.i
  %196 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or.i125.1.i, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %conv33.1.i = trunc i32 %or.i125.1.i to i16
  %arrayidx34.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 13, i32 1
  %197 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv33.1.i, ptr %arrayidx34.1.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %198 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -1, ptr %regval.i.i65, align 1, !annotation !138
  %199 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -1, ptr %146, align 1, !annotation !138
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %call.i.2.i85 = call i32 @regmap_bulk_read(ptr noundef %201, i32 noundef 92, ptr noundef nonnull %regval.i.i65, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i85)
  %cmp.i.2.i86 = icmp slt i32 %call.i.2.i85, 0
  br i1 %cmp.i.2.i86, label %if.end32.1.i.adt7470_read_word_data.exit.thread.i74_crit_edge, label %if.end23.2.i

if.end32.1.i.adt7470_read_word_data.exit.thread.i74_crit_edge: ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i74

if.end23.2.i:                                     ; preds = %if.end32.1.i
  %202 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %regval.i.i65, align 1
  %conv.i.2.i87 = zext i8 %203 to i32
  %204 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %146, align 1
  %conv2.i.2.i88 = zext i8 %205 to i32
  %shl.i.2.i89 = shl nuw nsw i32 %conv2.i.2.i88, 8
  %or.i.2.i90 = or i32 %shl.i.2.i89, %conv.i.2.i87
  %206 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or.i.2.i90, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %conv24.2.i = trunc i32 %or.i.2.i90 to i16
  %arrayidx25.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 12, i32 2
  %207 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv24.2.i, ptr %arrayidx25.2.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %208 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 -1, ptr %regval.i119.i, align 1, !annotation !138
  %209 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -1, ptr %147, align 1, !annotation !138
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %call.i120.2.i = call i32 @regmap_bulk_read(ptr noundef %211, i32 noundef 100, ptr noundef nonnull %regval.i119.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.2.i)
  %cmp.i121.2.i = icmp slt i32 %call.i120.2.i, 0
  br i1 %cmp.i121.2.i, label %if.end23.2.i.adt7470_read_word_data.exit128.thread.i_crit_edge, label %if.end32.2.i

if.end23.2.i.adt7470_read_word_data.exit128.thread.i_crit_edge: ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit128.thread.i

if.end32.2.i:                                     ; preds = %if.end23.2.i
  %212 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %regval.i119.i, align 1
  %conv.i122.2.i = zext i8 %213 to i32
  %214 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %147, align 1
  %conv2.i123.2.i = zext i8 %215 to i32
  %shl.i124.2.i = shl nuw nsw i32 %conv2.i123.2.i, 8
  %or.i125.2.i = or i32 %shl.i124.2.i, %conv.i122.2.i
  %216 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or.i125.2.i, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %conv33.2.i = trunc i32 %or.i125.2.i to i16
  %arrayidx34.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 13, i32 2
  %217 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv33.2.i, ptr %arrayidx34.2.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %218 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %regval.i.i65, align 1, !annotation !138
  %219 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -1, ptr %146, align 1, !annotation !138
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %call.i.3.i91 = call i32 @regmap_bulk_read(ptr noundef %221, i32 noundef 94, ptr noundef nonnull %regval.i.i65, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i91)
  %cmp.i.3.i92 = icmp slt i32 %call.i.3.i91, 0
  br i1 %cmp.i.3.i92, label %if.end32.2.i.adt7470_read_word_data.exit.thread.i74_crit_edge, label %if.end23.3.i

if.end32.2.i.adt7470_read_word_data.exit.thread.i74_crit_edge: ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit.thread.i74

if.end23.3.i:                                     ; preds = %if.end32.2.i
  %222 = ptrtoint ptr %regval.i.i65 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %regval.i.i65, align 1
  %conv.i.3.i93 = zext i8 %223 to i32
  %224 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %146, align 1
  %conv2.i.3.i94 = zext i8 %225 to i32
  %shl.i.3.i95 = shl nuw nsw i32 %conv2.i.3.i94, 8
  %or.i.3.i96 = or i32 %shl.i.3.i95, %conv.i.3.i93
  %226 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or.i.3.i96, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i65) #9
  %conv24.3.i = trunc i32 %or.i.3.i96 to i16
  %arrayidx25.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 12, i32 3
  %227 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv24.3.i, ptr %arrayidx25.3.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %228 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -1, ptr %regval.i119.i, align 1, !annotation !138
  %229 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 -1, ptr %147, align 1, !annotation !138
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 4
  %call.i120.3.i = call i32 @regmap_bulk_read(ptr noundef %231, i32 noundef 102, ptr noundef nonnull %regval.i119.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.3.i)
  %cmp.i121.3.i = icmp slt i32 %call.i120.3.i, 0
  br i1 %cmp.i121.3.i, label %if.end23.3.i.adt7470_read_word_data.exit128.thread.i_crit_edge, label %if.end32.3.i

if.end23.3.i.adt7470_read_word_data.exit128.thread.i_crit_edge: ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_read_word_data.exit128.thread.i

if.end32.3.i:                                     ; preds = %if.end23.3.i
  %232 = ptrtoint ptr %regval.i119.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %regval.i119.i, align 1
  %conv.i122.3.i = zext i8 %233 to i32
  %234 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %147, align 1
  %conv2.i123.3.i = zext i8 %235 to i32
  %shl.i124.3.i = shl nuw nsw i32 %conv2.i123.3.i, 8
  %or.i125.3.i = or i32 %shl.i124.3.i, %conv.i122.3.i
  %236 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %or.i125.3.i, ptr %val.i66, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i119.i) #9
  %conv33.3.i = trunc i32 %or.i125.3.i to i16
  %arrayidx34.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 13, i32 3
  %237 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv33.3.i, ptr %arrayidx34.3.i, align 2
  %238 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %1, align 4
  %call44.i = call i32 @regmap_read(ptr noundef %239, i32 noundef 56, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end32.3.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end48.i

if.end32.3.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end32.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end48.i:                                       ; preds = %if.end32.3.i
  %240 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %val.i66, align 4
  %conv49.i = trunc i32 %241 to i8
  %arrayidx50.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 18, i32 0
  %242 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv49.i, ptr %arrayidx50.i, align 1
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  %call53.i = call i32 @regmap_read(ptr noundef %244, i32 noundef 106, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.end48.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end57.i

if.end48.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end57.i:                                       ; preds = %if.end48.i
  %245 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %val.i66, align 4
  %conv58.i = trunc i32 %246 to i8
  %arrayidx59.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 20, i32 0
  %247 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv58.i, ptr %arrayidx59.i, align 1
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %call62.i = call i32 @regmap_read(ptr noundef %249, i32 noundef 110, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %if.end57.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end66.i

if.end57.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end66.i:                                       ; preds = %if.end57.i
  %250 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %val.i66, align 4
  %conv67.i = trunc i32 %251 to i8
  %arrayidx68.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 21, i32 0
  %252 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv67.i, ptr %arrayidx68.i, align 1
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 4
  %call44.1.i = call i32 @regmap_read(ptr noundef %254, i32 noundef 57, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1.i)
  %cmp45.1.i = icmp slt i32 %call44.1.i, 0
  br i1 %cmp45.1.i, label %if.end66.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end48.1.i

if.end66.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end48.1.i:                                     ; preds = %if.end66.i
  %255 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %val.i66, align 4
  %conv49.1.i = trunc i32 %256 to i8
  %arrayidx50.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 18, i32 1
  %257 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv49.1.i, ptr %arrayidx50.1.i, align 1
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %call53.1.i = call i32 @regmap_read(ptr noundef %259, i32 noundef 107, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1.i)
  %cmp54.1.i = icmp slt i32 %call53.1.i, 0
  br i1 %cmp54.1.i, label %if.end48.1.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end57.1.i

if.end48.1.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end48.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end57.1.i:                                     ; preds = %if.end48.1.i
  %260 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %val.i66, align 4
  %conv58.1.i = trunc i32 %261 to i8
  %arrayidx59.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 20, i32 1
  %262 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv58.1.i, ptr %arrayidx59.1.i, align 1
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %1, align 4
  %call62.1.i = call i32 @regmap_read(ptr noundef %264, i32 noundef 111, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.1.i)
  %cmp63.1.i = icmp slt i32 %call62.1.i, 0
  br i1 %cmp63.1.i, label %if.end57.1.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end66.1.i

if.end57.1.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end57.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end66.1.i:                                     ; preds = %if.end57.1.i
  %265 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %val.i66, align 4
  %conv67.1.i = trunc i32 %266 to i8
  %arrayidx68.1.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 21, i32 1
  %267 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv67.1.i, ptr %arrayidx68.1.i, align 1
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %call44.2.i = call i32 @regmap_read(ptr noundef %269, i32 noundef 58, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2.i)
  %cmp45.2.i = icmp slt i32 %call44.2.i, 0
  br i1 %cmp45.2.i, label %if.end66.1.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end48.2.i

if.end66.1.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end66.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end48.2.i:                                     ; preds = %if.end66.1.i
  %270 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %val.i66, align 4
  %conv49.2.i = trunc i32 %271 to i8
  %arrayidx50.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 18, i32 2
  %272 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv49.2.i, ptr %arrayidx50.2.i, align 1
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 4
  %call53.2.i = call i32 @regmap_read(ptr noundef %274, i32 noundef 108, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.2.i)
  %cmp54.2.i = icmp slt i32 %call53.2.i, 0
  br i1 %cmp54.2.i, label %if.end48.2.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end57.2.i

if.end48.2.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end48.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end57.2.i:                                     ; preds = %if.end48.2.i
  %275 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %val.i66, align 4
  %conv58.2.i = trunc i32 %276 to i8
  %arrayidx59.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 20, i32 2
  %277 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv58.2.i, ptr %arrayidx59.2.i, align 1
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %call62.2.i = call i32 @regmap_read(ptr noundef %279, i32 noundef 112, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.2.i)
  %cmp63.2.i = icmp slt i32 %call62.2.i, 0
  br i1 %cmp63.2.i, label %if.end57.2.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end66.2.i

if.end57.2.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end57.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end66.2.i:                                     ; preds = %if.end57.2.i
  %280 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %val.i66, align 4
  %conv67.2.i = trunc i32 %281 to i8
  %arrayidx68.2.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 21, i32 2
  %282 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv67.2.i, ptr %arrayidx68.2.i, align 1
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %1, align 4
  %call44.3.i = call i32 @regmap_read(ptr noundef %284, i32 noundef 59, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.3.i)
  %cmp45.3.i = icmp slt i32 %call44.3.i, 0
  br i1 %cmp45.3.i, label %if.end66.2.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end48.3.i

if.end66.2.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end66.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end48.3.i:                                     ; preds = %if.end66.2.i
  %285 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %val.i66, align 4
  %conv49.3.i = trunc i32 %286 to i8
  %arrayidx50.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 18, i32 3
  %287 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv49.3.i, ptr %arrayidx50.3.i, align 1
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %1, align 4
  %call53.3.i = call i32 @regmap_read(ptr noundef %289, i32 noundef 109, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.3.i)
  %cmp54.3.i = icmp slt i32 %call53.3.i, 0
  br i1 %cmp54.3.i, label %if.end48.3.i.adt7470_update_limits.exit.thread_crit_edge, label %if.end57.3.i

if.end48.3.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end48.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

if.end57.3.i:                                     ; preds = %if.end48.3.i
  %290 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %val.i66, align 4
  %conv58.3.i = trunc i32 %291 to i8
  %arrayidx59.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 20, i32 3
  %292 = ptrtoint ptr %arrayidx59.3.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv58.3.i, ptr %arrayidx59.3.i, align 1
  %293 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %1, align 4
  %call62.3.i = call i32 @regmap_read(ptr noundef %294, i32 noundef 113, ptr noundef nonnull %val.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.3.i)
  %cmp63.3.i = icmp slt i32 %call62.3.i, 0
  br i1 %cmp63.3.i, label %if.end57.3.i.adt7470_update_limits.exit.thread_crit_edge, label %out.thread109

if.end57.3.i.adt7470_update_limits.exit.thread_crit_edge: ; preds = %if.end57.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7470_update_limits.exit.thread

adt7470_update_limits.exit.thread:                ; preds = %if.end57.3.i.adt7470_update_limits.exit.thread_crit_edge, %if.end48.3.i.adt7470_update_limits.exit.thread_crit_edge, %if.end66.2.i.adt7470_update_limits.exit.thread_crit_edge, %if.end57.2.i.adt7470_update_limits.exit.thread_crit_edge, %if.end48.2.i.adt7470_update_limits.exit.thread_crit_edge, %if.end66.1.i.adt7470_update_limits.exit.thread_crit_edge, %if.end57.1.i.adt7470_update_limits.exit.thread_crit_edge, %if.end48.1.i.adt7470_update_limits.exit.thread_crit_edge, %if.end66.i.adt7470_update_limits.exit.thread_crit_edge, %if.end57.i.adt7470_update_limits.exit.thread_crit_edge, %if.end48.i.adt7470_update_limits.exit.thread_crit_edge, %if.end32.3.i.adt7470_update_limits.exit.thread_crit_edge, %adt7470_read_word_data.exit128.thread.i, %adt7470_read_word_data.exit.thread.i74, %if.end.i71.adt7470_update_limits.exit.thread_crit_edge, %for.body.i.adt7470_update_limits.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call62.3.i, %if.end57.3.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call53.3.i, %if.end48.3.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call44.3.i, %if.end66.2.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call62.2.i, %if.end57.2.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call53.2.i, %if.end48.2.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call44.2.i, %if.end66.1.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call62.1.i, %if.end57.1.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call53.1.i, %if.end48.1.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call44.1.i, %if.end66.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call62.i, %if.end57.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call53.i, %if.end48.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call44.i, %if.end32.3.i.adt7470_update_limits.exit.thread_crit_edge ], [ %call.i120.lcssa.i, %adt7470_read_word_data.exit128.thread.i ], [ %call.i.lcssa.i73, %adt7470_read_word_data.exit.thread.i74 ], [ %call6.i, %if.end.i71.adt7470_update_limits.exit.thread_crit_edge ], [ %call.i69, %for.body.i.adt7470_update_limits.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i66) #9
  br label %cond.true

out.thread109:                                    ; preds = %if.end57.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %295 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %val.i66, align 4
  %conv67.3.i = trunc i32 %296 to i8
  %arrayidx68.3.i = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 21, i32 3
  %297 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv67.3.i, ptr %arrayidx68.3.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i66) #9
  %298 = ptrtoint ptr %limits_last_updated to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %2, ptr %limits_last_updated, align 4
  %limits_valid33 = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 3
  %299 = ptrtoint ptr %limits_valid33 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %limits_valid33, align 1
  call void @mutex_unlock(ptr noundef %lock120) #9
  br label %cleanup

cond.true:                                        ; preds = %adt7470_update_limits.exit.thread, %if.end24.cond.true_crit_edge, %adt7470_update_sensors.exit.thread
  %lock.sink = phi ptr [ %lock120, %adt7470_update_limits.exit.thread ], [ %lock121, %adt7470_update_sensors.exit.thread ], [ %lock, %if.end24.cond.true_crit_edge ]
  %err.1108 = phi i32 [ %retval.0.i.ph, %adt7470_update_limits.exit.thread ], [ %retval.2.i.ph, %adt7470_update_sensors.exit.thread ], [ -1, %if.end24.cond.true_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.sink) #9
  %300 = inttoptr i32 %err.1108 to ptr
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %out.thread109, %out.thread113, %if.end9.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end9.cleanup_crit_edge ], [ %300, %cond.true ], [ %1, %out.thread109 ], [ %1, %out.thread113 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adt7470_read_temperatures(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %pwm_cfg = alloca [2 x i32], align 4
  %pwm = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pwm_cfg) #9
  %0 = ptrtoint ptr %pwm_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwm_cfg, align 4, !annotation !138
  %1 = getelementptr inbounds [2 x i32], ptr %pwm_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm) #9
  %3 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pwm, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %pwm_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 105, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call9 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 50, ptr noundef nonnull %pwm, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 104, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i118 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 105, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp20 = icmp slt i32 %call.i118, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call25 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 50, ptr noundef nonnull %pwm, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i119 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 64, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp31 = icmp slt i32 %call.i119, 0
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %num_temp_sensors = getelementptr inbounds %struct.adt7470_data, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_temp_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp34 = icmp sgt i32 %19, -1
  %mul = mul i32 %19, 200
  %spec.select = select i1 %cmp34, i32 %mul, i32 2000
  %call36 = call i32 @msleep_interruptible(i32 noundef %spec.select) #9
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call.i120 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 64, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp39 = icmp slt i32 %call.i120, 0
  br i1 %cmp39, label %if.end33.cleanup_crit_edge, label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %pwm_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pwm_cfg, align 4
  %call44 = call i32 @regmap_write(ptr noundef %23, i32 noundef 104, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %call50 = call i32 @regmap_write(ptr noundef %27, i32 noundef 105, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end47.cleanup_crit_edge, label %if.end53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %if.end55, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end53
  %30 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_temp_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp57 = icmp sgt i32 %31, -1
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %temp = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8
  %call62 = call i32 @regmap_bulk_read(ptr noundef %33, i32 noundef 32, ptr noundef %temp, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end59.cleanup_crit_edge, label %for.body.preheader

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end59
  %34 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool69.not = icmp eq i8 %35, 0
  br i1 %tobool69.not, label %for.body.preheader.for.inc_crit_edge, label %if.then70

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then70:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %num_temp_sensors, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then70, %for.body.preheader.for.inc_crit_edge
  %arrayidx68.1 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx68.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool69.not.1 = icmp eq i8 %38, 0
  br i1 %tobool69.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then70.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then70.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %num_temp_sensors, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then70.1, %for.inc.for.inc.1_crit_edge
  %arrayidx68.2 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx68.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool69.not.2 = icmp eq i8 %41, 0
  br i1 %tobool69.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then70.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then70.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %num_temp_sensors, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then70.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx68.3 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 3
  %43 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx68.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool69.not.3 = icmp eq i8 %44, 0
  br i1 %tobool69.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then70.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then70.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %num_temp_sensors, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then70.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx68.4 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx68.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool69.not.4 = icmp eq i8 %47, 0
  br i1 %tobool69.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then70.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then70.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %num_temp_sensors, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then70.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx68.5 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 5
  %49 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx68.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool69.not.5 = icmp eq i8 %50, 0
  br i1 %tobool69.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then70.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then70.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %num_temp_sensors, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then70.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx68.6 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 6
  %52 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx68.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool69.not.6 = icmp eq i8 %53, 0
  br i1 %tobool69.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then70.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then70.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7, ptr %num_temp_sensors, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then70.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx68.7 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 7
  %55 = ptrtoint ptr %arrayidx68.7 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx68.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool69.not.7 = icmp eq i8 %56, 0
  br i1 %tobool69.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then70.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then70.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %num_temp_sensors, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then70.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx68.8 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 8
  %58 = ptrtoint ptr %arrayidx68.8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx68.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool69.not.8 = icmp eq i8 %59, 0
  br i1 %tobool69.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then70.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then70.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 9, ptr %num_temp_sensors, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then70.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx68.9 = getelementptr %struct.adt7470_data, ptr %data, i32 0, i32 8, i32 9
  %61 = ptrtoint ptr %arrayidx68.9 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx68.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool69.not.9 = icmp eq i8 %62, 0
  br i1 %tobool69.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then70.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then70.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 10, ptr %num_temp_sensors, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then70.9, %for.inc.8.for.inc.9_crit_edge
  %temperatures_probed = getelementptr inbounds %struct.adt7470_data, ptr %data, i32 0, i32 7
  %64 = ptrtoint ptr %temperatures_probed to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %temperatures_probed, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.9, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.9 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end12.cleanup_crit_edge ], [ %call.i118, %if.end17.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ %call.i119, %if.end28.cleanup_crit_edge ], [ %call.i120, %if.end33.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ], [ %call50, %if.end47.cleanup_crit_edge ], [ -11, %if.end53.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwm_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms_mask = getelementptr inbounds %struct.adt7470_data, ptr %call, i32 0, i32 15
  %1 = ptrtoint ptr %alarms_mask to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %alarms_mask, align 4
  %conv = zext i16 %2 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %regval.i = alloca [2 x i8], align 1
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool2.not = icmp ult i32 %4, 65536
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %conv = trunc i32 %6 to i16
  %alarms_mask = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %alarms_mask to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %alarms_mask, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i) #9
  %8 = getelementptr inbounds [2 x i8], ptr %regval.i, i32 0, i32 1
  %conv.i = trunc i32 %6 to i8
  %9 = ptrtoint ptr %regval.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %regval.i, align 1
  %shr.i = lshr i32 %6, 8
  %conv1.i = trunc i32 %shr.i to i8
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1.i, ptr %8, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i14 = call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef 114, ptr noundef nonnull %regval.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp = icmp slt i32 %call.i14, 0
  %call5.count = select i1 %cmp, i32 %call.i14, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @num_temp_sensors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num_temp_sensors = getelementptr inbounds %struct.adt7470_data, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_temp_sensors, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @num_temp_sensors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -1)
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 10)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %num_temp_sensors = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %num_temp_sensors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_temp_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %temperatures_probed = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %temperatures_probed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %temperatures_probed, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %auto_update_interval = getelementptr inbounds %struct.adt7470_data, ptr %call, i32 0, i32 24
  %1 = ptrtoint ptr %auto_update_interval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %auto_update_interval, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_update_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 60000)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %auto_update_interval = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %auto_update_interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %auto_update_interval, align 4
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_pwm_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %force_pwm_max = getelementptr inbounds %struct.adt7470_data, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %force_pwm_max to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %force_pwm_max, align 2
  %conv = zext i8 %2 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_pwm_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %conv = trunc i32 %4 to i8
  %force_pwm_max = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %force_pwm_max to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %force_pwm_max, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool2.not, i32 0, i32 4
  %call.i13 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 64, i32 noundef 4, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp = icmp slt i32 %call.i13, 0
  %call3.count = select i1 %cmp, i32 %call.i13, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %call, i32 0, i32 20, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %conv = trunc i32 %9 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 20, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %index, align 4
  %add = add i32 %15, 106
  %16 = load i32, ptr %temp, align 4
  %call10 = call i32 @regmap_write(ptr noundef %14, i32 noundef %add, i32 noundef %16) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  %cond17 = select i1 %cmp12, i32 %call10, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond17, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %call, i32 0, i32 18, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %conv = trunc i32 %9 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 18, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %index, align 4
  %add = add i32 %15, 56
  %16 = load i32, ptr %temp, align 4
  %call10 = call i32 @regmap_write(ptr noundef %14, i32 noundef %add, i32 noundef %16) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  %cond17 = select i1 %cmp12, i32 %call10, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond17, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %call, i32 0, i32 21, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %mul = mul nsw i32 %conv, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmin_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -128000)
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  %cond21.in.v = select i1 %cmp10, i32 500, i32 -500
  %cond21.in = add nsw i32 %cond21.in.v, %6
  %cond21 = sdiv i32 %cond21.in, 1000
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond21, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %conv22 = trunc i32 %9 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 21, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %index, align 4
  %add24 = add i32 %15, 110
  %16 = load i32, ptr %temp, align 4
  %call25 = call i32 @regmap_write(ptr noundef %14, i32 noundef %add24, i32 noundef %16) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  %cond32 = select i1 %cmp27, i32 %call25, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond32, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmax_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %call, i32 0, i32 21, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %5 = mul nsw i32 %conv, 1000
  %mul = add nsw i32 %5, 20000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7470_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %call, i32 0, i32 22, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %4 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %shl)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef 1023)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then3 ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %div = sdiv i32 %3, 2
  %add = add nsw i32 %div, 124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !138
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %6)
  %cmp.i = icmp eq i32 %6, 1023
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 0
  %7 = call i32 @llvm.ctpop.i32(i32 %6) #9, !range !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i.i = icmp ult i32 %7, 2
  %or.cond.i = and i1 %cmp1.i, %cmp1.i.i
  br i1 %or.cond.i, label %cvt_auto_temp.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cvt_auto_temp.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call i32 @llvm.ctlz.i32(i32 %6, i1 true) #9, !range !139
  %add.i = sub nuw nsw i32 32, %8
  br label %if.end4

if.end4:                                          ; preds = %cvt_auto_temp.exit, %if.end.if.end4_crit_edge
  %storemerge = phi i32 [ %add.i, %cvt_auto_temp.exit ], [ 0, %if.end.if.end4_crit_edge ]
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7470_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7470_data, ptr %1, i32 0, i32 19, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %15 = load i32, ptr %index, align 4
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp, align 4
  %and9 = and i32 %18, 15
  %shl = shl i32 %18, 4
  %and = and i32 %shl, 240
  %mask.0 = select i1 %tobool7.not, i32 240, i32 15
  %val.0 = select i1 %tobool7.not, i32 %and, i32 %and9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i27 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp13 = icmp slt i32 %call.i27, 0
  %call11.count = select i1 %cmp13, i32 %call.i27, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_adt7470__321_1325_adt7470_driver_init6, !1, !"__initcall__kmod_adt7470__321_1325_adt7470_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adt7470.c", i32 1325, i32 1}
!2 = !{ptr @__exitcall_adt7470_driver_exit, !1, !"__exitcall_adt7470_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author322, !4, !"__UNIQUE_ID_author322", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adt7470.c", i32 1327, i32 1}
!5 = !{ptr @__UNIQUE_ID_description323, !6, !"__UNIQUE_ID_description323", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adt7470.c", i32 1328, i32 1}
!7 = !{ptr @__UNIQUE_ID_file324, !8, !"__UNIQUE_ID_file324", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adt7470.c", i32 1329, i32 1}
!9 = !{ptr @__UNIQUE_ID_license325, !8, !"__UNIQUE_ID_license325", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adt7470.c", i32 1316, i32 11}
!12 = !{ptr @adt7470_driver, !13, !"adt7470_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adt7470.c", i32 1313, i32 26}
!14 = !{ptr @adt7470_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adt7470.c", i32 1267, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adt7470_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adt7470.c", i32 1272, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adt7470.c", i32 1274, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @adt7470_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @adt7470_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adt7470.c", i32 1291, i32 22}
!30 = !{ptr @adt7470_regmap_config, !31, !"adt7470_regmap_config", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adt7470.c", i32 1247, i32 35}
!32 = !{ptr @adt7470_chip_info, !33, !"adt7470_chip_info", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/adt7470.c", i32 1215, i32 37}
!34 = !{ptr @adt7470_hwmon_ops, !35, !"adt7470_hwmon_ops", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/adt7470.c", i32 1184, i32 31}
!36 = !{ptr @adt7470_freq_map, !37, !"adt7470_freq_map", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/adt7470.c", i32 724, i32 18}
!38 = !{ptr @adt7470_info, !39, !"adt7470_info", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/adt7470.c", i32 1190, i32 41}
!40 = !{ptr @adt7470_groups, !41, !"adt7470_groups", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/adt7470.c", i32 1095, i32 1}
!42 = !{ptr @adt7470_group, !41, !"adt7470_group", i1 false, i1 false}
!43 = !{ptr @adt7470_attrs, !44, !"adt7470_attrs", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/adt7470.c", i32 1067, i32 26}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/adt7470.c", i32 1036, i32 8}
!47 = !{ptr @dev_attr_alarm_mask, !46, !"dev_attr_alarm_mask", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/adt7470.c", i32 599, i32 22}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/adt7470.c", i32 1037, i32 8}
!52 = !{ptr @dev_attr_num_temp_sensors, !51, !"dev_attr_num_temp_sensors", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/adt7470.c", i32 512, i32 22}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/adt7470.c", i32 1038, i32 8}
!57 = !{ptr @dev_attr_auto_update_interval, !56, !"dev_attr_auto_update_interval", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/adt7470.c", i32 1040, i32 8}
!60 = !{ptr @sensor_dev_attr_force_pwm_max, !59, !"sensor_dev_attr_force_pwm_max", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/adt7470.c", i32 1042, i32 8}
!63 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !62, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adt7470.c", i32 1043, i32 8}
!66 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !65, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/adt7470.c", i32 1044, i32 8}
!69 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !68, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/adt7470.c", i32 1045, i32 8}
!72 = !{ptr @sensor_dev_attr_pwm4_auto_point1_pwm, !71, !"sensor_dev_attr_pwm4_auto_point1_pwm", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/adt7470.c", i32 1047, i32 8}
!75 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !74, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/adt7470.c", i32 1048, i32 8}
!78 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !77, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adt7470.c", i32 1049, i32 8}
!81 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !80, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/adt7470.c", i32 1050, i32 8}
!84 = !{ptr @sensor_dev_attr_pwm4_auto_point2_pwm, !83, !"sensor_dev_attr_pwm4_auto_point2_pwm", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/adt7470.c", i32 1052, i32 8}
!87 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !86, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/adt7470.c", i32 1053, i32 8}
!90 = !{ptr @sensor_dev_attr_pwm2_auto_point1_temp, !89, !"sensor_dev_attr_pwm2_auto_point1_temp", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/adt7470.c", i32 1054, i32 8}
!93 = !{ptr @sensor_dev_attr_pwm3_auto_point1_temp, !92, !"sensor_dev_attr_pwm3_auto_point1_temp", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/adt7470.c", i32 1055, i32 8}
!96 = !{ptr @sensor_dev_attr_pwm4_auto_point1_temp, !95, !"sensor_dev_attr_pwm4_auto_point1_temp", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/adt7470.c", i32 1057, i32 8}
!99 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !98, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/adt7470.c", i32 1058, i32 8}
!102 = !{ptr @sensor_dev_attr_pwm2_auto_point2_temp, !101, !"sensor_dev_attr_pwm2_auto_point2_temp", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/adt7470.c", i32 1059, i32 8}
!105 = !{ptr @sensor_dev_attr_pwm3_auto_point2_temp, !104, !"sensor_dev_attr_pwm3_auto_point2_temp", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/adt7470.c", i32 1060, i32 8}
!108 = !{ptr @sensor_dev_attr_pwm4_auto_point2_temp, !107, !"sensor_dev_attr_pwm4_auto_point2_temp", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/adt7470.c", i32 1062, i32 8}
!111 = !{ptr @sensor_dev_attr_pwm1_auto_channels_temp, !110, !"sensor_dev_attr_pwm1_auto_channels_temp", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/adt7470.c", i32 1063, i32 8}
!114 = !{ptr @sensor_dev_attr_pwm2_auto_channels_temp, !113, !"sensor_dev_attr_pwm2_auto_channels_temp", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/adt7470.c", i32 1064, i32 8}
!117 = !{ptr @sensor_dev_attr_pwm3_auto_channels_temp, !116, !"sensor_dev_attr_pwm3_auto_channels_temp", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/adt7470.c", i32 1065, i32 8}
!120 = !{ptr @sensor_dev_attr_pwm4_auto_channels_temp, !119, !"sensor_dev_attr_pwm4_auto_channels_temp", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/adt7470.c", i32 297, i32 3}
!123 = !{ptr @adt7470_id, !124, !"adt7470_id", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/adt7470.c", i32 1307, i32 35}
!125 = !{ptr @normal_i2c, !126, !"normal_i2c", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/adt7470.c", i32 26, i32 29}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2155649525}
!138 = !{!"auto-init"}
!139 = !{i32 0, i32 33}
