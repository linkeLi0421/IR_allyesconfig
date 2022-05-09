; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_idt82p33.c_pt.bc'
source_filename = "../drivers/ptp/ptp_idt82p33.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
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
%struct.idt82p33 = type { [2 x %struct.idt82p33_channel], ptr, i8, i8, i64, i32, i64, %struct.mutex }
%struct.idt82p33_channel = type { %struct.ptp_clock_info, ptr, ptr, i32, %struct.delayed_work, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.idt82p33_fwrc = type { i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.87, %struct.ptp_clock_time, i32, i32, %union.anon.88 }
%union.anon.87 = type { %struct.ptp_clock_time }
%union.anon.88 = type { %struct.ptp_clock_time }

@__UNIQUE_ID_description315 = internal constant [63 x i8] c"ptp_idt82p33.description=Driver for IDT 82p33xxx clock devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [71 x i8] c"ptp_idt82p33.author=IDT support-1588 <IDT-support-1588@lm.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version317 = internal constant [25 x i8] c"ptp_idt82p33.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptp_idt82p33\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file318 = internal constant [43 x i8] c"ptp_idt82p33.file=drivers/ptp/ptp_idt82p33\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [25 x i8] c"ptp_idt82p33.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware320 = internal constant [38 x i8] c"ptp_idt82p33.firmware=idt82p33xxx.bin\00", section ".modinfo", align 1
@__param_str_sync_tod_timeout = internal constant [30 x i8] c"ptp_idt82p33.sync_tod_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@sync_tod_timeout = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_sync_tod_timeout = internal constant %struct.kernel_param { ptr @__param_str_sync_tod_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @sync_tod_timeout } }, section "__param", align 4
@__UNIQUE_ID_sync_tod_timeouttype321 = internal constant [44 x i8] c"ptp_idt82p33.parmtype=sync_tod_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_sync_tod_timeout322 = internal constant [106 x i8] c"ptp_idt82p33.parm=sync_tod_timeout:duration in second to keep SYNC_TOD on (set to 0 to keep it always on)\00", section ".modinfo", align 1
@__param_str_phase_snap_threshold = internal constant [34 x i8] c"ptp_idt82p33.phase_snap_threshold\00", align 1
@phase_snap_threshold = internal global { i32, [28 x i8] } { i32 150000, [28 x i8] zeroinitializer }, align 32
@__param_phase_snap_threshold = internal constant %struct.kernel_param { ptr @__param_str_phase_snap_threshold, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @phase_snap_threshold } }, section "__param", align 4
@__UNIQUE_ID_phase_snap_thresholdtype323 = internal constant [48 x i8] c"ptp_idt82p33.parmtype=phase_snap_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_phase_snap_threshold324 = internal constant [104 x i8] c"ptp_idt82p33.parm=phase_snap_threshold:threshold (150000ns by default) below which adjtime would ignore\00", section ".modinfo", align 1
@__initcall__kmod_ptp_idt82p33__327_1110_idt82p33_driver_init6 = internal global ptr @idt82p33_driver_init, section ".initcall6.init", align 4
@idt82p33_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @idt82p33_probe, ptr @idt82p33_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @idt82p33_dt_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @idt82p33_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_idt82p33_driver_exit = internal global ptr @idt82p33_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idt82p33\00", [23 x i8] zeroinitializer }, align 32
@idt82p33_dt_id = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33810\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33813\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33814\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33831\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33913\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33914\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33931\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@idt82p33_i2c_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"idt82p33810\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33813\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33814\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33831\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33910\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33913\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33914\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"idt82p33931\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@idt82p33_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&idt82p33->reg_lock\00", [44 x i8] zeroinitializer }, align 32
@idt82p33_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1030, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"loading firmware failed with %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt82p33_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ptp/ptp_idt82p33.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idt82p33_probe._entry_ptr = internal global ptr @idt82p33_probe._entry, section ".printk_index", align 4
@idt82p33_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1039, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed in %s with err %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@idt82p33_probe._entry_ptr.13 = internal global ptr @idt82p33_probe._entry.10, section ".printk_index", align 4
@idt82p33_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1046, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no PLLs flagged as PHCs, nothing to do\0A\00", [56 x i8] zeroinitializer }, align 32
@idt82p33_probe._entry_ptr.16 = internal global ptr @idt82p33_probe._entry.14, section ".printk_index", align 4
@idt82p33_load_firmware.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idt82p33_load_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"requesting firmware '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt82p33xxx.bin\00", [16 x i8] zeroinitializer }, align 32
@idt82p33_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.17, ptr @.str.7, i32 950, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@idt82p33_load_firmware._entry_ptr = internal global ptr @idt82p33_load_firmware._entry, section ".printk_index", align 4
@idt82p33_load_firmware.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.7, ptr @.str.20, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware size %zu bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@idt82p33_load_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.7, i32 962, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad firmware, reserved field non-zero\0A\00", [57 x i8] zeroinitializer }, align 32
@idt82p33_load_firmware._entry_ptr.23 = internal global ptr @idt82p33_load_firmware._entry.21, section ".printk_index", align 4
@idt82p33_check_and_set_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 503, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid PLL mask 0x%hhx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"idt82p33_check_and_set_masks\00", [35 x i8] zeroinitializer }, align 32
@idt82p33_check_and_set_masks._entry_ptr = internal global ptr @idt82p33_check_and_set_masks._entry, section ".printk_index", align 4
@idt82p33_page_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 147, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set page offset %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idt82p33_page_offset\00", [43 x i8] zeroinitializer }, align 32
@idt82p33_page_offset._entry_ptr = internal global ptr @idt82p33_page_offset._entry, section ".printk_index", align 4
@idt82p33_xfer_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 130, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i2c_master_send returned %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idt82p33_xfer_write\00", [44 x i8] zeroinitializer }, align 32
@idt82p33_xfer_write._entry_ptr = internal global ptr @idt82p33_xfer_write._entry, section ".printk_index", align 4
@idt82p33_xfer_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 102, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c_transfer returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"idt82p33_xfer_read\00", [45 x i8] zeroinitializer }, align 32
@idt82p33_xfer_read._entry_ptr = internal global ptr @idt82p33_xfer_read._entry, section ".printk_index", align 4
@idt82p33_xfer_read._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.7, i32 106, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i2c_transfer sent only %d of %d messages\0A\00", [54 x i8] zeroinitializer }, align 32
@idt82p33_xfer_read._entry_ptr.34 = internal global ptr @idt82p33_xfer_read._entry.32, section ".printk_index", align 4
@idt82p33_display_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 524, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pllmask = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idt82p33_display_masks\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@idt82p33_display_masks._entry_ptr = internal global ptr @idt82p33_display_masks._entry, section ".printk_index", align 4
@idt82p33_display_masks._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.7, i32 532, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLL%d output_mask = 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@idt82p33_display_masks._entry_ptr.40 = internal global ptr @idt82p33_display_masks._entry.38, section ".printk_index", align 4
@idt82p33_enable_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 892, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Channel_init failed in %s with err %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idt82p33_enable_channel\00", [40 x i8] zeroinitializer }, align 32
@idt82p33_enable_channel._entry_ptr = internal global ptr @idt82p33_enable_channel._entry, section ".printk_index", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IDT 82P33 PLL%u\00", [16 x i8] zeroinitializer }, align 32
@idt82p33_enable_channel._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.7, i32 917, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Dpll_set_mode failed in %s with err %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@idt82p33_enable_channel._entry_ptr.46 = internal global ptr @idt82p33_enable_channel._entry.44, section ".printk_index", align 4
@idt82p33_enable_channel._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.7, i32 925, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enable_tod failed in %s with err %d!\0A\00", [58 x i8] zeroinitializer }, align 32
@idt82p33_enable_channel._entry_ptr.49 = internal global ptr @idt82p33_enable_channel._entry.47, section ".printk_index", align 4
@idt82p33_enable_channel._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.7, i32 930, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PLL%d registered as ptp%d\0A\00", [37 x i8] zeroinitializer }, align 32
@idt82p33_enable_channel._entry_ptr.52 = internal global ptr @idt82p33_enable_channel._entry.50, section ".printk_index", align 4
@idt82p33_adjwritephase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.53, ptr @.str.7, i32 735, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idt82p33_adjwritephase\00", [41 x i8] zeroinitializer }, align 32
@idt82p33_adjwritephase._entry_ptr = internal global ptr @idt82p33_adjwritephase._entry, section ".printk_index", align 4
@idt82p33_adjfine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.54, ptr @.str.7, i32 758, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt82p33_adjfine\00", [47 x i8] zeroinitializer }, align 32
@idt82p33_adjfine._entry_ptr = internal global ptr @idt82p33_adjfine._entry, section ".printk_index", align 4
@idt82p33_adjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 783, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adjtime failed in %s with err %d!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt82p33_adjtime\00", [47 x i8] zeroinitializer }, align 32
@idt82p33_adjtime._entry_ptr = internal global ptr @idt82p33_adjtime._entry, section ".printk_index", align 4
@idt82p33_adjtime._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.7, i32 790, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sync_tod failed in %s with err %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@idt82p33_adjtime._entry_ptr.59 = internal global ptr @idt82p33_adjtime._entry.57, section ".printk_index", align 4
@idt82p33_gettime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.60, ptr @.str.7, i32 808, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt82p33_gettime\00", [47 x i8] zeroinitializer }, align 32
@idt82p33_gettime._entry_ptr = internal global ptr @idt82p33_gettime._entry, section ".printk_index", align 4
@idt82p33_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.61, ptr @.str.7, i32 826, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt82p33_settime\00", [47 x i8] zeroinitializer }, align 32
@idt82p33_settime._entry_ptr = internal global ptr @idt82p33_settime._entry, section ".printk_index", align 4
@idt82p33_enable_tod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.62, ptr @.str.7, i32 649, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idt82p33_enable_tod\00", [44 x i8] zeroinitializer }, align 32
@idt82p33_enable_tod._entry_ptr = internal global ptr @idt82p33_enable_tod._entry, section ".printk_index", align 4
@idt82p33_measure_tod_write_overhead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.63, ptr @.str.7, i32 471, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"idt82p33_measure_tod_write_overhead\00", [60 x i8] zeroinitializer }, align 32
@idt82p33_measure_tod_write_overhead._entry_ptr = internal global ptr @idt82p33_measure_tod_write_overhead._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 22, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"sync_tod_timeout\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 27, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"phase_snap_threshold\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 32, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"idt82p33_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1100, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1103, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"idt82p33_dt_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1073, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"idt82p33_i2c_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1087, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1014, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1029, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1037, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1045, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 943, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 949, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 954, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 961, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 502, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 146, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 130, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 102, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 105, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 523, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 530, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 890, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 900, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 915, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 923, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 929, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 734, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 757, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 782, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 789, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 807, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 825, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 648, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private constant [30 x i8] c"../drivers/ptp/ptp_idt82p33.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 470, i32 3 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_license319, ptr @__UNIQUE_ID_phase_snap_threshold324, ptr @__UNIQUE_ID_phase_snap_thresholdtype323, ptr @__UNIQUE_ID_sync_tod_timeout322, ptr @__UNIQUE_ID_sync_tod_timeouttype321, ptr @__UNIQUE_ID_version317, ptr @__exitcall_idt82p33_driver_exit, ptr @__initcall__kmod_ptp_idt82p33__327_1110_idt82p33_driver_init6, ptr @__modver_attr, ptr @__param_phase_snap_threshold, ptr @__param_sync_tod_timeout, ptr @idt82p33_adjfine._entry, ptr @idt82p33_adjfine._entry_ptr, ptr @idt82p33_adjtime._entry, ptr @idt82p33_adjtime._entry.57, ptr @idt82p33_adjtime._entry_ptr, ptr @idt82p33_adjtime._entry_ptr.59, ptr @idt82p33_adjwritephase._entry, ptr @idt82p33_adjwritephase._entry_ptr, ptr @idt82p33_check_and_set_masks._entry, ptr @idt82p33_check_and_set_masks._entry_ptr, ptr @idt82p33_display_masks._entry, ptr @idt82p33_display_masks._entry.38, ptr @idt82p33_display_masks._entry_ptr, ptr @idt82p33_display_masks._entry_ptr.40, ptr @idt82p33_driver_exit, ptr @idt82p33_enable_channel._entry, ptr @idt82p33_enable_channel._entry.44, ptr @idt82p33_enable_channel._entry.47, ptr @idt82p33_enable_channel._entry.50, ptr @idt82p33_enable_channel._entry_ptr, ptr @idt82p33_enable_channel._entry_ptr.46, ptr @idt82p33_enable_channel._entry_ptr.49, ptr @idt82p33_enable_channel._entry_ptr.52, ptr @idt82p33_enable_tod._entry, ptr @idt82p33_enable_tod._entry_ptr, ptr @idt82p33_gettime._entry, ptr @idt82p33_gettime._entry_ptr, ptr @idt82p33_load_firmware._entry, ptr @idt82p33_load_firmware._entry.21, ptr @idt82p33_load_firmware._entry_ptr, ptr @idt82p33_load_firmware._entry_ptr.23, ptr @idt82p33_measure_tod_write_overhead._entry, ptr @idt82p33_measure_tod_write_overhead._entry_ptr, ptr @idt82p33_page_offset._entry, ptr @idt82p33_page_offset._entry_ptr, ptr @idt82p33_probe._entry, ptr @idt82p33_probe._entry.10, ptr @idt82p33_probe._entry.14, ptr @idt82p33_probe._entry_ptr, ptr @idt82p33_probe._entry_ptr.13, ptr @idt82p33_probe._entry_ptr.16, ptr @idt82p33_settime._entry, ptr @idt82p33_settime._entry_ptr, ptr @idt82p33_xfer_read._entry, ptr @idt82p33_xfer_read._entry.32, ptr @idt82p33_xfer_read._entry_ptr, ptr @idt82p33_xfer_read._entry_ptr.34, ptr @idt82p33_xfer_write._entry, ptr @idt82p33_xfer_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sync_tod_timeout, ptr @phase_snap_threshold, ptr @idt82p33_driver, ptr @.str.3, ptr @idt82p33_dt_id, ptr @idt82p33_i2c_id, ptr @idt82p33_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_tod_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase_snap_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_dt_id to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_i2c_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_load_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_check_and_set_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_page_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_xfer_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_xfer_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_xfer_read._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_display_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_display_masks._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_enable_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_enable_channel._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_enable_channel._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_enable_channel._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_adjwritephase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_adjfine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_adjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_adjtime._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_gettime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_enable_tod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt82p33_measure_tod_write_overhead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @idt82p33_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt82p33_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @idt82p33_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %sync_cnfg.i.i = alloca i8, align 1
  %remainder.i.i32.i.i = alloca i32, align 4
  %buf.i.i.i = alloca [10 x i8], align 1
  %remainder.i.i.i.i = alloca i32, align 4
  %trigger.i.i.i = alloca i8, align 1
  %ts1.i.i.i = alloca %struct.timespec64, align 8
  %ts2.i.i.i = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %val.i = alloca i8, align 1
  %dpll_mode.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 624, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @idt82p33_probe.__key) #7
  %client1 = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 8
  %page_offset = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %page_offset to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %page_offset, align 4
  %tod_write_overhead_ns = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %tod_write_overhead_ns to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %tod_write_overhead_ns, align 8
  %calculate_overhead_flag = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %calculate_overhead_flag, align 8
  %pll_mask = getelementptr inbounds %struct.idt82p33, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %pll_mask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pll_mask, align 1
  %output_mask = getelementptr inbounds %struct.idt82p33_channel, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %output_mask to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -64, ptr %output_mask, align 4
  %output_mask4 = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %output_mask4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -64, ptr %output_mask4, align 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %call6 = tail call fastcc i32 @idt82p33_load_firmware(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end14_crit_edge, label %do.end11

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client1, align 8
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.5, i32 noundef %call6) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.body.if.end14_crit_edge
  %9 = ptrtoint ptr %pll_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pll_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %do.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %tv_nsec.i.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts2.i.i.i, i32 0, i32 1
  %tv_nsec.i18.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts1.i.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %err.0145 = phi i32 [ %call6, %for.cond.preheader ], [ %err.1, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %pll_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pll_mask, align 1
  %conv20 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %indvars.iv
  %and = and i32 %shl, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.then23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %arrayidx.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv
  %13 = trunc i32 %indvars.iv to i8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %do.end.i [
    i8 0, label %if.then23.if.end3.i_crit_edge
    i8 1, label %sw.bb1.i.i
  ]

if.then23.if.end3.i_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

sw.bb1.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef -22) #10
  br label %do.end30

