; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-abx80x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-abx80x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.abx80x_cap = type { i16, i8, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.abx80x_priv = type { ptr, ptr, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_abx80x__290_921_abx80x_driver_init6 = internal global ptr @abx80x_driver_init, section ".initcall6.init", align 4
@abx80x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @abx80x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abx80x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @abx80x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_abx80x_driver_exit = internal global ptr @abx80x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"rtc_abx80x.author=Philippe De Muyter <phdm@macqel.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [68 x i8] c"rtc_abx80x.author=Alexandre Belloni <alexandre.belloni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [49 x i8] c"rtc_abx80x.description=Abracon ABX80X RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"rtc_abx80x.file=drivers/rtc/rtc-abx80x\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"rtc_abx80x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-abx80x\00", [21 x i8] zeroinitializer }, align 32
@abx80x_of_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,abx80x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab0801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab0803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab0804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab0805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab1801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab1803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab1804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,ab1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@abx80x_id = internal constant { [11 x %struct.i2c_device_id], [88 x i8] } { [11 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"abx80x\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"ab0801\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ab0803\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ab0804\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ab0805\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ab1801\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ab1803\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ab1804\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ab1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"rv1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@abx80x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to read partnumber\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"abx80x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-abx80x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr = internal global ptr @abx80x_probe._entry, section ".printk_index", align 4
@abx80x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 707, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"model %04x, revision %u.%u, lot %x, wafer %x, uid %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.9 = internal global ptr @abx80x_probe._entry.6, section ".printk_index", align 4
@abx80x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read control register\0A\00", [63 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.12 = internal global ptr @abx80x_probe._entry.10, section ".printk_index", align 4
@abx80x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to write control register\0A\00", [62 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.15 = internal global ptr @abx80x_probe._entry.13, section ".printk_index", align 4
@abx80x_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to read control2 register\0A\00", [62 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.18 = internal global ptr @abx80x_probe._entry.16, section ".printk_index", align 4
@abx80x_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 743, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write control2 register\0A\00", [61 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.21 = internal global ptr @abx80x_probe._entry.19, section ".printk_index", align 4
@abx80x_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to read output control register\0A\00", [56 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.24 = internal global ptr @abx80x_probe._entry.22, section ".printk_index", align 4
@abx80x_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to write output control register\0A\00", [55 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.27 = internal global ptr @abx80x_probe._entry.25, section ".printk_index", align 4
@abx80x_caps = internal constant { [10 x %struct.abx80x_cap], [56 x i8] } { [10 x %struct.abx80x_cap] [%struct.abx80x_cap { i16 2049, i8 0, i8 0 }, %struct.abx80x_cap { i16 2051, i8 0, i8 0 }, %struct.abx80x_cap { i16 2052, i8 1, i8 1 }, %struct.abx80x_cap { i16 2053, i8 1, i8 1 }, %struct.abx80x_cap { i16 6145, i8 0, i8 0 }, %struct.abx80x_cap { i16 6147, i8 0, i8 0 }, %struct.abx80x_cap { i16 6148, i8 1, i8 1 }, %struct.abx80x_cap { i16 6149, i8 1, i8 1 }, %struct.abx80x_cap { i16 6149, i8 1, i8 1 }, %struct.abx80x_cap zeroinitializer], [56 x i8] zeroinitializer }, align 32
@abx80x_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown part: %04x\0A\00", [44 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.30 = internal global ptr @abx80x_probe._entry.28, section ".printk_index", align 4
@abx80x_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"partnumber mismatch %04x != %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.33 = internal global ptr @abx80x_probe._entry.31, section ".printk_index", align 4
@abx80x_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 799, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enabling trickle charger: %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.36 = internal global ptr @abx80x_probe._entry.34, section ".printk_index", align 4
@abx80x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @abx80x_ioctl, ptr @abx80x_rtc_read_time, ptr @abx80x_rtc_set_time, ptr @abx80x_read_alarm, ptr @abx80x_set_alarm, ptr null, ptr @abx80x_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@abx80x_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 828, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ %d supplied\0A\00", [47 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.39 = internal global ptr @abx80x_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"abx8xx\00", [25 x i8] zeroinitializer }, align 32
@abx80x_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.43 = internal global ptr @abx80x_probe._entry.41, section ".printk_index", align 4
@rtc_calib_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtc_calib_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@abx80x_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create sysfs group: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@abx80x_probe._entry_ptr.46 = internal global ptr @abx80x_probe._entry.44, section ".printk_index", align 4
@abx80x_write_config_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write configuration key\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"abx80x_write_config_key\00", [40 x i8] zeroinitializer }, align 32
@abx80x_write_config_key._entry_ptr = internal global ptr @abx80x_write_config_key._entry, section ".printk_index", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abracon,tc-diode\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standard\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"schottky\00", [23 x i8] zeroinitializer }, align 32
@abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_abx80x\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"abx80x_dt_trickle_cfg\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid tc-diode value: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abracon,tc-resistor\00", [44 x i8] zeroinitializer }, align 32
@abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.3, ptr @.str.56, i8 0, i8 -110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid tc-resistor value: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@abx80x_enable_trickle_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to write trickle register\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"abx80x_enable_trickle_charger\00", [34 x i8] zeroinitializer }, align 32
@abx80x_enable_trickle_charger._entry_ptr = internal global ptr @abx80x_enable_trickle_charger._entry, section ".printk_index", align 4
@abx80x_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Oscillator failure, data is invalid.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"abx80x_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@abx80x_rtc_read_time._entry_ptr = internal global ptr @abx80x_rtc_read_time._entry, section ".printk_index", align 4
@abx80x_rtc_read_time._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to read date\0A\00", [43 x i8] zeroinitializer }, align 32
@abx80x_rtc_read_time._entry_ptr.63 = internal global ptr @abx80x_rtc_read_time._entry.61, section ".printk_index", align 4
@abx80x_is_rc_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read autocalibration attribute\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abx80x_is_rc_mode\00", [46 x i8] zeroinitializer }, align 32
@abx80x_is_rc_mode._entry_ptr = internal global ptr @abx80x_is_rc_mode._entry, section ".printk_index", align 4
@abx80x_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write to date registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abx80x_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@abx80x_rtc_set_time._entry_ptr = internal global ptr @abx80x_rtc_set_time._entry, section ".printk_index", align 4
@abx80x_rtc_set_time._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to write oscillator status register\0A\00", [52 x i8] zeroinitializer }, align 32
@abx80x_rtc_set_time._entry_ptr.70 = internal global ptr @abx80x_rtc_set_time._entry.68, section ".printk_index", align 4
@abx80x_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to write alarm registers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abx80x_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@abx80x_set_alarm._entry_ptr = internal global ptr @abx80x_set_alarm._entry, section ".printk_index", align 4
@abx80x_wdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @abx80x_wdog_start, ptr @abx80x_wdog_stop, ptr @abx80x_wdog_ping, ptr null, ptr @abx80x_wdog_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@abx80x_wdog_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"abx80x watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@abx80x_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 266, ptr @.str.75, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"watchdog timeout interrupt.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abx80x_handle_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@abx80x_handle_irq._entry_ptr = internal global ptr @abx80x_handle_irq._entry, section ".printk_index", align 4
@rtc_calib_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_autocalibration, ptr @dev_attr_oscillator, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_autocalibration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @autocalibration_show, ptr @autocalibration_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oscillator = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @oscillator_show, ptr @oscillator_store }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"autocalibration\00", [16 x i8] zeroinitializer }, align 32
@autocalibration_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read RTC autocalibration\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"autocalibration_show\00", [43 x i8] zeroinitializer }, align 32
@autocalibration_show._entry_ptr = internal global ptr @autocalibration_show._entry, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@autocalibration_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to store RTC autocalibration attribute\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"autocalibration_store\00", [42 x i8] zeroinitializer }, align 32
@autocalibration_store._entry_ptr = internal global ptr @autocalibration_store._entry, section ".printk_index", align 4
@abx80x_rtc_set_autocalibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"autocalibration value outside permitted range\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"abx80x_rtc_set_autocalibration\00", [33 x i8] zeroinitializer }, align 32
@abx80x_rtc_set_autocalibration._entry_ptr = internal global ptr @abx80x_rtc_set_autocalibration._entry, section ".printk_index", align 4
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oscillator\00", [21 x i8] zeroinitializer }, align 32
@oscillator_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read RTC oscillator selection\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oscillator_show\00", [16 x i8] zeroinitializer }, align 32
@oscillator_show._entry_ptr = internal global ptr @oscillator_show._entry, section ".printk_index", align 4
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xtal\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@oscillator_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Oscillator selection value outside permitted ones\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oscillator_store\00", [47 x i8] zeroinitializer }, align 32
@oscillator_store._entry_ptr = internal global ptr @oscillator_store._entry, section ".printk_index", align 4
@oscillator_store._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write Oscillator Control register\0A\00", [51 x i8] zeroinitializer }, align 32
@oscillator_store._entry_ptr.97 = internal global ptr @oscillator_store._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 6, i64 11]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1024]
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"abx80x_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 912, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 914, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"abx80x_of_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 866, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"abx80x_id\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 850, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 696, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 706, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 711, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 720, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 734, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 742, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 754, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 769, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"abx80x_caps\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 101, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 781, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 789, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 798, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"abx80x_rtc_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 547, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 828, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 832, i32 7 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 835, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"rtc_calib_attr_group\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 495, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 842, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 123, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 564, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 568, i32 21 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 570, i32 28 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 573, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 577, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 586, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 160, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 184, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 192, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 136, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 228, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 240, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 324, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [16 x i8] c"abx80x_wdog_ops\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 648, i32 34 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"abx80x_wdog_info\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 643, i32 35 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 266, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [16 x i8] c"rtc_calib_attrs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 489, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"dev_attr_autocalibration\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"dev_attr_oscillator\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 427, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 419, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 420, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 424, i32 22 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 403, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 347, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 487, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 476, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 484, i32 23 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 436, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 438, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 441, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.412 = private constant [28 x i8] c"../drivers/rtc/rtc-abx80x.c\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 460, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_abx80x_driver_exit, ptr @__initcall__kmod_rtc_abx80x__290_921_abx80x_driver_init6, ptr @abx80x_driver_exit, ptr @abx80x_enable_trickle_charger._entry, ptr @abx80x_enable_trickle_charger._entry_ptr, ptr @abx80x_handle_irq._entry, ptr @abx80x_handle_irq._entry_ptr, ptr @abx80x_is_rc_mode._entry, ptr @abx80x_is_rc_mode._entry_ptr, ptr @abx80x_probe._entry, ptr @abx80x_probe._entry.10, ptr @abx80x_probe._entry.13, ptr @abx80x_probe._entry.16, ptr @abx80x_probe._entry.19, ptr @abx80x_probe._entry.22, ptr @abx80x_probe._entry.25, ptr @abx80x_probe._entry.28, ptr @abx80x_probe._entry.31, ptr @abx80x_probe._entry.34, ptr @abx80x_probe._entry.37, ptr @abx80x_probe._entry.41, ptr @abx80x_probe._entry.44, ptr @abx80x_probe._entry.6, ptr @abx80x_probe._entry_ptr, ptr @abx80x_probe._entry_ptr.12, ptr @abx80x_probe._entry_ptr.15, ptr @abx80x_probe._entry_ptr.18, ptr @abx80x_probe._entry_ptr.21, ptr @abx80x_probe._entry_ptr.24, ptr @abx80x_probe._entry_ptr.27, ptr @abx80x_probe._entry_ptr.30, ptr @abx80x_probe._entry_ptr.33, ptr @abx80x_probe._entry_ptr.36, ptr @abx80x_probe._entry_ptr.39, ptr @abx80x_probe._entry_ptr.43, ptr @abx80x_probe._entry_ptr.46, ptr @abx80x_probe._entry_ptr.9, ptr @abx80x_rtc_read_time._entry, ptr @abx80x_rtc_read_time._entry.61, ptr @abx80x_rtc_read_time._entry_ptr, ptr @abx80x_rtc_read_time._entry_ptr.63, ptr @abx80x_rtc_set_autocalibration._entry, ptr @abx80x_rtc_set_autocalibration._entry_ptr, ptr @abx80x_rtc_set_time._entry, ptr @abx80x_rtc_set_time._entry.68, ptr @abx80x_rtc_set_time._entry_ptr, ptr @abx80x_rtc_set_time._entry_ptr.70, ptr @abx80x_set_alarm._entry, ptr @abx80x_set_alarm._entry_ptr, ptr @abx80x_write_config_key._entry, ptr @abx80x_write_config_key._entry_ptr, ptr @autocalibration_show._entry, ptr @autocalibration_show._entry_ptr, ptr @autocalibration_store._entry, ptr @autocalibration_store._entry_ptr, ptr @oscillator_show._entry, ptr @oscillator_show._entry_ptr, ptr @oscillator_store._entry, ptr @oscillator_store._entry.95, ptr @oscillator_store._entry_ptr, ptr @oscillator_store._entry_ptr.97, ptr @abx80x_driver, ptr @.str, ptr @abx80x_of_match, ptr @abx80x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @abx80x_caps, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @abx80x_rtc_ops, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @rtc_calib_attr_group, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @abx80x_wdog_ops, ptr @abx80x_wdog_info, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @rtc_calib_attrs, ptr @dev_attr_autocalibration, ptr @dev_attr_oscillator, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_of_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_id to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_calib_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_write_config_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_enable_trickle_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_read_time._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_is_rc_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_set_time._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_wdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_wdog_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_calib_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_autocalibration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oscillator to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autocalibration_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autocalibration_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx80x_rtc_set_autocalibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oscillator_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oscillator_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oscillator_store._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @abx80x_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @abx80x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @abx80x_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #10
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %12) #10
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 40, i8 noundef zeroext 7, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  %conv = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %conv6 = zext i8 %20 to i32
  %or = or i32 %shl, %conv6
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %conv8 = zext i8 %22 to i32
  %23 = lshr i32 %conv8, 3
  %and = and i32 %conv8, 7
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv12 = zext i8 %25 to i32
  %and13 = shl nuw nsw i32 %conv12, 2
  %shl14 = and i32 %and13, 512
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %7, align 1
  %conv16 = zext i8 %27 to i32
  %and17 = shl nuw nsw i32 %conv16, 1
  %shl18 = and i32 %and17, 256
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %conv21 = zext i8 %29 to i32
  %or19 = or i32 %shl14, %conv21
  %or22 = or i32 %or19, %shl18
  %and25 = shl nuw nsw i32 %conv12, 8
  %shl26 = and i32 %and25, 32512
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %conv28 = zext i8 %31 to i32
  %or29 = or i32 %shl26, %conv28
  %and32 = lshr i32 %conv16, 2
  %32 = and i32 %and32, 31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %or, i32 noundef %23, i32 noundef %and, i32 noundef %or22, i32 noundef %32, i32 noundef %or29) #13
  %call38 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end46:                                         ; preds = %if.end4
  %33 = trunc i32 %call38 to i8
  %34 = and i8 %33, -70
  %conv49 = or i8 %34, 1
  %call50 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 16, i8 noundef zeroext %conv49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %35 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end58.if.end131_crit_edge [
    i32 8, label %if.then61
    i32 9, label %if.end58.for.cond_crit_edge
  ]

