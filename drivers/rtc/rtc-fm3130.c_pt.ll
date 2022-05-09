; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-fm3130.c_pt.bc'
source_filename = "../drivers/rtc/rtc-fm3130.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm3130 = type { i8, i8, [15 x i8], [4 x %struct.i2c_msg], ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_fm3130__301_525_fm3130_driver_init6 = internal global ptr @fm3130_driver_init, section ".initcall6.init", align 4
@fm3130_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @fm3130_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fm3130_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fm3130_driver_exit = internal global ptr @fm3130_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [45 x i8] c"rtc_fm3130.description=RTC driver for FM3130\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [52 x i8] c"rtc_fm3130.author=Sergey Lapin <slapin@ossfans.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [39 x i8] c"rtc_fm3130.file=drivers/rtc/rtc-fm3130\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"rtc_fm3130.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-fm3130\00", [21 x i8] zeroinitializer }, align 32
@fm3130_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fm3130\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fm3130_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_fm3130\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fm3130_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-fm3130.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read error %d\0A\00", [17 x i8] zeroinitializer }, align 32
@fm3130_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disabling calibration mode!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fm3130_probe._entry_ptr = internal global ptr @fm3130_probe._entry, section ".printk_index", align 4
@fm3130_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Disabling READ or WRITE mode!\0A\00", [33 x i8] zeroinitializer }, align 32
@fm3130_probe._entry_ptr.10 = internal global ptr @fm3130_probe._entry.8, section ".printk_index", align 4
@fm3130_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Low battery!\0A\00", [18 x i8] zeroinitializer }, align 32
@fm3130_probe._entry_ptr.13 = internal global ptr @fm3130_probe._entry.11, section ".printk_index", align 4
@fm3130_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"POR bit is set\0A\00", [16 x i8] zeroinitializer }, align 32
@fm3130_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %15ph\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bogus registers\00", [16 x i8] zeroinitializer }, align 32
@fm3130_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @fm3130_get_time, ptr @fm3130_set_time, ptr @fm3130_read_alarm, ptr @fm3130_set_alarm, ptr null, ptr @fm3130_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@fm3130_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 509, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register the class device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fm3130_probe._entry_ptr.20 = internal global ptr @fm3130_probe._entry.17, section ".printk_index", align 4
@fm3130_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 109, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s error %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm3130_get_time\00", [16 x i8] zeroinitializer }, align 32
@fm3130_get_time._entry_ptr = internal global ptr @fm3130_get_time._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@fm3130_get_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.15, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@fm3130_get_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@fm3130_set_time.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.24, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm3130_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@fm3130_set_time.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.15, i8 0, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@fm3130_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.29, ptr @.str.3, i32 201, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fm3130_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@fm3130_read_alarm._entry_ptr = internal global ptr @fm3130_read_alarm._entry, section ".printk_index", align 4
@fm3130_read_alarm.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"alarm read %02x %02x %02x %02x %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@fm3130_read_alarm.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.24, i8 0, i8 56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read alarm\00", [21 x i8] zeroinitializer }, align 32
@fm3130_set_alarm.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.24, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fm3130_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write alarm\00", [20 x i8] zeroinitializer }, align 32
@fm3130_set_alarm.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"alarm write %02x %02x %02x %02x %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@fm3130_alarm_irq_enable.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fm3130_alarm_irq_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"alarm_irq_enable: enable=%d, FM3130_RTC_CONTROL=%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"fm3130_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 517, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 519, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"fm3130_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 55, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 392, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 407, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 417, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 431, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 439, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 499, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"fm3130_rtc_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 333, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 508, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 109, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 129, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 145, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 201, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 204, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 220, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 245, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 266, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [28 x i8] c"../drivers/rtc/rtc-fm3130.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 309, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_fm3130_driver_exit, ptr @__initcall__kmod_rtc_fm3130__301_525_fm3130_driver_init6, ptr @fm3130_driver_exit, ptr @fm3130_get_time._entry, ptr @fm3130_get_time._entry_ptr, ptr @fm3130_probe._entry, ptr @fm3130_probe._entry.11, ptr @fm3130_probe._entry.17, ptr @fm3130_probe._entry.8, ptr @fm3130_probe._entry_ptr, ptr @fm3130_probe._entry_ptr.10, ptr @fm3130_probe._entry_ptr.13, ptr @fm3130_probe._entry_ptr.20, ptr @fm3130_read_alarm._entry, ptr @fm3130_read_alarm._entry_ptr, ptr @fm3130_driver, ptr @.str, ptr @fm3130_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @fm3130_rtc_ops, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm3130_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fm3130_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fm3130_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @fm3130_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1048577
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %client6 = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %client6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %call.i, align 4
  %reg_addr_alarm = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_addr_alarm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %reg_addr_alarm, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %msg = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %buf, align 4
  %arrayidx17 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %arrayidx17, align 4
  %flags21 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %flags21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags21, align 2
  %len24 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %len24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 7, ptr %len24, align 4
  %regs = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 2
  %arrayidx25 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 2
  %buf28 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 1, i32 3
  %19 = ptrtoint ptr %buf28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx25, ptr %buf28, align 4
  %arrayidx31 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %11, ptr %arrayidx31, align 4
  %flags35 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %flags35 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags35, align 2
  %len38 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 2, i32 2
  %22 = ptrtoint ptr %len38 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len38, align 4
  %buf42 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 2, i32 3
  %23 = ptrtoint ptr %buf42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %reg_addr_alarm, ptr %buf42, align 4
  %arrayidx45 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %11, ptr %arrayidx45, align 4
  %flags49 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %25 = ptrtoint ptr %flags49 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags49, align 2
  %len52 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 3, i32 2
  %26 = ptrtoint ptr %len52 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 5, ptr %len52, align 4
  %arrayidx54 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 9
  %buf57 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 3, i32 3, i32 3
  %27 = ptrtoint ptr %buf57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx54, ptr %buf57, align 4
  %alarm_valid = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %alarm_valid, align 4
  %data_valid = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %data_valid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %data_valid, align 4
  %call59 = tail call i32 @i2c_transfer(ptr noundef %1, ptr noundef %msg, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call59)
  %cmp.not = icmp eq i32 %call59, 4
  br i1 %cmp.not, label %if.end70, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_probe, %cleanup)) #5
          to label %if.then67 [label %cleanup], !srcloc !101

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call59) #5
  br label %cleanup

