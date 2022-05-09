; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-bq32k.c_pt.bc'
source_filename = "../drivers/rtc/rtc-bq32k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bq32k_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_bq32k__288_330_bq32k_driver_init6 = internal global ptr @bq32k_driver_init, section ".initcall6.init", align 4
@bq32k_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq32k_probe, ptr @bq32k_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq32k_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq32k_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq32k_driver_exit = internal global ptr @bq32k_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"rtc_bq32k.author=Semihalf, Piotr Ziecik <kosmo@semihalf.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [48 x i8] c"rtc_bq32k.description=TI BQ32000 I2C RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"rtc_bq32k.file=drivers/rtc/rtc-bq32k\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"rtc_bq32k.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bq32k\00", [26 x i8] zeroinitializer }, align 32
@bq32k_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq32000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bq32k_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq32000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bq32k_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Oscillator was halted. Restarting...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bq32k_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-bq32k.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq32k_probe._entry_ptr = internal global ptr @bq32k_probe._entry, section ".printk_index", align 4
@bq32k_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Oscillator Failure. Check RTC battery.\0A\00", [56 x i8] zeroinitializer }, align 32
@bq32k_probe._entry_ptr.8 = internal global ptr @bq32k_probe._entry.6, section ".printk_index", align 4
@bq32k_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @bq32k_rtc_read_time, ptr @bq32k_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bq32k_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to create sysfs entries for rtc bq32000\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bq32k_probe._entry_ptr.12 = internal global ptr @bq32k_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-resistor-ohms\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-diode-disable\00", [42 x i8] zeroinitializer }, align 32
@trickle_charger_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 159, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"diode and resistor mismatch\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trickle_charger_of_init\00", [40 x i8] zeroinitializer }, align 32
@trickle_charger_of_init._entry_ptr = internal global ptr @trickle_charger_of_init._entry, section ".printk_index", align 4
@trickle_charger_of_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 169, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bq32k: diode and resistor mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@trickle_charger_of_init._entry_ptr.19 = internal global ptr @trickle_charger_of_init._entry.17, section ".printk_index", align 4
@trickle_charger_of_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 176, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid resistor value (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@trickle_charger_of_init._entry_ptr.22 = internal global ptr @trickle_charger_of_init._entry.20, section ".printk_index", align 4
@trickle_charger_of_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 189, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Enabled trickle RTC battery charge.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@trickle_charger_of_init._entry_ptr.26 = internal global ptr @trickle_charger_of_init._entry.23, section ".printk_index", align 4
@dev_attr_trickle_charge_bypass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq32k_sysfs_show_tricklecharge_bypass, ptr @bq32k_sysfs_store_tricklecharge_bypass }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle_charge_bypass\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@bq32k_sysfs_store_tricklecharge_bypass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 225, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Enabled trickle charge FET bypass.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bq32k_sysfs_store_tricklecharge_bypass\00", [57 x i8] zeroinitializer }, align 32
@bq32k_sysfs_store_tricklecharge_bypass._entry_ptr = internal global ptr @bq32k_sysfs_store_tricklecharge_bypass._entry, section ".printk_index", align 4
@bq32k_sysfs_store_tricklecharge_bypass._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 232, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabled trickle charge FET bypass.\0A\00", [59 x i8] zeroinitializer }, align 32
@bq32k_sysfs_store_tricklecharge_bypass._entry_ptr.33 = internal global ptr @bq32k_sysfs_store_tricklecharge_bypass._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1120, i64 20180]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"bq32k_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 320, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 322, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"bq32k_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 314, i32 49 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"bq32k_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 308, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 266, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 278, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"bq32k_rtc_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 137, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 290, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 148, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 158, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 159, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 169, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 176, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 189, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"dev_attr_trickle_charge_bypass\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 238, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 203, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 225, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [27 x i8] c"../drivers/rtc/rtc-bq32k.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 232, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bq32k_driver_exit, ptr @__initcall__kmod_rtc_bq32k__288_330_bq32k_driver_init6, ptr @bq32k_driver_exit, ptr @bq32k_probe._entry, ptr @bq32k_probe._entry.6, ptr @bq32k_probe._entry.9, ptr @bq32k_probe._entry_ptr, ptr @bq32k_probe._entry_ptr.12, ptr @bq32k_probe._entry_ptr.8, ptr @bq32k_sysfs_store_tricklecharge_bypass._entry, ptr @bq32k_sysfs_store_tricklecharge_bypass._entry.31, ptr @bq32k_sysfs_store_tricklecharge_bypass._entry_ptr, ptr @bq32k_sysfs_store_tricklecharge_bypass._entry_ptr.33, ptr @trickle_charger_of_init._entry, ptr @trickle_charger_of_init._entry.17, ptr @trickle_charger_of_init._entry.20, ptr @trickle_charger_of_init._entry.23, ptr @trickle_charger_of_init._entry_ptr, ptr @trickle_charger_of_init._entry_ptr.19, ptr @trickle_charger_of_init._entry_ptr.22, ptr @trickle_charger_of_init._entry_ptr.26, ptr @bq32k_driver, ptr @.str, ptr @bq32k_of_match, ptr @bq32k_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @bq32k_rtc_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @dev_attr_trickle_charge_bypass, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_charger_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_charger_of_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_charger_of_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_charger_of_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trickle_charge_bypass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_sysfs_store_tricklecharge_bypass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq32k_sysfs_store_tricklecharge_bypass._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq32k_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq32k_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bq32k_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buffer.i4.i = alloca [11 x i8], align 1
  %buffer.i.i = alloca [11 x i8], align 1
  %ohms.i = alloca i32, align 4
  %off.addr.i74 = alloca i8, align 1
  %msgs.i75 = alloca [2 x %struct.i2c_msg], align 4
  %buffer.i = alloca [11 x i8], align 1
  %off.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !82
  %adapter = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off.addr.i)
  %7 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %off.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %addr1.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr1.i, align 2
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %off.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg, ptr %buf7.i, align 4
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off.addr.i)
  br i1 %cmp.i, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool4.not = icmp sgt i8 %23, -1
  br i1 %tobool4.not, label %land.lhs.true.if.end13_crit_edge, label %do.end

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %land.lhs.true
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg, align 1
  %26 = and i8 %25, 127
  store i8 %26, ptr %reg, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i) #7
  %27 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 1
  %28 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 2
  %29 = call ptr @memset(ptr %28, i32 255, i32 9)
  %30 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %buffer.i, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %26, ptr %27, align 1
  %call.i.i71 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i71)
  %cmp.i72 = icmp eq i32 %call.i.i71, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i) #7
  br i1 %cmp.i72, label %do.end.if.end13_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %do.end.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off.addr.i74)
  %32 = ptrtoint ptr %off.addr.i74 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %off.addr.i74, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i75) #7
  %33 = getelementptr inbounds i8, ptr %msgs.i75, i32 4
  %34 = call ptr @memset(ptr %33, i32 255, i32 16)
  %35 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr1.i, align 2
  %37 = ptrtoint ptr %msgs.i75 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i75, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i77, align 2
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %33, align 4
  %buf.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %off.addr.i74, ptr %buf.i79, align 4
  %arrayinit.element.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1
  %41 = ptrtoint ptr %arrayinit.element.i80 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %36, ptr %arrayinit.element.i80, align 4
  %flags5.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 1
  %42 = ptrtoint ptr %flags5.i81 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags5.i81, align 2
  %len6.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 2
  %43 = ptrtoint ptr %len6.i82 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len6.i82, align 4
  %buf7.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 3
  %44 = ptrtoint ptr %buf7.i83 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %reg, ptr %buf7.i83, align 4
  %45 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter, align 8
  %call.i85 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msgs.i75, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i85)
  %cmp.i86 = icmp eq i32 %call.i85, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i75) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off.addr.i74)
  br i1 %cmp.i86, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool20.not = icmp sgt i8 %48, -1
  br i1 %tobool20.not, label %if.end17.if.end25_crit_edge, label %do.end24

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end17.if.end25_crit_edge
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %tobool27.not = icmp eq ptr %50, null
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ohms.i) #7
  %51 = ptrtoint ptr %ohms.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %ohms.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %50, ptr noundef nonnull @.str.13, ptr noundef nonnull %ohms.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.trickle_charger_of_init.exit_crit_edge

