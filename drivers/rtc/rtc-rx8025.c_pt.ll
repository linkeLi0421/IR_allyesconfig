; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rx8025.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rx8025.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.rx8025_data = type { ptr, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rx8025__294_578_rx8025_driver_init6 = internal global ptr @rx8025_driver_init, section ".initcall6.init", align 4
@rx8025_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rx8025_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rx8025_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rx8025_driver_exit = internal global ptr @rx8025_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"rtc_rx8025.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [48 x i8] c"rtc_rx8025.description=RX-8025 SA/NB RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"rtc_rx8025.file=drivers/rtc/rtc-rx8025\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [23 x i8] c"rtc_rx8025.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rx8025\00", [21 x i8] zeroinitializer }, align 32
@rx8025_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rx8025\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"rx8035\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rx8025_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"doesn't support required functionality\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx8025_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rx8025.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx8025_probe._entry_ptr = internal global ptr @rx8025_probe._entry, section ".printk_index", align 4
@rx8025_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rx8025_get_time, ptr @rx8025_set_time, ptr @rx8025_read_alarm, ptr @rx8025_set_alarm, ptr null, ptr @rx8025_alarm_irq_enable, ptr @rx8025_read_offset, ptr @rx8025_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rx8025_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 549, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ %d supplied\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rx8025_probe._entry_ptr.9 = internal global ptr @rx8025_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx8025\00", [25 x i8] zeroinitializer }, align 32
@rx8025_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rx8025_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rx8025_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 292, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Alarm was detected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx8025_init_client\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rx8025_init_client._entry_ptr = internal global ptr @rx8025_init_client._entry, section ".printk_index", align 4
@rx8025_get_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_rx8025\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx8025_get_time\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: read %7ph\0A\00", [17 x i8] zeroinitializer }, align 32
@rx8025_get_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: date %ptRr\0A\00", [16 x i8] zeroinitializer }, align 32
@rx8025_check_validity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 138, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"power voltage drop detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx8025_check_validity\00", [42 x i8] zeroinitializer }, align 32
@rx8025_check_validity._entry_ptr = internal global ptr @rx8025_check_validity._entry, section ".printk_index", align 4
@rx8025_check_validity._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 141, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"power-on reset detected, date is invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@rx8025_check_validity._entry_ptr.22 = internal global ptr @rx8025_check_validity._entry.20, section ".printk_index", align 4
@rx8025_check_validity._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 147, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"crystal stopped, date is invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@rx8025_check_validity._entry_ptr.25 = internal global ptr @rx8025_check_validity._entry.23, section ".printk_index", align 4
@rx8025_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx8025_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: write %7ph\0A\00", [16 x i8] zeroinitializer }, align 32
@rx8025_read_alarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx8025_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: read alarm 0x%02x 0x%02x ctrl2 %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@rx8025_read_alarm.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: date: %ptRr\0A\00", [47 x i8] zeroinitializer }, align 32
@rx8025_set_alarm.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx8025_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: write 0x%02x 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@rx8025_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 187, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Oscillation stop was detected,you may have to readjust the clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx8025_handle_irq\00", [46 x i8] zeroinitializer }, align 32
@rx8025_handle_irq._entry_ptr = internal global ptr @rx8025_handle_irq._entry, section ".printk_index", align 4
@rx8025_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_clock_adjust_ppb, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_clock_adjust_ppb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx8025_sysfs_show_clock_adjust, ptr @rx8025_sysfs_store_clock_adjust }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock_adjust_ppb\00", [47 x i8] zeroinitializer }, align 32
@rx8025_sysfs_show_clock_adjust.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@rx8025_sysfs_show_clock_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 476, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"clock_adjust_ppb is deprecated, use offset\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx8025_sysfs_show_clock_adjust\00", [33 x i8] zeroinitializer }, align 32
@rx8025_sysfs_show_clock_adjust._entry_ptr = internal global ptr @rx8025_sysfs_show_clock_adjust._entry, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@rx8025_sysfs_store_clock_adjust.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@rx8025_sysfs_store_clock_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.39, ptr @.str.3, i32 491, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx8025_sysfs_store_clock_adjust\00", [32 x i8] zeroinitializer }, align 32
@rx8025_sysfs_store_clock_adjust._entry_ptr = internal global ptr @rx8025_sysfs_store_clock_adjust._entry, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"rx8025_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 570, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 572, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"rx8025_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 70, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 522, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"rx8025_rtc_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 459, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 549, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 553, i32 7 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"rx8025_attr_group\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 509, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 292, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 225, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 239, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 138, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 141, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 147, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 268, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 326, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 338, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 359, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 186, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"rx8025_attrs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 504, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"dev_attr_clock_adjust_ppb\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 500, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 476, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 481, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [28 x i8] c"../drivers/rtc/rtc-rx8025.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 491, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_rx8025_driver_exit, ptr @__initcall__kmod_rtc_rx8025__294_578_rx8025_driver_init6, ptr @rx8025_check_validity._entry, ptr @rx8025_check_validity._entry.20, ptr @rx8025_check_validity._entry.23, ptr @rx8025_check_validity._entry_ptr, ptr @rx8025_check_validity._entry_ptr.22, ptr @rx8025_check_validity._entry_ptr.25, ptr @rx8025_driver_exit, ptr @rx8025_handle_irq._entry, ptr @rx8025_handle_irq._entry_ptr, ptr @rx8025_init_client._entry, ptr @rx8025_init_client._entry_ptr, ptr @rx8025_probe._entry, ptr @rx8025_probe._entry.6, ptr @rx8025_probe._entry_ptr, ptr @rx8025_probe._entry_ptr.9, ptr @rx8025_sysfs_show_clock_adjust._entry, ptr @rx8025_sysfs_show_clock_adjust._entry_ptr, ptr @rx8025_sysfs_store_clock_adjust._entry, ptr @rx8025_sysfs_store_clock_adjust._entry_ptr, ptr @rx8025_driver, ptr @.str, ptr @rx8025_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rx8025_rtc_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @rx8025_attr_group, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rx8025_attrs, ptr @dev_attr_clock_adjust_ppb, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_check_validity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_check_validity._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_check_validity._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clock_adjust_ppb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_sysfs_show_clock_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8025_sysfs_store_clock_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rx8025_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx8025_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rx8025_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %ctrl.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 12, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool7.not = icmp eq ptr %id, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %model = getelementptr inbounds %struct.rx8025_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %model, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #7
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !109
  %11 = getelementptr inbounds [2 x i8], ptr %ctrl.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !109
  %call.i.i85 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext 2, ptr noundef nonnull %ctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i85)
  %cmp.not.i.i = icmp eq i32 %call.i.i85, 2
  br i1 %cmp.not.i.i, label %if.end.i, label %rx8025_init_client.exit.thread89