if.end3.i:                                        ; preds = %sw.bb1.i.i, %if.then23.if.end3.i_crit_edge
  %.sink32.i.i = phi i16 [ 436, %sw.bb1.i.i ], [ 308, %if.then23.if.end3.i_crit_edge ]
  %.sink31.i.i = phi i16 [ 405, %sw.bb1.i.i ], [ 277, %if.then23.if.end3.i_crit_edge ]
  %.sink30.i.i = phi i16 [ 395, %sw.bb1.i.i ], [ 267, %if.then23.if.end3.i_crit_edge ]
  %.sink29.i.i = phi i16 [ 416, %sw.bb1.i.i ], [ 288, %if.then23.if.end3.i_crit_edge ]
  %.sink28.i.i = phi i16 [ 428, %sw.bb1.i.i ], [ 300, %if.then23.if.end3.i_crit_edge ]
  %.sink27.i.i = phi i16 [ 451, %sw.bb1.i.i ], [ 323, %if.then23.if.end3.i_crit_edge ]
  %.sink26.i.i = phi i16 [ 448, %sw.bb1.i.i ], [ 320, %if.then23.if.end3.i_crit_edge ]
  %.sink.i.i = phi i16 [ 406, %sw.bb1.i.i ], [ 278, %if.then23.if.end3.i_crit_edge ]
  %dpll_tod_cnfg2.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 8
  %17 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink32.i.i, ptr %dpll_tod_cnfg2.i.i, align 2
  %dpll_tod_trigger3.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 9
  %18 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink31.i.i, ptr %dpll_tod_trigger3.i.i, align 4
  %dpll_tod_sts4.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 10
  %19 = ptrtoint ptr %dpll_tod_sts4.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink30.i.i, ptr %dpll_tod_sts4.i.i, align 2
  %dpll_mode_cnfg5.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 11
  %20 = ptrtoint ptr %dpll_mode_cnfg5.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink29.i.i, ptr %dpll_mode_cnfg5.i.i, align 4
  %dpll_freq_cnfg6.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 12
  %21 = ptrtoint ptr %dpll_freq_cnfg6.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink28.i.i, ptr %dpll_freq_cnfg6.i.i, align 2
  %dpll_phase_cnfg7.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 13
  %22 = ptrtoint ptr %dpll_phase_cnfg7.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink27.i.i, ptr %dpll_phase_cnfg7.i.i, align 4
  %dpll_sync_cnfg8.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 14
  %23 = ptrtoint ptr %dpll_sync_cnfg8.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink26.i.i, ptr %dpll_sync_cnfg8.i.i, align 2
  %dpll_input_mode_cnfg9.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 15
  %24 = ptrtoint ptr %dpll_input_mode_cnfg9.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink.i.i, ptr %dpll_input_mode_cnfg9.i.i, align 4
  %current_freq_ppb.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 6
  %25 = ptrtoint ptr %current_freq_ppb.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %current_freq_ppb.i.i, align 4
  %idt82p334.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 2
  %26 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %idt82p334.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  %max_adj.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %max_adj.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 92000, ptr %max_adj.i.i, align 4
  %n_per_out.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 5
  %29 = ptrtoint ptr %n_per_out.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11, ptr %n_per_out.i.i, align 4
  %adjphase.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 11
  %30 = ptrtoint ptr %adjphase.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @idt82p33_adjwritephase, ptr %adjphase.i.i, align 4
  %adjfine.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 9
  %31 = ptrtoint ptr %adjfine.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @idt82p33_adjfine, ptr %adjfine.i.i, align 4
  %adjtime.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 12
  %32 = ptrtoint ptr %adjtime.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @idt82p33_adjtime, ptr %adjtime.i.i, align 4
  %gettime64.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 13
  %33 = ptrtoint ptr %gettime64.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @idt82p33_gettime, ptr %gettime64.i.i, align 4
  %settime64.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 16
  %34 = ptrtoint ptr %settime64.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @idt82p33_settime, ptr %settime64.i.i, align 4
  %enable.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 17
  %35 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @idt82p33_enable, ptr %enable.i.i, align 4
  %do_aux_work.i.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 19
  %36 = ptrtoint ptr %do_aux_work.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @idt82p33_sync_tod_work_handler, ptr %do_aux_work.i.i, align 4
  %name.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 1
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef %indvars.iv) #7
  %call8.i = call ptr @ptp_clock_register(ptr noundef %arrayidx.i, ptr noundef null) #7
  %ptp_clock.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 1
  %37 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i, ptr %ptp_clock.i, align 4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %idt82p33_enable_channel.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end3.i
  %tobool17.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool17.not.i, label %if.end15.i.do.end30_crit_edge, label %if.end19.i

if.end15.i.do.end30_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.end19.i:                                       ; preds = %if.end15.i
  %38 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %idt82p334.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  %40 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %dpll_mode.i.i, align 1, !annotation !172
  %pll_mode.i.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 3
  %41 = ptrtoint ptr %pll_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pll_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %42)
  %cmp.i76.i = icmp eq i32 %42, 10
  br i1 %cmp.i76.i, label %if.end19.i.if.end28.i_crit_edge, label %if.end.i.i

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.end.i.i:                                       ; preds = %if.end19.i
  %43 = ptrtoint ptr %dpll_mode_cnfg5.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dpll_mode_cnfg5.i.i, align 4
  %conv.i.i = zext i16 %44 to i32
  %call.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %39, i32 noundef %conv.i.i, ptr noundef nonnull %dpll_mode.i.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.do.end25.i_crit_edge

if.end.i.i.do.end25.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %45 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dpll_mode.i.i, align 1
  %47 = and i8 %46, -32
  %conv7.i.i = or i8 %47, 10
  store i8 %conv7.i.i, ptr %dpll_mode.i.i, align 1
  %48 = ptrtoint ptr %dpll_mode_cnfg5.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dpll_mode_cnfg5.i.i, align 4
  %conv9.i.i = zext i16 %49 to i32
  %call.i27.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %39, i32 noundef %conv9.i.i, ptr noundef nonnull %dpll_mode.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i27.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end3.i.i.do.end25.i_crit_edge

if.end3.i.i.do.end25.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

if.end13.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dpll_mode.i.i, align 1
  %conv14.i.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %pll_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv14.i.i, ptr %pll_mode.i.i, align 4
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.end3.i.i.do.end25.i_crit_edge, %if.end.i.i.do.end25.i_crit_edge
  %retval.0.i77.i = phi i32 [ %call.i.i.i, %if.end.i.i.do.end25.i_crit_edge ], [ %call.i27.i.i, %if.end3.i.i.do.end25.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  %53 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client1, align 8
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i77.i) #10
  br label %do.end30

if.end28.i:                                       ; preds = %if.end13.i.i, %if.end19.i.if.end28.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  %55 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %idt82p334.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %57 = call ptr @memset(ptr %ts.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %58 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %val.i, align 1
  %59 = ptrtoint ptr %dpll_input_mode_cnfg9.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dpll_input_mode_cnfg9.i.i, align 4
  %conv.i = zext i16 %60 to i32
  %call.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %56, i32 noundef %conv.i, ptr noundef nonnull %val.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i78 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i78, label %if.end.i, label %if.end28.i.idt82p33_enable_tod.exit.thread_crit_edge

if.end28.i.idt82p33_enable_tod.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_enable_tod.exit.thread

if.end.i:                                         ; preds = %if.end28.i
  %61 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idt82p334.i, align 4
  %tod_write_overhead_ns.i.i = getelementptr inbounds %struct.idt82p33, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %tod_write_overhead_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %tod_write_overhead_ns.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1.i.i.i) #7
  %64 = call ptr @memset(ptr %ts1.i.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2.i.i.i) #7
  %65 = call ptr @memset(ptr %ts2.i.i.i, i32 255, i32 16)
  %call.i.i.i79 = call fastcc i32 @_idt82p33_settime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i79, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.do.end.i.i_crit_edge

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %call1.i.i.i = call fastcc i32 @_idt82p33_gettime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts2.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.end.i.i.i.do.end.i.i_crit_edge