if.then28.trickle_charger_of_init.exit_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %trickle_charger_of_init.exit

if.end.i:                                         ; preds = %if.then28
  %52 = ptrtoint ptr %ohms.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ohms.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %do.end13.i [
    i32 1120, label %sw.bb.i
    i32 20180, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %call.i.i88 = call ptr @of_find_property(ptr noundef nonnull %50, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i88, null
  br i1 %tobool.i.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %do.end.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %trickle_charger_of_init.exit

sw.bb4.i:                                         ; preds = %if.end.i
  %call.i1.i = call ptr @of_find_property(ptr noundef nonnull %50, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i2.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.i2.not.i, label %do.end9.i, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end9.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %trickle_charger_of_init.exit

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %53) #10
  br label %trickle_charger_of_init.exit

sw.epilog.i:                                      ; preds = %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i8 [ 5, %sw.bb.i.sw.epilog.i_crit_edge ], [ 69, %sw.bb4.i.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i.i) #7
  %55 = getelementptr inbounds [11 x i8], ptr %buffer.i.i, i32 0, i32 1
  %56 = getelementptr inbounds [11 x i8], ptr %buffer.i.i, i32 0, i32 2
  %57 = call ptr @memset(ptr %56, i32 255, i32 9)
  %58 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 9, ptr %buffer.i.i, align 1
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %storemerge.i, ptr %55, align 1
  %call.i.i3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer.i.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i3.i)
  %cmp.i.i = icmp eq i32 %call.i.i3.i, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i.i) #7
  br i1 %cmp.i.i, label %if.end17.i, label %sw.epilog.i.trickle_charger_of_init.exit_crit_edge