rx8025_init_client.exit.thread89:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp4.i.i = icmp slt i32 %call.i.i85, 0
  %spec.select.i.i = select i1 %cmp4.i.i, i32 %call.i.i85, i32 -5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl.i, align 1
  %15 = and i8 %14, -9
  %ctrl1.i = getelementptr inbounds %struct.rx8025_data, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ctrl1.i, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %11, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end8.thread.i

if.end8.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.11) #10
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %11, align 1
  br label %rx8025_init_client.exit

if.end8.i:                                        ; preds = %if.end.i
  %22 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not.i = icmp eq i8 %22, 0
  br i1 %tobool12.not.i, label %rx8025_init_client.exit.thread, label %if.end8.i.rx8025_init_client.exit_crit_edge

if.end8.i.rx8025_init_client.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx8025_init_client.exit

rx8025_init_client.exit.thread:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #7
  br label %if.end13

rx8025_init_client.exit:                          ; preds = %if.end8.i.rx8025_init_client.exit_crit_edge, %if.end8.thread.i
  %23 = phi i8 [ %21, %if.end8.thread.i ], [ %18, %if.end8.i.rx8025_init_client.exit_crit_edge ]
  %24 = and i8 %23, -8
  %call.i28.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -16, i8 noundef zeroext %24) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool11.not = icmp eq i32 %call.i28.i, 0
  br i1 %tobool11.not, label %rx8025_init_client.exit.if.end13_crit_edge, label %rx8025_init_client.exit.cleanup_crit_edge

