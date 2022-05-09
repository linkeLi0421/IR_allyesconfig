; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/q54sj108a2.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/q54sj108a2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.q54sj108a2_data = type { i32, ptr, [16 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_q54sj108a2__288_418_q54sj108a2_driver_init6 = internal global ptr @q54sj108a2_driver_init, section ".initcall6.init", align 4
@q54sj108a2_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @q54sj108a2_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q54sj108a2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @q54sj108a2_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_q54sj108a2_driver_exit = internal global ptr @q54sj108a2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"q54sj108a2.author=Xiao.Ma <xiao.mx.ma@deltaww.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [72 x i8] c"q54sj108a2.description=PMBus driver for Delta Q54SJ108A2 series modules\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"q54sj108a2.file=drivers/hwmon/pmbus/q54sj108a2\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"q54sj108a2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [27 x i8] c"q54sj108a2.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q54sj108a2\00", [21 x i8] zeroinitializer }, align 32
@q54sj108a2_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"delta,q54sj108a2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@q54sj108a2_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"q54sj108a2\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read Manufacturer ID\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q54sj108a2_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwmon/pmbus/q54sj108a2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr = internal global ptr @q54sj108a2_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DELTA\00", [26 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported Manufacturer ID '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr.9 = internal global ptr @q54sj108a2_probe._entry.7, section ".printk_index", align 4
@q54sj108a2_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Manufacturer Model\0A\00", [61 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr.12 = internal global ptr @q54sj108a2_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Q54SJ108A2\00", [21 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported Manufacturer Model '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr.16 = internal global ptr @q54sj108a2_probe._entry.14, section ".printk_index", align 4
@q54sj108a2_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read Manufacturer Revision\0A\00", [58 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr.19 = internal global ptr @q54sj108a2_probe._entry.17, section ".printk_index", align 4
@q54sj108a2_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unsupported Manufacturer Revision '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@q54sj108a2_probe._entry_ptr.22 = internal global ptr @q54sj108a2_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"operation\00", [22 x i8] zeroinitializer }, align 32
@q54sj108a2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @q54sj108a2_debugfs_read, ptr @q54sj108a2_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_protect\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"store_default\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vo_ov_response\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"io_oc_response\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmbus_revision\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfr_id\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfr_model\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mfr_revision\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mfr_location\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blackbox_erase\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"blackbox_read_offset\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"blackbox_set_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"blackbox_read\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flash_key\00", [22 x i8] zeroinitializer }, align 32
@q54sj108a2_info = internal global { [1 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }], [116 x i8] } { [1 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }] [{ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, [31 x i32] }> <{ i32 61973, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }], [116 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 11, i64 13]
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"q54sj108a2_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 409, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 411, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"q54sj108a2_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 402, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"q54sj108a2_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 269, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 299, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 302, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 304, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 313, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 316, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 318, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 324, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 329, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 350, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"q54sj108a2_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 262, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 353, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 356, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 359, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 362, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 365, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 368, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 371, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 374, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 377, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 380, i32 22 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 383, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 386, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 389, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 392, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 395, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"q54sj108a2_info\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 55, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [36 x i8] c"../drivers/hwmon/pmbus/q54sj108a2.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 89, i32 26 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_q54sj108a2_driver_exit, ptr @__initcall__kmod_q54sj108a2__288_418_q54sj108a2_driver_init6, ptr @q54sj108a2_driver_exit, ptr @q54sj108a2_probe._entry, ptr @q54sj108a2_probe._entry.10, ptr @q54sj108a2_probe._entry.14, ptr @q54sj108a2_probe._entry.17, ptr @q54sj108a2_probe._entry.20, ptr @q54sj108a2_probe._entry.7, ptr @q54sj108a2_probe._entry_ptr, ptr @q54sj108a2_probe._entry_ptr.12, ptr @q54sj108a2_probe._entry_ptr.16, ptr @q54sj108a2_probe._entry_ptr.19, ptr @q54sj108a2_probe._entry_ptr.22, ptr @q54sj108a2_probe._entry_ptr.9, ptr @q54sj108a2_driver, ptr @.str, ptr @q54sj108a2_of_match, ptr @q54sj108a2_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @q54sj108a2_fops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @q54sj108a2_info, ptr @.str.40], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q54sj108a2_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q54sj108a2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @q54sj108a2_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q54sj108a2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @q54sj108a2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q54sj108a2_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 33)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
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
  %and.i = and i32 %call.i.i, 58195968
  call void @__sanitizer_cov_trace_const_cmp4(i32 58195968, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 58195968
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %9 = ptrtoint ptr %call5 to i32
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @i2c_match_id(ptr noundef nonnull @q54sj108a2_id, ptr noundef %client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call6, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %chip_id.0 = phi i32 [ %9, %if.then4 ], [ %11, %if.else ]
  %call8 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call8)
  %cmp12.not = icmp eq i32 %call8, 6
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end11.if.then16_crit_edge

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.6, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.end21, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  %arrayidx = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %buf) #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %call23 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call23)
  %cmp30.not = icmp eq i32 %call23, 14
  br i1 %cmp30.not, label %lor.lhs.false31, label %if.end29.if.then35_crit_edge

