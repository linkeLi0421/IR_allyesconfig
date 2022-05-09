; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/ibm-cffps.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/ibm-cffps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pmbus_platform_data = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ibm_cffps = type { i32, ptr, %struct.ibm_cffps_input_history, [10 x i32], [32 x i8], i8, %struct.led_classdev }
%struct.ibm_cffps_input_history = type { %struct.mutex, i32, i8, [100 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_ibm_cffps__300_648_ibm_cffps_driver_init6 = internal global ptr @ibm_cffps_driver_init, section ".initcall6.init", align 4
@ibm_cffps_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ibm_cffps_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ibm_cffps_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ibm_cffps_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ibm_cffps_driver_exit = internal global ptr @ibm_cffps_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [29 x i8] c"ibm_cffps.author=Eddie James\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [77 x i8] c"ibm_cffps.description=PMBus driver for IBM Common Form Factor power supplies\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [45 x i8] c"ibm_cffps.file=drivers/hwmon/pmbus/ibm-cffps\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [22 x i8] c"ibm_cffps.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns305 = internal constant [26 x i8] c"ibm_cffps.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ibm-cffps\00", [22 x i8] zeroinitializer }, align 32
@ibm_cffps_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,cffps1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,cffps2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,cffps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ibm_cffps_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ibm_cffps1\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ibm_cffps2\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ibm_cffps\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ibm_cffps_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read Manufacturer ID\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ibm_cffps_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hwmon/pmbus/ibm-cffps.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ibm_cffps_probe._entry_ptr = internal global ptr @ibm_cffps_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACBE\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ARTE\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cffps%d\00", [24 x i8] zeroinitializer }, align 32
@ibm_cffps_pdata = internal global { %struct.pmbus_platform_data, [20 x i8] } { %struct.pmbus_platform_data { i32 5, i32 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@ibm_cffps_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&psu->input_history.update_lock\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input_history\00", [18 x i8] zeroinitializer }, align 32
@ibm_cffps_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @ibm_cffps_debugfs_read, ptr @ibm_cffps_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfg_id\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fru\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"part_number\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"header\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_power_out\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ccin\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"on_off_config\00", [18 x i8] zeroinitializer }, align 32
@ibm_cffps_info = internal global { <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }>, [232 x i8] } { <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }> <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, [31 x i32] }> <{ i32 130741, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @ibm_cffps_read_byte_data, ptr @ibm_cffps_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 2, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, [30 x i32] }> <{ i32 392885, i32 15892, [30 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @ibm_cffps_read_byte_data, ptr @ibm_cffps_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null } }>, [232 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-%02x\00", [24 x i8] zeroinitializer }, align 32
@ibm_cffps_create_led_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 451, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register led class: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ibm_cffps_create_led_class\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ibm_cffps_create_led_class._entry_ptr = internal global ptr @ibm_cffps_create_led_class._entry, section ".printk_index", align 4
@ibm_cffps_led_brightness_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ibm_cffps\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ibm_cffps_led_brightness_set\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LED brightness set: %d. Command: %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@ibm_cffps_led_blink_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ibm_cffps_led_blink_set\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LED blink set.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04X\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 46, i64 81]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 122, i64 123, i64 125, i64 129]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 122, i64 123, i64 125, i64 129]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 121, i64 289]
@__sancov_gen_cov_switch_values.37 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"ibm_cffps_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 639, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 641, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ibm_cffps_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 622, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"ibm_cffps_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 614, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 520, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 527, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 528, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 545, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"ibm_cffps_pdata\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 485, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 563, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 580, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"ibm_cffps_fops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 286, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 583, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 586, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 589, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 592, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 595, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 598, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 601, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 604, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 607, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"ibm_cffps_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 457, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 442, i32 49 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 451, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 396, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 419, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 190, i32 44 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 197, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 209, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [35 x i8] c"../drivers/hwmon/pmbus/ibm-cffps.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 237, i32 26 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_import_ns305, ptr @__UNIQUE_ID_license304, ptr @__exitcall_ibm_cffps_driver_exit, ptr @__initcall__kmod_ibm_cffps__300_648_ibm_cffps_driver_init6, ptr @ibm_cffps_create_led_class._entry, ptr @ibm_cffps_create_led_class._entry_ptr, ptr @ibm_cffps_driver_exit, ptr @ibm_cffps_probe._entry, ptr @ibm_cffps_probe._entry_ptr, ptr @ibm_cffps_driver, ptr @.str, ptr @ibm_cffps_of_match, ptr @ibm_cffps_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ibm_cffps_pdata, ptr @ibm_cffps_probe.__key, ptr @.str.9, ptr @.str.10, ptr @ibm_cffps_fops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ibm_cffps_info, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_info to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_cffps_create_led_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ibm_cffps_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ibm_cffps_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ibm_cffps_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_probe(ptr noundef %client) #2 align 64 {
entry:
  %mfg_id = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @ibm_cffps_id, ptr noundef %client) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else.if.then5_crit_edge, label %if.then3

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then
  %vs.0 = phi i32 [ %0, %if.then ], [ %2, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vs.0)
  %cmp = icmp eq i32 %vs.0, 2
  br i1 %cmp, label %if.end4.if.then5_crit_edge, label %if.end4.if.end75_crit_edge