rx8025_init_client.exit.cleanup_crit_edge:        ; preds = %rx8025_init_client.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rx8025_init_client.exit.if.end13_crit_edge:       ; preds = %rx8025_init_client.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %rx8025_init_client.exit.if.end13_crit_edge, %rx8025_init_client.exit.thread
  %call15 = call ptr @devm_rtc_allocate_device(ptr noundef %dev2) #7
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %call.i, align 4
  %cmp.i86 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call15, i32 0, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rx8025_rtc_ops, ptr %ops, align 8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -2208988800, ptr %range_min, align 8
  %31 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 4102444799, ptr %range_max, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp sgt i32 %34, 0
  br i1 %cmp, label %do.end28, label %if.end21.if.end38_crit_edge

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end28:                                         ; preds = %if.end21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %34) #10
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call33 = call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %36, ptr noundef null, ptr noundef nonnull @rx8025_handle_irq, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef %client) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end28.if.end38_crit_edge, label %if.then35

do.end28.if.end38_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %38, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %do.end28.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %max_user_freq, align 8
  %42 = load ptr, ptr %call.i, align 4
  %features41 = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %features41) #7
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %features44 = getelementptr inbounds %struct.rtc_device, ptr %44, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %features44) #7
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call47 = call i32 @rtc_add_group(ptr noundef %46, ptr noundef nonnull @rx8025_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call52 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end38.cleanup_crit_edge, %if.then18, %rx8025_init_client.exit.cleanup_crit_edge, %rx8025_init_client.exit.thread89, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %26, %if.then18 ], [ %call52, %if.end50 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i28.i, %rx8025_init_client.exit.cleanup_crit_edge ], [ %call47, %if.end38.cleanup_crit_edge ], [ %spec.select.i.i, %rx8025_init_client.exit.thread89 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %and.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %and.lobit.i = lshr exact i32 %and.i, 5
  %6 = xor i32 %and.lobit.i, 1
  %xstp.0.i = select i1 %cmp.i, i32 %6, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xstp.0.i)
  %tobool.not = icmp eq i32 %xstp.0.i, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %call.i, -5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef 192) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %status.0 = phi i32 [ %and7, %if.then6 ], [ %call.i, %if.end4.if.end9_crit_edge ]
  %and10 = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.then12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then12:                                        ; preds = %if.end9
  %ctrl1 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl1, align 4
  %11 = and i8 %10, -65
  %call.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %dev_id, i8 noundef zeroext -32, i8 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool17.not = icmp eq i32 %call.i37, 0
  br i1 %tobool17.not, label %if.end19, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #7
  br label %out

out:                                              ; preds = %if.end19, %if.then12.out_crit_edge, %if.end9.out_crit_edge, %entry.out_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %ops_lock23 = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock23) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_get_time(ptr noundef %dev, ptr noundef %dt) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #7
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %7 = call ptr @memset(ptr %date, i32 255, i32 7)
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %call.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  %and4.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %if.end3.i.cleanup.sink.split.i_crit_edge

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end3.i
  %model.i = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %model.i, align 4
  %and.i.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  %and.lobit.i.i = lshr exact i32 %and.i.i, 5
  %10 = xor i32 %and.lobit.i.i, 1
  %xstp.0.i.i = select i1 %cmp.i.i, i32 %10, i32 %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xstp.0.i.i)
  %tobool12.not.i = icmp eq i32 %xstp.0.i.i, 0
  br i1 %tobool12.not.i, label %if.end, label %if.end10.i.cleanup.sink.split.i_crit_edge

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end10.i.cleanup.sink.split.i_crit_edge, %if.end3.i.cleanup.sink.split.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.21, %if.end3.i.cleanup.sink.split.i_crit_edge ], [ @.str.24, %if.end10.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.24.sink.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end10.i
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp4.i, i32 %call.i, i32 -5
  br i1 %cmp.not.i, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_get_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_get_time, %cond.end)) #7
          to label %if.then12 [label %cond.end], !srcloc !110

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_get_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull %date) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then12, %do.body
  %11 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %date, align 1
  %13 = and i8 %12, 127
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %13) #11
  %14 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call27, ptr %dt, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %17 = and i8 %16, 127
  %call48 = call i32 @_bcd2bin(i8 noundef zeroext %17) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call48, ptr %tm_min, align 4
  %ctrl1 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl1, align 4
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool53.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 1
  br i1 %tobool53.not, label %cond.end99, label %cond.false70

cond.false70:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = and i8 %23, 63
  %call75 = call i32 @_bcd2bin(i8 noundef zeroext %24) #11
  br label %if.end108

cond.end99:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = and i8 %23, 31
  %call98 = call i32 @_bcd2bin(i8 noundef zeroext %25) #11
  %rem = urem i32 %call98, 12
  %26 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool104.not = icmp eq i8 %26, 0
  %cond105 = select i1 %tobool104.not, i32 0, i32 12
  %add106 = add nuw nsw i32 %rem, %cond105
  br label %if.end108

