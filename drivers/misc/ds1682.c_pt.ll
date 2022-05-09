; ModuleID = '/llk/IR_all_yes/drivers/misc/ds1682.c_pt.bc'
source_filename = "../drivers/misc/ds1682.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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

@__initcall__kmod_ds1682__293_260_ds1682_driver_init6 = internal global ptr @ds1682_driver_init, section ".initcall6.init", align 4
@ds1682_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ds1682_probe, ptr @ds1682_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ds1682_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ds1682_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ds1682_driver_exit = internal global ptr @ds1682_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [55 x i8] c"ds1682.author=Grant Likely <grant.likely@secretlab.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [56 x i8] c"ds1682.description=DS1682 Elapsed Time Indicator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [32 x i8] c"ds1682.file=drivers/misc/ds1682\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"ds1682.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1682\00", [25 x i8] zeroinitializer }, align 32
@ds1682_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ds1682_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds1682\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ds1682_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c bus does not support the ds1682\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1682_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/misc/ds1682.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1682_probe._entry_ptr = internal global ptr @ds1682_probe._entry, section ".printk_index", align 4
@ds1682_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, [44 x i8] zeroinitializer }, align 32
@ds1682_eeprom_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 10, ptr null, ptr null, ptr @ds1682_eeprom_read, ptr @ds1682_eeprom_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_elapsed_time = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1682_show, ptr @ds1682_store }, i8 5, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_alarm_time = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1682_show, ptr @ds1682_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_event_count = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1682_show, ptr @ds1682_store }, i8 9, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_elapsed_time, ptr @sensor_dev_attr_alarm_time, ptr @sensor_dev_attr_event_count, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elapsed_time\00", [19 x i8] zeroinitializer }, align 32
@ds1682_show.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1682_show\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ds1682_show() called on %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@ds1682_store.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1682_store\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ds1682_store() called on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ds1682_store.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"input string not a number\0A\00", [37 x i8] zeroinitializer }, align 32
@ds1682_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"register write failed; reg=0x%x, size=%i\0A\00", [54 x i8] zeroinitializer }, align 32
@ds1682_store._entry_ptr = internal global ptr @ds1682_store._entry, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alarm_time\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event_count\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@ds1682_eeprom_read.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds1682_eeprom_read\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ds1682_eeprom_read(p=%p, off=%lli, c=%zi)\0A\00", [53 x i8] zeroinitializer }, align 32
@ds1682_eeprom_write.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds1682_eeprom_write\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ds1682_eeprom_write(p=%p, off=%lli, c=%zi)\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"ds1682_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 250, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 252, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"ds1682_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 244, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"ds1682_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 238, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 210, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"ds1682_group\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 143, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"ds1682_eeprom_attr\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 190, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_elapsed_time\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_alarm_time\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_event_count\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 136, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 63, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 94, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 106, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 111, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 125, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 138, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 140, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 192, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 162, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [25 x i8] c"../drivers/misc/ds1682.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 179, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ds1682_driver_exit, ptr @__initcall__kmod_ds1682__293_260_ds1682_driver_init6, ptr @ds1682_driver_exit, ptr @ds1682_probe._entry, ptr @ds1682_probe._entry_ptr, ptr @ds1682_store._entry, ptr @ds1682_store._entry_ptr, ptr @ds1682_driver, ptr @.str, ptr @ds1682_of_match, ptr @ds1682_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ds1682_group, ptr @ds1682_eeprom_attr, ptr @sensor_dev_attr_elapsed_time, ptr @sensor_dev_attr_alarm_time, ptr @sensor_dev_attr_event_count, ptr @.compoundliteral, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_eeprom_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_elapsed_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_alarm_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_event_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1682_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds1682_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1682_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ds1682_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @ds1682_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @ds1682_eeprom_attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %exit_bin_attr

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

exit_bin_attr:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @ds1682_group) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_bin_attr, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %exit_bin_attr ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @ds1682_eeprom_attr) #7
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ds1682_group) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le) #7
  %0 = ptrtoint ptr %val_le to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val_le, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1682_show.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1682_show, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1682_show.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr, align 1
  %call8 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup39_crit_edge, label %if.end10

do.end.cleanup39_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end10:                                         ; preds = %do.end
  %7 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val_le, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp13 = icmp eq i8 %11, 5
  br i1 %cmp13, label %do.body16, label %if.end10.if.end33_crit_edge