if.end.i.i.i.do.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  %66 = ptrtoint ptr %ts2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ts2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %67)
  %cmp.i.i.i.i = icmp sgt i64 %67, 9223372035
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then3.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge: ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %67)
  %cmp2.i.i.i.i = icmp slt i64 %67, -9223372035
  br i1 %cmp2.i.i.i.i, label %if.end.i.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge, label %if.end4.i.i.i.i

if.end.i.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.neg.i.i = mul nsw i64 %67, -1000000000
  %68 = ptrtoint ptr %tv_nsec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tv_nsec.i.i.i.i, align 8
  %conv.i.i.i.i = sext i32 %69 to i64
  %add.i.i.neg.i.i = sub i64 %mul.i.i.neg.i.i, %conv.i.i.i.i
  br label %timespec64_to_ns.exit.i.i.i

timespec64_to_ns.exit.i.i.i:                      ; preds = %if.end4.i.i.i.i, %if.end.i.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge, %if.then3.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge
  %retval.0.i.i.neg60.i.i = phi i64 [ %add.i.i.neg.i.i, %if.end4.i.i.i.i ], [ -9223372036854775807, %if.then3.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.i.i.timespec64_to_ns.exit.i.i.i_crit_edge ]
  %70 = ptrtoint ptr %ts1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ts1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %71)
  %cmp.i14.i.i.i = icmp sgt i64 %71, 9223372035
  br i1 %cmp.i14.i.i.i, label %timespec64_to_ns.exit.i.i.i.if.end.i.i80_crit_edge, label %if.end.i16.i.i.i

timespec64_to_ns.exit.i.i.i.if.end.i.i80_crit_edge: ; preds = %timespec64_to_ns.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i80

if.end.i16.i.i.i:                                 ; preds = %timespec64_to_ns.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %71)
  %cmp2.i15.i.i.i = icmp slt i64 %71, -9223372035
  br i1 %cmp2.i15.i.i.i, label %if.end.i16.i.i.i.if.end.i.i80_crit_edge, label %if.end4.i21.i.i.i

if.end.i16.i.i.i.if.end.i.i80_crit_edge:          ; preds = %if.end.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i80

if.end4.i21.i.i.i:                                ; preds = %if.end.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i17.i.i.i = mul nsw i64 %71, 1000000000
  %72 = ptrtoint ptr %tv_nsec.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tv_nsec.i18.i.i.i, align 8
  %conv.i19.i.i.i = sext i32 %73 to i64
  %add.i20.i.i.i = add i64 %mul.i17.i.i.i, %conv.i19.i.i.i
  br label %if.end.i.i80

do.end.i.i:                                       ; preds = %if.end.i.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.i.do.end.i.i_crit_edge ], [ %call.i.i.i79, %if.end.i.do.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1.i.i.i) #7
  %client.i.i = getelementptr inbounds %struct.idt82p33, ptr %62, i32 0, i32 1
  %74 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i.ph.i.i) #10
  br label %do.end.i83

if.end.i.i80:                                     ; preds = %if.end4.i21.i.i.i, %if.end.i16.i.i.i.if.end.i.i80_crit_edge, %timespec64_to_ns.exit.i.i.i.if.end.i.i80_crit_edge
  %retval.0.i22.i.i.i = phi i64 [ %add.i20.i.i.i, %if.end4.i21.i.i.i ], [ 9223372036854775807, %timespec64_to_ns.exit.i.i.i.if.end.i.i80_crit_edge ], [ -9223372036854775808, %if.end.i16.i.i.i.if.end.i.i80_crit_edge ]
  %sub.i.neg.i.i = add i64 %retval.0.i22.i.i.i, %retval.0.i.i.neg60.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1.i.i.i) #7
  %76 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %idt82p334.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %trigger.i.i.i) #7
  %78 = ptrtoint ptr %trigger.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -103, ptr %trigger.i.i.i, align 1
  %call.i28.i.i = call i64 @ktime_get_raw() #7
  %79 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dpll_tod_trigger3.i.i, align 4
  %conv3.i.i.i = zext i16 %80 to i32
  %call.i.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %77, i32 noundef %conv3.i.i.i, ptr noundef nonnull %trigger.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  %call5.i.i.i = call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i29.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i29.i.i, label %if.end.i30.i.i, label %if.end.i.i80.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge

if.end.i.i80.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i

if.end.i30.i.i:                                   ; preds = %if.end.i.i80
  %call.1.i.i.i = call i64 @ktime_get_raw() #7
  %81 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %dpll_tod_trigger3.i.i, align 4
  %conv3.1.i.i.i = zext i16 %82 to i32
  %call.i.1.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %77, i32 noundef %conv3.1.i.i.i, ptr noundef nonnull %trigger.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  %call5.1.i.i.i = call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %call.i.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %if.end.1.i.i.i, label %if.end.i30.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge

if.end.i30.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge: ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i

if.end.1.i.i.i:                                   ; preds = %if.end.i30.i.i
  %call.2.i.i.i = call i64 @ktime_get_raw() #7
  %83 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dpll_tod_trigger3.i.i, align 4
  %conv3.2.i.i.i = zext i16 %84 to i32
  %call.i.2.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %77, i32 noundef %conv3.2.i.i.i, ptr noundef nonnull %trigger.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  %call5.2.i.i.i = call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %call.i.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %if.end.2.i.i.i, label %if.end.1.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge

if.end.1.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge: ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i

if.end.2.i.i.i:                                   ; preds = %if.end.1.i.i.i
  %call.3.i.i.i = call i64 @ktime_get_raw() #7
  %85 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dpll_tod_trigger3.i.i, align 4
  %conv3.3.i.i.i = zext i16 %86 to i32
  %call.i.3.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %77, i32 noundef %conv3.3.i.i.i, ptr noundef nonnull %trigger.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  %call5.3.i.i.i = call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i.i)
  %tobool.not.3.i.i.i = icmp eq i32 %call.i.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %if.end.3.i.i.i, label %if.end.2.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge

if.end.2.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge: ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i

if.end.3.i.i.i:                                   ; preds = %if.end.2.i.i.i
  %call.4.i.i.i = call i64 @ktime_get_raw() #7
  %87 = ptrtoint ptr %dpll_tod_trigger3.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %dpll_tod_trigger3.i.i, align 4
  %conv3.4.i.i.i = zext i16 %88 to i32
  %call.i.4.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %77, i32 noundef %conv3.4.i.i.i, ptr noundef nonnull %trigger.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  %call5.4.i.i.i = call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i.i.i)
  %tobool.not.4.i.i.i = icmp eq i32 %call.i.4.i.i.i, 0
  br i1 %tobool.not.4.i.i.i, label %if.end5.i.i, label %if.end.3.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge

if.end.3.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge: ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i

idt82p33_measure_one_byte_write_overhead.exit.thread.i.i: ; preds = %if.end.3.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge, %if.end.2.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge, %if.end.1.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge, %if.end.i30.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge, %if.end.i.i80.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge
  %retval.0.i31.ph.i.i = phi i32 [ %call.i.4.i.i.i, %if.end.3.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge ], [ %call.i.3.i.i.i, %if.end.2.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge ], [ %call.i.2.i.i.i, %if.end.1.i.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge ], [ %call.i.1.i.i.i, %if.end.i30.i.i.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i80.idt82p33_measure_one_byte_write_overhead.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %trigger.i.i.i) #7
  br label %do.end.i83

if.end5.i.i:                                      ; preds = %if.end.3.i.i.i
  %89 = add i64 %call.i28.i.i, %call.1.i.i.i
  %90 = add i64 %call5.i.i.i, %call5.1.i.i.i
  %91 = add i64 %89, %call.2.i.i.i
  %92 = add i64 %90, %call5.2.i.i.i
  %93 = add i64 %91, %call.3.i.i.i
  %94 = add i64 %92, %call5.3.i.i.i
  %95 = add i64 %93, %call.4.i.i.i
  %sub.4.i.i.i = sub i64 %94, %95
  %add.4.i.i.i = add i64 %sub.4.i.i.i, %call5.4.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %96 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !172
  %call.i21.i.i.i = call i64 @div_s64_rem(i64 noundef %add.4.i.i.i, i32 noundef 5, ptr noundef nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %trigger.i.i.i) #7
  %97 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %idt82p334.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i.i.i) #7
  %tod_write_overhead_ns.i.i.i = getelementptr inbounds %struct.idt82p33, ptr %98, i32 0, i32 6
  %99 = call ptr @memset(ptr %buf.i.i.i, i32 255, i32 10)
  %100 = ptrtoint ptr %tod_write_overhead_ns.i.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %tod_write_overhead_ns.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond3.8.i.i.i.for.body.i.i.i_crit_edge, %if.end5.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %if.end5.i.i ], [ %indvars.iv.next.i.i.i, %for.cond3.8.i.i.i.for.body.i.i.i_crit_edge ]
  %total_ns.040.i.i.i = phi i64 [ 0, %if.end5.i.i ], [ %add14.i.i.i, %for.cond3.8.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i34.i.i = call i64 @ktime_get_raw() #7
  %arrayidx.i.i.i = getelementptr [10 x i8], ptr %buf.i.i.i, i32 0, i32 %indvars.iv.i.i.i
  %101 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.i.i.i = zext i16 %102 to i32
  %add.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.i.i.i
  %call.i.i35.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i.i)
  %tobool.not.i36.i.i = icmp eq i32 %call.i.i35.i.i, 0
  br i1 %tobool.not.i36.i.i, label %for.cond3.i.i.i, label %for.body.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.body.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.i.i.i:                                  ; preds = %for.body.i.i.i
  %103 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.1.i.i.i = zext i16 %104 to i32
  %add.1.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.1.i.i.i
  %call.i.1.i37.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i37.i.i)
  %tobool.not.1.i38.i.i = icmp eq i32 %call.i.1.i37.i.i, 0
  br i1 %tobool.not.1.i38.i.i, label %for.cond3.1.i.i.i, label %for.cond3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.1.i.i.i:                                ; preds = %for.cond3.i.i.i
  %105 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.2.i.i.i = zext i16 %106 to i32
  %add.2.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.2.i.i.i
  %call.i.2.i39.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.2.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i39.i.i)
  %tobool.not.2.i40.i.i = icmp eq i32 %call.i.2.i39.i.i, 0
  br i1 %tobool.not.2.i40.i.i, label %for.cond3.2.i.i.i, label %for.cond3.1.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.1.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.2.i.i.i:                                ; preds = %for.cond3.1.i.i.i
  %107 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.3.i.i.i = zext i16 %108 to i32
  %add.3.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.3.i.i.i
  %call.i.3.i41.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.3.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i41.i.i)
  %tobool.not.3.i42.i.i = icmp eq i32 %call.i.3.i41.i.i, 0
  br i1 %tobool.not.3.i42.i.i, label %for.cond3.3.i.i.i, label %for.cond3.2.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.2.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.3.i.i.i:                                ; preds = %for.cond3.2.i.i.i
  %109 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.4.i.i.i = zext i16 %110 to i32
  %add.4.i43.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.4.i.i.i
  %call.i.4.i44.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.4.i43.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i44.i.i)
  %tobool.not.4.i45.i.i = icmp eq i32 %call.i.4.i44.i.i, 0
  br i1 %tobool.not.4.i45.i.i, label %for.cond3.4.i.i.i, label %for.cond3.3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.4.i.i.i:                                ; preds = %for.cond3.3.i.i.i
  %111 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.5.i.i.i = zext i16 %112 to i32
  %add.5.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.5.i.i.i
  %call.i.5.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.5.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i.i.i)
  %tobool.not.5.i.i.i = icmp eq i32 %call.i.5.i.i.i, 0
  br i1 %tobool.not.5.i.i.i, label %for.cond3.5.i.i.i, label %for.cond3.4.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.4.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.5.i.i.i:                                ; preds = %for.cond3.4.i.i.i
  %113 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.6.i.i.i = zext i16 %114 to i32
  %add.6.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.6.i.i.i
  %call.i.6.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.6.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6.i.i.i)
  %tobool.not.6.i.i.i = icmp eq i32 %call.i.6.i.i.i, 0
  br i1 %tobool.not.6.i.i.i, label %for.cond3.6.i.i.i, label %for.cond3.5.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.5.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.6.i.i.i:                                ; preds = %for.cond3.5.i.i.i
  %115 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.7.i.i.i = zext i16 %116 to i32
  %add.7.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.7.i.i.i
  %call.i.7.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.7.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7.i.i.i)
  %tobool.not.7.i.i.i = icmp eq i32 %call.i.7.i.i.i, 0
  br i1 %tobool.not.7.i.i.i, label %for.cond3.7.i.i.i, label %for.cond3.6.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.6.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.7.i.i.i:                                ; preds = %for.cond3.6.i.i.i
  %117 = ptrtoint ptr %dpll_tod_cnfg2.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %dpll_tod_cnfg2.i.i, align 2
  %conv8.8.i.i.i = zext i16 %118 to i32
  %add.8.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, %conv8.8.i.i.i
  %call.i.8.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %98, i32 noundef %add.8.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.8.i.i.i)
  %tobool.not.8.i.i.i = icmp eq i32 %call.i.8.i.i.i, 0
  br i1 %tobool.not.8.i.i.i, label %for.cond3.8.i.i.i, label %for.cond3.7.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge

for.cond3.7.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge: ; preds = %for.cond3.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i

for.cond3.8.i.i.i:                                ; preds = %for.cond3.7.i.i.i
  %call11.i.i.i = call i64 @ktime_get_raw() #7
  %sub.i46.i.i = sub i64 %total_ns.040.i.i.i, %call.i34.i.i
  %add14.i.i.i = add i64 %call11.i.i.i, %sub.i46.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 5
  br i1 %exitcond.not.i.i.i, label %if.end5.i, label %for.cond3.8.i.i.i.for.body.i.i.i_crit_edge

for.cond3.8.i.i.i.for.body.i.i.i_crit_edge:       ; preds = %for.cond3.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i: ; preds = %for.cond3.7.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.6.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.5.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.4.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.2.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.1.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.cond3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge, %for.body.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge
  %retval.0.i47.ph.i.i = phi i32 [ %call.i.i35.i.i, %for.body.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.1.i37.i.i, %for.cond3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.2.i39.i.i, %for.cond3.1.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.3.i41.i.i, %for.cond3.2.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.4.i44.i.i, %for.cond3.3.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.5.i.i.i, %for.cond3.4.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.6.i.i.i, %for.cond3.5.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.7.i.i.i, %for.cond3.6.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ], [ %call.i.8.i.i.i, %for.cond3.7.i.i.i.idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i.i.i) #7
  br label %do.end.i83

do.end.i83:                                       ; preds = %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i, %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %retval.0.i47.ph.i.i, %idt82p33_measure_tod_write_9_byte_overhead.exit.thread.i.i ], [ %retval.0.i31.ph.i.i, %idt82p33_measure_one_byte_write_overhead.exit.thread.i.i ], [ %retval.0.i.ph.i.i, %do.end.i.i ]
  %client.i81 = getelementptr inbounds %struct.idt82p33, ptr %56, i32 0, i32 1
  %119 = ptrtoint ptr %client.i81 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %client.i81, align 8
  %dev.i82 = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i.ph.i) #10
  br label %idt82p33_enable_tod.exit.thread

if.end5.i:                                        ; preds = %for.cond3.8.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i32.i.i) #7
  %121 = ptrtoint ptr %remainder.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %remainder.i.i32.i.i, align 4, !annotation !172
  %call.i37.i.i.i = call i64 @div_s64_rem(i64 noundef %add14.i.i.i, i32 noundef 5, ptr noundef nonnull %remainder.i.i32.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i32.i.i) #7
  %122 = ptrtoint ptr %tod_write_overhead_ns.i.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call.i37.i.i.i, ptr %tod_write_overhead_ns.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i.i.i) #7
  %mul.neg.neg.i.i = shl i64 %call.i21.i.i.i, 1
  %sub.neg.i.i = add i64 %sub.i.neg.i.i, %mul.neg.neg.i.i
  %123 = ptrtoint ptr %tod_write_overhead_ns.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %tod_write_overhead_ns.i.i, align 8
  %sub11.i.i = add i64 %sub.neg.i.i, %124
  store i64 %sub11.i.i, ptr %tod_write_overhead_ns.i.i, align 8
  %call6.i84 = call fastcc i32 @_idt82p33_settime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i84)
  %tobool7.not.i = icmp eq i32 %call6.i84, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.idt82p33_enable_tod.exit.thread_crit_edge

if.end5.i.idt82p33_enable_tod.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_enable_tod.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %125 = ptrtoint ptr %idt82p334.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %idt82p334.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_cnfg.i.i) #7
  %127 = ptrtoint ptr %sync_cnfg.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %sync_cnfg.i.i, align 1, !annotation !172
  %128 = load i32, ptr @sync_tod_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool2.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool2.not.i.i, label %if.end9.i.if.end.i28.i_crit_edge, label %if.then.i.i

if.end9.i.if.end.i28.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ptp_clock.i, align 4
  %mul.i.i = mul i32 %128, 100
  %call.i26.i = call i32 @ptp_schedule_worker(ptr noundef %130, i32 noundef %mul.i.i) #7
  br label %if.end.i28.i

if.end.i28.i:                                     ; preds = %if.then.i.i, %if.end9.i.if.end.i28.i_crit_edge
  %131 = ptrtoint ptr %dpll_sync_cnfg8.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %dpll_sync_cnfg8.i.i, align 2
  %conv.i.i85 = zext i16 %132 to i32
  %call.i.i27.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %126, i32 noundef %conv.i.i85, ptr noundef nonnull %sync_cnfg.i.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i27.i, 0
  br i1 %tobool4.not.i.i, label %idt82p33_enable_tod.exit, label %idt82p33_enable_tod.exit.thread92

idt82p33_enable_tod.exit.thread92:                ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_cnfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  br label %do.end34.i.sink.split

idt82p33_enable_tod.exit.thread:                  ; preds = %if.end5.i.idt82p33_enable_tod.exit.thread_crit_edge, %do.end.i83, %if.end28.i.idt82p33_enable_tod.exit.thread_crit_edge
  %retval.0.i86.ph = phi i32 [ %retval.0.i.ph.i, %do.end.i83 ], [ %call.i.i, %if.end28.i.idt82p33_enable_tod.exit.thread_crit_edge ], [ %call6.i84, %if.end5.i.idt82p33_enable_tod.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  br label %do.end34.i.sink.split

idt82p33_enable_tod.exit:                         ; preds = %if.end.i28.i
  %133 = ptrtoint ptr %sync_cnfg.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sync_cnfg.i.i, align 1
  %spec.select.i.i = or i8 %134, 2
  store i8 %spec.select.i.i, ptr %sync_cnfg.i.i, align 1
  %135 = ptrtoint ptr %dpll_sync_cnfg8.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %dpll_sync_cnfg8.i.i, align 2
  %conv15.i.i = zext i16 %136 to i32
  %call.i25.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %126, i32 noundef %conv15.i.i, ptr noundef nonnull %sync_cnfg.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_cnfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i.i)
  %tobool30.not.i = icmp eq i32 %call.i25.i.i, 0
  %137 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %client1, align 8
  %dev42.i = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 4
  br i1 %tobool30.not.i, label %idt82p33_enable_channel.exit.thread99, label %idt82p33_enable_tod.exit.do.end34.i_crit_edge

idt82p33_enable_tod.exit.do.end34.i_crit_edge:    ; preds = %idt82p33_enable_tod.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i

do.end34.i.sink.split:                            ; preds = %idt82p33_enable_tod.exit.thread, %idt82p33_enable_tod.exit.thread92
  %retval.0.i8690.ph = phi i32 [ %call.i.i27.i, %idt82p33_enable_tod.exit.thread92 ], [ %retval.0.i86.ph, %idt82p33_enable_tod.exit.thread ]
  %139 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %client1, align 8
  %dev42.i95 = getelementptr inbounds %struct.i2c_client, ptr %140, i32 0, i32 4
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.end34.i.sink.split, %idt82p33_enable_tod.exit.do.end34.i_crit_edge
  %dev42.i91 = phi ptr [ %dev42.i95, %do.end34.i.sink.split ], [ %dev42.i, %idt82p33_enable_tod.exit.do.end34.i_crit_edge ]
  %retval.0.i8690 = phi i32 [ %retval.0.i8690.ph, %do.end34.i.sink.split ], [ %call.i25.i.i, %idt82p33_enable_tod.exit.do.end34.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i91, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i8690) #10
  br label %do.end30

idt82p33_enable_channel.exit.thread99:            ; preds = %idt82p33_enable_tod.exit
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ptp_clock.i, align 4
  %index44.i = getelementptr inbounds %struct.ptp_clock, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %index44.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index44.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42.i, ptr noundef nonnull @.str.51, i32 noundef %indvars.iv, i32 noundef %144) #10
  br label %for.inc

idt82p33_enable_channel.exit:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %call8.i to i32
  %146 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %ptp_clock.i, align 4
  br label %do.end30

do.end30:                                         ; preds = %idt82p33_enable_channel.exit, %do.end34.i, %do.end25.i, %if.end15.i.do.end30_crit_edge, %do.end.i
  %retval.0.i98 = phi i32 [ %145, %idt82p33_enable_channel.exit ], [ %retval.0.i8690, %do.end34.i ], [ %retval.0.i77.i, %do.end25.i ], [ -22, %do.end.i ], [ -524, %if.end15.i.do.end30_crit_edge ]
  %147 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %client1, align 8
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %148, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i98) #10
  br label %if.end40.thread

for.inc:                                          ; preds = %idt82p33_enable_channel.exit.thread99, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0145, %for.body.for.inc_crit_edge ], [ 0, %idt82p33_enable_channel.exit.thread99 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond.not, label %if.end40, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end37:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %client1, align 8
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.15) #10
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %do.end37, %do.end30
  %err.2.ph = phi i32 [ -19, %do.end37 ], [ %retval.0.i98, %do.end30 ]
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  br label %if.then43

if.end40:                                         ; preds = %for.inc
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool42.not = icmp eq i32 %err.1, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.if.then43_crit_edge

if.end40.if.then43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then43:                                        ; preds = %if.end40.if.then43_crit_edge, %if.end40.thread
  %err.2104 = phi i32 [ %err.2.ph, %if.end40.thread ], [ %err.1, %if.end40.if.then43_crit_edge ]
  %ptp_clock.i76 = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 0, i32 1
  %151 = ptrtoint ptr %ptp_clock.i76 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ptp_clock.i76, align 4
  %tobool.not.i = icmp eq ptr %152, null
  br i1 %tobool.not.i, label %if.then43.for.inc.i_crit_edge, label %if.then.i

if.then43.for.inc.i_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %call.i77 = call i32 @ptp_clock_unregister(ptr noundef nonnull %152) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then43.for.inc.i_crit_edge
  %ptp_clock.1.i = getelementptr [2 x %struct.idt82p33_channel], ptr %call.i, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %ptp_clock.1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ptp_clock.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %154, null
  br i1 %tobool.not.1.i, label %for.inc.i.cleanup_crit_edge, label %if.then.1.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.1.i = call i32 @ptp_clock_unregister(ptr noundef nonnull %154) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %155 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then.1.i, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %err.2104, %for.inc.i.cleanup_crit_edge ], [ %err.2104, %if.then.1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ptp_clock.i = getelementptr [2 x %struct.idt82p33_channel], ptr %1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %ptp_clock.1.i = getelementptr [2 x %struct.idt82p33_channel], ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ptp_clock.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_clock.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %for.inc.i.idt82p33_ptp_clock_unregister_all.exit_crit_edge, label %if.then.1.i

for.inc.i.idt82p33_ptp_clock_unregister_all.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_ptp_clock_unregister_all.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.1.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %5) #7
  br label %idt82p33_ptp_clock_unregister_all.exit