if.end108:                                        ; preds = %cond.end99, %cond.false70
  %add106.sink = phi i32 [ %add106, %cond.end99 ], [ %call75, %cond.false70 ]
  %tm_hour107 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour107 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add106.sink, ptr %tm_hour107, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %30 = and i8 %29, 63
  %call129 = call i32 @_bcd2bin(i8 noundef zeroext %30) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call129, ptr %tm_mday, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %34 = and i8 %33, 31
  %call152 = call i32 @_bcd2bin(i8 noundef zeroext %34) #11
  %sub = add i32 %call152, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %35 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tm_mon, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %6, align 1
  %call167 = call i32 @_bcd2bin(i8 noundef zeroext %37) #11
  %add170 = add i32 %call167, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %38 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add170, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_get_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_get_time, %cleanup)) #7
          to label %if.then185 [label %cleanup], !srcloc !110

if.then185:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_get_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %dt) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %if.end108, %if.end.cleanup_crit_edge, %cleanup.sink.split.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end.cleanup_crit_edge ], [ 0, %if.then185 ], [ -22, %cleanup.sink.split.i ], [ %call.i.i, %entry.cleanup_crit_edge ], [ 0, %if.end108 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_set_time(ptr noundef %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i = getelementptr %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #7
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %8 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dt, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #11
  %10 = ptrtoint ptr %date to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call4, ptr %date, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #11
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17, ptr %2, align 1
  %ctrl1 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl1, align 4
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %tm_hour40 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour40, align 4
  br i1 %tobool.not, label %if.else, label %cond.false32

cond.false32:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp = icmp sgt i32 %18, 11
  %cond42 = select i1 %cmp, i8 32, i8 0
  %add44 = add i32 %18, 11
  %rem45 = srem i32 %add44, 12
  %add46 = add nsw i32 %rem45, 1
  %call66 = tail call zeroext i8 @_bin2bcd(i32 noundef %add46) #11
  %or = or i8 %call66, %cond42
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false32
  %storemerge.in = phi i8 [ %or, %if.else ], [ %call34, %cond.false32 ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %storemerge.in, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  %call82 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #11
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call82, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mday, align 4
  %call98 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #11
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call98, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_mon, align 4
  %add104 = add i32 %27, 1
  %call118 = tail call zeroext i8 @_bin2bcd(i32 noundef %add104) #11
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call118, ptr %6, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_year, align 4
  %sub = add i32 %30, -100
  %call137 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call137, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_set_time, %do.end)) #7
          to label %if.then149 [label %do.end], !srcloc !110

if.then149:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef nonnull %date) #7
  br label %do.end

do.end:                                           ; preds = %if.then149, %if.end
  %call.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp153 = icmp slt i32 %call.i, 0
  br i1 %cmp153, label %do.end.cleanup_crit_edge, label %if.end156

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end156:                                        ; preds = %do.end
  %32 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i, align 4
  %call.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end156.cleanup_crit_edge, label %if.end.i

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %model.i = getelementptr inbounds %struct.rx8025_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp2.i = icmp eq i32 %35, 1
  %and.i = and i32 %call.i.i, -113
  %or.i = or i32 %and.i, 32
  %ctrl2.0.i = select i1 %cmp2.i, i32 %or.i, i32 %and.i
  %conv.i = trunc i32 %ctrl2.0.i to i8
  %call.i15.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -16, i8 noundef zeroext %conv.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end156.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i15.i, %if.end.i ], [ %call.i.i, %if.end156.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_read_alarm(ptr noundef %dev, ptr noundef %t) #2 align 64 {
entry:
  %ald = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ald) #7
  %2 = ptrtoint ptr %ald to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ald, align 1, !annotation !109
  %3 = getelementptr inbounds [2 x i8], ptr %ald, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !109
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext -80, i8 noundef zeroext 2, ptr noundef nonnull %ald) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp4.i, i32 %call.i, i32 -5
  br i1 %cmp.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i150 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp = icmp slt i32 %call.i150, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_read_alarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_read_alarm, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !110

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ald to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ald, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv13 = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_read_alarm.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv13, i32 noundef %call.i150) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %time, align 4
  %10 = ptrtoint ptr %ald to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ald, align 1
  %12 = and i8 %11, 127
  %call29 = call i32 @_bcd2bin(i8 noundef zeroext %12) #11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call29, ptr %tm_min, align 4
  %ctrl1 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl1, align 4
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool33.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  br i1 %tobool33.not, label %cond.end80, label %cond.false50