if.end58.for.cond_crit_edge:                      ; preds = %if.end58
  br label %for.cond

if.end58.if.end131_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then61:                                        ; preds = %if.end58
  %call62 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end70:                                         ; preds = %if.then61
  %36 = trunc i32 %call62 to i8
  %conv72 = and i8 %36, -33
  %call73 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 17, i8 noundef zeroext %conv72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end81:                                         ; preds = %if.end70
  %call82 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end88, label %if.end90

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %call91 = call fastcc i32 @abx80x_write_config_key(ptr noundef %client, i8 noundef zeroext -99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end95

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %37 = trunc i32 %call82 to i8
  %conv97 = or i8 %37, 16
  %call98 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext %conv97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %if.end95.if.end131_crit_edge

if.end95.if.end131_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

do.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end58.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.end58.for.cond_crit_edge ]
  %arrayidx111 = getelementptr [10 x %struct.abx80x_cap], ptr @abx80x_caps, i32 0, i32 %i.0
  %38 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx111, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool112.not = icmp eq i16 %39, 0
  %conv115 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv115)
  %cmp116 = icmp eq i32 %or, %conv115
  %or.cond = or i1 %tobool112.not, %cmp116
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool112.not, label %do.end128, label %for.end.if.end131_crit_edge

for.end.if.end131_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