idt82p33_ptp_clock_unregister_all.exit:           ; preds = %if.then.1.i, %for.inc.i.idt82p33_ptp_clock_unregister_all.exit_crit_edge
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %reg_lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt82p33_load_firmware(ptr nocapture noundef %idt82p33) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt82p33_load_firmware.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt82p33_load_firmware, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt82p33_load_firmware.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %client3 = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 1
  %4 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client3, align 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call5 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.19, ptr noundef %dev4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body14, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client3, align 8
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, i32 noundef %call5) #10
  br label %cleanup

do.body14:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt82p33_load_firmware.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt82p33_load_firmware, %if.then26)) #7
          to label %do.end31 [label %if.then26], !srcloc !173

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client3, align 8
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt82p33_load_firmware.__UNIQUE_ID_ddebug326, ptr noundef %dev28, ptr noundef nonnull @.str.20, i32 noundef %13) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body14
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp129 = icmp sgt i32 %17, 0
  br i1 %cmp129, label %for.body.lr.ph, label %do.end31.for.end_crit_edge

do.end31.for.end_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end31
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %output_mask31.i = getelementptr [2 x %struct.idt82p33_channel], ptr %idt82p33, i32 0, i32 1, i32 7
  %output_mask.i = getelementptr inbounds %struct.idt82p33_channel, ptr %idt82p33, i32 0, i32 7
  %pll_mask.i = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rec.0131 = phi ptr [ %19, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %len.0130 = phi i32 [ %17, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %reserved = getelementptr inbounds %struct.idt82p33_fwrc, ptr %rec.0131, i32 0, i32 3
  %20 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  br i1 %tobool33.not, label %if.else, label %do.end37

do.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client3, align 8
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.22) #10
  br label %out

if.else:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.idt82p33_fwrc, ptr %rec.0131, i32 0, i32 2
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %value, align 1
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %val, align 1
  %loaddr40 = getelementptr inbounds %struct.idt82p33_fwrc, ptr %rec.0131, i32 0, i32 1
  %27 = ptrtoint ptr %loaddr40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %loaddr40, align 1
  %29 = ptrtoint ptr %rec.0131 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rec.0131, align 1
  %incdec.ptr = getelementptr %struct.idt82p33_fwrc, ptr %rec.0131, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.i = icmp eq i8 %30, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %28)
  %cmp3.i = icmp eq i8 %28, -91
  %or.cond.i = and i1 %cmp3.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %if.else
  %conv5.i = zext i8 %25 to i32
  %and.i = and i32 %conv5.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and7.i = and i32 %conv5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond47.i = or i1 %tobool.not.i, %tobool8.not.i
  br i1 %or.cond47.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i.le = zext i8 %25 to i32
  %31 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %conv5.i.le) #10
  br label %out

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pll_mask.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %25, ptr %pll_mask.i, align 1
  br label %for.inc

if.else11.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %28)
  %cmp17.i = icmp eq i8 %28, -80
  %or.cond48.i = and i1 %cmp17.i, %cmp.i
  br i1 %or.cond48.i, label %if.then19.i, label %if.else20.i

if.then19.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %25, ptr %output_mask.i, align 4
  br label %for.inc

if.else20.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %28)
  %cmp26.i = icmp eq i8 %28, -78
  %or.cond49.i = and i1 %cmp26.i, %cmp.i
  br i1 %or.cond49.i, label %if.then28.i, label %if.then44

if.then28.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %output_mask31.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %25, ptr %output_mask31.i, align 4
  br label %for.inc

if.then44:                                        ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %cmp45 = icmp ugt i8 %30, 7
  %36 = and i8 %28, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %36)
  %37 = icmp eq i8 %36, 124
  %or.cond = select i1 %cmp45, i1 true, i1 %37
  br i1 %or.cond, label %if.then44.for.inc_crit_edge, label %if.end63

if.then44.for.inc_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end63:                                         ; preds = %if.then44
  %conv = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv, 7
  %38 = and i8 %28, 127
  %and = zext i8 %38 to i32
  %or = or i32 %shl, %and
  %call.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %idt82p33, i32 noundef %or, ptr noundef nonnull %val, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool64.not = icmp eq i32 %call.i, 0
  br i1 %tobool64.not, label %if.end63.for.inc_crit_edge, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end63.for.inc_crit_edge, %if.then44.for.inc_crit_edge, %if.then28.i, %if.then19.i, %if.else.i
  %sub = add nsw i32 %len.0130, -4
  %cmp = icmp sgt i32 %len.0130, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end31.for.end_crit_edge
  %39 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client3, align 8
  %dev.i101 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %pll_mask.i102 = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 3
  %41 = ptrtoint ptr %pll_mask.i102 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pll_mask.i102, align 1
  %conv.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i101, ptr noundef nonnull @.str.35, i32 noundef %conv.i) #10
  %43 = ptrtoint ptr %pll_mask.i102 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pll_mask.i102, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i103 = icmp eq i8 %45, 0
  br i1 %tobool.not.i103, label %for.end.for.inc.i_crit_edge, label %do.end10.i

for.end.for.inc.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end10.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client3, align 8
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %output_mask.i104 = getelementptr [2 x %struct.idt82p33_channel], ptr %idt82p33, i32 0, i32 0, i32 7
  %48 = ptrtoint ptr %output_mask.i104 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %output_mask.i104, align 4
  %conv14.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.i, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef %conv14.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end10.i, %for.end.for.inc.i_crit_edge
  %50 = ptrtoint ptr %pll_mask.i102 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pll_mask.i102, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.1.i = icmp eq i8 %52, 0
  br i1 %tobool.not.1.i, label %for.inc.i.out_crit_edge, label %do.end10.1.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end10.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client3, align 8
  %dev12.1.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  %output_mask.1.i = getelementptr [2 x %struct.idt82p33_channel], ptr %idt82p33, i32 0, i32 1, i32 7
  %55 = ptrtoint ptr %output_mask.1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %output_mask.1.i, align 4
  %conv14.1.i = zext i8 %56 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.1.i, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef %conv14.1.i) #10
  br label %out

out:                                              ; preds = %do.end10.1.i, %for.inc.i.out_crit_edge, %if.end63.out_crit_edge, %do.end.i, %do.end37
  %err.4 = phi i32 [ 0, %for.inc.i.out_crit_edge ], [ 0, %do.end10.1.i ], [ -22, %do.end37 ], [ -22, %do.end.i ], [ %call.i, %if.end63.out_crit_edge ]
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end10
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ %err.4, %out ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt82p33_rdwr(ptr nocapture noundef %idt82p33, i32 noundef %regaddr, ptr noundef %buf, i32 noundef %count, i1 noundef zeroext %write) unnamed_addr #2 align 64 {
entry:
  %regaddr.addr.i = alloca i8, align 1
  %msg.i21 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i = alloca [513 x i8], align 1
  %msg.i.i = alloca [513 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %regaddr, 7
  %0 = trunc i32 %shr to i8
  %conv = and i8 %0, 7
  %1 = trunc i32 %regaddr to i8
  %conv2 = and i8 %1, 127
  %page_offset.i = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 2
  %2 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp eq i8 %3, %conv
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %client1.i.i = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 1
  %4 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 513, ptr nonnull %msg.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 1
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 2
  %8 = call ptr @memset(ptr %7, i32 255, i32 511)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 127, ptr %msg.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %6, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %msg.i.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6.i.i, label %idt82p33_page_offset.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 513, ptr nonnull %msg.i.i) #7
  %11 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %page_offset.i, align 4
  br label %if.end

idt82p33_page_offset.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 513, ptr nonnull %msg.i.i) #7
  %12 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %conv4.i = zext i8 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %conv4.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  br i1 %write, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %client1.i = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 1
  %14 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client1.i, align 8
  call void @llvm.lifetime.start.p0(i64 513, ptr nonnull %msg.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 1
  %conv.i = and i32 %count, 65535
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2, ptr %msg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %conv.i)
  %18 = icmp ugt i32 %conv.i, 511
  %19 = sub nsw i32 512, %conv.i
  %20 = select i1 %18, i32 0, i32 %19
  %21 = getelementptr i8, ptr %16, i32 %conv.i
  %22 = call ptr @memset(ptr %21, i32 255, i32 %20)
  %23 = call ptr @memcpy(ptr %16, ptr %buf, i32 %conv.i)
  %add.i = add nuw nsw i32 %conv.i, 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef %add.i, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %do.end.i19, label %if.then4.idt82p33_xfer_write.exit_crit_edge

if.then4.idt82p33_xfer_write.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_xfer_write.exit

do.end.i19:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #10
  br label %idt82p33_xfer_write.exit

idt82p33_xfer_write.exit:                         ; preds = %do.end.i19, %if.then4.idt82p33_xfer_write.exit_crit_edge
  %retval.0.i20 = phi i32 [ %call.i.i, %do.end.i19 ], [ 0, %if.then4.idt82p33_xfer_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 513, ptr nonnull %msg.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regaddr.addr.i)
  %24 = ptrtoint ptr %regaddr.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2, ptr %regaddr.addr.i, align 1
  %client1.i22 = getelementptr inbounds %struct.idt82p33, ptr %idt82p33, i32 0, i32 1
  %25 = ptrtoint ptr %client1.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client1.i22, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i21) #7
  %27 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i, align 2
  %31 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msg.i21, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i, align 2
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %27, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %34 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %regaddr.addr.i, ptr %buf6.i, align 4
  %35 = load i16, ptr %addr.i, align 2
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i21, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i21, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags11.i, align 2
  %conv.i23 = trunc i32 %count to i16
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i21, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i23, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i21, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i21, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i24 = icmp slt i32 %call.i, 0
  br i1 %cmp.i24, label %do.end.i26, label %if.else.i27

do.end.i26:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i25 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i25, ptr noundef nonnull @.str.30, i32 noundef %call.i) #10
  br label %idt82p33_xfer_read.exit

if.else.i27:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp17.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp17.not.i, label %if.else.i27.idt82p33_xfer_read.exit_crit_edge, label %do.end22.i

if.else.i27.idt82p33_xfer_read.exit_crit_edge:    ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_xfer_read.exit

do.end22.i:                                       ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #9
  %dev23.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.33, i32 noundef %call.i, i32 noundef 2) #10
  br label %idt82p33_xfer_read.exit

idt82p33_xfer_read.exit:                          ; preds = %do.end22.i, %if.else.i27.idt82p33_xfer_read.exit_crit_edge, %do.end.i26
  %retval.0.i28 = phi i32 [ %call.i, %do.end.i26 ], [ -5, %do.end22.i ], [ 0, %if.else.i27.idt82p33_xfer_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i21) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regaddr.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %idt82p33_xfer_read.exit, %idt82p33_xfer_write.exit, %idt82p33_page_offset.exit
  %retval.0 = phi i32 [ %retval.0.i20, %idt82p33_xfer_write.exit ], [ %retval.0.i28, %idt82p33_xfer_read.exit ], [ %call.i.i.i, %idt82p33_page_offset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_adjwritephase(ptr nocapture noundef %ptp, i32 noundef %offset_ns) #2 align 64 {
entry:
  %dpll_mode.i = alloca i8, align 1
  %remainder.i = alloca i32, align 4
  %val = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %sub = sub i32 0, %offset_ns
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 %conv, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 20000052084, i64 %mul)
  %cmp = icmp sgt i64 %mul, 20000052084
  %2 = tail call i64 @llvm.smax.i64(i64 %mul, i64 -20000052084)
  %phi.bo = mul nsw i64 %2, 1000
  %offset_fs.0 = select i1 %cmp, i64 20000052084000, i64 %phi.bo
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #7
  %3 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %remainder.i, align 4, !annotation !172
  %call.i = call i64 @div_s64_rem(i64 noundef %offset_fs.0, i32 noundef 74506, ptr noundef nonnull %remainder.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #7
  %conv8 = trunc i64 %call.i to i8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %val, align 4
  %5 = lshr i64 %call.i, 8
  %conv10 = trunc i64 %5 to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %arrayidx11, align 1
  %7 = lshr i64 %call.i, 16
  %conv14 = trunc i64 %7 to i8
  %arrayidx15 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %arrayidx15, align 2
  %arrayidx19 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 3
  %9 = lshr i64 %call.i, 24
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 31
  %conv22 = or i8 %11, -128
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx19, align 1
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %13 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  %15 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %dpll_mode.i, align 1, !annotation !172
  %pll_mode.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 3
  %16 = ptrtoint ptr %pll_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %17)
  %cmp.i = icmp eq i32 %17, 18
  br i1 %cmp.i, label %entry.if.end25_crit_edge, label %if.end.i

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end.i:                                         ; preds = %entry
  %dpll_mode_cnfg.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 11
  %18 = ptrtoint ptr %dpll_mode_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dpll_mode_cnfg.i, align 4
  %conv.i = zext i16 %19 to i32
  %call.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %14, i32 noundef %conv.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dpll_mode.i, align 1
  %22 = and i8 %21, -32
  %conv7.i = or i8 %22, 18
  store i8 %conv7.i, ptr %dpll_mode.i, align 1
  %23 = ptrtoint ptr %dpll_mode_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dpll_mode_cnfg.i, align 4
  %conv9.i = zext i16 %24 to i32
  %call.i27.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %14, i32 noundef %conv9.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool11.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end3.i.do.end_crit_edge

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dpll_mode.i, align 1
  %conv14.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %pll_mode.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv14.i, ptr %pll_mode.i, align 4
  br label %if.end25