cond.false50:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = and i8 %18, 63
  %call55 = call i32 @_bcd2bin(i8 noundef zeroext %19) #11
  br label %do.body91

cond.end80:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = and i8 %18, 31
  %call79 = call i32 @_bcd2bin(i8 noundef zeroext %20) #11
  %rem = urem i32 %call79, 12
  %21 = and i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool85.not = icmp eq i8 %21, 0
  %cond86 = select i1 %tobool85.not, i32 0, i32 12
  %add87 = add nuw nsw i32 %rem, %cond86
  br label %do.body91

do.body91:                                        ; preds = %cond.end80, %cond.false50
  %cond57.sink = phi i32 [ %add87, %cond.end80 ], [ %call55, %cond.false50 ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond57.sink, ptr %tm_hour, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_read_alarm.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_read_alarm, %do.end109)) #7
          to label %if.then105 [label %do.end109], !srcloc !110

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_read_alarm.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, ptr noundef %time) #7
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.body91
  %23 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctrl1, align 4
  %25 = lshr i8 %24, 6
  %.lobit = and i8 %25, 1
  %26 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.lobit, ptr %t, align 4
  %and119 = and i32 %call.i150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp ne i32 %and119, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool123 = icmp ne i8 %.lobit, 0
  %spec.select = select i1 %tobool120.not, i1 %tobool123, i1 false
  %conv124 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %27 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv124, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end109 ], [ %spec.select.i, %entry.cleanup_crit_edge ], [ %call.i150, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ald) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %ald = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ald) #7
  %2 = getelementptr inbounds [2 x i8], ptr %ald, i32 0, i32 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tm_min, align 4
  %call7 = tail call zeroext i8 @_bin2bcd(i32 noundef %4) #11
  %5 = ptrtoint ptr %ald to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call7, ptr %ald, align 1
  %ctrl1 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl1, align 4
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %tm_hour32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %tm_hour32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_hour32, align 4
  br i1 %tobool.not, label %if.else, label %cond.false22

cond.false22:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %cmp = icmp sgt i32 %10, 11
  %cond34 = select i1 %cmp, i8 32, i8 0
  %add37 = add i32 %10, 11
  %rem38 = srem i32 %add37, 12
  %add39 = add nsw i32 %rem38, 1
  %call62 = tail call zeroext i8 @_bin2bcd(i32 noundef %add39) #11
  %or = or i8 %call62, %cond34
  br label %do.body

do.body:                                          ; preds = %if.else, %cond.false22
  %storemerge.in = phi i8 [ %or, %if.else ], [ %call25, %cond.false22 ]
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge.in, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8025_set_alarm.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8025_set_alarm, %do.end)) #7
          to label %if.then74 [label %do.end], !srcloc !110

if.then74:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ald to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ald, align 1
  %conv76 = zext i8 %13 to i32
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  %conv78 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8025_set_alarm.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %conv76, i32 noundef %conv78) #7
  br label %do.end

do.end:                                           ; preds = %if.then74, %do.body
  %16 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl1, align 4
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool83.not = icmp eq i8 %18, 0
  br i1 %tobool83.not, label %do.end.if.end94_crit_edge, label %if.then84