do.end128:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %or) #13
  br label %cleanup

if.end131:                                        ; preds = %for.end.if.end131_crit_edge, %if.end95.if.end131_crit_edge, %if.end58.if.end131_crit_edge
  %part.0 = phi i32 [ %10, %if.end58.if.end131_crit_edge ], [ %i.0, %for.end.if.end131_crit_edge ], [ 8, %if.end95.if.end131_crit_edge ]
  %arrayidx132 = getelementptr [10 x %struct.abx80x_cap], ptr @abx80x_caps, i32 0, i32 %part.0
  %40 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx132, align 2
  %conv134 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv134)
  %cmp135.not = icmp eq i32 %or, %conv134
  br i1 %cmp135.not, label %if.end145, label %do.end140

do.end140:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %or, i32 noundef %conv134) #13
  br label %cleanup

if.end145:                                        ; preds = %if.end131
  %tobool146.not = icmp eq ptr %1, null
  br i1 %tobool146.not, label %if.end145.if.end162_crit_edge, label %land.lhs.true

if.end145.if.end162_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

land.lhs.true:                                    ; preds = %if.end145
  %42 = and i32 %part.0, 1073741823
  %43 = lshr i32 563, %42
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not.not = icmp eq i32 %44, 0
  br i1 %tobool148.not.not, label %if.end152, label %land.lhs.true.if.end162_crit_edge