if.end70:                                         ; preds = %if.end5
  %call71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #5
  %conv = trunc i32 %call71 to i8
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %regs, align 2
  %call74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #5
  %conv75 = trunc i32 %call74 to i8
  %arrayidx77 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv75, ptr %arrayidx77, align 1
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %regs, align 2
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool81.not = icmp eq i8 %34, 0
  br i1 %tobool81.not, label %if.end70.if.end93_crit_edge, label %if.then82

if.end70.if.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %and86 = and i8 %33, -5
  %call88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and86) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then82, %if.end70.if.end93_crit_edge
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regs, align 2
  %37 = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %if.end93.if.end115_crit_edge, label %if.then104

if.end93.if.end115_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then104:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %39 = and i8 %36, -4
  %call110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %39) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %if.end93.if.end115_crit_edge
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool120.not = icmp sgt i8 %41, -1
  br i1 %tobool120.not, label %if.end115.if.end128_crit_edge, label %if.then121

if.end115.if.end128_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %and125 = and i8 %41, 127
  %call127 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %and125) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then121, %if.end115.if.end128_crit_edge
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %regs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool133.not = icmp sgt i8 %43, -1
  br i1 %tobool133.not, label %if.end128.if.end145_crit_edge, label %if.then134

if.end128.if.end145_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  %and138 = and i8 %43, 127
  %call140 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and138) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %if.end145

if.end145:                                        ; preds = %if.then134, %if.end128.if.end145_crit_edge
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %regs, align 2
  %46 = and i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool150.not = icmp eq i8 %46, 0
  br i1 %tobool150.not, label %if.end145.if.end177_crit_edge, label %if.then151

if.end145.if.end177_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

if.then151:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  %and155 = and i8 %45, -17
  %call157 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and155) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_probe, %if.end177)) #5
          to label %if.then172 [label %if.end177], !srcloc !101

if.then172:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.14) #5
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %if.then151, %if.end145.if.end177_crit_edge
  %call178 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 14, i8 noundef zeroext -128) #5
  %47 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx25, align 2
  %49 = and i8 %48, 127
  %call198 = tail call i32 @_bcd2bin(i8 noundef zeroext %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call198)
  %cmp199 = icmp sgt i32 %call198, 59
  br i1 %cmp199, label %if.end177.cond.end359_crit_edge, label %cond.end228

if.end177.cond.end359_crit_edge:                  ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end359