do.end:                                           ; preds = %if.end3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i.do.end_crit_edge ], [ %call.i27.i, %if.end3.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  %client = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i) #10
  br label %out

if.end25:                                         ; preds = %if.end13.i, %entry.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  %dpll_phase_cnfg = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 13
  %30 = ptrtoint ptr %dpll_phase_cnfg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dpll_phase_cnfg, align 4
  %conv26 = zext i16 %31 to i32
  %call.i41 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %conv26, ptr noundef nonnull %val, i32 noundef 4, i1 noundef zeroext true) #7
  br label %out

out:                                              ; preds = %if.end25, %do.end
  %err.0 = phi i32 [ %retval.0.i, %do.end ], [ %call.i41, %if.end25 ]
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_adjfine(ptr nocapture noundef %ptp, i32 noundef %scaled_ppm) #2 align 64 {
entry:
  %dpll_mode.i.i = alloca i8, align 1
  %remainder.i.i = alloca i32, align 4
  %buf.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i) #7
  %current_freq_ppb.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 6
  %4 = ptrtoint ptr %current_freq_ppb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_freq_ppb.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %scaled_ppm)
  %cmp.i = icmp eq i32 %5, %scaled_ppm
  br i1 %cmp.i, label %entry._idt82p33_adjfine.exit.thread_crit_edge, label %if.end.i

entry._idt82p33_adjfine.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idt82p33_adjfine.exit.thread

if.end.i:                                         ; preds = %entry
  %conv.i = sext i32 %scaled_ppm to i64
  %mul.i = mul nsw i64 %conv.i, 244140625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %6 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !172
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul.i, i32 noundef 2688, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %conv4.i = trunc i64 %call.i.i to i8
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4.i, ptr %buf.i, align 1
  %8 = lshr i64 %call.i.i, 8
  %conv4.1.i = trunc i64 %8 to i8
  %arrayidx.1.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.1.i, ptr %arrayidx.1.i, align 1
  %10 = lshr i64 %call.i.i, 16
  %conv4.2.i = trunc i64 %10 to i8
  %arrayidx.2.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.2.i, ptr %arrayidx.2.i, align 1
  %12 = lshr i64 %call.i.i, 24
  %conv4.3.i = trunc i64 %12 to i8
  %arrayidx.3.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.3.i, ptr %arrayidx.3.i, align 1
  %14 = lshr i64 %call.i.i, 32
  %conv4.4.i = trunc i64 %14 to i8
  %arrayidx.4.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4.4.i, ptr %arrayidx.4.i, align 1
  %16 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  %18 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %dpll_mode.i.i, align 1, !annotation !172
  %pll_mode.i.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 3
  %19 = ptrtoint ptr %pll_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pll_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 10
  br i1 %cmp.i.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.end.i
  %dpll_mode_cnfg.i.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 11
  %21 = ptrtoint ptr %dpll_mode_cnfg.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dpll_mode_cnfg.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %call.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %conv.i.i, ptr noundef nonnull %dpll_mode.i.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge

if.end.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_dpll_set_mode.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %23 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dpll_mode.i.i, align 1
  %25 = and i8 %24, -32
  %conv7.i.i = or i8 %25, 10
  store i8 %conv7.i.i, ptr %dpll_mode.i.i, align 1
  %26 = ptrtoint ptr %dpll_mode_cnfg.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dpll_mode_cnfg.i.i, align 4
  %conv9.i.i = zext i16 %27 to i32
  %call.i27.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %conv9.i.i, ptr noundef nonnull %dpll_mode.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i27.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end3.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge

if.end3.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_dpll_set_mode.exit.i

if.end13.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dpll_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dpll_mode.i.i, align 1
  %conv14.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %pll_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv14.i.i, ptr %pll_mode.i.i, align 4
  br label %if.end7.i

idt82p33_dpll_set_mode.exit.i:                    ; preds = %if.end3.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge, %if.end.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge ], [ %call.i27.i.i, %if.end3.i.i.idt82p33_dpll_set_mode.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  br label %do.end

if.end7.i:                                        ; preds = %if.end13.i.i, %if.end.i.if.end7.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i) #7
  %dpll_freq_cnfg.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 12
  %31 = ptrtoint ptr %dpll_freq_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dpll_freq_cnfg.i, align 2
  %conv8.i = zext i16 %32 to i32
  %call.i32.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %3, i32 noundef %conv8.i, ptr noundef nonnull %buf.i, i32 noundef 5, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp10.i = icmp eq i32 %call.i32.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end7.i.do.end_crit_edge

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %current_freq_ppb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %scaled_ppm, ptr %current_freq_ppb.i, align 4
  br label %_idt82p33_adjfine.exit.thread

_idt82p33_adjfine.exit.thread:                    ; preds = %if.then12.i, %entry._idt82p33_adjfine.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #7
  br label %if.end

do.end:                                           ; preds = %if.end7.i.do.end_crit_edge, %idt82p33_dpll_set_mode.exit.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %idt82p33_dpll_set_mode.exit.i ], [ %call.i32.i, %if.end7.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #7
  %client = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %_idt82p33_adjfine.exit.thread
  %retval.0.i10 = phi i32 [ 0, %_idt82p33_adjfine.exit.thread ], [ %retval.0.i, %do.end ]
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  ret i32 %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_adjtime(ptr nocapture noundef readonly %ptp, i64 noundef %delta_ns) #2 align 64 {
entry:
  %sync_cnfg.i = alloca i8, align 1
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %2 = tail call i64 @llvm.abs.i64(i64 %delta_ns, i1 false)
  %3 = load i32, ptr @phase_snap_threshold, align 4
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv)
  %cmp3 = icmp slt i64 %2, %conv
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %reg_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %6 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %calculate_overhead_flag.i = getelementptr inbounds %struct.idt82p33, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %calculate_overhead_flag.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %calculate_overhead_flag.i, align 8
  %call.i = call fastcc i32 @_idt82p33_gettime(ptr noundef %ptp, ptr noundef nonnull %ts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %_idt82p33_adjtime.exit.thread

_idt82p33_adjtime.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %9)
  %cmp.i.i = icmp sgt i64 %9, 9223372035
  br i1 %cmp.i.i, label %if.end.i._idt82p33_adjtime.exit_crit_edge, label %if.end.i.i

if.end.i._idt82p33_adjtime.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idt82p33_adjtime.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %9)
  %cmp2.i.i = icmp slt i64 %9, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i._idt82p33_adjtime.exit_crit_edge, label %if.end4.i.i

if.end.i.i._idt82p33_adjtime.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idt82p33_adjtime.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %9, 1000000000
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %11 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %_idt82p33_adjtime.exit

_idt82p33_adjtime.exit:                           ; preds = %if.end4.i.i, %if.end.i.i._idt82p33_adjtime.exit_crit_edge, %if.end.i._idt82p33_adjtime.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.end.i._idt82p33_adjtime.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i._idt82p33_adjtime.exit_crit_edge ]
  %tod_write_overhead_ns.i = getelementptr inbounds %struct.idt82p33, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %tod_write_overhead_ns.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tod_write_overhead_ns.i, align 8
  %add.i = add i64 %retval.0.i.i, %delta_ns
  %add3.i = add i64 %add.i, %13
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %add3.i) #7
  %call4.i = call fastcc i32 @_idt82p33_settime(ptr noundef %ptp, ptr noundef nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end8, label %_idt82p33_adjtime.exit.if.then6_crit_edge

_idt82p33_adjtime.exit.if.then6_crit_edge:        ; preds = %_idt82p33_adjtime.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %_idt82p33_adjtime.exit.if.then6_crit_edge, %_idt82p33_adjtime.exit.thread
  %retval.0.i42 = phi i32 [ %call.i, %_idt82p33_adjtime.exit.thread ], [ %call4.i, %_idt82p33_adjtime.exit.if.then6_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  %client = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i42) #10
  br label %cleanup

if.end8:                                          ; preds = %_idt82p33_adjtime.exit
  %16 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_cnfg.i) #7
  %18 = ptrtoint ptr %sync_cnfg.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %sync_cnfg.i, align 1, !annotation !172
  %19 = load i32, ptr @sync_tod_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %if.end8.if.end.i38_crit_edge, label %if.then.i

if.end8.if.end.i38_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i38

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %ptp_clock.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 1
  %20 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp_clock.i, align 4
  %mul.i = mul i32 %19, 100
  %call.i37 = call i32 @ptp_schedule_worker(ptr noundef %21, i32 noundef %mul.i) #7
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i, %if.end8.if.end.i38_crit_edge
  %dpll_sync_cnfg.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 14
  %22 = ptrtoint ptr %dpll_sync_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dpll_sync_cnfg.i, align 2
  %conv.i = zext i16 %23 to i32
  %call.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %conv.i, ptr noundef nonnull %sync_cnfg.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %idt82p33_sync_tod.exit, label %idt82p33_sync_tod.exit.thread

idt82p33_sync_tod.exit.thread:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_cnfg.i) #7
  br label %do.end14

idt82p33_sync_tod.exit:                           ; preds = %if.end.i38
  %24 = ptrtoint ptr %sync_cnfg.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sync_cnfg.i, align 1
  %spec.select.i = or i8 %25, 2
  store i8 %spec.select.i, ptr %sync_cnfg.i, align 1
  %26 = ptrtoint ptr %dpll_sync_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dpll_sync_cnfg.i, align 2
  %conv15.i = zext i16 %27 to i32
  %call.i25.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %conv15.i, ptr noundef nonnull %sync_cnfg.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_cnfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool10.not = icmp eq i32 %call.i25.i, 0
  br i1 %tobool10.not, label %idt82p33_sync_tod.exit.if.end17_crit_edge, label %idt82p33_sync_tod.exit.do.end14_crit_edge

idt82p33_sync_tod.exit.do.end14_crit_edge:        ; preds = %idt82p33_sync_tod.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