if.end29.if.then35_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

lor.lhs.false31:                                  ; preds = %if.end29
  %bcmp200 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buf, ptr noundef nonnull dereferenceable(10) @.str.13, i32 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp200)
  %tobool34.not = icmp eq i32 %bcmp200, 0
  br i1 %tobool34.not, label %if.end41, label %lor.lhs.false31.if.then35_crit_edge

lor.lhs.false31.if.then35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false31.if.then35_crit_edge, %if.end29.if.then35_crit_edge
  %arrayidx36 = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call23
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx36, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %buf) #10
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false31
  %call43 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -101, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call43)
  %cmp50.not = icmp eq i32 %call43, 4
  br i1 %cmp50.not, label %lor.lhs.false51, label %if.end49.if.then55_crit_edge

if.end49.if.then55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false51:                                  ; preds = %if.end49
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %15)
  %cmp53.not = icmp eq i8 %15, 83
  br i1 %cmp53.not, label %if.end61, label %lor.lhs.false51.if.then55_crit_edge

lor.lhs.false51.if.then55_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51.if.then55_crit_edge, %if.end49.if.then55_crit_edge
  %arrayidx56 = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call43
  %16 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx56, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull %buf) #10
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false51
  %arrayidx62 = getelementptr [1 x %struct.pmbus_driver_info], ptr @q54sj108a2_info, i32 0, i32 %chip_id.0
  %call63 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %arrayidx62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #7
  %tobool69.not = icmp eq ptr %call.i, null
  br i1 %tobool69.not, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %client72 = getelementptr inbounds %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %client72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %client, ptr %client72, align 4
  %call73 = call ptr @pmbus_get_debugfs_dir(ptr noundef %client) #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call75 = call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %call73) #7
  %arrayidx78 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx78, align 4
  %arrayidx78.1 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx78.1, align 4
  %arrayidx78.2 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %arrayidx78.2, align 4
  %arrayidx78.3 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %arrayidx78.3, align 4
  %arrayidx78.4 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %arrayidx78.4, align 4
  %arrayidx78.5 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %arrayidx78.5, align 4
  %arrayidx78.6 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %arrayidx78.6, align 4
  %arrayidx78.7 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %arrayidx78.7, align 4
  %arrayidx78.8 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 8
  %26 = ptrtoint ptr %arrayidx78.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %arrayidx78.8, align 4
  %arrayidx78.9 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 9
  %27 = ptrtoint ptr %arrayidx78.9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 9, ptr %arrayidx78.9, align 4
  %arrayidx78.10 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %arrayidx78.10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %arrayidx78.10, align 4
  %arrayidx78.11 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 11
  %29 = ptrtoint ptr %arrayidx78.11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11, ptr %arrayidx78.11, align 4
  %arrayidx78.12 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 12
  %30 = ptrtoint ptr %arrayidx78.12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %arrayidx78.12, align 4
  %arrayidx78.13 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %arrayidx78.13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 13, ptr %arrayidx78.13, align 4
  %arrayidx78.14 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 14
  %32 = ptrtoint ptr %arrayidx78.14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 14, ptr %arrayidx78.14, align 4
  %arrayidx78.15 = getelementptr %struct.q54sj108a2_data, ptr %call.i, i32 0, i32 2, i32 15
  %33 = ptrtoint ptr %arrayidx78.15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 15, ptr %arrayidx78.15, align 4
  %call81 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 420, ptr noundef %call75, ptr noundef %arrayidx78, ptr noundef nonnull @q54sj108a2_fops) #7
  %call84 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 128, ptr noundef %call75, ptr noundef %arrayidx78.1, ptr noundef nonnull @q54sj108a2_fops) #7
  %call87 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.2, ptr noundef nonnull @q54sj108a2_fops) #7
  %call90 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 128, ptr noundef %call75, ptr noundef %arrayidx78.3, ptr noundef nonnull @q54sj108a2_fops) #7
  %call93 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 420, ptr noundef %call75, ptr noundef %arrayidx78.4, ptr noundef nonnull @q54sj108a2_fops) #7
  %call96 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 420, ptr noundef %call75, ptr noundef %arrayidx78.5, ptr noundef nonnull @q54sj108a2_fops) #7
  %call99 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.6, ptr noundef nonnull @q54sj108a2_fops) #7
  %call102 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.7, ptr noundef nonnull @q54sj108a2_fops) #7
  %call105 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.8, ptr noundef nonnull @q54sj108a2_fops) #7
  %call108 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.9, ptr noundef nonnull @q54sj108a2_fops) #7
  %call111 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.10, ptr noundef nonnull @q54sj108a2_fops) #7
  %call114 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 128, ptr noundef %call75, ptr noundef %arrayidx78.11, ptr noundef nonnull @q54sj108a2_fops) #7
  %call117 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.12, ptr noundef nonnull @q54sj108a2_fops) #7
  %call120 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 128, ptr noundef %call75, ptr noundef %arrayidx78.13, ptr noundef nonnull @q54sj108a2_fops) #7
  %call123 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.14, ptr noundef nonnull @q54sj108a2_fops) #7
  %call126 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 292, ptr noundef %call75, ptr noundef %arrayidx78.15, ptr noundef nonnull @q54sj108a2_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then55, %do.end48, %if.then35, %do.end28, %if.then16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -19, %if.then16 ], [ %call23, %do.end28 ], [ -19, %if.then35 ], [ %call43, %do.end48 ], [ -19, %if.then55 ], [ 0, %if.end71 ], [ -19, %entry.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_debugfs_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q54sj108a2_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %data = alloca [34 x i8], align 1
  %data_char = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %.neg = mul i32 %3, -4
  %idx.neg = add i32 %.neg, -8
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #7
  %4 = call ptr @memset(ptr %data, i32 0, i32 34)
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data_char) #7
  %5 = call ptr @memset(ptr %data_char, i32 0, i32 34)
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb10
    i32 5, label %sw.bb18
    i32 6, label %sw.bb26
    i32 7, label %sw.bb34
    i32 8, label %sw.bb41
    i32 9, label %sw.bb48
    i32 10, label %sw.bb55
    i32 12, label %sw.bb62
    i32 14, label %sw.bb70
    i32 15, label %sw.bb81
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %client = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %client3 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client3, align 4
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb2.cleanup_crit_edge, label %if.end7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call4)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %client11 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %11 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client11, align 4
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %sw.bb10.cleanup_crit_edge, label %if.end15

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call12)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %client19 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %13 = ptrtoint ptr %client19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client19, align 4
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb18.cleanup_crit_edge, label %if.end23

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call20)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %client27 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %15 = ptrtoint ptr %client27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client27, align 4
  %call28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext -104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %sw.bb26.cleanup_crit_edge, label %if.end31

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call28)
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %client35 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %17 = ptrtoint ptr %client35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client35, align 4
  %call37 = call i32 @i2c_smbus_read_block_data(ptr noundef %18, i8 noundef zeroext -103, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %sw.bb34.cleanup_crit_edge, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  %client42 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %19 = ptrtoint ptr %client42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client42, align 4
  %call44 = call i32 @i2c_smbus_read_block_data(ptr noundef %20, i8 noundef zeroext -102, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %sw.bb41.cleanup_crit_edge, label %sw.bb41.sw.epilog_crit_edge

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %client49 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %21 = ptrtoint ptr %client49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client49, align 4
  %call51 = call i32 @i2c_smbus_read_block_data(ptr noundef %22, i8 noundef zeroext -101, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %sw.bb48.cleanup_crit_edge, label %sw.bb48.sw.epilog_crit_edge

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %client56 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %23 = ptrtoint ptr %client56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client56, align 4
  %call58 = call i32 @i2c_smbus_read_block_data(ptr noundef %24, i8 noundef zeroext -100, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %sw.bb55.cleanup_crit_edge, label %sw.bb55.sw.epilog_crit_edge

sw.bb55.sw.epilog_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  %client63 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %client63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client63, align 4
  %call64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext -46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %sw.bb62.cleanup_crit_edge, label %if.end67

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %call64)
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %client71 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %client71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client71, align 4
  %call73 = call i32 @i2c_smbus_read_block_data(ptr noundef %28, i8 noundef zeroext -32, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %sw.bb70.cleanup_crit_edge, label %if.end76

sw.bb70.cleanup_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call ptr @bin2hex(ptr noundef nonnull %data, ptr noundef nonnull %data_char, i32 noundef 32) #7
  %sub.ptr.lhs.cast = ptrtoint ptr %call79 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  %client82 = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %client82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client82, align 4
  %call84 = call i32 @i2c_smbus_read_block_data(ptr noundef %30, i8 noundef zeroext -20, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %sw.bb81.cleanup_crit_edge, label %if.end87

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call ptr @bin2hex(ptr noundef nonnull %data, ptr noundef nonnull %data_char, i32 noundef 4) #7
  %sub.ptr.lhs.cast92 = ptrtoint ptr %call90 to i32
  %sub.ptr.rhs.cast93 = ptrtoint ptr %data to i32
  %sub.ptr.sub94 = sub i32 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end87, %if.end76, %if.end67, %sw.bb55.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %sw.bb41.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %if.end31, %if.end23, %if.end15, %if.end7, %if.end
  %rc.0 = phi i32 [ %sub.ptr.sub94, %if.end87 ], [ %sub.ptr.sub, %if.end76 ], [ %call69, %if.end67 ], [ %call58, %sw.bb55.sw.epilog_crit_edge ], [ %call51, %sw.bb48.sw.epilog_crit_edge ], [ %call44, %sw.bb41.sw.epilog_crit_edge ], [ %call37, %sw.bb34.sw.epilog_crit_edge ], [ %call33, %if.end31 ], [ %call25, %if.end23 ], [ %call17, %if.end15 ], [ %call9, %if.end7 ], [ %call1, %if.end ]
  %arrayidx = getelementptr [34 x i8], ptr %data, i32 0, i32 %rc.0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %arrayidx, align 1
  %add = add i32 %rc.0, 2
  %call96 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %data, i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb81.cleanup_crit_edge, %sw.bb70.cleanup_crit_edge, %sw.bb62.cleanup_crit_edge, %sw.bb55.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %sw.bb34.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call96, %sw.epilog ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call4, %sw.bb2.cleanup_crit_edge ], [ %call12, %sw.bb10.cleanup_crit_edge ], [ %call20, %sw.bb18.cleanup_crit_edge ], [ %call28, %sw.bb26.cleanup_crit_edge ], [ %call37, %sw.bb34.cleanup_crit_edge ], [ %call44, %sw.bb41.cleanup_crit_edge ], [ %call51, %sw.bb48.cleanup_crit_edge ], [ %call58, %sw.bb55.cleanup_crit_edge ], [ %call64, %sw.bb62.cleanup_crit_edge ], [ %call73, %sw.bb70.cleanup_crit_edge ], [ %call84, %sw.bb81.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data_char) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q54sj108a2_debugfs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %flash_key = alloca [4 x i8], align 1
  %dst_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_key) #7
  %0 = getelementptr inbounds [4 x i8], ptr %flash_key, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %flash_key, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %flash_key, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst_data) #7
  %3 = ptrtoint ptr %dst_data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dst_data, align 1, !annotation !99
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %.neg = mul i32 %7, -4
  %idx.neg = add i32 %.neg, -8
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.neg
  %client = getelementptr inbounds %struct.q54sj108a2_data, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 3, label %sw.bb15
    i32 4, label %sw.bb29
    i32 5, label %sw.bb39
    i32 11, label %sw.bb49
    i32 13, label %sw.bb55
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %dst_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %13 = ptrtoint ptr %dst_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dst_data, align 1
  %call5 = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end3.sw.epilog_crit_edge

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %call11 = tail call i32 @i2c_smbus_write_byte(ptr noundef %16, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %17 = ptrtoint ptr %flash_key to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 126, ptr %flash_key, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 21, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -36, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 66, ptr %2, align 1
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %call20 = call i32 @i2c_smbus_write_block_data(ptr noundef %22, i8 noundef zeroext -20, i8 noundef zeroext 4, ptr noundef nonnull %flash_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb15.cleanup_crit_edge, label %if.end23

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.bb15
  %23 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client, align 4
  %call25 = call i32 @i2c_smbus_write_byte(ptr noundef %24, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %call30 = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %dst_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %sw.bb29.cleanup_crit_edge, label %if.end33

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %sw.bb29
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %27 = ptrtoint ptr %dst_data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dst_data, align 1
  %call35 = call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 65, i8 noundef zeroext %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %if.end33.sw.epilog_crit_edge

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  %call40 = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %dst_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %sw.bb39.cleanup_crit_edge, label %if.end43

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %sw.bb39
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %31 = ptrtoint ptr %dst_data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dst_data, align 1
  %call45 = call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 71, i8 noundef zeroext %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.cleanup_crit_edge, label %if.end43.sw.epilog_crit_edge

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client, align 4
  %call51 = tail call i32 @i2c_smbus_write_byte(ptr noundef %34, i8 noundef zeroext -47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %sw.bb49.cleanup_crit_edge, label %sw.bb49.sw.epilog_crit_edge

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  %call56 = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %dst_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %sw.bb55.cleanup_crit_edge, label %if.end59

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %sw.bb55
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client, align 4
  %37 = ptrtoint ptr %dst_data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dst_data, align 1
  %call61 = call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -31, i8 noundef zeroext %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end59.cleanup_crit_edge, label %if.end59.sw.epilog_crit_edge

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end59.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %if.end43.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end59.cleanup_crit_edge, %sw.bb55.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call11, %sw.bb9.cleanup_crit_edge ], [ %call20, %sw.bb15.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call30, %sw.bb29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call40, %sw.bb39.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ], [ %call51, %sw.bb49.cleanup_crit_edge ], [ %call56, %sw.bb55.cleanup_crit_edge ], [ %call61, %if.end59.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_key) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_q54sj108a2__288_418_q54sj108a2_driver_init6, !1, !"__initcall__kmod_q54sj108a2__288_418_q54sj108a2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_q54sj108a2_driver_exit, !1, !"__exitcall_q54sj108a2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 420, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 421, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 422, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 423, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 411, i32 11}
!14 = !{ptr @q54sj108a2_driver, !15, !"q54sj108a2_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 409, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 299, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @q54sj108a2_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @q54sj108a2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 302, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 304, i32 3}
!28 = !{ptr @q54sj108a2_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @q54sj108a2_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 313, i32 3}
!32 = !{ptr @q54sj108a2_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @q54sj108a2_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 316, i32 32}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 318, i32 3}
!38 = !{ptr @q54sj108a2_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @q54sj108a2_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 324, i32 3}
!42 = !{ptr @q54sj108a2_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @q54sj108a2_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 329, i32 3}
!46 = !{ptr @q54sj108a2_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @q54sj108a2_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 350, i32 22}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 353, i32 22}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 356, i32 22}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 359, i32 22}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 362, i32 22}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 365, i32 22}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 368, i32 22}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 371, i32 22}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 374, i32 22}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 377, i32 22}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 380, i32 22}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 383, i32 22}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 386, i32 22}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 389, i32 22}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 392, i32 22}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 395, i32 22}
!80 = !{ptr @q54sj108a2_info, !81, !"q54sj108a2_info", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 55, i32 33}
!82 = !{ptr @q54sj108a2_fops, !83, !"q54sj108a2_fops", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 262, i32 37}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 89, i32 26}
!86 = !{ptr @q54sj108a2_of_match, !87, !"q54sj108a2_of_match", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 402, i32 34}
!88 = !{ptr @q54sj108a2_id, !89, !"q54sj108a2_id", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/pmbus/q54sj108a2.c", i32 269, i32 35}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