sw.epilog.i.trickle_charger_of_init.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %trickle_charger_of_init.exit

if.end17.i:                                       ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i4.i) #7
  %60 = getelementptr inbounds [11 x i8], ptr %buffer.i4.i, i32 0, i32 1
  %61 = getelementptr inbounds [11 x i8], ptr %buffer.i4.i, i32 0, i32 2
  %62 = call ptr @memset(ptr %61, i32 255, i32 9)
  %63 = ptrtoint ptr %buffer.i4.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %buffer.i4.i, align 1
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 32, ptr %60, align 1
  %call.i.i6.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer.i4.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i6.i)
  %cmp.i7.i = icmp eq i32 %call.i.i6.i, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i4.i) #7
  br i1 %cmp.i7.i, label %do.end24.i, label %if.end17.i.trickle_charger_of_init.exit_crit_edge

if.end17.i.trickle_charger_of_init.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %trickle_charger_of_init.exit

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %trickle_charger_of_init.exit

trickle_charger_of_init.exit:                     ; preds = %do.end24.i, %if.end17.i.trickle_charger_of_init.exit_crit_edge, %sw.epilog.i.trickle_charger_of_init.exit_crit_edge, %do.end13.i, %do.end9.i, %do.end.i, %if.then28.trickle_charger_of_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ohms.i) #7
  br label %if.end32