if.end4.if.end75_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end4.if.then5_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.end4.if.then5_crit_edge, %if.else.if.then5_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %conv1.i = zext i16 %3 to i32
  %cond.i = select i1 %cmp.i, i32 %call.i, i32 %conv1.i
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %mfg_id) #8
  %4 = call ptr @memset(ptr %mfg_id, i32 0, i32 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp7 = icmp sgt i32 %cond.i, 0
  %and = and i32 %cond.i, 255
  %call41 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %mfg_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup.thread, label %if.end49

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %mfg_id) #8
  br label %cleanup134

if.end49:                                         ; preds = %if.then5
  %and37 = lshr i32 %cond.i, 8
  %phi.cast = trunc i32 %and37 to i8
  %ccin_version.0 = select i1 %cmp7, i8 %phi.cast, i8 43
  %5 = zext i8 %ccin_version.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ccin_version.0, label %sw.bb [
    i8 81, label %sw.bb63
    i8 46, label %cleanup.thread202
  ]

cleanup.thread202:                                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %name205 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br label %6

sw.bb:                                            ; preds = %if.end49
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %mfg_id, ptr noundef nonnull dereferenceable(4) @.str.6, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp53 = icmp eq i32 %bcmp, 0
  br i1 %cmp53, label %cleanup.thread210, label %cleanup

cleanup.thread210:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %name213 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br label %7

sw.bb63:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %and)
  %cmp65200 = icmp eq i32 %and, 222
  %cmp65 = and i1 %cmp7, %cmp65200
  %name215 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br i1 %cmp65, label %sw.bb63._crit_edge, label %sw.bb63._crit_edge216

sw.bb63._crit_edge216:                            ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %6

sw.bb63._crit_edge:                               ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

cleanup:                                          ; preds = %sw.bb
  %bcmp193 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %mfg_id, ptr noundef nonnull dereferenceable(4) @.str.7, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp193)
  %cmp57.not = icmp eq i32 %bcmp193, 0
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br i1 %cmp57.not, label %cleanup._crit_edge, label %cleanup._crit_edge217

cleanup._crit_edge217:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %6

cleanup._crit_edge:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

6:                                                ; preds = %cleanup._crit_edge217, %sw.bb63._crit_edge216, %cleanup.thread202
  %name209 = phi ptr [ %name205, %cleanup.thread202 ], [ %name, %cleanup._crit_edge217 ], [ %name215, %sw.bb63._crit_edge216 ]
  br label %7

7:                                                ; preds = %6, %cleanup._crit_edge, %sw.bb63._crit_edge, %cleanup.thread210
  %name208 = phi ptr [ %name209, %6 ], [ %name, %cleanup._crit_edge ], [ %name213, %cleanup.thread210 ], [ %name215, %sw.bb63._crit_edge ]
  %vs.1206 = phi i32 [ 1, %6 ], [ 0, %cleanup._crit_edge ], [ 0, %cleanup.thread210 ], [ 0, %sw.bb63._crit_edge ]
  %8 = phi i32 [ 2, %6 ], [ 1, %cleanup._crit_edge ], [ 1, %cleanup.thread210 ], [ 1, %sw.bb63._crit_edge ]
  %call71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name208, i32 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %mfg_id) #8
  br label %if.end75

