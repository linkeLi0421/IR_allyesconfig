; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-isl12022.c_pt.bc'
source_filename = "../drivers/rtc/rtc-isl12022.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.isl12022 = type { ptr, i8 }

@__initcall__kmod_rtc_isl12022__291_282_isl12022_driver_init6 = internal global ptr @isl12022_driver_init, section ".initcall6.init", align 4
@isl12022_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl12022_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl12022_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @isl12022_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl12022_driver_exit = internal global ptr @isl12022_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [47 x i8] c"rtc_isl12022.author=roman.fietze@telemotive.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [46 x i8] c"rtc_isl12022.description=ISL 12022 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"rtc_isl12022.file=drivers/rtc/rtc-isl12022\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [25 x i8] c"rtc_isl12022.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-isl12022\00", [19 x i8] zeroinitializer }, align 32
@isl12022_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isl,isl12022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl12022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@isl12022_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl12022\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@isl12022_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @isl12022_rtc_read_time, ptr @isl12022_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@isl12022_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"voltage dropped below %u%%, date and time is not reliable.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isl12022_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-isl12022.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl12022_rtc_read_time._entry_ptr = internal global ptr @isl12022_rtc_read_time._entry, section ".printk_index", align 4
@isl12022_rtc_read_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_isl12022\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"%s: raw data is sec=%02x, min=%02x, hr=%02x, mday=%02x, mon=%02x, year=%02x, wday=%02x, sr=%02x, int=%02x\00", [54 x i8] zeroinitializer }, align 32
@isl12022_rtc_read_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@isl12022_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 74, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: read error, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl12022_read_regs\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@isl12022_read_regs._entry_ptr = internal global ptr @isl12022_read_regs._entry, section ".printk_index", align 4
@isl12022_rtc_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.3, ptr @.str.8, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl12022_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@isl12022_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.12, ptr @.str.3, i32 177, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"init write enable and 24 hour format\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@isl12022_rtc_set_time._entry_ptr = internal global ptr @isl12022_rtc_set_time._entry, section ".printk_index", align 4
@isl12022_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 92, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: err=%d addr=%02x, data=%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl12022_write_reg\00", [45 x i8] zeroinitializer }, align 32
@isl12022_write_reg._entry_ptr = internal global ptr @isl12022_write_reg._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"isl12022_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 271, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 273, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"isl12022_dt_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 257, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"isl12022_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 265, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"isl12022_rtc_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 230, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 115, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 121, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 144, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 73, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 161, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 176, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [30 x i8] c"../drivers/rtc/rtc-isl12022.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 90, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_isl12022_driver_exit, ptr @__initcall__kmod_rtc_isl12022__291_282_isl12022_driver_init6, ptr @isl12022_driver_exit, ptr @isl12022_read_regs._entry, ptr @isl12022_read_regs._entry_ptr, ptr @isl12022_rtc_read_time._entry, ptr @isl12022_rtc_read_time._entry_ptr, ptr @isl12022_rtc_set_time._entry, ptr @isl12022_rtc_set_time._entry_ptr, ptr @isl12022_write_reg._entry, ptr @isl12022_write_reg._entry_ptr, ptr @isl12022_driver, ptr @.str, ptr @isl12022_dt_match, ptr @isl12022_id, ptr @isl12022_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12022_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12022_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl12022_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl12022_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @isl12022_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12022_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @isl12022_driver, i32 0, i32 7), align 4
  %call6 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull @isl12022_rtc_ops, ptr noundef null) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call6 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12022_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds i8, ptr %buf, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %20 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 9, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf6.i, align 4
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %buf, align 1
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %isl12022_read_regs.exit

isl12022_read_regs.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  %conv = zext i8 %26 to i32
  %and = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.body9_crit_edge, label %do.end

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool7.not, i32 75, i32 85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %cond) #9
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if.end.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl12022_rtc_read_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl12022_rtc_read_time, %cond.end)) #6
          to label %if.then16 [label %cond.end], !srcloc !63

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 1
  %conv19 = zext i8 %28 to i32
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  %conv21 = zext i8 %30 to i32
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 1
  %conv23 = zext i8 %32 to i32
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %conv25 = zext i8 %34 to i32
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %conv27 = zext i8 %36 to i32
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %4, align 1
  %conv29 = zext i8 %38 to i32
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %5, align 1
  %conv31 = zext i8 %40 to i32
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %6, align 1
  %conv33 = zext i8 %42 to i32
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %7, align 1
  %conv35 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl12022_rtc_read_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then16, %do.body9
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %buf, align 1
  %47 = and i8 %46, 127
  %call54 = call i32 @_bcd2bin(i8 noundef zeroext %47) #10
  %48 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call54, ptr %tm, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %0, align 1
  %51 = and i8 %50, 127
  %call76 = call i32 @_bcd2bin(i8 noundef zeroext %51) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %52 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call76, ptr %tm_min, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %1, align 1
  %55 = and i8 %54, 63
  %call99 = call i32 @_bcd2bin(i8 noundef zeroext %55) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call99, ptr %tm_hour, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %2, align 1
  %59 = and i8 %58, 63
  %call122 = call i32 @_bcd2bin(i8 noundef zeroext %59) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %60 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call122, ptr %tm_mday, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %5, align 1
  %63 = and i8 %62, 7
  %and127 = zext i8 %63 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %64 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and127, ptr %tm_wday, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %3, align 1
  %67 = and i8 %66, 31
  %call148 = call i32 @_bcd2bin(i8 noundef zeroext %67) #10
  %sub = add i32 %call148, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %68 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub, ptr %tm_mon, align 4
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %4, align 1
  %call163 = call i32 @_bcd2bin(i8 noundef zeroext %70) #10
  %add166 = add i32 %call163, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %71 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add166, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl12022_rtc_read_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl12022_rtc_read_time, %cleanup)) #6
          to label %if.then181 [label %cleanup], !srcloc !63