if.end32:                                         ; preds = %trickle_charger_of_init.exit, %if.end25.if.end32_crit_edge
  %65 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @bq32k_driver, i32 0, i32 7), align 4
  %call34 = call ptr @devm_rtc_device_register(ptr noundef %dev1, ptr noundef %65, ptr noundef nonnull @bq32k_rtc_ops, ptr noundef null) #7
  %cmp.i89 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call.i90 = call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_trickle_charge_bypass) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool41.not = icmp eq i32 %call.i90, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call34, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end45, %if.then36, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %66, %if.then36 ], [ %call.i90, %do.end45 ], [ 0, %if.end47 ], [ -19, %entry.cleanup_crit_edge ], [ -5, %if.end13.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_trickle_charge_bypass) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %off.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %regs = alloca %struct.bq32k_regs, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #7
  %0 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 3
  %2 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 4
  %3 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 5
  %4 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 6
  %5 = call ptr @memset(ptr %regs, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off.addr.i)
  %6 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %off.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %7 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %off.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 7, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %regs, ptr %buf7.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off.addr.i)
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = getelementptr inbounds %struct.bq32k_regs, ptr %regs, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool1.not = icmp sgt i8 %23, -1
  br i1 %tobool1.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regs, align 1
  %26 = and i8 %25, 127
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %26) #11
  %27 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call18, ptr %tm, align 4
  %call39 = call i32 @_bcd2bin(i8 noundef zeroext %23) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %28 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call39, ptr %tm_min, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  %31 = and i8 %30, 63
  %call61 = call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %32 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call61, ptr %tm_hour, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %call75 = call i32 @_bcd2bin(i8 noundef zeroext %34) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %35 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call75, ptr %tm_mday, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 1
  %call89 = call i32 @_bcd2bin(i8 noundef zeroext %37) #11
  %sub = add i32 %call89, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %38 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %tm_wday, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 1
  %call103 = call i32 @_bcd2bin(i8 noundef zeroext %40) #11
  %sub106 = add i32 %call103, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %41 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub106, ptr %tm_mon, align 4
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %4, align 1
  %call118 = call i32 @_bcd2bin(i8 noundef zeroext %43) #11
  %44 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool124.not = icmp eq i8 %44, 0
  %cond125 = select i1 %tobool124.not, i32 0, i32 100
  %add126 = add i32 %call118, %cond125
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %45 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add126, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buffer.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %2 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %4 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_hour, align 4
  %call31 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #11
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %6 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_wday, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %13)
  %cmp = icmp sgt i32 %13, 99
  %sub = add nsw i32 %13, -100
  %.sink = select i1 %cmp, i32 %sub, i32 %13
  %regs.sroa.7.0.v = select i1 %cmp, i8 -64, i8 -128
  %regs.sroa.7.0 = or i8 %call31, %regs.sroa.7.0.v
  %call124 = tail call zeroext i8 @_bin2bcd(i32 noundef %.sink) #11
  %add70 = add i32 %11, 1
  %call84 = tail call zeroext i8 @_bin2bcd(i32 noundef %add70) #11
  %call65 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #11
  %add36 = add i32 %7, 1
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %add36) #11
  %call16 = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #11
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %1) #11
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i) #7
  %14 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 1
  %15 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 8
  %16 = call ptr @memset(ptr %15, i32 255, i32 3)
  %17 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buffer.i, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call, ptr %14, align 1
  %regs.sroa.5.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 2
  %19 = ptrtoint ptr %regs.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call16, ptr %regs.sroa.5.0..sroa_idx, align 1
  %regs.sroa.7.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 3
  %20 = ptrtoint ptr %regs.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %regs.sroa.7.0, ptr %regs.sroa.7.0..sroa_idx, align 1
  %regs.sroa.11.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 4
  %21 = ptrtoint ptr %regs.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %regs.sroa.11.0..sroa_idx, align 1
  %regs.sroa.13.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 5
  %22 = ptrtoint ptr %regs.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call65, ptr %regs.sroa.13.0..sroa_idx, align 1
  %regs.sroa.15.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 6
  %23 = ptrtoint ptr %regs.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call84, ptr %regs.sroa.15.0..sroa_idx, align 1
  %regs.sroa.17.0..sroa_idx = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 7
  %24 = ptrtoint ptr %regs.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call124, ptr %regs.sroa.17.0..sroa_idx, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i, ptr noundef nonnull %buffer.i, i32 noundef 8, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 8
  %..i = select i1 %cmp.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i) #7
  ret i32 %..i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_sysfs_show_tricklecharge_bypass(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %off.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off.addr.i)
  %1 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 9, ptr %off.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1.i, align 2
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %off.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg, ptr %buf7.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off.addr.i)
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %and = lshr i32 %17, 6
  %and.lobit = and i32 %and, 1
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %and.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq32k_sysfs_store_tricklecharge_bypass(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %buffer.i32 = alloca [11 x i8], align 1
  %buffer.i = alloca [11 x i8], align 1
  %off.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i32, align 4
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #7
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enable, align 4, !annotation !82
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %off.addr.i)
  %2 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %off.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %3 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %3, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %off.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %6, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %13 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg, ptr %buf7.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %off.addr.i)
  br i1 %cmp.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %or = or i32 %20, 64
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i) #7
  %22 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 1
  %23 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 2
  %24 = call ptr @memset(ptr %23, i32 255, i32 9)
  %25 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %buffer.i, align 1
  %26 = lshr i32 %20, 24
  %27 = trunc i32 %26 to i8
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %22, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i30 = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i) #7
  br i1 %cmp.i30, label %if.then6.cleanup.sink.split_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end4
  %and = and i32 %20, -65
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %reg, align 4
  %add.ptr.i33 = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i32) #7
  %30 = getelementptr inbounds [11 x i8], ptr %buffer.i32, i32 0, i32 1
  %31 = getelementptr inbounds [11 x i8], ptr %buffer.i32, i32 0, i32 2
  %32 = call ptr @memset(ptr %31, i32 255, i32 9)
  %33 = ptrtoint ptr %buffer.i32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 9, ptr %buffer.i32, align 1
  %34 = lshr i32 %20, 24
  %35 = trunc i32 %34 to i8
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %30, align 1
  %call.i.i34 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr.i33, ptr noundef nonnull %buffer.i32, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34)
  %cmp.i35 = icmp eq i32 %call.i.i34, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i32) #7
  br i1 %cmp.i35, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.then6.cleanup.sink.split_crit_edge ], [ @.str.32, %if.else.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.29.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.then6.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_rtc_bq32k__288_330_bq32k_driver_init6, !1, !"__initcall__kmod_rtc_bq32k__288_330_bq32k_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-bq32k.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_bq32k_driver_exit, !1, !"__exitcall_bq32k_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-bq32k.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-bq32k.c", i32 333, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-bq32k.c", i32 334, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-bq32k.c", i32 322, i32 11}
!12 = !{ptr @bq32k_driver, !13, !"bq32k_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-bq32k.c", i32 320, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-bq32k.c", i32 266, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bq32k_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bq32k_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-bq32k.c", i32 278, i32 3}
!24 = !{ptr @bq32k_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bq32k_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-bq32k.c", i32 290, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bq32k_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @bq32k_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-bq32k.c", i32 148, i32 33}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-bq32k.c", i32 158, i32 35}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-bq32k.c", i32 159, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @trickle_charger_of_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @trickle_charger_of_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-bq32k.c", i32 169, i32 4}
!42 = !{ptr @trickle_charger_of_init._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @trickle_charger_of_init._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-bq32k.c", i32 176, i32 3}
!46 = !{ptr @trickle_charger_of_init._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @trickle_charger_of_init._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-bq32k.c", i32 189, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @trickle_charger_of_init._entry.23, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @trickle_charger_of_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @bq32k_rtc_ops, !54, !"bq32k_rtc_ops", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-bq32k.c", i32 137, i32 35}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-bq32k.c", i32 238, i32 8}
!57 = !{ptr @dev_attr_trickle_charge_bypass, !56, !"dev_attr_trickle_charge_bypass", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-bq32k.c", i32 203, i32 22}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-bq32k.c", i32 225, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bq32k_sysfs_store_tricklecharge_bypass._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bq32k_sysfs_store_tricklecharge_bypass._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-bq32k.c", i32 232, i32 3}
!67 = !{ptr @bq32k_sysfs_store_tricklecharge_bypass._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bq32k_sysfs_store_tricklecharge_bypass._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @bq32k_of_match, !70, !"bq32k_of_match", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-bq32k.c", i32 314, i32 49}
!71 = !{ptr @bq32k_id, !72, !"bq32k_id", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-bq32k.c", i32 308, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