if.end75:                                         ; preds = %7, %if.end4.if.end75_crit_edge
  %vs.3 = phi i32 [ %vs.1206, %7 ], [ %vs.0, %if.end4.if.end75_crit_edge ]
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ibm_cffps_pdata, ptr %platform_data, align 8
  %arrayidx = getelementptr [2 x %struct.pmbus_driver_info], ptr @ibm_cffps_info, i32 0, i32 %vs.3
  %call77 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.cleanup134_crit_edge

if.end75.cleanup134_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

if.end80:                                         ; preds = %if.end75
  %call.i194 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 684, i32 noundef 3520) #8
  %tobool83.not = icmp eq ptr %call.i194, null
  br i1 %tobool83.not, label %if.end80.cleanup134_crit_edge, label %if.end85

if.end80.cleanup134_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

if.end85:                                         ; preds = %if.end80
  %10 = ptrtoint ptr %call.i194 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vs.3, ptr %call.i194, align 4
  %client86 = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 1
  %11 = ptrtoint ptr %client86 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %client86, align 4
  %input_history = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 2
  call void @__mutex_init(ptr noundef %input_history, ptr noundef nonnull @.str.9, ptr noundef nonnull @ibm_cffps_probe.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %12, -100
  %last_update = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %last_update, align 4
  %14 = ptrtoint ptr %client86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client86, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %led_name.i = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv.i195 = zext i16 %17 to i32
  %call.i196 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %led_name.i, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %name.i, i32 noundef %conv.i195) #8
  %led.i = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 6
  %18 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %led_name.i, ptr %led.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 255, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ibm_cffps_led_brightness_set, ptr %brightness_set_blocking.i, align 4
  %blink_set.i = getelementptr inbounds %struct.ibm_cffps, ptr %call.i194, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ibm_cffps_led_blink_set, ptr %blink_set.i, align 4
  %call.i.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2.i, ptr noundef %led.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.22, i32 noundef %call.i.i) #11
  br label %ibm_cffps_create_led_class.exit

if.else.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -38, i8 noundef zeroext 68) #8
  br label %ibm_cffps_create_led_class.exit

ibm_cffps_create_led_class.exit:                  ; preds = %if.else.i, %do.end.i
  %call91 = call ptr @pmbus_get_debugfs_dir(ptr noundef %client) #8
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %ibm_cffps_create_led_class.exit.cleanup134_crit_edge, label %if.end94

ibm_cffps_create_led_class.exit.cleanup134_crit_edge: ; preds = %ibm_cffps_create_led_class.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

if.end94:                                         ; preds = %ibm_cffps_create_led_class.exit
  %name95 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call97 = call ptr @debugfs_create_dir(ptr noundef %name95, ptr noundef nonnull %call91) #8
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end94.cleanup134_crit_edge, label %for.body.preheader

if.end94.cleanup134_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

for.body.preheader:                               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx103 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx103, align 4
  %arrayidx103.1 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx103.1, align 4
  %arrayidx103.2 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %arrayidx103.2, align 4
  %arrayidx103.3 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %arrayidx103.3, align 4
  %arrayidx103.4 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %arrayidx103.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %arrayidx103.4, align 4
  %arrayidx103.5 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %arrayidx103.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %arrayidx103.5, align 4
  %arrayidx103.6 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %arrayidx103.6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %arrayidx103.6, align 4
  %arrayidx103.7 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %arrayidx103.7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %arrayidx103.7, align 4
  %arrayidx103.8 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %arrayidx103.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %arrayidx103.8, align 4
  %arrayidx103.9 = getelementptr %struct.ibm_cffps, ptr %call.i194, i32 0, i32 3, i32 9
  %31 = ptrtoint ptr %arrayidx103.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9, ptr %arrayidx103.9, align 4
  %call106 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103, ptr noundef nonnull @ibm_cffps_fops) #8
  %call109 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.1, ptr noundef nonnull @ibm_cffps_fops) #8
  %call112 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.2, ptr noundef nonnull @ibm_cffps_fops) #8
  %call115 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.3, ptr noundef nonnull @ibm_cffps_fops) #8
  %call118 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.4, ptr noundef nonnull @ibm_cffps_fops) #8
  %call121 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.5, ptr noundef nonnull @ibm_cffps_fops) #8
  %call124 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.6, ptr noundef nonnull @ibm_cffps_fops) #8
  %call127 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.7, ptr noundef nonnull @ibm_cffps_fops) #8
  %call130 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef nonnull %call97, ptr noundef %arrayidx103.8, ptr noundef nonnull @ibm_cffps_fops) #8
  %call133 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef nonnull %call97, ptr noundef %arrayidx103.9, ptr noundef nonnull @ibm_cffps_fops) #8
  br label %cleanup134