if.end10.if.end33_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 4
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nr, align 1
  %call19 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %13, i8 noundef zeroext %15, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body16.cleanup39_crit_edge, label %if.end25

do.body16.cleanup39_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25:                                         ; preds = %do.body16
  %16 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val_le, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %conv26 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %17)
  %cmp28.not = icmp eq i32 %8, %17
  br i1 %cmp28.not, label %if.end25.if.end33_crit_edge, label %land.rhs

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs:                                         ; preds = %if.end25
  %add = add nuw nsw i64 %conv, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv26)
  %cmp30.not = icmp eq i64 %add, %conv26
  br i1 %cmp30.not, label %land.rhs.if.end33_crit_edge, label %do.body16.1

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16.1:                                      ; preds = %land.rhs
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 4
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr, align 1
  %call19.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %20, i8 noundef zeroext %22, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %cmp20.1 = icmp slt i32 %call19.1, 0
  br i1 %cmp20.1, label %do.body16.1.cleanup39_crit_edge, label %if.end25.1

do.body16.1.cleanup39_crit_edge:                  ; preds = %do.body16.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25.1:                                       ; preds = %do.body16.1
  %23 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val_le, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %conv26.1 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %24)
  %cmp28.not.1 = icmp eq i32 %17, %24
  br i1 %cmp28.not.1, label %if.end25.1.if.end33_crit_edge, label %land.rhs.1

if.end25.1.if.end33_crit_edge:                    ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs.1:                                       ; preds = %if.end25.1
  %add.1 = add nuw nsw i64 %conv26, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %conv26.1)
  %cmp30.not.1 = icmp eq i64 %add.1, %conv26.1
  br i1 %cmp30.not.1, label %land.rhs.1.if.end33_crit_edge, label %do.body16.2

land.rhs.1.if.end33_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16.2:                                      ; preds = %land.rhs.1
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index, align 4
  %28 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr, align 1
  %call19.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %27, i8 noundef zeroext %29, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %cmp20.2 = icmp slt i32 %call19.2, 0
  br i1 %cmp20.2, label %do.body16.2.cleanup39_crit_edge, label %if.end25.2

do.body16.2.cleanup39_crit_edge:                  ; preds = %do.body16.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25.2:                                       ; preds = %do.body16.2
  %30 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val_le, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %conv26.2 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %31)
  %cmp28.not.2 = icmp eq i32 %24, %31
  br i1 %cmp28.not.2, label %if.end25.2.if.end33_crit_edge, label %land.rhs.2

if.end25.2.if.end33_crit_edge:                    ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs.2:                                       ; preds = %if.end25.2
  %add.2 = add nuw nsw i64 %conv26.1, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %conv26.2)
  %cmp30.not.2 = icmp eq i64 %add.2, %conv26.2
  br i1 %cmp30.not.2, label %land.rhs.2.if.end33_crit_edge, label %do.body16.3

land.rhs.2.if.end33_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16.3:                                      ; preds = %land.rhs.2
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index, align 4
  %35 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr, align 1
  %call19.3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %34, i8 noundef zeroext %36, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %cmp20.3 = icmp slt i32 %call19.3, 0
  br i1 %cmp20.3, label %do.body16.3.cleanup39_crit_edge, label %if.end25.3

do.body16.3.cleanup39_crit_edge:                  ; preds = %do.body16.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25.3:                                       ; preds = %do.body16.3
  %37 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val_le, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %conv26.3 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %38)
  %cmp28.not.3 = icmp eq i32 %31, %38
  br i1 %cmp28.not.3, label %if.end25.3.if.end33_crit_edge, label %land.rhs.3

if.end25.3.if.end33_crit_edge:                    ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs.3:                                       ; preds = %if.end25.3
  %add.3 = add nuw nsw i64 %conv26.2, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %conv26.3)
  %cmp30.not.3 = icmp eq i64 %add.3, %conv26.3
  br i1 %cmp30.not.3, label %land.rhs.3.if.end33_crit_edge, label %do.body16.4

land.rhs.3.if.end33_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16.4:                                      ; preds = %land.rhs.3
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %index, align 4
  %42 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr, align 1
  %call19.4 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %41, i8 noundef zeroext %43, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4)
  %cmp20.4 = icmp slt i32 %call19.4, 0
  br i1 %cmp20.4, label %do.body16.4.cleanup39_crit_edge, label %if.end25.4