cond.end228:                                      ; preds = %if.end177
  %arrayidx204 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx204, align 1
  %52 = and i8 %51, 127
  %call227 = tail call i32 @_bcd2bin(i8 noundef zeroext %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call227)
  %cmp230 = icmp sgt i32 %call227, 59
  br i1 %cmp230, label %cond.end228.cond.end359_crit_edge, label %cond.end259

cond.end228.cond.end359_crit_edge:                ; preds = %cond.end228
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end359

cond.end259:                                      ; preds = %cond.end228
  %arrayidx235 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx235, align 2
  %55 = and i8 %54, 63
  %call258 = tail call i32 @_bcd2bin(i8 noundef zeroext %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call258)
  %cmp261 = icmp sgt i32 %call258, 23
  br i1 %cmp261, label %cond.end259.cond.end359_crit_edge, label %cond.end290

cond.end259.cond.end359_crit_edge:                ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end359

cond.end290:                                      ; preds = %cond.end259
  %arrayidx266 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 6
  %56 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx266, align 2
  %58 = and i8 %57, 63
  %call289 = tail call i32 @_bcd2bin(i8 noundef zeroext %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %cmp292 = icmp eq i32 %call289, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call289)
  %cmp295 = icmp sgt i32 %call289, 31
  %or.cond708 = or i1 %cmp292, %cmp295
  br i1 %or.cond708, label %cond.end290.cond.end359_crit_edge, label %cond.end324

cond.end290.cond.end359_crit_edge:                ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end359

cond.end324:                                      ; preds = %cond.end290
  %arrayidx300 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 7
  %59 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx300, align 1
  %61 = and i8 %60, 31
  %call323 = tail call i32 @_bcd2bin(i8 noundef zeroext %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %cmp326 = icmp eq i32 %call323, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call323)
  %cmp329 = icmp sgt i32 %call323, 12
  %or.cond709 = or i1 %cmp326, %cmp329
  br i1 %or.cond709, label %cond.end324.cond.end359_crit_edge, label %if.end332

cond.end324.cond.end359_crit_edge:                ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end359

if.end332:                                        ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %alarm_valid, align 4
  br label %cond.end359

cond.end359:                                      ; preds = %if.end332, %cond.end324.cond.end359_crit_edge, %cond.end290.cond.end359_crit_edge, %cond.end259.cond.end359_crit_edge, %cond.end228.cond.end359_crit_edge, %if.end177.cond.end359_crit_edge
  %63 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx25, align 2
  %65 = and i8 %64, 127
  %call358 = tail call i32 @_bcd2bin(i8 noundef zeroext %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call358)
  %cmp361 = icmp sgt i32 %call358, 59
  br i1 %cmp361, label %cond.end359.bad_clock_crit_edge, label %cond.end390

cond.end359.bad_clock_crit_edge:                  ; preds = %cond.end359
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

cond.end390:                                      ; preds = %cond.end359
  %arrayidx366 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx366, align 1
  %68 = and i8 %67, 127
  %call389 = tail call i32 @_bcd2bin(i8 noundef zeroext %68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call389)
  %cmp392 = icmp sgt i32 %call389, 59
  br i1 %cmp392, label %cond.end390.bad_clock_crit_edge, label %cond.end421

cond.end390.bad_clock_crit_edge:                  ; preds = %cond.end390
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

cond.end421:                                      ; preds = %cond.end390
  %arrayidx397 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx397, align 2
  %71 = and i8 %70, 63
  %call420 = tail call i32 @_bcd2bin(i8 noundef zeroext %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call420)
  %cmp423 = icmp sgt i32 %call420, 23
  br i1 %cmp423, label %cond.end421.bad_clock_crit_edge, label %cond.end452

cond.end421.bad_clock_crit_edge:                  ; preds = %cond.end421
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

cond.end452:                                      ; preds = %cond.end421
  %arrayidx428 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 5
  %72 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx428, align 1
  %74 = and i8 %73, 7
  %call451 = tail call i32 @_bcd2bin(i8 noundef zeroext %74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call451)
  %cmp454 = icmp eq i32 %call451, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call451)
  %cmp457 = icmp sgt i32 %call451, 7
  %or.cond710 = or i1 %cmp454, %cmp457
  br i1 %or.cond710, label %cond.end452.bad_clock_crit_edge, label %cond.end486

cond.end452.bad_clock_crit_edge:                  ; preds = %cond.end452
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