cleanup134:                                       ; preds = %for.body.preheader, %if.end94.cleanup134_crit_edge, %ibm_cffps_create_led_class.exit.cleanup134_crit_edge, %if.end80.cleanup134_crit_edge, %if.end75.cleanup134_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %for.body.preheader ], [ %call77, %if.end75.cleanup134_crit_edge ], [ 0, %if.end80.cleanup134_crit_edge ], [ 0, %ibm_cffps_create_led_class.exit.cleanup134_crit_edge ], [ 0, %if.end94.cleanup134_crit_edge ], [ %call41, %cleanup.thread ]
  ret i32 %retval.1
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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_debugfs_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 122, label %entry.sw.bb_crit_edge
    i32 123, label %entry.sw.bb_crit_edge80
    i32 125, label %entry.sw.bb_crit_edge81
    i32 129, label %entry.sw.bb_crit_edge82
  ]

entry.sw.bb_crit_edge82:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge80:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge80, %entry.sw.bb_crit_edge81, %entry.sw.bb_crit_edge82
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call2 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %reg, label %if.end6.cleanup_crit_edge [
    i32 129, label %if.then9
    i32 125, label %if.then14
    i32 122, label %if.then23
    i32 123, label %if.then37
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and = shl i32 %call2, 7
  %2 = and i32 %and, 128
  %3 = or i32 %2, %call
  br label %cleanup

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and15 = shl i32 %call2, 6
  %4 = and i32 %and15, 128
  %5 = or i32 %4, %call
  br label %cleanup

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = and i32 %call2, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or27 = or i32 %call, 128
  %spec.select76 = select i1 %tobool25.not, i32 %call, i32 %or27
  %and29 = shl nuw i32 %call2, 1
  %6 = and i32 %and29, 16
  %7 = or i32 %spec.select76, %6
  br label %cleanup

if.then37:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and38 = shl i32 %call2, 2
  %8 = and i32 %and38, 128
  %9 = or i32 %8, %call
  %and43 = lshr i32 %call2, 4
  %10 = and i32 %and43, 8
  %11 = or i32 %9, %10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then23, %if.then14, %if.then9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %3, %if.then9 ], [ %5, %if.then14 ], [ %call, %if.end6.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ], [ %7, %if.then23 ], [ %11, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 121, label %sw.bb
    i32 289, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 121) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call2 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = shl i32 %call2, 2
  %1 = and i32 %and, 64
  %2 = or i32 %1, %call
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -34) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %if.end6, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %sw.bb9 ], [ %2, %if.end6 ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_led_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %led_state = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %1)
  %cmp1.not = icmp eq i8 %1, 65
  %. = select i1 %cmp1.not, i8 65, i8 66
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %next_led_state.0 = phi i8 [ 68, %entry.do.body_crit_edge ], [ %., %if.else ]
  %brightness.addr.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ 255, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ibm_cffps_led_brightness_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ibm_cffps_led_brightness_set, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !97

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr i8, ptr %led_cdev, i32 -280
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv10 = zext i8 %next_led_state.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ibm_cffps_led_brightness_set.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %brightness.addr.0, i32 noundef %conv10) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %client12 = getelementptr i8, ptr %led_cdev, i32 -280
  %4 = ptrtoint ptr %client12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client12, align 4
  %call13 = tail call i32 @pmbus_set_page(ptr noundef %5, i32 noundef 0, i32 noundef 255) #8
  %6 = ptrtoint ptr %client12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client12, align 4
  %call15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -38, i8 noundef zeroext %next_led_state.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %led_state20 = getelementptr i8, ptr %led_cdev, i32 -4
  %8 = ptrtoint ptr %led_state20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %next_led_state.0, ptr %led_state20, align 4
  %brightness21 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %9 = ptrtoint ptr %brightness21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %brightness.addr.0, ptr %brightness21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call15, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_led_blink_set(ptr nocapture noundef %led_cdev, ptr nocapture noundef writeonly %delay_on, ptr nocapture noundef writeonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ibm_cffps_led_blink_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ibm_cffps_led_blink_set, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr i8, ptr %led_cdev, i32 -280
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ibm_cffps_led_blink_set.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %client4 = getelementptr i8, ptr %led_cdev, i32 -280
  %2 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client4, align 4
  %call5 = tail call i32 @pmbus_set_page(ptr noundef %3, i32 noundef 0, i32 noundef 255) #8
  %4 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client4, align 4
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -38, i8 noundef zeroext 65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %led_state = getelementptr i8, ptr %led_cdev, i32 -4
  %6 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 65, ptr %led_state, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %brightness, align 4
  %8 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 250, ptr %delay_on, align 4
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 250, ptr %delay_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call7, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_set_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %msgbuf0.i = alloca [1 x i8], align 1
  %msgbuf1.i = alloca [101 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %data = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %.neg = mul i32 %3, -4
  %idx.neg = add i32 %.neg, -208
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #8
  %4 = call ptr @memset(ptr %data, i32 0, i32 34)
  %client = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %call = tail call i32 @pmbus_set_page(ptr noundef %6, i32 noundef 0, i32 noundef 255) #8
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog66_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb16
    i32 8, label %sw.bb24
    i32 9, label %sw.bb56
  ]

entry.sw.epilog66_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msgbuf0.i) #8
  %8 = ptrtoint ptr %msgbuf0.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -42, ptr %msgbuf0.i, align 1
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %msgbuf1.i) #8
  %9 = call ptr @memset(ptr %msgbuf1.i, i32 0, i32 101)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr1.i, align 2
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %13, align 8
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags.i, align 2
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %10, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msgbuf0.i, ptr %buf4.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %22 = load i16, ptr %addr1.i, align 2
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %24 = load i16, ptr %13, align 8
  %25 = or i16 %24, 1
  %26 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %flags8.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %27 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 101, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %28 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msgbuf1.i, ptr %buf13.i, align 4
  %29 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool.not.i = icmp eq i64 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end34.i_crit_edge