do.body16.4.cleanup39_crit_edge:                  ; preds = %do.body16.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25.4:                                       ; preds = %do.body16.4
  %44 = ptrtoint ptr %val_le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val_le, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %conv26.4 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %45)
  %cmp28.not.4 = icmp eq i32 %38, %45
  br i1 %cmp28.not.4, label %if.end25.4.if.end33_crit_edge, label %land.rhs.4

if.end25.4.if.end33_crit_edge:                    ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs.4:                                       ; preds = %if.end25.4
  %add.4 = add nuw nsw i64 %conv26.3, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.4, i64 %conv26.4)
  %cmp30.not.4 = icmp eq i64 %add.4, %conv26.4
  br i1 %cmp30.not.4, label %land.rhs.4.if.end33_crit_edge, label %do.body16.5

land.rhs.4.if.end33_crit_edge:                    ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body16.5:                                      ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %index, align 4
  %49 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr, align 1
  %call19.5 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %48, i8 noundef zeroext %50, ptr noundef nonnull %val_le) #7
  br label %cleanup39

if.end33:                                         ; preds = %land.rhs.4.if.end33_crit_edge, %if.end25.4.if.end33_crit_edge, %land.rhs.3.if.end33_crit_edge, %if.end25.3.if.end33_crit_edge, %land.rhs.2.if.end33_crit_edge, %if.end25.2.if.end33_crit_edge, %land.rhs.1.if.end33_crit_edge, %if.end25.1.if.end33_crit_edge, %land.rhs.if.end33_crit_edge, %if.end25.if.end33_crit_edge, %if.end10.if.end33_crit_edge
  %val.2 = phi i64 [ %conv, %if.end10.if.end33_crit_edge ], [ %conv26, %land.rhs.if.end33_crit_edge ], [ %conv, %if.end25.if.end33_crit_edge ], [ %conv26, %if.end25.1.if.end33_crit_edge ], [ %conv26.1, %land.rhs.1.if.end33_crit_edge ], [ %conv26.1, %if.end25.2.if.end33_crit_edge ], [ %conv26.2, %land.rhs.2.if.end33_crit_edge ], [ %conv26.2, %if.end25.3.if.end33_crit_edge ], [ %conv26.3, %land.rhs.3.if.end33_crit_edge ], [ %conv26.3, %if.end25.4.if.end33_crit_edge ], [ %conv26.4, %land.rhs.4.if.end33_crit_edge ]
  %51 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %52)
  %cmp36 = icmp eq i8 %52, 4
  %mul = mul nuw nsw i64 %val.2, 250
  %cond = select i1 %cmp36, i64 %mul, i64 %val.2
  %call38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %cond)
  br label %cleanup39