cond.end486:                                      ; preds = %cond.end452
  %arrayidx462 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 6
  %75 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx462, align 2
  %77 = and i8 %76, 63
  %call485 = tail call i32 @_bcd2bin(i8 noundef zeroext %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485)
  %cmp488 = icmp eq i32 %call485, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call485)
  %cmp491 = icmp sgt i32 %call485, 31
  %or.cond711 = or i1 %cmp488, %cmp491
  br i1 %or.cond711, label %cond.end486.bad_clock_crit_edge, label %cond.end520

cond.end486.bad_clock_crit_edge:                  ; preds = %cond.end486
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

cond.end520:                                      ; preds = %cond.end486
  %arrayidx496 = getelementptr %struct.fm3130, ptr %call.i, i32 0, i32 2, i32 7
  %78 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx496, align 1
  %80 = and i8 %79, 31
  %call519 = tail call i32 @_bcd2bin(i8 noundef zeroext %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call519)
  %cmp522 = icmp eq i32 %call519, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call519)
  %cmp525 = icmp sgt i32 %call519, 12
  %or.cond712 = or i1 %cmp522, %cmp525
  br i1 %or.cond712, label %cond.end520.bad_clock_crit_edge, label %bad_clock.thread

cond.end520.bad_clock_crit_edge:                  ; preds = %cond.end520
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad_clock

bad_clock.thread:                                 ; preds = %cond.end520
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %data_valid to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %data_valid, align 4
  br label %lor.lhs.false532

bad_clock:                                        ; preds = %cond.end520.bad_clock_crit_edge, %cond.end486.bad_clock_crit_edge, %cond.end452.bad_clock_crit_edge, %cond.end421.bad_clock_crit_edge, %cond.end390.bad_clock_crit_edge, %cond.end359.bad_clock_crit_edge
  %82 = ptrtoint ptr %data_valid to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool531.not = icmp eq i32 %.pr, 0
  br i1 %tobool531.not, label %bad_clock.do.body536_crit_edge, label %bad_clock.lor.lhs.false532_crit_edge

bad_clock.lor.lhs.false532_crit_edge:             ; preds = %bad_clock
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false532

bad_clock.do.body536_crit_edge:                   ; preds = %bad_clock
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body536

lor.lhs.false532:                                 ; preds = %bad_clock.lor.lhs.false532_crit_edge, %bad_clock.thread
  %83 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alarm_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool534.not = icmp eq i32 %84, 0
  br i1 %tobool534.not, label %lor.lhs.false532.do.body536_crit_edge, label %lor.lhs.false532.if.end557_crit_edge

lor.lhs.false532.if.end557_crit_edge:             ; preds = %lor.lhs.false532
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end557

lor.lhs.false532.do.body536_crit_edge:            ; preds = %lor.lhs.false532
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body536

do.body536:                                       ; preds = %lor.lhs.false532.do.body536_crit_edge, %bad_clock.do.body536_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_probe, %if.end557)) #5
          to label %if.then550 [label %if.end557], !srcloc !101

if.then550:                                       ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %regs) #5
  br label %if.end557

if.end557:                                        ; preds = %if.then550, %do.body536, %lor.lhs.false532.if.end557_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call560 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull @fm3130_rtc_ops, ptr noundef null) #5
  %rtc = getelementptr inbounds %struct.fm3130, ptr %call.i, i32 0, i32 5
  %85 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call560, ptr %rtc, align 4
  %cmp.i719 = icmp ugt ptr %call560, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i719, label %if.then563, label %if.end557.cleanup_crit_edge