sw.bb.if.end34.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then.i:                                        ; preds = %sw.bb
  %input_history.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %input_history.i, i32 noundef 0) #8
  %last_update.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %32, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then17.i, label %if.then.i.if.end31.i_crit_edge

if.then.i.if.end31.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then17.i:                                      ; preds = %if.then.i
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.i = icmp slt i32 %call.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end.i

if.then22.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %input_history.i) #8
  br label %ibm_cffps_read_input_history.exit

if.end.i:                                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %msgbuf1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %msgbuf1.i, align 1
  %byte_count.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %byte_count.i, align 4
  %data.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2, i32 3
  %arrayidx28.i = getelementptr inbounds [101 x i8], ptr %msgbuf1.i, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %data.i, ptr %arrayidx28.i, i32 100)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %43 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_update.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i, %if.then.i.if.end31.i_crit_edge
  call void @mutex_unlock(ptr noundef %input_history.i) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end31.i, %sw.bb.if.end34.i_crit_edge
  %data36.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2, i32 3
  %byte_count39.i = getelementptr inbounds %struct.ibm_cffps, ptr %add.ptr, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %byte_count39.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %byte_count39.i, align 4
  %conv40.i = zext i8 %45 to i32
  %call41.i = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %data36.i, i32 noundef %conv40.i) #8
  br label %ibm_cffps_read_input_history.exit

ibm_cffps_read_input_history.exit:                ; preds = %if.end34.i, %if.then22.i
  %retval.0.i = phi i32 [ %call41.i, %if.end34.i ], [ %call.i, %if.then22.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %msgbuf1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msgbuf0.i) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

sw.bb7:                                           ; preds = %entry
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client, align 4
  %call.i127 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %49, i8 noundef zeroext -89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp.i128 = icmp slt i32 %call.i127, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb7
  %conv.i = trunc i32 %call.i127 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %conv1.i = zext i16 %50 to i32
  br i1 %cmp.i128, label %if.then.cleanup_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb7
  br i1 %cmp.i128, label %if.end.cleanup_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %rc.0139 = phi i32 [ %call.i127, %if.end.if.end14_crit_edge ], [ %conv1.i, %if.then.if.end14_crit_edge ]
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %rc.0139)
  br label %done