land.lhs.true.if.end162_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.end152:                                        ; preds = %land.lhs.true
  %call151 = call fastcc i32 @abx80x_dt_trickle_cfg(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp153 = icmp sgt i32 %call151, 0
  br i1 %cmp153, label %do.end158, label %if.end152.if.end162_crit_edge

if.end152.if.end162_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

do.end158:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call151) #13
  %conv160 = trunc i32 %call151 to i8
  call fastcc void @abx80x_enable_trickle_charger(ptr noundef %client, i8 noundef zeroext %conv160)
  br label %if.end162

if.end162:                                        ; preds = %do.end158, %if.end152.if.end162_crit_edge, %land.lhs.true.if.end162_crit_edge, %if.end145.if.end162_crit_edge
  %call163 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 24, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end166:                                        ; preds = %if.end162
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #10
  %cmp169 = icmp eq ptr %call.i, null
  br i1 %cmp169, label %if.end166.cleanup_crit_edge, label %if.end172

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end172:                                        ; preds = %if.end166
  %call174 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #10
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call174, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then177, label %if.end180

if.then177:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call174 to i32
  br label %cleanup

if.end180:                                        ; preds = %if.end172
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call174, i32 0, i32 3
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @abx80x_rtc_ops, ptr %ops, align 8
  %client182 = getelementptr inbounds %struct.abx80x_priv, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %client182 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %client, ptr %client182, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %50 = and i32 %part.0, 1073741823
  %51 = lshr i32 563, %50
  %52 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool184.not.not = icmp eq i32 %52, 0
  br i1 %tobool184.not.not, label %if.then185, label %if.end180.if.end190_crit_edge

if.end180.if.end190_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then185:                                       ; preds = %if.end180
  %call186 = call fastcc i32 @abx80x_setup_watchdog(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then185.if.end190_crit_edge, label %if.then185.cleanup_crit_edge

if.then185.cleanup_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then185.if.end190_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.end190:                                        ; preds = %if.then185.if.end190_crit_edge, %if.end180.if.end190_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp191 = icmp sgt i32 %54, 0
  br i1 %cmp191, label %do.end196, label %if.end190.if.end210_crit_edge

if.end190.if.end210_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

do.end196:                                        ; preds = %if.end190
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %54) #13
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call201 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %56, ptr noundef null, ptr noundef nonnull @abx80x_handle_irq, i32 noundef 8320, ptr noundef nonnull @.str.40, ptr noundef %client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.end196.if.end210_crit_edge, label %do.end206

do.end196.if.end210_crit_edge:                    ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

do.end206:                                        ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #13
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %irq, align 4
  br label %if.end210

if.end210:                                        ; preds = %do.end206, %do.end196.if.end210_crit_edge, %if.end190.if.end210_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call212 = call i32 @rtc_add_group(ptr noundef %59, ptr noundef nonnull @rtc_calib_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end219, label %do.end217

do.end217:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call212) #13
  br label %cleanup