if.end557.cleanup_crit_edge:                      ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then563:                                       ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %call560 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then563, %if.end557.cleanup_crit_edge, %if.then67, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end557.cleanup_crit_edge ], [ %86, %if.then563 ], [ -5, %if.then67 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_get_time(ptr noundef %dev, ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data_valid = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %client.i = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #5
  %conv.i = trunc i32 %call1.i to i8
  %regs.i = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 2
  %conv16.i = or i8 %conv.i, 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv16.i, ptr %regs.i, align 2
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %conv16.i) #5
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %msg = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @i2c_transfer(ptr noundef %12, ptr noundef %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %call1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i, align 4
  %client.i247 = getelementptr inbounds %struct.fm3130, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %client.i247 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i247, align 4
  %call1.i248 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 0) #5
  %conv.i249 = trunc i32 %call1.i248 to i8
  %regs.i250 = getelementptr inbounds %struct.fm3130, ptr %14, i32 0, i32 2
  %conv5.i = and i8 %conv.i249, -4
  %17 = ptrtoint ptr %regs.i250 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5.i, ptr %regs.i250, align 2
  %18 = ptrtoint ptr %client.i247 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i247, align 4
  %call24.i251 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext %conv5.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_get_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_get_time, %cond.end)) #5
          to label %if.then11 [label %cond.end], !srcloc !101

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_get_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23, ptr noundef %regs.i) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then11, %if.end3
  %arrayidx = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 2
  %22 = and i8 %21, 127
  %call32 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #9
  %23 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call32, ptr %t, align 4
  %arrayidx34 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx34, align 1
  %26 = and i8 %25, 127
  %call57 = tail call i32 @_bcd2bin(i8 noundef zeroext %26) #9
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %27 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call57, ptr %tm_min, align 4
  %arrayidx61 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx61, align 2
  %30 = and i8 %29, 63
  %call72 = tail call i32 @_bcd2bin(i8 noundef zeroext %30) #9
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call72, ptr %tm_hour, align 4
  %arrayidx76 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx76, align 1
  %34 = and i8 %33, 7
  %call99 = tail call i32 @_bcd2bin(i8 noundef zeroext %34) #9
  %sub = add i32 %call99, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %35 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tm_wday, align 4
  %arrayidx103 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx103, align 2
  %38 = and i8 %37, 63
  %call126 = tail call i32 @_bcd2bin(i8 noundef zeroext %38) #9
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call126, ptr %tm_mday, align 4
  %arrayidx130 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx130, align 1
  %42 = and i8 %41, 31
  %call141 = tail call i32 @_bcd2bin(i8 noundef zeroext %42) #9
  %sub144 = add i32 %call141, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %43 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub144, ptr %tm_mon, align 4
  %arrayidx146 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx146, align 2
  %call161 = tail call i32 @_bcd2bin(i8 noundef zeroext %45) #9
  %add164 = add i32 %call161, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %46 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add164, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_get_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_get_time, %cleanup)) #5
          to label %if.then179 [label %cleanup], !srcloc !101

if.then179:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t, align 4
  %49 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_min, align 4
  %51 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_hour, align 4
  %53 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm_mday, align 4
  %55 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_mon, align 4
  %57 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_year, align 4
  %59 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_get_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %cond.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then179 ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_set_time(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_set_time.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_set_time, %cond.end)) #5
          to label %if.then [label %cond.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %14 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_set_time.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %16 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t, align 4
  %call10 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #9
  %arrayidx = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call10, ptr %arrayidx, align 1
  %tm_min13 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min13, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #9
  %arrayidx29 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call24, ptr %arrayidx29, align 1
  %tm_hour30 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour30, align 4
  %call41 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %arrayidx46 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call41, ptr %arrayidx46, align 1
  %tm_wday47 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %25 = ptrtoint ptr %tm_wday47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_wday47, align 4
  %add48 = add i32 %26, 1
  %call62 = tail call zeroext i8 @_bin2bcd(i32 noundef %add48) #9
  %arrayidx67 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call62, ptr %arrayidx67, align 1
  %tm_mday68 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %28 = ptrtoint ptr %tm_mday68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mday68, align 4
  %call79 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #9
  %arrayidx84 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call79, ptr %arrayidx84, align 1
  %tm_mon85 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %31 = ptrtoint ptr %tm_mon85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mon85, align 4
  %add86 = add i32 %32, 1
  %call100 = tail call zeroext i8 @_bin2bcd(i32 noundef %add86) #9
  %arrayidx105 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 7
  %33 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call100, ptr %arrayidx105, align 1
  %tm_year106 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %34 = ptrtoint ptr %tm_year106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year106, align 4
  %sub = add i32 %35, -100
  %call114 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #9
  %arrayidx119 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call114, ptr %arrayidx119, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_set_time.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_set_time, %do.end137)) #5
          to label %if.then134 [label %do.end137], !srcloc !101