do.end.if.end94_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then84:                                        ; preds = %do.end
  %and87 = and i8 %17, -65
  %19 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and87, ptr %ctrl1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %and87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool91.not = icmp eq i32 %call.i, 0
  br i1 %tobool91.not, label %if.then84.if.end94_crit_edge, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then84.if.end94_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.end94:                                         ; preds = %if.then84.if.end94_crit_edge, %do.end.if.end94_crit_edge
  %call.i141 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext -80, i8 noundef zeroext 2, ptr noundef nonnull %ald) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool96.not = icmp eq i32 %call.i141, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end98:                                         ; preds = %if.end94
  %20 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool99.not = icmp eq i8 %21, 0
  br i1 %tobool99.not, label %if.end98.if.end110_crit_edge, label %if.then100

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then100:                                       ; preds = %if.end98
  %22 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl1, align 4
  %24 = or i8 %23, 64
  store i8 %24, ptr %ctrl1, align 4
  %call.i142 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool107.not = icmp eq i32 %call.i142, 0
  br i1 %tobool107.not, label %if.then100.if.end110_crit_edge, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then100.if.end110_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end110:                                        ; preds = %if.then100.if.end110_crit_edge, %if.end98.if.end110_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then100.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.then84.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end110 ], [ %call.i, %if.then84.cleanup_crit_edge ], [ %call.i141, %if.end94.cleanup_crit_edge ], [ %call.i142, %if.then100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ald) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctrl11 = getelementptr inbounds %struct.rx8025_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl11 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %4 = and i8 %3, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %ctrl1.0 = or i8 %4, %masksel
  call void @__sanitizer_cov_trace_cmp1(i8 %ctrl1.0, i8 %3)
  %cmp.not = icmp eq i8 %ctrl1.0, %3
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then9

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %ctrl11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ctrl1.0, ptr %ctrl11, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %ctrl1.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %entry.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call.i, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_read_offset(ptr noundef %dev, ptr nocapture noundef writeonly %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i)
  %cmp1 = icmp ugt i32 %call.i, 63
  %sub = add nsw i32 %call.i, -128
  %cond = select i1 %cmp1, i32 %sub, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp2 = icmp sgt i32 %cond, 0
  %dec = sext i1 %cmp2 to i32
  %storemerge = add nsw i32 %cond, %dec
  %mul = mul i32 %storemerge, 3050
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_set_offset(ptr noundef %dev, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %offset, 3050
  call void @__sanitizer_cov_trace_const_cmp4(i32 192149, i32 %offset)
  %cmp = icmp sgt i32 %offset, 192149
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -192149, i32 %offset)
  %cmp1 = icmp slt i32 %offset, -192149
  br i1 %cmp1, label %if.else.if.end11_crit_edge, label %if.else3

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3049, i32 %offset)
  %cmp4 = icmp sgt i32 %offset, 3049
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %div, 1
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3049, i32 %offset)
  %cmp7 = icmp slt i32 %offset, -3049
  %add = add nsw i32 %div, 128
  %spec.select = select i1 %cmp7, i32 %add, i32 0
  br label %if.end11

if.end11:                                         ; preds = %if.else6, %if.then5, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %offset.addr.0 = phi i32 [ %inc, %if.then5 ], [ 62, %entry.if.end11_crit_edge ], [ -62, %if.else.if.end11_crit_edge ], [ %spec.select, %if.else6 ]
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %conv = trunc i32 %offset.addr.0 to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 112, i8 noundef zeroext %conv) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_sysfs_show_clock_adjust(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b11 = load i1, ptr @rx8025_sysfs_show_clock_adjust.__print_once, align 1
  br i1 %.b11, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rx8025_sysfs_show_clock_adjust.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry.do.end3_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i.i)
  %cmp1.i = icmp ugt i32 %call.i.i, 63
  %sub.i = add nsw i32 %call.i.i, -128
  %cond.i = select i1 %cmp1.i, i32 %sub.i, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp2.i = icmp sgt i32 %cond.i, 0
  %dec.i = sext i1 %cmp2.i to i32
  %storemerge.i = add nsw i32 %cond.i, %dec.i
  %mul.i.neg = mul i32 %storemerge.i, -3050
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %mul.i.neg)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call.i.i, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8025_sysfs_store_clock_adjust(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %adj = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj) #7
  %0 = ptrtoint ptr %adj to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %adj, align 4, !annotation !109
  %.b11 = load i1, ptr @rx8025_sysfs_store_clock_adjust.__print_once, align 1
  br i1 %.b11, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rx8025_sysfs_store_clock_adjust.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry.do.end3_crit_edge
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %adj) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %1 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adj, align 4
  %sub = sub i32 0, %2
  %div.i = sdiv i32 %sub, 3050
  call void @__sanitizer_cov_trace_const_cmp4(i32 192149, i32 %sub)
  %cmp.i = icmp sgt i32 %sub, 192149
  br i1 %cmp.i, label %if.end5.rx8025_set_offset.exit_crit_edge, label %if.else.i

if.end5.rx8025_set_offset.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx8025_set_offset.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -192149, i32 %sub)
  %cmp1.i = icmp slt i32 %sub, -192149
  br i1 %cmp1.i, label %if.else.i.rx8025_set_offset.exit_crit_edge, label %if.else3.i