if.end219:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call221 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %61) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %do.end217, %if.then185.cleanup_crit_edge, %if.then177, %if.end166.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %do.end140, %do.end128, %do.end104, %if.end90.cleanup_crit_edge, %do.end88, %do.end79, %do.end68, %do.end56, %do.end44, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end44 ], [ -5, %do.end56 ], [ -5, %do.end68 ], [ -5, %do.end79 ], [ -5, %do.end88 ], [ -5, %do.end104 ], [ -22, %do.end128 ], [ -22, %do.end140 ], [ %46, %if.then177 ], [ %call212, %do.end217 ], [ %call221, %if.end219 ], [ -19, %entry.cleanup_crit_edge ], [ -5, %if.end90.cleanup_crit_edge ], [ %call163, %if.end162.cleanup_crit_edge ], [ -12, %if.end166.cleanup_crit_edge ], [ %call186, %if.then185.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abx80x_write_config_key(ptr noundef %client, i8 noundef zeroext %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #13
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abx80x_dt_trickle_cfg(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %diode = alloca ptr, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diode) #10
  %2 = ptrtoint ptr %diode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %diode, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp, align 4, !annotation !216
  %call = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %diode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %diode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %diode, align 4
  %call1 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end19_crit_edge, label %if.else

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else:                                          ; preds = %if.end
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end19_crit_edge, label %do.body

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx80x_dt_trickle_cfg, %cleanup)) #10
          to label %if.then15 [label %cleanup], !srcloc !217

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %diode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %diode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %7) #10
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %trickle_cfg.0 = phi i32 [ 8, %if.end.if.end19_crit_edge ], [ 4, %if.else.if.end19_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #10
  %8 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool21.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool21.not, label %for.cond.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end19
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %10, label %do.body31 [
    i32 0, label %for.cond.preheader.if.end50_crit_edge
    i32 3, label %if.end50.fold.split
    i32 6, label %if.end50.fold.split79
    i32 11, label %if.end50.fold.split80
  ]

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body31:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx80x_dt_trickle_cfg, %cleanup)) #10
          to label %if.then45 [label %cleanup], !srcloc !217

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %13) #10
  br label %cleanup