if.then134:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_set_time.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.28, ptr noundef %regs) #5
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %cond.end
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i, align 4
  %client.i = getelementptr inbounds %struct.fm3130, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 0) #5
  %conv.i = trunc i32 %call1.i to i8
  %regs.i = getelementptr inbounds %struct.fm3130, ptr %38, i32 0, i32 2
  %conv10.i = or i8 %conv.i, 2
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10.i, ptr %regs.i, align 2
  %42 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i, align 4
  %call24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext %conv10.i) #5
  %client = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  %call144 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 2, i8 noundef zeroext %47) #5
  %48 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client, align 4
  %50 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx29, align 1
  %call144.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 3, i8 noundef zeroext %51) #5
  %52 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client, align 4
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx46, align 1
  %call144.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 4, i8 noundef zeroext %55) #5
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %58 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx67, align 1
  %call144.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 5, i8 noundef zeroext %59) #5
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %62 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx84, align 1
  %call144.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 6, i8 noundef zeroext %63) #5
  %64 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client, align 4
  %66 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx105, align 1
  %call144.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 7, i8 noundef zeroext %67) #5
  %68 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client, align 4
  %70 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx119, align 1
  %call144.6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 8, i8 noundef zeroext %71) #5
  %72 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i, align 4
  %client.i205 = getelementptr inbounds %struct.fm3130, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %client.i205 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client.i205, align 4
  %call1.i206 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %75, i8 noundef zeroext 0) #5
  %conv.i207 = trunc i32 %call1.i206 to i8
  %regs.i208 = getelementptr inbounds %struct.fm3130, ptr %73, i32 0, i32 2
  %conv5.i = and i8 %conv.i207, -4
  %76 = ptrtoint ptr %regs.i208 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv5.i, ptr %regs.i208, align 2
  %77 = ptrtoint ptr %client.i205 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client.i205, align 4
  %call24.i209 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext 0, i8 noundef zeroext %conv5.i) #5
  %data_valid = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 7
  %79 = ptrtoint ptr %data_valid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool145.not = icmp eq i32 %80, 0
  br i1 %tobool145.not, label %if.then146, label %do.end137.if.end148_crit_edge

do.end137.if.end148_crit_edge:                    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then146:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %data_valid to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %data_valid, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %do.end137.if.end148_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_read_alarm(ptr noundef %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %alarm_valid = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %arrayidx = getelementptr %struct.fm3130, ptr %1, i32 0, i32 3, i32 2
  %call1 = tail call i32 @i2c_transfer(ptr noundef %7, ptr noundef %arrayidx, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %do.body4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %call1) #8
  br label %cleanup

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_read_alarm.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_read_alarm, %do.end27)) #5
          to label %if.then11 [label %do.end27], !srcloc !101

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %9 to i32
  %arrayidx14 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 10
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 2
  %conv15 = zext i8 %11 to i32
  %arrayidx17 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %arrayidx20 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %15 to i32
  %arrayidx23 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 13
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_read_alarm.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then11, %do.body4
  %regs28 = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 2
  %arrayidx29 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  %20 = and i8 %19, 127
  %call46 = tail call i32 @_bcd2bin(i8 noundef zeroext %20) #9
  %21 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call46, ptr %time, align 4
  %arrayidx48 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 10
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx48, align 2
  %24 = and i8 %23, 127
  %call71 = tail call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call71, ptr %tm_min, align 4
  %arrayidx75 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 11
  %26 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx75, align 1
  %28 = and i8 %27, 63
  %call98 = tail call i32 @_bcd2bin(i8 noundef zeroext %28) #9
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call98, ptr %tm_hour, align 4
  %arrayidx102 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 12
  %30 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx102, align 2
  %32 = and i8 %31, 63
  %call125 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #9
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call125, ptr %tm_mday, align 4
  %arrayidx129 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 13
  %34 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx129, align 1
  %36 = and i8 %35, 31
  %call152 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp156 = icmp sgt i32 %call152, 0
  %sub = sext i1 %cmp156 to i32
  %spec.select = add i32 %call152, %sub
  %37 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %tm_mon, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_read_alarm.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_read_alarm, %do.end183)) #5
          to label %if.then175 [label %do.end183], !srcloc !101

if.then175:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %time, align 4
  %40 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_min, align 4
  %42 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_hour, align 4
  %44 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mday, align 4
  %46 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %50 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_read_alarm.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.31, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #5
  br label %do.end183

do.end183:                                        ; preds = %if.then175, %do.end27
  %52 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client, align 4
  %call185 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 0) #5
  %conv186 = trunc i32 %call185 to i8
  %54 = ptrtoint ptr %regs28 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv186, ptr %regs28, align 2
  %55 = and i32 %call185, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %if.then199, label %do.end183.cleanup_crit_edge