if.then181:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tm, align 4
  %74 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm_min, align 4
  %76 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tm_hour, align 4
  %78 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tm_mday, align 4
  %80 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tm_mon, align 4
  %82 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tm_year, align 4
  %84 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl12022_rtc_read_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %cond.end, %isl12022_read_regs.exit
  %retval.0 = phi i32 [ -5, %isl12022_read_regs.exit ], [ 0, %if.then181 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12022_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = call ptr @memset(ptr %buf, i32 255, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl12022_rtc_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl12022_rtc_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %17 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %19 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl12022_rtc_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %write_enabled = getelementptr inbounds %struct.isl12022, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %write_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_enabled, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %if.then8, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %25 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %27 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr1.i, align 2
  %29 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %25, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %33 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %28, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %35 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %36 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf, ptr %buf6.i, align 4
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %buf, align 1
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end12, label %isl12022_read_regs.exit

isl12022_read_regs.exit:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf, align 1
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool13.not = icmp eq i8 %42, 0
  br i1 %tobool13.not, label %do.end17, label %if.end12.if.end39_crit_edge

if.end12.if.end39_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end17:                                         ; preds = %if.end12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf, align 1
  %45 = or i8 %44, 64
  %call22 = call fastcc i32 @isl12022_write_reg(ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %do.end17
  %call27 = call fastcc i32 @isl12022_read_regs(ptr noundef %add.ptr, i8 noundef zeroext 2, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 1
  %48 = or i8 %47, -128
  %call35 = call fastcc i32 @isl12022_write_reg(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end30.if.end39_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %if.end30.if.end39_crit_edge, %if.end12.if.end39_crit_edge
  %49 = ptrtoint ptr %write_enabled to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %write_enabled, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end39, %do.end.cond.end_crit_edge
  %50 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm, align 4
  %call47 = call zeroext i8 @_bin2bcd(i32 noundef %51) #10
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call47, ptr %buf, align 1
  %tm_min51 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %53 = ptrtoint ptr %tm_min51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm_min51, align 4
  %call62 = call zeroext i8 @_bin2bcd(i32 noundef %54) #10
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %call62, ptr %2, align 1
  %tm_hour68 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %56 = ptrtoint ptr %tm_hour68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_hour68, align 4
  %call79 = call zeroext i8 @_bin2bcd(i32 noundef %57) #10
  %conv84 = or i8 %call79, -128
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv84, ptr %3, align 1
  %tm_mday86 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %59 = ptrtoint ptr %tm_mday86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_mday86, align 4
  %call97 = call zeroext i8 @_bin2bcd(i32 noundef %60) #10
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call97, ptr %4, align 1
  %tm_mon103 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %62 = ptrtoint ptr %tm_mon103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_mon103, align 4
  %add104 = add i32 %63, 1
  %call118 = call zeroext i8 @_bin2bcd(i32 noundef %add104) #10
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call118, ptr %5, align 1
  %tm_year124 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %65 = ptrtoint ptr %tm_year124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_year124, align 4
  %rem125 = srem i32 %66, 100
  %call139 = call zeroext i8 @_bin2bcd(i32 noundef %rem125) #10
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call139, ptr %6, align 1
  %tm_wday145 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %68 = ptrtoint ptr %tm_wday145 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm_wday145, align 4
  %70 = trunc i32 %69 to i8
  %conv147 = and i8 %70, 7
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv147, ptr %7, align 1
  %72 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %data.i, align 1
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %74, ptr %72, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i213 = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i213, label %for.inc, label %cond.end.isl12022_write_reg.exit_crit_edge

cond.end.isl12022_write_reg.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

isl12022_write_reg.exit:                          ; preds = %for.inc.5.isl12022_write_reg.exit_crit_edge, %for.inc.4.isl12022_write_reg.exit_crit_edge, %for.inc.3.isl12022_write_reg.exit_crit_edge, %for.inc.2.isl12022_write_reg.exit_crit_edge, %for.inc.1.isl12022_write_reg.exit_crit_edge, %for.inc.isl12022_write_reg.exit_crit_edge, %cond.end.isl12022_write_reg.exit_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %cond.end.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.1, %for.inc.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.2, %for.inc.1.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.3, %for.inc.2.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.4, %for.inc.3.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.5, %for.inc.4.isl12022_write_reg.exit_crit_edge ], [ %call.i.i.6, %for.inc.5.isl12022_write_reg.exit_crit_edge ]
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %78 to i32
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %72, align 1
  %conv2.i = zext i8 %80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.lcssa, i32 noundef %conv.i, i32 noundef %conv2.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %cleanup

for.inc:                                          ; preds = %cond.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %data.i, align 1
  %84 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %72, align 1
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp.not.i213.1 = icmp eq i32 %call.i.i.1, 2
  br i1 %cmp.not.i213.1, label %for.inc.1, label %for.inc.isl12022_write_reg.exit_crit_edge

for.inc.isl12022_write_reg.exit_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %data.i, align 1
  %88 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %72, align 1
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2)
  %cmp.not.i213.2 = icmp eq i32 %call.i.i.2, 2
  br i1 %cmp.not.i213.2, label %for.inc.2, label %for.inc.1.isl12022_write_reg.exit_crit_edge

for.inc.1.isl12022_write_reg.exit_crit_edge:      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %data.i, align 1
  %92 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %90, ptr %72, align 1
  %call.i.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3)
  %cmp.not.i213.3 = icmp eq i32 %call.i.i.3, 2
  br i1 %cmp.not.i213.3, label %for.inc.3, label %for.inc.2.isl12022_write_reg.exit_crit_edge

for.inc.2.isl12022_write_reg.exit_crit_edge:      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 4, ptr %data.i, align 1
  %96 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %94, ptr %72, align 1
  %call.i.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.4)
  %cmp.not.i213.4 = icmp eq i32 %call.i.i.4, 2
  br i1 %cmp.not.i213.4, label %for.inc.4, label %for.inc.3.isl12022_write_reg.exit_crit_edge

for.inc.3.isl12022_write_reg.exit_crit_edge:      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %97 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %data.i, align 1
  %100 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %98, ptr %72, align 1
  %call.i.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.5)
  %cmp.not.i213.5 = icmp eq i32 %call.i.i.5, 2
  br i1 %cmp.not.i213.5, label %for.inc.5, label %for.inc.4.isl12022_write_reg.exit_crit_edge