if.end50.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50.fold.split79:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50.fold.split80:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %if.end50.fold.split80, %if.end50.fold.split79, %if.end50.fold.split, %for.cond.preheader.if.end50_crit_edge
  %i.077.lcssa = phi i32 [ %10, %for.cond.preheader.if.end50_crit_edge ], [ 1, %if.end50.fold.split ], [ 2, %if.end50.fold.split79 ], [ 3, %if.end50.fold.split80 ]
  %or51 = or i32 %i.077.lcssa, %trickle_cfg.0
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then45, %do.body31, %if.end19.cleanup_crit_edge, %if.then15, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or51, %if.end50 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then15 ], [ %8, %if.end19.cleanup_crit_edge ], [ -22, %if.then45 ], [ -22, %do.body ], [ -22, %do.body31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diode) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abx80x_enable_trickle_charger(ptr noundef %client, i8 noundef zeroext %trickle_cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext -99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %0 = or i8 %trickle_cfg, -96
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %entry.cleanup.sink.split_crit_edge ], [ @.str.57, %if.end.cleanup.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.47.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abx80x_setup_watchdog(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %wdog = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2
  %parent = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @abx80x_wdog_ops, ptr %ops, align 4
  %info = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @abx80x_wdog_info, ptr %info, align 4
  %min_timeout = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %timeout, align 4
  %driver_data.i = getelementptr inbounds %struct.abx80x_priv, ptr %priv, i32 0, i32 2, i32 16
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %driver_data.i, align 4
  %call = tail call i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef %wdog) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %do.end

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.73) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %dev_id, i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_ioctl(ptr noundef %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192813, label %sw.bb
    i32 28692, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and = lshr i32 %call, 3
  %1 = and i32 %and, 2
  %2 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 527) #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !218
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %1, i32 -1226833921) #10, !srcloc !221
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %if.end9

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  %7 = tail call i32 @llvm.smin.i32(i32 %call11, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.bb5.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ %7, %if.end9 ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %abx80x_is_rc_mode.exit.thread, label %abx80x_is_rc_mode.exit

abx80x_is_rc_mode.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #13
  br label %cleanup

abx80x_is_rc_mode.exit:                           ; preds = %entry
  %8 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then1, label %abx80x_is_rc_mode.exit.if.end9_crit_edge

abx80x_is_rc_mode.exit.if.end9_crit_edge:         ; preds = %abx80x_is_rc_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then1:                                         ; preds = %abx80x_is_rc_mode.exit
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %and = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %do.end

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5.if.end9_crit_edge, %abx80x_is_rc_mode.exit.if.end9_crit_edge
  %call10 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %cond.end

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  br label %cleanup

cond.end:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  %11 = and i8 %10, 127
  %call31 = call i32 @_bcd2bin(i8 noundef zeroext %11) #15
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call31, ptr %tm, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 2
  %15 = and i8 %14, 127
  %call52 = call i32 @_bcd2bin(i8 noundef zeroext %15) #15
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call52, ptr %tm_min, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %19 = and i8 %18, 63
  %call75 = call i32 @_bcd2bin(i8 noundef zeroext %19) #15
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call75, ptr %tm_hour, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %6, align 1
  %23 = and i8 %22, 7
  %and80 = zext i8 %23 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %24 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and80, ptr %tm_wday, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 4
  %27 = and i8 %26, 63
  %call101 = call i32 @_bcd2bin(i8 noundef zeroext %27) #15
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call101, ptr %tm_mday, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 31
  %call124 = call i32 @_bcd2bin(i8 noundef zeroext %31) #15
  %sub = add i32 %call124, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %tm_mon, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 2
  %call139 = call i32 @_bcd2bin(i8 noundef zeroext %34) #15
  %add142 = add i32 %call139, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add142, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end15, %do.end, %if.then1.cleanup_crit_edge, %abx80x_is_rc_mode.exit.thread
  %retval.0 = phi i32 [ -5, %do.end15 ], [ 0, %cond.end ], [ -22, %do.end ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call.i, %abx80x_is_rc_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf, align 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #15
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %8, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #15
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call17, ptr %7, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #15
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call33, ptr %6, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #15
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call49, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add55 = add i32 %23, 1
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %add55) #15
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call69, ptr %4, align 1
  %sub = add nsw i32 %1, -100
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #15
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call89, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_wday, align 4
  %conv95 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv95, ptr %2, align 1
  %call97 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end.cleanup.sink.split_crit_edge, label %if.end102

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end102:                                        ; preds = %if.end
  %call103 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end102.cleanup_crit_edge, label %if.end107

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %29 = trunc i32 %call103 to i8
  %conv108 = and i8 %29, -3
  %call109 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 29, i8 noundef zeroext %conv108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.end107.cleanup.sink.split_crit_edge, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end107.cleanup.sink.split_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end107.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.66, %if.end.cleanup.sink.split_crit_edge ], [ @.str.69, %if.end107.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %if.end.cleanup.sink.split_crit_edge ], [ %call109, %if.end107.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.69.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end107.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ 0, %if.end107.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %irq = getelementptr i8, ptr %dev, i32 932
  %6 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext 7, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %cond.end

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %11 = and i8 %10, 127
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %11) #15
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call19, ptr %time, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %15 = and i8 %14, 127
  %call40 = call i32 @_bcd2bin(i8 noundef zeroext %15) #15
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call40, ptr %tm_min, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %19 = and i8 %18, 63
  %call64 = call i32 @_bcd2bin(i8 noundef zeroext %19) #15
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call64, ptr %tm_hour, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 1
  %23 = and i8 %22, 63
  %call88 = call i32 @_bcd2bin(i8 noundef zeroext %23) #15
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call88, ptr %tm_mday, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 1
  %27 = and i8 %26, 31
  %call112 = call i32 @_bcd2bin(i8 noundef zeroext %27) #15
  %sub = add i32 %call112, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %tm_mon, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 7
  %and118 = zext i8 %31 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and118, ptr %tm_wday, align 4
  %33 = trunc i32 %call3 to i8
  %34 = lshr i8 %33, 2
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %t, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool127.not = icmp ne i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool130 = icmp ne i8 %35, 0
  %spec.select = select i1 %tobool127.not, i1 %tobool130, i1 false
  %conv131 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %40 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv131, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %alarm = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alarm) #10
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [6 x i8], ptr %alarm, i32 0, i32 5
  %3 = getelementptr inbounds [6 x i8], ptr %alarm, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %alarm, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %alarm, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %alarm, i32 0, i32 1
  %7 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %alarm, align 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #15
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call, ptr %6, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #15
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call24, ptr %5, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour, align 4
  %call44 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #15
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call44, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %call64 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #15
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call64, ptr %3, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mon, align 4
  %add71 = add i32 %21, 1
  %call88 = tail call zeroext i8 @_bin2bcd(i32 noundef %add71) #15
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call88, ptr %2, align 1
  %call94 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext 6, ptr noundef nonnull %alarm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end, label %if.end99

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end99:                                         ; preds = %if.end
  %23 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end99.if.end105_crit_edge, label %if.then100

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then100:                                       ; preds = %if.end99
  %call101 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.if.end105_crit_edge, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then100.if.end105_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.end105:                                        ; preds = %if.then100.if.end105_crit_edge, %if.end99.if.end105_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then100.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end105 ], [ -22, %entry.cleanup_crit_edge ], [ %call101, %if.then100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alarm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %. = select i1 %tobool.not, i8 96, i8 100
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext %.) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_wdog_start(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %timeout.tr.i.i = trunc i32 %1 to i8
  %4 = shl i8 %timeout.tr.i.i, 2
  %5 = or i8 %4, -126
  %client.i = getelementptr inbounds %struct.abx80x_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 27, i8 noundef zeroext %5) #10
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_wdog_stop(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client.i = getelementptr inbounds %struct.abx80x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 27, i8 noundef zeroext -126) #10
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_wdog_ping(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %timeout.tr.i.i = trunc i32 %1 to i8
  %4 = shl i8 %timeout.tr.i.i, 2
  %5 = or i8 %4, -126
  %client.i = getelementptr inbounds %struct.abx80x_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 27, i8 noundef zeroext %5) #10
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx80x_wdog_set_timeout(ptr noundef %wdog, i32 noundef %new_timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 18
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.if.then2_crit_edge, label %if.end

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %timeout.tr.i.i = trunc i32 %new_timeout to i8
  %5 = shl i8 %timeout.tr.i.i, 2
  %6 = or i8 %5, -126
  %client.i = getelementptr inbounds %struct.abx80x_priv, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 27, i8 noundef zeroext %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp eq i32 %call3.i, 0
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_timeout, ptr %timeout, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %err.010 = phi i32 [ 0, %if.then2 ], [ %call3.i, %if.end.if.end3_crit_edge ]
  ret i32 %err.010
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autocalibration_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #13
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.79, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = shl i32 %call.i, 4
  %3 = and i32 %and2.i, 1024
  %autocalibration.0.i = select i1 %tobool.not.i, i32 %3, i32 512
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, i32 noundef %autocalibration.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autocalibration_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %autocalibration = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autocalibration) #10
  %0 = ptrtoint ptr %autocalibration to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autocalibration, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %autocalibration) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %3 = ptrtoint ptr %autocalibration to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %autocalibration, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %4, label %do.end.i [
    i32 0, label %if.end.if.end.i_crit_edge
    i32 1024, label %if.end.if.end.i_crit_edge10
    i32 512, label %if.end.if.end.i_crit_edge11
  ]