sw.bb16:                                          ; preds = %entry
  %51 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client, align 4
  %call.i129 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %52, i8 noundef zeroext -67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp.i130 = icmp slt i32 %call.i129, 0
  br i1 %cmp.i130, label %sw.bb16.cleanup_crit_edge, label %if.end21

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i131 = trunc i32 %call.i129 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i131) #8
  %conv1.i132 = zext i16 %53 to i32
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 5, ptr noundef nonnull @.str.31, i32 noundef %conv1.i132)
  br label %done

sw.bb24:                                          ; preds = %entry
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %55, label %sw.bb24.cleanup_crit_edge [
    i32 0, label %for.body.preheader
    i32 1, label %for.body40.preheader
  ]

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body40.preheader:                             ; preds = %sw.bb24
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %call44 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %58, i8 noundef zeroext -6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %for.body40.preheader.cleanup_crit_edge, label %if.end48

for.body40.preheader.cleanup_crit_edge:           ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb24
  %59 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client, align 4
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %60, i8 noundef zeroext -6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.body.preheader.cleanup_crit_edge, label %if.end33

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %for.body.preheader
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %call29)
  %61 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client, align 4
  %call29.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %62, i8 noundef zeroext -5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %cmp30.1 = icmp slt i32 %call29.1, 0
  br i1 %cmp30.1, label %if.end33.cleanup_crit_edge, label %if.end33.1

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.1:                                       ; preds = %if.end33
  %arrayidx.1 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 2
  %call34.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %call29.1)
  %63 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %client, align 4
  %call29.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %64, i8 noundef zeroext -4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %cmp30.2 = icmp slt i32 %call29.2, 0
  br i1 %cmp30.2, label %if.end33.1.cleanup_crit_edge, label %if.end33.2

if.end33.1.cleanup_crit_edge:                     ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.2:                                       ; preds = %if.end33.1
  %arrayidx.2 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 4
  %call34.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %call29.2)
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 4
  %call29.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %66, i8 noundef zeroext -3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %cmp30.3 = icmp slt i32 %call29.3, 0
  br i1 %cmp30.3, label %if.end33.2.cleanup_crit_edge, label %if.end33.3

if.end33.2.cleanup_crit_edge:                     ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.3:                                       ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.3 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 6
  %call34.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %call29.3)
  br label %done

if.end48:                                         ; preds = %for.body40.preheader
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 5, ptr noundef nonnull @.str.31, i32 noundef %call44)
  %67 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client, align 4
  %call44.1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %68, i8 noundef zeroext -5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1)
  %cmp45.1 = icmp slt i32 %call44.1, 0
  br i1 %cmp45.1, label %if.end48.cleanup_crit_edge, label %if.end48.1

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48.1:                                       ; preds = %if.end48
  %arrayidx50.1 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 4
  %call51.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx50.1, i32 noundef 5, ptr noundef nonnull @.str.31, i32 noundef %call44.1)
  %69 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client, align 4
  %call44.2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %70, i8 noundef zeroext -4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2)
  %cmp45.2 = icmp slt i32 %call44.2, 0
  br i1 %cmp45.2, label %if.end48.1.cleanup_crit_edge, label %if.end48.2

if.end48.1.cleanup_crit_edge:                     ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48.2:                                       ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50.2 = getelementptr inbounds [34 x i8], ptr %data, i32 0, i32 8
  %call51.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx50.2, i32 noundef 5, ptr noundef nonnull @.str.31, i32 noundef %call44.2)
  br label %done

sw.bb56:                                          ; preds = %entry
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %call58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %sw.bb56.cleanup_crit_edge, label %if.end62

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef %call58)
  br label %done