idt82p33_sync_tod.exit.if.end17_crit_edge:        ; preds = %idt82p33_sync_tod.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %idt82p33_sync_tod.exit.do.end14_crit_edge, %idt82p33_sync_tod.exit.thread
  %retval.0.i3945 = phi i32 [ %call.i.i, %idt82p33_sync_tod.exit.thread ], [ %call.i25.i, %idt82p33_sync_tod.exit.do.end14_crit_edge ]
  %client15 = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %client15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client15, align 8
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i3945) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %idt82p33_sync_tod.exit.if.end17_crit_edge
  %retval.0.i3946 = phi i32 [ %retval.0.i3945, %do.end14 ], [ 0, %idt82p33_sync_tod.exit.if.end17_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i42, %if.then6 ], [ %retval.0.i3946, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_gettime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef writeonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @_idt82p33_gettime(ptr noundef %ptp, ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.60, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_settime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @_idt82p33_settime(ptr noundef %ptp, ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.61, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_enable(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %4 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  br i1 %tobool.not, label %if.then.if.end13.sink.split_crit_edge, label %if.else

if.then.if.end13.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false:                                    ; preds = %if.else
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %8)
  %cmp4.not = icmp eq i64 %8, 1
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %nsec7 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %nsec7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nsec7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false5.if.end13.sink.split_crit_edge, label %lor.lhs.false5.if.end13_crit_edge

lor.lhs.false5.if.end13_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false5.if.end13.sink.split_crit_edge:     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %lor.lhs.false5.if.end13.sink.split_crit_edge, %if.then.if.end13.sink.split_crit_edge
  %11 = xor i1 %tobool.not, true
  %call = tail call fastcc i32 @idt82p33_perout_enable(ptr noundef %ptp, i1 noundef zeroext %11, ptr noundef %4)
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %lor.lhs.false5.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %err.0 = phi i32 [ -95, %entry.if.end13_crit_edge ], [ -34, %lor.lhs.false5.if.end13_crit_edge ], [ -34, %lor.lhs.false.if.end13_crit_edge ], [ -34, %if.else.if.end13_crit_edge ], [ %call, %if.end13.sink.split ]
  tail call void @mutex_unlock(ptr noundef %reg_lock) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt82p33_sync_tod_work_handler(ptr nocapture noundef readonly %ptp) #2 align 64 {
entry:
  %sync_cnfg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %reg_lock = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_cnfg.i) #7
  %4 = ptrtoint ptr %sync_cnfg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sync_cnfg.i, align 1, !annotation !172
  %dpll_sync_cnfg.i = getelementptr inbounds %struct.idt82p33_channel, ptr %ptp, i32 0, i32 14
  %5 = ptrtoint ptr %dpll_sync_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dpll_sync_cnfg.i, align 2
  %conv.i = zext i16 %6 to i32
  %call.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %sync_cnfg.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %entry.idt82p33_sync_tod.exit_crit_edge

entry.idt82p33_sync_tod.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_sync_tod.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %sync_cnfg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sync_cnfg.i, align 1
  %9 = and i8 %8, -3
  store i8 %9, ptr %sync_cnfg.i, align 1
  %10 = ptrtoint ptr %dpll_sync_cnfg.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dpll_sync_cnfg.i, align 2
  %conv15.i = zext i16 %11 to i32
  %call.i25.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %3, i32 noundef %conv15.i, ptr noundef nonnull %sync_cnfg.i, i32 noundef 1, i1 noundef zeroext true) #7
  br label %idt82p33_sync_tod.exit

idt82p33_sync_tod.exit:                           ; preds = %if.end6.i, %entry.idt82p33_sync_tod.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_cnfg.i) #7
  call void @mutex_unlock(ptr noundef %reg_lock) #7
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idt82p33_gettime(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %ts) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  %trigger = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  %11 = call ptr @memset(ptr %buf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %trigger) #7
  %12 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -103, ptr %trigger, align 1
  %dpll_tod_trigger = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 9
  %13 = ptrtoint ptr %dpll_tod_trigger to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dpll_tod_trigger, align 4
  %conv = zext i16 %14 to i32
  %call.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %trigger, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %calculate_overhead_flag = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %calculate_overhead_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i64 @ktime_get_raw() #7
  %start_time = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call4, ptr %start_time, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dpll_tod_sts = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 10
  %18 = ptrtoint ptr %dpll_tod_sts to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dpll_tod_sts, align 2
  %conv6 = zext i16 %19 to i32
  %call.i23 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %conv6, ptr noundef nonnull %buf, i32 noundef 10, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool8.not = icmp eq i32 %call.i23, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 1
  %conv5.i = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %conv.i, 16
  %25 = shl nuw nsw i32 %conv5.i, 8
  %shl.1.i = or i32 %25, %24
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %conv5.1.i = zext i8 %27 to i32
  %or.1.i = or i32 %shl.1.i, %conv5.1.i
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %conv5.2.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %10, align 1
  %conv7.i = zext i8 %31 to i64
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %9, align 1
  %conv17.i = zext i8 %33 to i64
  %34 = shl nuw nsw i64 %conv7.i, 16
  %35 = shl nuw nsw i64 %conv17.i, 8
  %shl13.1.i = or i64 %35, %34
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %8, align 1
  %conv17.1.i = zext i8 %37 to i64
  %or18.1.i = or i64 %shl13.1.i, %conv17.1.i
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %7, align 1
  %conv17.2.i = zext i8 %39 to i64
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %6, align 1
  %conv17.3.i = zext i8 %41 to i64
  %42 = shl nuw nsw i64 %or18.1.i, 24
  %43 = shl nuw nsw i64 %conv17.2.i, 16
  %44 = shl nuw nsw i64 %conv17.3.i, 8
  %45 = or i64 %43, %44
  %shl13.4.i = or i64 %42, %45
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %5, align 1
  %conv17.4.i = zext i8 %47 to i64
  %or18.4.i = or i64 %shl13.4.i, %conv17.4.i
  %shl.2.i = shl nuw i32 %or.1.i, 8
  %or.2.i = or i32 %shl.2.i, %conv5.2.i
  %48 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %or18.4.i, ptr %ts, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %49 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.2.i, ptr %tv_nsec.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i23, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %trigger) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idt82p33_settime(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  %buf = alloca [10 x i8], align 1
  %trigger = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idt82p331 = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idt82p331 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idt82p331, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %local_ts.sroa.0.0.copyload39 = load i64, ptr %ts, align 8
  %local_ts.sroa.7.0.ts.sroa_idx = getelementptr inbounds i8, ptr %ts, i32 8
  %3 = ptrtoint ptr %local_ts.sroa.7.0.ts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %local_ts.sroa.7.0.copyload40 = load i32, ptr %local_ts.sroa.7.0.ts.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 6
  %10 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 7
  %11 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 8
  %12 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %trigger) #7
  %13 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -103, ptr %trigger, align 1
  %dpll_tod_trigger = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 9
  %14 = ptrtoint ptr %dpll_tod_trigger to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dpll_tod_trigger, align 4
  %conv = zext i16 %15 to i32
  %call.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %trigger, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %calculate_overhead_flag = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %calculate_overhead_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  %extract.t = trunc i64 %local_ts.sroa.0.0.copyload39 to i8
  %extract = lshr i64 %local_ts.sroa.0.0.copyload39, 8
  %extract.t44 = trunc i64 %extract to i8
  %extract47 = lshr i64 %local_ts.sroa.0.0.copyload39, 16
  %extract.t48 = trunc i64 %extract47 to i8
  %extract51 = lshr i64 %local_ts.sroa.0.0.copyload39, 24
  %extract.t52 = trunc i64 %extract51 to i8
  %extract55 = lshr i64 %local_ts.sroa.0.0.copyload39, 32
  %extract.t56 = trunc i64 %extract55 to i8
  %extract59 = lshr i64 %local_ts.sroa.0.0.copyload39, 40
  %extract.t60 = trunc i64 %extract59 to i8
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i64 @ktime_get_raw() #7
  %start_time = getelementptr inbounds %struct.idt82p33, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start_time, align 8
  %sub = sub i64 %call4, %19
  %conv.i = sext i32 %local_ts.sroa.7.0.copyload40 to i64
  %add.i = add i64 %sub, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #7
  %20 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add.i, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i)
  %cmp1.i.i = icmp ugt i64 %add.i, 999999999
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %cmp1.i.i, label %if.then3.while.body.i.i_crit_edge, label %if.then3.timespec64_add_ns.exit_crit_edge

if.then3.timespec64_add_ns.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_add_ns.exit

if.then3.while.body.i.i_crit_edge:                ; preds = %if.then3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then3.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.then3.while.body.i.i_crit_edge ]
  %21 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %if.then3.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %21) #7, !srcloc !174
  %22 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %23, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t7.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %if.then3.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %if.then3.timespec64_add_ns.exit_crit_edge ], [ %extract.t7.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %if.then3.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #7
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %add2.i = add i64 %local_ts.sroa.0.0.copyload39, %conv1.i
  %24 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %calculate_overhead_flag, align 8
  %extract.t43 = trunc i64 %add2.i to i8
  %extract45 = lshr i64 %add2.i, 8
  %extract.t46 = trunc i64 %extract45 to i8
  %extract49 = lshr i64 %add2.i, 16
  %extract.t50 = trunc i64 %extract49 to i8
  %extract53 = lshr i64 %add2.i, 24
  %extract.t54 = trunc i64 %extract53 to i8
  %extract57 = lshr i64 %add2.i, 32
  %extract.t58 = trunc i64 %extract57 to i8
  %extract61 = lshr i64 %add2.i, 40
  %extract.t62 = trunc i64 %extract61 to i8
  br label %if.end8

if.end8:                                          ; preds = %timespec64_add_ns.exit, %if.end.if.end8_crit_edge
  %local_ts.sroa.7.0 = phi i32 [ %local_ts.sroa.7.0.copyload40, %if.end.if.end8_crit_edge ], [ %.lcssa.i.off0.i, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off0 = phi i8 [ %extract.t, %if.end.if.end8_crit_edge ], [ %extract.t43, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off8 = phi i8 [ %extract.t44, %if.end.if.end8_crit_edge ], [ %extract.t46, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off16 = phi i8 [ %extract.t48, %if.end.if.end8_crit_edge ], [ %extract.t50, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off24 = phi i8 [ %extract.t52, %if.end.if.end8_crit_edge ], [ %extract.t54, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off32 = phi i8 [ %extract.t56, %if.end.if.end8_crit_edge ], [ %extract.t58, %timespec64_add_ns.exit ]
  %local_ts.sroa.0.0.off40 = phi i8 [ %extract.t60, %if.end.if.end8_crit_edge ], [ %extract.t62, %timespec64_add_ns.exit ]
  %conv2.i = trunc i32 %local_ts.sroa.7.0 to i8
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i, ptr %buf, align 1
  %26 = lshr i32 %local_ts.sroa.7.0, 8
  %conv2.1.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.1.i, ptr %4, align 1
  %28 = lshr i32 %local_ts.sroa.7.0, 16
  %conv2.2.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv2.2.i, ptr %5, align 1
  %30 = lshr i32 %local_ts.sroa.7.0, 24
  %conv2.3.i = trunc i32 %30 to i8
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv2.3.i, ptr %6, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %local_ts.sroa.0.0.off0, ptr %7, align 1
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %local_ts.sroa.0.0.off8, ptr %8, align 1
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %local_ts.sroa.0.0.off16, ptr %9, align 1
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %local_ts.sroa.0.0.off24, ptr %10, align 1
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %local_ts.sroa.0.0.off32, ptr %11, align 1
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %local_ts.sroa.0.0.off40, ptr %12, align 1
  %dpll_tod_cnfg = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 8
  %38 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11 = zext i16 %39 to i32
  %call.i37 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %conv11, ptr noundef nonnull %buf, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool14.not = icmp eq i32 %call.i37, 0
  br i1 %tobool14.not, label %for.cond, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end8
  %40 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.1 = zext i16 %41 to i32
  %add.1 = add nuw nsw i32 %conv11.1, 1
  %call.i37.1 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.1, ptr noundef %4, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.1)
  %tobool14.not.1 = icmp eq i32 %call.i37.1, 0
  br i1 %tobool14.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %42 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.2 = zext i16 %43 to i32
  %add.2 = add nuw nsw i32 %conv11.2, 2
  %call.i37.2 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.2, ptr noundef %5, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.2)
  %tobool14.not.2 = icmp eq i32 %call.i37.2, 0
  br i1 %tobool14.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %44 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.3 = zext i16 %45 to i32
  %add.3 = add nuw nsw i32 %conv11.3, 3
  %call.i37.3 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.3, ptr noundef %6, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.3)
  %tobool14.not.3 = icmp eq i32 %call.i37.3, 0
  br i1 %tobool14.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %46 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.4 = zext i16 %47 to i32
  %add.4 = add nuw nsw i32 %conv11.4, 4
  %call.i37.4 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.4, ptr noundef %7, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.4)
  %tobool14.not.4 = icmp eq i32 %call.i37.4, 0
  br i1 %tobool14.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %48 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.5 = zext i16 %49 to i32
  %add.5 = add nuw nsw i32 %conv11.5, 5
  %call.i37.5 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.5, ptr noundef %8, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.5)
  %tobool14.not.5 = icmp eq i32 %call.i37.5, 0
  br i1 %tobool14.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %50 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.6 = zext i16 %51 to i32
  %add.6 = add nuw nsw i32 %conv11.6, 6
  %call.i37.6 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.6, ptr noundef %9, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.6)
  %tobool14.not.6 = icmp eq i32 %call.i37.6, 0
  br i1 %tobool14.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %52 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.7 = zext i16 %53 to i32
  %add.7 = add nuw nsw i32 %conv11.7, 7
  %call.i37.7 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.7, ptr noundef %10, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.7)
  %tobool14.not.7 = icmp eq i32 %call.i37.7, 0
  br i1 %tobool14.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %54 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.8 = zext i16 %55 to i32
  %add.8 = add nuw nsw i32 %conv11.8, 8
  %call.i37.8 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.8, ptr noundef %11, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.8)
  %tobool14.not.8 = icmp eq i32 %call.i37.8, 0
  br i1 %tobool14.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dpll_tod_cnfg to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dpll_tod_cnfg, align 2
  %conv11.9 = zext i16 %57 to i32
  %add.9 = add nuw nsw i32 %conv11.9, 9
  %call.i37.9 = call fastcc i32 @idt82p33_rdwr(ptr noundef %1, i32 noundef %add.9, ptr noundef %12, i32 noundef 1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i37, %if.end8.cleanup_crit_edge ], [ %call.i37.1, %for.cond.cleanup_crit_edge ], [ %call.i37.2, %for.cond.1.cleanup_crit_edge ], [ %call.i37.3, %for.cond.2.cleanup_crit_edge ], [ %call.i37.4, %for.cond.3.cleanup_crit_edge ], [ %call.i37.5, %for.cond.4.cleanup_crit_edge ], [ %call.i37.6, %for.cond.5.cleanup_crit_edge ], [ %call.i37.7, %for.cond.6.cleanup_crit_edge ], [ %call.i37.8, %for.cond.7.cleanup_crit_edge ], [ %call.i37.9, %for.cond.8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %trigger) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt82p33_perout_enable(ptr nocapture noundef readonly %channel, i1 noundef zeroext %enable, ptr nocapture noundef readonly %perout) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.ptp_perout_request, ptr %perout, i32 0, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %1)
  %cmp = icmp eq i32 %1, -559038737
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %output_mask.i = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 7
  %2 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %output_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not19.i = icmp eq i8 %3, 0
  br i1 %tobool.not19.i, label %if.then.cleanup_crit_edge, label %while.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then
  %conv.i = zext i8 %3 to i16
  %idt82p331.i.i = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 2
  %masksel.i.i = select i1 %enable, i8 0, i8 32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %outn.021.i = phi i8 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end7.i.while.body.i_crit_edge ]
  %mask.020.i = phi i16 [ %conv.i, %while.body.lr.ph.i ], [ %13, %if.end7.i.while.body.i_crit_edge ]
  %4 = and i16 %mask.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not.i = icmp eq i16 %4, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end7.i_crit_edge, label %if.then.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body.i
  %5 = ptrtoint ptr %idt82p331.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idt82p331.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i.i, align 1, !annotation !172
  %8 = mul nuw i8 %outn.021.i, 12
  %9 = and i8 %8, 124
  %and.i.i = zext i8 %9 to i32
  %or.i.i = or i32 %and.i.i, 768
  %call.i.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %6, i32 noundef %or.i.i, ptr noundef nonnull %val.i.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %idt82p33_output_enable.exit.i, label %idt82p33_output_enable.exit.thread.i