cleanup39:                                        ; preds = %if.end33, %do.body16.5, %do.body16.4.cleanup39_crit_edge, %do.body16.3.cleanup39_crit_edge, %do.body16.2.cleanup39_crit_edge, %do.body16.1.cleanup39_crit_edge, %do.body16.cleanup39_crit_edge, %do.end.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call38, %if.end33 ], [ -5, %do.end.cleanup39_crit_edge ], [ -5, %do.body16.5 ], [ -5, %do.body16.4.cleanup39_crit_edge ], [ -5, %do.body16.3.cleanup39_crit_edge ], [ -5, %do.body16.2.cleanup39_crit_edge ], [ -5, %do.body16.1.cleanup39_crit_edge ], [ -5, %do.body16.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i64, align 8
  %val_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %val, align 8, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1682_store.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1682_store, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1682_store.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body10, label %if.end26

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1682_store.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1682_store, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !75

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1682_store.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp27 = icmp eq i8 %4, 4
  br i1 %cmp27, label %if.then47, label %if.end26.if.end221_crit_edge

if.end26.if.end221_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then47:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  %7 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #11, !srcloc !77
  %asmresult.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i = extractvalue { i64, i32 } %7, 1
  %8 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i, i32 %asmresult4.i) #11, !srcloc !78
  %asmresult10.i = extractvalue { i64, i32 } %8, 0
  %div195328 = lshr i64 %asmresult10.i, 7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %div195328, ptr %val, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.then47, %if.end26.if.end221_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %val, align 8
  %conv222 = trunc i64 %11 to i32
  %12 = call i32 @llvm.bswap.i32(i32 %conv222)
  %13 = ptrtoint ptr %val_le to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val_le, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index, align 4
  %call224 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr3, i8 noundef zeroext %15, i8 noundef zeroext %4, ptr noundef nonnull %val_le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %do.end230, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end230:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index, align 4
  %conv232 = zext i8 %17 to i32
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr, align 1
  %conv234 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv232, i32 noundef %conv234) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end230, %if.end221.cleanup_crit_edge, %if.then22, %do.body10
  %retval.0 = phi i32 [ -5, %do.end230 ], [ -22, %if.then22 ], [ %count, %if.end221.cleanup_crit_edge ], [ -22, %do.body10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_eeprom_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1682_eeprom_read.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1682_eeprom_read, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1682_eeprom_read.__UNIQUE_ID_ddebug291, ptr noundef %kobj, ptr noundef nonnull @.str.18, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -32
  %0 = trunc i64 %off to i8
  %conv = add i8 %0, 11
  %conv4 = trunc i32 %count to i8
  %call5 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %conv4, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %.count = select i1 %cmp, i32 -5, i32 %count
  ret i32 %.count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1682_eeprom_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1682_eeprom_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1682_eeprom_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1682_eeprom_write.__UNIQUE_ID_ddebug292, ptr noundef %kobj, ptr noundef nonnull @.str.20, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -32
  %0 = trunc i64 %off to i8
  %conv = add i8 %0, 11
  %conv4 = trunc i32 %count to i8
  %call5 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %conv4, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %.count = select i1 %cmp, i32 -5, i32 %count
  ret i32 %.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_ds1682__293_260_ds1682_driver_init6, !1, !"__initcall__kmod_ds1682__293_260_ds1682_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/ds1682.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_ds1682_driver_exit, !1, !"__exitcall_ds1682_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/misc/ds1682.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/misc/ds1682.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/misc/ds1682.c", i32 264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/ds1682.c", i32 252, i32 11}
!12 = !{ptr @ds1682_driver, !13, !"ds1682_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/ds1682.c", i32 250, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/ds1682.c", i32 210, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ds1682_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ds1682_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ds1682_group, !23, !"ds1682_group", i1 false, i1 false}
!23 = !{!"../drivers/misc/ds1682.c", i32 143, i32 37}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/ds1682.c", i32 136, i32 8}
!26 = !{ptr @sensor_dev_attr_elapsed_time, !25, !"sensor_dev_attr_elapsed_time", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/ds1682.c", i32 63, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ds1682_show.__UNIQUE_ID_ddebug288, !28, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/ds1682.c", i32 94, i32 22}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/ds1682.c", i32 106, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ds1682_store.__UNIQUE_ID_ddebug289, !34, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/ds1682.c", i32 111, i32 3}
!39 = !{ptr @ds1682_store.__UNIQUE_ID_ddebug290, !38, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/ds1682.c", i32 125, i32 3}
!42 = !{ptr @ds1682_store._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ds1682_store._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/ds1682.c", i32 138, i32 8}
!46 = !{ptr @sensor_dev_attr_alarm_time, !45, !"sensor_dev_attr_alarm_time", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/ds1682.c", i32 140, i32 8}
!49 = !{ptr @sensor_dev_attr_event_count, !48, !"sensor_dev_attr_event_count", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/ds1682.c", i32 192, i32 11}
!52 = !{ptr @ds1682_eeprom_attr, !53, !"ds1682_eeprom_attr", i1 false, i1 false}
!53 = !{!"../drivers/misc/ds1682.c", i32 190, i32 35}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/ds1682.c", i32 162, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ds1682_eeprom_read.__UNIQUE_ID_ddebug291, !55, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/ds1682.c", i32 179, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ds1682_eeprom_write.__UNIQUE_ID_ddebug292, !59, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!62 = !{ptr @ds1682_of_match, !63, !"ds1682_of_match", i1 false, i1 false}
!63 = !{!"../drivers/misc/ds1682.c", i32 244, i32 34}
!64 = !{ptr @ds1682_id, !65, !"ds1682_id", i1 false, i1 false}
!65 = !{!"../drivers/misc/ds1682.c", i32 238, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148958570, i64 2148958575, i64 2148958588, i64 2148958632, i64 2148958666, i64 2148958687}
!76 = !{!"auto-init"}
!77 = !{i64 706073, i64 706100, i64 706122, i64 706150}
!78 = !{i64 706481, i64 706508, i64 706541, i64 706562, i64 706589, i64 706615}