sw.epilog66:                                      ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog66_crit_edge
  %cmd.0 = phi i8 [ -98, %sw.bb6 ], [ -100, %sw.bb5 ], [ -101, %sw.bb4 ], [ -102, %sw.bb3 ], [ -103, %entry.sw.epilog66_crit_edge ]
  %73 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client, align 4
  %call69 = call i32 @i2c_smbus_read_block_data(ptr noundef %74, i8 noundef zeroext %cmd.0, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %sw.epilog66.cleanup_crit_edge, label %sw.epilog66.done_crit_edge

sw.epilog66.done_crit_edge:                       ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

sw.epilog66.cleanup_crit_edge:                    ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

done:                                             ; preds = %sw.epilog66.done_crit_edge, %if.end62, %if.end48.2, %if.end33.3, %if.end21, %if.end14
  %rc.1 = phi i32 [ %call64, %if.end62 ], [ 12, %if.end48.2 ], [ 8, %if.end33.3 ], [ %call23, %if.end21 ], [ %call15, %if.end14 ], [ %call69, %sw.epilog66.done_crit_edge ]
  %arrayidx74 = getelementptr [34 x i8], ptr %data, i32 0, i32 %rc.1
  %75 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 10, ptr %arrayidx74, align 1
  %add75 = add i32 %rc.1, 2
  %call77 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %data, i32 noundef %add75) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %sw.epilog66.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.end48.1.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end33.2.cleanup_crit_edge, %if.end33.1.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %for.body40.preheader.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %ibm_cffps_read_input_history.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %done ], [ %retval.0.i, %ibm_cffps_read_input_history.exit ], [ %call.i127, %if.end.cleanup_crit_edge ], [ %call.i129, %sw.bb16.cleanup_crit_edge ], [ -95, %sw.bb24.cleanup_crit_edge ], [ %call58, %sw.bb56.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call69, %sw.epilog66.cleanup_crit_edge ], [ %call.i127, %if.then.cleanup_crit_edge ], [ %call29, %for.body.preheader.cleanup_crit_edge ], [ %call29.1, %if.end33.cleanup_crit_edge ], [ %call29.2, %if.end33.1.cleanup_crit_edge ], [ %call29.3, %if.end33.2.cleanup_crit_edge ], [ %call44, %for.body40.preheader.cleanup_crit_edge ], [ %call44.1, %if.end48.cleanup_crit_edge ], [ %call44.2, %if.end48.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibm_cffps_debugfs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !98
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cond = icmp eq i32 %4, 9
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %client = getelementptr i8, ptr %2, i32 -240
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %call = tail call i32 @pmbus_set_page(ptr noundef %6, i32 noundef 0, i32 noundef 255) #8
  %call1 = call i32 @simple_write_to_buffer(ptr noundef nonnull %data, i32 noundef 1, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %call3 = call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 2, i8 noundef zeroext %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %.call3 = select i1 %tobool.not, i32 1, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ %.call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ibm_cffps__300_648_ibm_cffps_driver_init6, !1, !"__initcall__kmod_ibm_cffps__300_648_ibm_cffps_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 648, i32 1}
!2 = !{ptr @__exitcall_ibm_cffps_driver_exit, !1, !"__exitcall_ibm_cffps_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 650, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 651, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 652, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns305, !11, !"__UNIQUE_ID_import_ns305", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 653, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 641, i32 11}
!14 = !{ptr @ibm_cffps_driver, !15, !"ibm_cffps_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 639, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 520, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ibm_cffps_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ibm_cffps_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 527, i32 25}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 528, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 545, i32 41}
!30 = !{ptr @ibm_cffps_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 563, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 580, i32 22}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 583, i32 22}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 586, i32 22}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 589, i32 22}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 592, i32 22}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 595, i32 22}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 598, i32 22}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 601, i32 22}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 604, i32 22}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 607, i32 22}
!53 = !{ptr @ibm_cffps_pdata, !54, !"ibm_cffps_pdata", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 485, i32 35}
!55 = !{ptr @ibm_cffps_info, !56, !"ibm_cffps_info", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 457, i32 33}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 442, i32 49}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 451, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ibm_cffps_create_led_class._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @ibm_cffps_create_led_class._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 396, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ibm_cffps_led_brightness_set.__UNIQUE_ID_ddebug288, !66, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 419, i32 2}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ibm_cffps_led_blink_set.__UNIQUE_ID_ddebug289, !71, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!74 = !{ptr @ibm_cffps_fops, !75, !"ibm_cffps_fops", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 286, i32 37}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 190, i32 44}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 197, i32 26}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 209, i32 31}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 237, i32 26}
!84 = !{ptr @ibm_cffps_of_match, !85, !"ibm_cffps_of_match", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 622, i32 34}
!86 = !{ptr @ibm_cffps_id, !87, !"ibm_cffps_id", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/pmbus/ibm-cffps.c", i32 614, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2149018264, i64 2149018269, i64 2149018282, i64 2149018326, i64 2149018360, i64 2149018381}
!98 = !{!"auto-init"}