idt82p33_output_enable.exit.thread.i:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %cleanup

idt82p33_output_enable.exit.i:                    ; preds = %if.then.i
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i, align 1
  %12 = and i8 %11, -33
  %storemerge.i.i = or i8 %12, %masksel.i.i
  store i8 %storemerge.i.i, ptr %val.i.i, align 1
  %call.i19.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %6, i32 noundef %or.i.i, ptr noundef nonnull %val.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %tobool5.not.i = icmp eq i32 %call.i19.i.i, 0
  br i1 %tobool5.not.i, label %idt82p33_output_enable.exit.i.if.end7.i_crit_edge, label %idt82p33_output_enable.exit.i.cleanup_crit_edge

idt82p33_output_enable.exit.i.cleanup_crit_edge:  ; preds = %idt82p33_output_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

idt82p33_output_enable.exit.i.if.end7.i_crit_edge: ; preds = %idt82p33_output_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %idt82p33_output_enable.exit.i.if.end7.i_crit_edge, %while.body.i.if.end7.i_crit_edge
  %13 = lshr i16 %mask.020.i, 1
  %inc.i = add nuw nsw i8 %outn.021.i, 1
  %tobool.not.i = icmp ult i16 %mask.020.i, 2
  br i1 %tobool.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.ptp_perout_request, ptr %perout, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  %idt82p331.i = getelementptr inbounds %struct.idt82p33_channel, ptr %channel, i32 0, i32 2
  %16 = ptrtoint ptr %idt82p331.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idt82p331.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %val.i, align 1, !annotation !172
  %mul.i = mul i32 %15, 12
  %and.i = and i32 %mul.i, 124
  %or.i = or i32 %and.i, 768
  %call.i.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %or.i, ptr noundef nonnull %val.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i7 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i7, label %if.end.i, label %if.end.idt82p33_output_enable.exit_crit_edge

if.end.idt82p33_output_enable.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %idt82p33_output_enable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 1
  %21 = and i8 %20, -33
  %masksel.i = select i1 %enable, i8 0, i8 32
  %storemerge.i = or i8 %21, %masksel.i
  store i8 %storemerge.i, ptr %val.i, align 1
  %call.i19.i = call fastcc i32 @idt82p33_rdwr(ptr noundef %17, i32 noundef %or.i, ptr noundef nonnull %val.i, i32 noundef 1, i1 noundef zeroext true) #7
  br label %idt82p33_output_enable.exit

idt82p33_output_enable.exit:                      ; preds = %if.end.i, %if.end.idt82p33_output_enable.exit_crit_edge
  %retval.0.i8 = phi i32 [ %call.i19.i, %if.end.i ], [ %call.i.i, %if.end.idt82p33_output_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %idt82p33_output_enable.exit, %if.end7.i.cleanup_crit_edge, %idt82p33_output_enable.exit.i.cleanup_crit_edge, %idt82p33_output_enable.exit.thread.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i8, %idt82p33_output_enable.exit ], [ %call.i.i.i, %idt82p33_output_enable.exit.thread.i ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ], [ %call.i19.i.i, %idt82p33_output_enable.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__UNIQUE_ID_description315, !1, !"__UNIQUE_ID_description315", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_author316, !3, !"__UNIQUE_ID_author316", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_version317, !5, !"__UNIQUE_ID_version317", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 22, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file318, !11, !"__UNIQUE_ID_file318", i1 false, i1 false}
!11 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 23, i32 1}
!12 = !{ptr @__UNIQUE_ID_license319, !11, !"__UNIQUE_ID_license319", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware320, !14, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 24, i32 1}
!15 = !{ptr @__param_sync_tod_timeout, !16, !"__param_sync_tod_timeout", i1 false, i1 false}
!16 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 28, i32 1}
!17 = !{ptr @__UNIQUE_ID_sync_tod_timeouttype321, !16, !"__UNIQUE_ID_sync_tod_timeouttype321", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_sync_tod_timeout322, !19, !"__UNIQUE_ID_sync_tod_timeout322", i1 false, i1 false}
!19 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 29, i32 1}
!20 = !{ptr @__param_phase_snap_threshold, !21, !"__param_phase_snap_threshold", i1 false, i1 false}
!21 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 33, i32 1}
!22 = !{ptr @__UNIQUE_ID_phase_snap_thresholdtype323, !21, !"__UNIQUE_ID_phase_snap_thresholdtype323", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_phase_snap_threshold324, !24, !"__UNIQUE_ID_phase_snap_threshold324", i1 false, i1 false}
!24 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 34, i32 1}
!25 = !{ptr @__initcall__kmod_ptp_idt82p33__327_1110_idt82p33_driver_init6, !26, !"__initcall__kmod_ptp_idt82p33__327_1110_idt82p33_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1110, i32 1}
!27 = !{ptr @__exitcall_idt82p33_driver_exit, !26, !"__exitcall_idt82p33_driver_exit", i1 false, i1 false}
!28 = !{ptr @__param_str_sync_tod_timeout, !16, !"__param_str_sync_tod_timeout", i1 false, i1 false}
!29 = !{ptr @sync_tod_timeout, !30, !"sync_tod_timeout", i1 false, i1 false}
!30 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 27, i32 12}
!31 = !{ptr @__param_str_phase_snap_threshold, !21, !"__param_str_phase_snap_threshold", i1 false, i1 false}
!32 = !{ptr @phase_snap_threshold, !33, !"phase_snap_threshold", i1 false, i1 false}
!33 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 32, i32 12}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1103, i32 12}
!36 = !{ptr @idt82p33_driver, !37, !"idt82p33_driver", i1 false, i1 false}
!37 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1100, i32 26}
!38 = !{ptr @idt82p33_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1014, i32 2}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1029, i32 3}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @idt82p33_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @idt82p33_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1037, i32 6}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @idt82p33_probe._entry.10, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @idt82p33_probe._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1045, i32 3}
!56 = !{ptr @idt82p33_probe._entry.14, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @idt82p33_probe._entry_ptr.16, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 943, i32 2}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @idt82p33_load_firmware.__UNIQUE_ID_ddebug325, !59, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!62 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @idt82p33_load_firmware._entry, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 949, i32 3}
!65 = !{ptr @idt82p33_load_firmware._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 954, i32 2}
!68 = !{ptr @idt82p33_load_firmware.__UNIQUE_ID_ddebug326, !67, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 961, i32 4}
!71 = !{ptr @idt82p33_load_firmware._entry.21, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @idt82p33_load_firmware._entry_ptr.23, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 502, i32 4}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @idt82p33_check_and_set_masks._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @idt82p33_check_and_set_masks._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 146, i32 3}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @idt82p33_page_offset._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @idt82p33_page_offset._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 130, i32 3}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @idt82p33_xfer_write._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @idt82p33_xfer_write._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 102, i32 3}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @idt82p33_xfer_read._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @idt82p33_xfer_read._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 105, i32 3}
!95 = !{ptr @idt82p33_xfer_read._entry.32, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @idt82p33_xfer_read._entry_ptr.34, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 523, i32 2}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @idt82p33_display_masks._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @idt82p33_display_masks._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 530, i32 4}
!105 = !{ptr @idt82p33_display_masks._entry.38, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @idt82p33_display_masks._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 890, i32 3}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @idt82p33_enable_channel._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @idt82p33_enable_channel._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 900, i32 4}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 915, i32 3}
!116 = !{ptr @idt82p33_enable_channel._entry.44, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @idt82p33_enable_channel._entry_ptr.46, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 923, i32 3}
!120 = !{ptr @idt82p33_enable_channel._entry.47, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @idt82p33_enable_channel._entry_ptr.49, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 929, i32 2}
!124 = !{ptr @idt82p33_enable_channel._entry.50, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @idt82p33_enable_channel._entry_ptr.52, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 734, i32 3}
!128 = !{ptr @idt82p33_adjwritephase._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @idt82p33_adjwritephase._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 757, i32 3}
!132 = !{ptr @idt82p33_adjfine._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @idt82p33_adjfine._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 782, i32 3}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @idt82p33_adjtime._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @idt82p33_adjtime._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 789, i32 3}
!141 = !{ptr @idt82p33_adjtime._entry.57, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @idt82p33_adjtime._entry_ptr.59, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 807, i32 3}
!145 = !{ptr @idt82p33_gettime._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @idt82p33_gettime._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 825, i32 3}
!149 = !{ptr @idt82p33_settime._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @idt82p33_settime._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 648, i32 3}
!153 = !{ptr @idt82p33_enable_tod._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @idt82p33_enable_tod._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 470, i32 3}
!157 = !{ptr @idt82p33_measure_tod_write_overhead._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @idt82p33_measure_tod_write_overhead._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @idt82p33_dt_id, !160, !"idt82p33_dt_id", i1 false, i1 false}
!160 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1073, i32 34}
!161 = !{ptr @idt82p33_i2c_id, !162, !"idt82p33_i2c_id", i1 false, i1 false}
!162 = !{!"../drivers/ptp/ptp_idt82p33.c", i32 1087, i32 35}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
!173 = !{i64 2148203275, i64 2148203280, i64 2148203293, i64 2148203337, i64 2148203371, i64 2148203392}
!174 = !{i64 1450428}