do.end183.cleanup_crit_edge:                      ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then199:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %do.end183.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then199 ], [ 0, %do.end183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_set_alarm.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_set_alarm, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_set_alarm.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %16 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.not = icmp eq i32 %17, -1
  br i1 %cmp.not, label %do.end.cond.end14_crit_edge, label %cond.false

do.end.cond.end14_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end14

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false, %do.end.cond.end14_crit_edge
  %cond15 = phi i8 [ %call11, %cond.false ], [ -128, %do.end.cond.end14_crit_edge ]
  %regs = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cond15, ptr %arrayidx, align 1
  %tm_min17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp18.not = icmp eq i32 %20, -1
  br i1 %cmp18.not, label %cond.end14.cond.end37_crit_edge, label %cond.false30

cond.end14.cond.end37_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end37

cond.false30:                                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #9
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false30, %cond.end14.cond.end37_crit_edge
  %cond38 = phi i8 [ %call32, %cond.false30 ], [ -128, %cond.end14.cond.end37_crit_edge ]
  %arrayidx41 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond38, ptr %arrayidx41, align 2
  %tm_hour42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tm_hour42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp43.not = icmp eq i32 %23, -1
  br i1 %cmp43.not, label %cond.end37.cond.end62_crit_edge, label %cond.false55

cond.end37.cond.end62_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end62

cond.false55:                                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false55, %cond.end37.cond.end62_crit_edge
  %cond63 = phi i8 [ %call57, %cond.false55 ], [ -128, %cond.end37.cond.end62_crit_edge ]
  %arrayidx66 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 11
  %24 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cond63, ptr %arrayidx66, align 1
  %tm_mday67 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %tm_mday67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp68.not = icmp eq i32 %26, -1
  br i1 %cmp68.not, label %cond.end62.cond.end87_crit_edge, label %cond.false80

cond.end62.cond.end87_crit_edge:                  ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end87

cond.false80:                                     ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #9
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false80, %cond.end62.cond.end87_crit_edge
  %cond88 = phi i8 [ %call82, %cond.false80 ], [ -128, %cond.end62.cond.end87_crit_edge ]
  %arrayidx91 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 12
  %27 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %cond88, ptr %arrayidx91, align 2
  %tm_mon92 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %tm_mon92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mon92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp93.not = icmp eq i32 %29, -1
  br i1 %cmp93.not, label %cond.end87.cond.end116_crit_edge, label %cond.false108

cond.end87.cond.end116_crit_edge:                 ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end116

cond.false108:                                    ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #7
  %add97 = add nuw i32 %29, 1
  %call111 = tail call zeroext i8 @_bin2bcd(i32 noundef %add97) #9
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false108, %cond.end87.cond.end116_crit_edge
  %cond117 = phi i8 [ %call111, %cond.false108 ], [ -128, %cond.end87.cond.end116_crit_edge ]
  %arrayidx120 = getelementptr %struct.fm3130, ptr %1, i32 0, i32 2, i32 13
  %30 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond117, ptr %arrayidx120, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_set_alarm.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_set_alarm, %do.end153)) #5
          to label %if.then135 [label %do.end153], !srcloc !101

if.then135:                                       ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %conv138 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx41, align 2
  %conv141 = zext i8 %34 to i32
  %35 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66, align 1
  %conv144 = zext i8 %36 to i32
  %37 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx91, align 2
  %conv147 = zext i8 %38 to i32
  %39 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx120, align 1
  %conv150 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_set_alarm.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %conv138, i32 noundef %conv141, i32 noundef %conv144, i32 noundef %conv147, i32 noundef %conv150) #5
  br label %do.end153

do.end153:                                        ; preds = %if.then135, %cond.end116
  %client = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %call161 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 9, i8 noundef zeroext %44) #5
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 4
  %47 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx41, align 1
  %call161.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 10, i8 noundef zeroext %48) #5
  %49 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client, align 4
  %51 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx66, align 1
  %call161.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 11, i8 noundef zeroext %52) #5
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %55 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx91, align 1
  %call161.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 12, i8 noundef zeroext %56) #5
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %59 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx120, align 1
  %call161.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 13, i8 noundef zeroext %60) #5
  %61 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client, align 4
  %call163 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %62, i8 noundef zeroext 0) #5
  %conv164 = trunc i32 %call163 to i8
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv164, ptr %regs, align 2
  %64 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool167.not = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client, align 4
  %conv181 = and i8 %conv164, -13
  %conv173 = or i8 %conv181, 8
  %conv181.sink = select i1 %tobool167.not, i8 %conv181, i8 %conv173
  %call182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 0, i8 noundef zeroext %conv181.sink) #5
  %alarm_valid = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %alarm_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool184.not = icmp eq i32 %69, 0
  br i1 %tobool184.not, label %if.then185, label %do.end153.if.end187_crit_edge