if.end.if.end.i_crit_edge11:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.if.end.i_crit_edge10:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge10, %if.end.if.end.i_crit_edge11
  %call.i7 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp5.i = icmp slt i32 %call.i7, 0
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %4, label %if.else13.i [
    i32 0, label %if.then9.i
    i32 1024, label %if.then11.i
  ]

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %call.i7, -97
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = and i32 %call.i7, -97
  %and12.i = or i32 %or.i, 64
  br label %if.end16.i

if.else13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %or14.i = or i32 %call.i7, 96
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else13.i, %if.then11.i, %if.then9.i
  %flags.0.i = phi i32 [ %and.i, %if.then9.i ], [ %and12.i, %if.then11.i ], [ %or14.i, %if.else13.i ]
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 31, i8 noundef zeroext -95) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %abx80x_write_config_key.exit.thread.i, label %abx80x_rtc_set_autocalibration.exit

abx80x_write_config_key.exit.thread.i:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.47) #13
  br label %cleanup

abx80x_rtc_set_autocalibration.exit:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %flags.0.i to i8
  %call21.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 28, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not = icmp eq i32 %call21.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call21.i
  br label %cleanup

cleanup:                                          ; preds = %abx80x_rtc_set_autocalibration.exit, %abx80x_write_config_key.exit.thread.i, %if.end.i.cleanup_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %abx80x_write_config_key.exit.thread.i ], [ %call.i7, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ %spec.select, %abx80x_rtc_set_autocalibration.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autocalibration) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oscillator_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %abx80x_is_rc_mode.exit.thread, label %abx80x_is_rc_mode.exit

abx80x_is_rc_mode.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 2560, ptr %buf, align 1
  br label %cleanup

abx80x_is_rc_mode.exit:                           ; preds = %entry
  %3 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %abx80x_is_rc_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1919093248, ptr %buf, align 1
  br label %cleanup

if.else:                                          ; preds = %abx80x_is_rc_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.90, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %abx80x_is_rc_mode.exit.thread
  %retval.0 = phi i32 [ %call.i, %abx80x_is_rc_mode.exit.thread ], [ 3, %if.then2 ], [ 5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oscillator_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.91, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.92, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.else.if.end6_crit_edge, label %do.end

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #13
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext -95) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %abx80x_write_config_key.exit.thread, label %if.end18