for.inc.4.isl12022_write_reg.exit_crit_edge:      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 6, ptr %data.i, align 1
  %104 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %102, ptr %72, align 1
  %call.i.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.6)
  %cmp.not.i213.6 = icmp eq i32 %call.i.i.6, 2
  br i1 %cmp.not.i213.6, label %for.inc.6, label %for.inc.5.isl12022_write_reg.exit_crit_edge

for.inc.5.isl12022_write_reg.exit_crit_edge:      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %isl12022_write_reg.exit

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %isl12022_write_reg.exit, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end17.cleanup_crit_edge, %isl12022_read_regs.exit
  %retval.0 = phi i32 [ -5, %isl12022_read_regs.exit ], [ %call22, %do.end17.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %call35, %if.end30.cleanup_crit_edge ], [ -5, %isl12022_write_reg.exit ], [ 0, %for.inc.6 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl12022_read_regs(ptr noundef %client, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #6
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr1, align 2
  %4 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %conv = trunc i32 %n to i16
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %11 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %buf6, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %reg, ptr %data, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl12022_write_reg(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %data, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 1
  %conv2 = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i, i32 noundef %conv, i32 noundef %conv2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_rtc_isl12022__291_282_isl12022_driver_init6, !1, !"__initcall__kmod_rtc_isl12022__291_282_isl12022_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-isl12022.c", i32 282, i32 1}
!2 = !{ptr @__exitcall_isl12022_driver_exit, !1, !"__exitcall_isl12022_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-isl12022.c", i32 284, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-isl12022.c", i32 285, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-isl12022.c", i32 286, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-isl12022.c", i32 273, i32 11}
!12 = !{ptr @isl12022_driver, !13, !"isl12022_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-isl12022.c", i32 271, i32 26}
!14 = !{ptr @isl12022_rtc_ops, !15, !"isl12022_rtc_ops", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-isl12022.c", i32 230, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-isl12022.c", i32 115, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @isl12022_rtc_read_time._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @isl12022_rtc_read_time._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-isl12022.c", i32 121, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @isl12022_rtc_read_time.__UNIQUE_ID_ddebug288, !25, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-isl12022.c", i32 144, i32 2}
!30 = !{ptr @isl12022_rtc_read_time.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-isl12022.c", i32 73, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @isl12022_read_regs._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @isl12022_read_regs._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-isl12022.c", i32 161, i32 2}
!39 = !{ptr @isl12022_rtc_set_time.__UNIQUE_ID_ddebug290, !38, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-isl12022.c", i32 176, i32 4}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @isl12022_rtc_set_time._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @isl12022_rtc_set_time._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-isl12022.c", i32 90, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @isl12022_write_reg._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @isl12022_write_reg._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @isl12022_dt_match, !51, !"isl12022_dt_match", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-isl12022.c", i32 257, i32 34}
!52 = !{ptr @isl12022_id, !53, !"isl12022_id", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-isl12022.c", i32 265, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148992123, i64 2148992128, i64 2148992141, i64 2148992185, i64 2148992219, i64 2148992240}
!64 = !{i8 0, i8 2}