do.end153.if.end187_crit_edge:                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then185:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %alarm_valid to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %alarm_valid, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %do.end153.if.end187_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm3130_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %conv = trunc i32 %call1 to i8
  %regs = getelementptr inbounds %struct.fm3130, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %regs, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm3130_alarm_irq_enable.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fm3130_alarm_irq_enable, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regs, align 2
  %conv8 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm3130_alarm_irq_enable.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %enabled, i32 noundef %conv8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = zext i32 %enabled to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %enabled, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regs, align 2
  %12 = and i8 %11, -13
  %call15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %12) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regs, align 2
  %17 = and i8 %16, -13
  %18 = or i8 %17, 8
  %call23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext %18) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call23, %sw.bb16 ], [ %call15, %sw.bb ], [ -22, %do.end.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !54, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_rtc_fm3130__301_525_fm3130_driver_init6, !1, !"__initcall__kmod_rtc_fm3130__301_525_fm3130_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-fm3130.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_fm3130_driver_exit, !1, !"__exitcall_fm3130_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-fm3130.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-fm3130.c", i32 528, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-fm3130.c", i32 529, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-fm3130.c", i32 519, i32 11}
!12 = !{ptr @fm3130_driver, !13, !"fm3130_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-fm3130.c", i32 517, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-fm3130.c", i32 392, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fm3130_probe.__UNIQUE_ID_ddebug298, !15, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-fm3130.c", i32 407, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fm3130_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @fm3130_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-fm3130.c", i32 417, i32 3}
!28 = !{ptr @fm3130_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @fm3130_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-fm3130.c", i32 431, i32 3}
!32 = !{ptr @fm3130_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @fm3130_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-fm3130.c", i32 439, i32 3}
!36 = !{ptr @fm3130_probe.__UNIQUE_ID_ddebug299, !35, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-fm3130.c", i32 499, i32 3}
!39 = !{ptr @fm3130_probe.__UNIQUE_ID_ddebug300, !38, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-fm3130.c", i32 508, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fm3130_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fm3130_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @fm3130_rtc_ops, !47, !"fm3130_rtc_ops", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-fm3130.c", i32 333, i32 35}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-fm3130.c", i32 109, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fm3130_get_time._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @fm3130_get_time._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fm3130_get_time.__UNIQUE_ID_ddebug289, !55, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-fm3130.c", i32 115, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-fm3130.c", i32 129, i32 2}
!58 = !{ptr @fm3130_get_time.__UNIQUE_ID_ddebug290, !57, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-fm3130.c", i32 84, i32 3}
!61 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !60, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-fm3130.c", i32 145, i32 2}
!65 = !{ptr @fm3130_set_time.__UNIQUE_ID_ddebug291, !64, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!66 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fm3130_set_time.__UNIQUE_ID_ddebug292, !68, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-fm3130.c", i32 163, i32 2}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-fm3130.c", i32 201, i32 3}
!71 = !{ptr @fm3130_read_alarm._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @fm3130_read_alarm._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-fm3130.c", i32 204, i32 2}
!75 = !{ptr @fm3130_read_alarm.__UNIQUE_ID_ddebug293, !74, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!76 = !{ptr @fm3130_read_alarm.__UNIQUE_ID_ddebug294, !77, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-fm3130.c", i32 220, i32 2}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-fm3130.c", i32 245, i32 2}
!81 = !{ptr @fm3130_set_alarm.__UNIQUE_ID_ddebug295, !80, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!82 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-fm3130.c", i32 266, i32 2}
!85 = !{ptr @fm3130_set_alarm.__UNIQUE_ID_ddebug296, !84, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-fm3130.c", i32 309, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fm3130_alarm_irq_enable.__UNIQUE_ID_ddebug297, !87, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!90 = !{ptr @fm3130_id, !91, !"fm3130_id", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-fm3130.c", i32 55, i32 35}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148966946, i64 2148966951, i64 2148966964, i64 2148967008, i64 2148967042, i64 2148967063}