abx80x_write_config_key.exit.thread:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %and = and i32 %call7, 127
  %masksel = select i1 %cmp, i32 128, i32 0
  %flags.0 = or i32 %and, %masksel
  %conv = trunc i32 %flags.0 to i8
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  %count.call19 = select i1 %tobool.not, i32 %count, i32 %call19
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end25, %abx80x_write_config_key.exit.thread, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call19, %do.end25 ], [ %count.call19, %if.end26 ], [ -22, %do.end ], [ %call7, %if.end6.cleanup_crit_edge ], [ -5, %abx80x_write_config_key.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !149, !151, !153, !155, !156, !158, !159, !160, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204}
!llvm.named.register.sp = !{!206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__initcall__kmod_rtc_abx80x__290_921_abx80x_driver_init6, !1, !"__initcall__kmod_rtc_abx80x__290_921_abx80x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-abx80x.c", i32 921, i32 1}
!2 = !{ptr @__exitcall_abx80x_driver_exit, !1, !"__exitcall_abx80x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-abx80x.c", i32 923, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-abx80x.c", i32 924, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-abx80x.c", i32 925, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-abx80x.c", i32 926, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-abx80x.c", i32 914, i32 11}
!14 = !{ptr @abx80x_driver, !15, !"abx80x_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-abx80x.c", i32 912, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-abx80x.c", i32 696, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @abx80x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @abx80x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-abx80x.c", i32 706, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @abx80x_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @abx80x_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-abx80x.c", i32 711, i32 3}
!31 = !{ptr @abx80x_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @abx80x_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-abx80x.c", i32 720, i32 3}
!35 = !{ptr @abx80x_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @abx80x_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-abx80x.c", i32 734, i32 4}
!39 = !{ptr @abx80x_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @abx80x_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-abx80x.c", i32 742, i32 4}
!43 = !{ptr @abx80x_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @abx80x_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-abx80x.c", i32 754, i32 4}
!47 = !{ptr @abx80x_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @abx80x_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-abx80x.c", i32 769, i32 4}
!51 = !{ptr @abx80x_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @abx80x_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-abx80x.c", i32 781, i32 4}
!55 = !{ptr @abx80x_probe._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @abx80x_probe._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-abx80x.c", i32 789, i32 3}
!59 = !{ptr @abx80x_probe._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @abx80x_probe._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-abx80x.c", i32 798, i32 3}
!63 = !{ptr @abx80x_probe._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @abx80x_probe._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-abx80x.c", i32 828, i32 3}
!67 = !{ptr @abx80x_probe._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @abx80x_probe._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-abx80x.c", i32 832, i32 7}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-abx80x.c", i32 835, i32 4}
!73 = !{ptr @abx80x_probe._entry.41, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @abx80x_probe._entry_ptr.43, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-abx80x.c", i32 842, i32 3}
!77 = !{ptr @abx80x_probe._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @abx80x_probe._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-abx80x.c", i32 123, i32 3}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @abx80x_write_config_key._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @abx80x_write_config_key._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @abx80x_caps, !85, !"abx80x_caps", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-abx80x.c", i32 101, i32 26}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-abx80x.c", i32 564, i32 36}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-abx80x.c", i32 568, i32 21}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-abx80x.c", i32 570, i32 28}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-abx80x.c", i32 573, i32 3}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug288, !93, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-abx80x.c", i32 577, i32 33}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-abx80x.c", i32 586, i32 3}
!101 = !{ptr @abx80x_dt_trickle_cfg.__UNIQUE_ID_ddebug289, !100, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!102 = distinct !{null, !103, !"trickle_resistors", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-abx80x.c", i32 90, i32 11}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-abx80x.c", i32 160, i32 3}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @abx80x_enable_trickle_charger._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @abx80x_enable_trickle_charger._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @abx80x_rtc_ops, !110, !"abx80x_rtc_ops", i1 false, i1 false}
!110 = !{!"../drivers/rtc/rtc-abx80x.c", i32 547, i32 35}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rtc/rtc-abx80x.c", i32 184, i32 4}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @abx80x_rtc_read_time._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @abx80x_rtc_read_time._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-abx80x.c", i32 192, i32 3}
!118 = !{ptr @abx80x_rtc_read_time._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @abx80x_rtc_read_time._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/rtc/rtc-abx80x.c", i32 136, i32 3}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @abx80x_is_rc_mode._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @abx80x_is_rc_mode._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-abx80x.c", i32 228, i32 3}
!127 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @abx80x_rtc_set_time._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @abx80x_rtc_set_time._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/rtc/rtc-abx80x.c", i32 240, i32 3}
!132 = !{ptr @abx80x_rtc_set_time._entry.68, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @abx80x_rtc_set_time._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/rtc/rtc-abx80x.c", i32 324, i32 3}
!136 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @abx80x_set_alarm._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @abx80x_set_alarm._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @abx80x_wdog_ops, !140, !"abx80x_wdog_ops", i1 false, i1 false}
!140 = !{!"../drivers/rtc/rtc-abx80x.c", i32 648, i32 34}
!141 = !{ptr @abx80x_wdog_info, !142, !"abx80x_wdog_info", i1 false, i1 false}
!142 = !{!"../drivers/rtc/rtc-abx80x.c", i32 643, i32 35}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/rtc/rtc-abx80x.c", i32 266, i32 3}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @abx80x_handle_irq._entry, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @abx80x_handle_irq._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @rtc_calib_attr_group, !150, !"rtc_calib_attr_group", i1 false, i1 false}
!150 = !{!"../drivers/rtc/rtc-abx80x.c", i32 495, i32 37}
!151 = !{ptr @rtc_calib_attrs, !152, !"rtc_calib_attrs", i1 false, i1 false}
!152 = !{!"../drivers/rtc/rtc-abx80x.c", i32 489, i32 26}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/rtc/rtc-abx80x.c", i32 427, i32 8}
!155 = !{ptr @dev_attr_autocalibration, !154, !"dev_attr_autocalibration", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/rtc/rtc-abx80x.c", i32 419, i32 3}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @autocalibration_show._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @autocalibration_show._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/rtc/rtc-abx80x.c", i32 420, i32 16}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/rtc/rtc-abx80x.c", i32 424, i32 22}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/rtc/rtc-abx80x.c", i32 403, i32 3}
!167 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @autocalibration_store._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @autocalibration_store._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/rtc/rtc-abx80x.c", i32 347, i32 3}
!172 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @abx80x_rtc_set_autocalibration._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @abx80x_rtc_set_autocalibration._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/rtc/rtc-abx80x.c", i32 487, i32 8}
!177 = !{ptr @dev_attr_oscillator, !176, !"dev_attr_oscillator", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/rtc/rtc-abx80x.c", i32 476, i32 3}
!180 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @oscillator_show._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @oscillator_show._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/rtc/rtc-abx80x.c", i32 477, i32 16}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/rtc/rtc-abx80x.c", i32 482, i32 23}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/rtc/rtc-abx80x.c", i32 484, i32 23}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/rtc/rtc-abx80x.c", i32 436, i32 19}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/rtc/rtc-abx80x.c", i32 438, i32 26}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/rtc/rtc-abx80x.c", i32 441, i32 3}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @oscillator_store._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @oscillator_store._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/rtc/rtc-abx80x.c", i32 460, i32 3}
!200 = !{ptr @oscillator_store._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @oscillator_store._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @abx80x_of_match, !203, !"abx80x_of_match", i1 false, i1 false}
!203 = !{!"../drivers/rtc/rtc-abx80x.c", i32 866, i32 34}
!204 = !{ptr @abx80x_id, !205, !"abx80x_id", i1 false, i1 false}
!205 = !{!"../drivers/rtc/rtc-abx80x.c", i32 850, i32 35}
!206 = !{!"sp"}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"auto-init"}
!217 = !{i64 2149008531, i64 2149008536, i64 2149008549, i64 2149008593, i64 2149008627, i64 2149008648}
!218 = !{i64 6361653}
!219 = !{i64 6361850}
!220 = !{i64 2153847083}
!221 = !{i64 2155720438, i64 2155720718, i64 2155721052, i64 2155721386}