if.else.i.rx8025_set_offset.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx8025_set_offset.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3049, i32 %sub)
  %cmp4.i = icmp sgt i32 %sub, 3049
  br i1 %cmp4.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nsw i32 %div.i, 1
  br label %rx8025_set_offset.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3049, i32 %sub)
  %cmp7.i = icmp slt i32 %sub, -3049
  %add.i = add nsw i32 %div.i, 128
  %spec.select.i = select i1 %cmp7.i, i32 %add.i, i32 0
  br label %rx8025_set_offset.exit

rx8025_set_offset.exit:                           ; preds = %if.else6.i, %if.then5.i, %if.else.i.rx8025_set_offset.exit_crit_edge, %if.end5.rx8025_set_offset.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %inc.i, %if.then5.i ], [ 62, %if.end5.rx8025_set_offset.exit_crit_edge ], [ -62, %if.else.i.rx8025_set_offset.exit_crit_edge ], [ %spec.select.i, %if.else6.i ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %conv.i = trunc i32 %offset.addr.0.i to i8
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 112, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp eq i32 %call.i.i, 0
  %count.call6 = select i1 %tobool7.not, i32 %count, i32 %call.i.i
  br label %cleanup

cleanup:                                          ; preds = %rx8025_set_offset.exit, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call6, %rx8025_set_offset.exit ], [ -22, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !85, !87, !88, !89, !90, !91, !93, !95, !96, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_rtc_rx8025__294_578_rx8025_driver_init6, !1, !"__initcall__kmod_rtc_rx8025__294_578_rx8025_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rx8025.c", i32 578, i32 1}
!2 = !{ptr @__exitcall_rx8025_driver_exit, !1, !"__exitcall_rx8025_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rx8025.c", i32 580, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rx8025.c", i32 581, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rx8025.c", i32 582, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rx8025.c", i32 572, i32 11}
!12 = !{ptr @rx8025_driver, !13, !"rx8025_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rx8025.c", i32 570, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rx8025.c", i32 522, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rx8025_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rx8025_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-rx8025.c", i32 549, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rx8025_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rx8025_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-rx8025.c", i32 553, i32 7}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-rx8025.c", i32 292, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rx8025_init_client._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @rx8025_init_client._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rx8025_rtc_ops, !36, !"rx8025_rtc_ops", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-rx8025.c", i32 459, i32 35}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-rx8025.c", i32 225, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rx8025_get_time.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-rx8025.c", i32 239, i32 2}
!44 = !{ptr @rx8025_get_time.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-rx8025.c", i32 138, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rx8025_check_validity._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rx8025_check_validity._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rx8025.c", i32 141, i32 3}
!52 = !{ptr @rx8025_check_validity._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rx8025_check_validity._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-rx8025.c", i32 147, i32 3}
!56 = !{ptr @rx8025_check_validity._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rx8025_check_validity._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-rx8025.c", i32 268, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rx8025_set_time.__UNIQUE_ID_ddebug290, !59, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-rx8025.c", i32 326, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rx8025_read_alarm.__UNIQUE_ID_ddebug291, !63, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-rx8025.c", i32 338, i32 2}
!68 = !{ptr @rx8025_read_alarm.__UNIQUE_ID_ddebug292, !67, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-rx8025.c", i32 359, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rx8025_set_alarm.__UNIQUE_ID_ddebug293, !70, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rx8025.c", i32 186, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rx8025_handle_irq._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rx8025_handle_irq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @rx8025_attr_group, !79, !"rx8025_attr_group", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-rx8025.c", i32 509, i32 37}
!80 = !{ptr @rx8025_attrs, !81, !"rx8025_attrs", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-rx8025.c", i32 504, i32 26}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-rx8025.c", i32 500, i32 8}
!84 = !{ptr @dev_attr_clock_adjust_ppb, !83, !"dev_attr_clock_adjust_ppb", i1 false, i1 false}
!85 = distinct !{null, !86, !"__print_once", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-rx8025.c", i32 476, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rx8025_sysfs_show_clock_adjust._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @rx8025_sysfs_show_clock_adjust._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-rx8025.c", i32 481, i32 22}
!93 = distinct !{null, !94, !"__print_once", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-rx8025.c", i32 491, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rx8025_sysfs_store_clock_adjust._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rx8025_sysfs_store_clock_adjust._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rx8025_id, !99, !"rx8025_id", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-rx8025.c", i32 70, i32 35}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 2149000314, i64 2149000319, i64 2149000332, i64 2149000376, i64 2149000410, i64 2149000431}
