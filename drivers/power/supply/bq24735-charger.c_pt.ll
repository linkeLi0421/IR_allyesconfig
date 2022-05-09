; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq24735-charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq24735-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bq24735 = type { ptr, %struct.power_supply_desc, ptr, ptr, %struct.mutex, ptr, %struct.delayed_work, i32, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.bq24735_platform = type { i32, i32, i32, ptr, i8, ptr, i32 }

@__initcall__kmod_bq24735_charger__289_513_bq24735_charger_driver_init6 = internal global ptr @bq24735_charger_driver_init, section ".initcall6.init", align 4
@bq24735_charger_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq24735_charger_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq24735_match_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq24735_charger_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq24735_charger_driver_exit = internal global ptr @bq24735_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"bq24735_charger.description=bq24735 battery charging driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [64 x i8] c"bq24735_charger.author=Darbha Sriharsha <dsriharsha@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [58 x i8] c"bq24735_charger.file=drivers/power/supply/bq24735-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"bq24735_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24735-charger\00", [16 x i8] zeroinitializer }, align 32
@bq24735_match_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24735\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bq24735_charger_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq24735-charger\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bq24735_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&charger->lock\00", [17 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bq24735_charger_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq24735-charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr = internal global ptr @bq24735_charger_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bq24735@%s\00", [21 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to alloc device name\0A\00", [35 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.10 = internal global ptr @bq24735_charger_probe._entry.8, section ".printk_index", align 4
@bq24735_charger_properties = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 4], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,ac-detect\00", [19 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Getting gpio failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.14 = internal global ptr @bq24735_charger_probe._entry.12, section ".printk_index", align 4
@bq24735_charger_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read manufacturer id : %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.17 = internal global ptr @bq24735_charger_probe._entry.15, section ".printk_index", align 4
@bq24735_charger_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"manufacturer id mismatch. 0x0040 != 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.20 = internal global ptr @bq24735_charger_probe._entry.18, section ".printk_index", align 4
@bq24735_charger_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read device id : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.23 = internal global ptr @bq24735_charger_probe._entry.21, section ".printk_index", align 4
@bq24735_charger_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"device id mismatch. 0x000b != 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.26 = internal global ptr @bq24735_charger_probe._entry.24, section ".printk_index", align 4
@bq24735_charger_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable charging\0A\00", [37 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.29 = internal global ptr @bq24735_charger_probe._entry.27, section ".printk_index", align 4
@bq24735_charger_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register power supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.32 = internal global ptr @bq24735_charger_probe._entry.30, section ".printk_index", align 4
@bq24735_charger_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to register IRQ %d err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bq24735_charger_probe._entry_ptr.35 = internal global ptr @bq24735_charger_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll-interval\00", [18 x i8] zeroinitializer }, align 32
@bq24735_parse_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Memory alloc for bq24735 pdata failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bq24735_parse_dt_data\00", [42 x i8] zeroinitializer }, align 32
@bq24735_parse_dt_data._entry_ptr = internal global ptr @bq24735_parse_dt_data._entry, section ".printk_index", align 4
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,charge-current\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,charge-voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,input-current\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,external-control\00", [44 x i8] zeroinitializer }, align 32
@bq24735_charger_is_present.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24735_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bq24735_charger_is_present\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read charger options : %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bq24735_config_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write charger current : %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bq24735_config_charger\00", [41 x i8] zeroinitializer }, align 32
@bq24735_config_charger._entry_ptr = internal global ptr @bq24735_config_charger._entry, section ".printk_index", align 4
@bq24735_config_charger._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write charger voltage : %d\0A\00", [58 x i8] zeroinitializer }, align 32
@bq24735_config_charger._entry_ptr.50 = internal global ptr @bq24735_config_charger._entry.48, section ".printk_index", align 4
@bq24735_config_charger._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write input current : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bq24735_config_charger._entry_ptr.53 = internal global ptr @bq24735_config_charger._entry.51, section ".printk_index", align 4
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"bq24735_charger_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 504, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 506, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"bq24735_match_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 498, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"bq24735_charger_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 492, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 368, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 376, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 383, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 386, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"bq24735_charger_properties\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 66, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 412, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 416, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 423, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 427, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 434, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 437, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 444, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 453, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 467, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 473, i32 48 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 333, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 338, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 342, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 346, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 350, i32 49 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 196, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 126, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 139, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private constant [42 x i8] c"../drivers/power/supply/bq24735-charger.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 152, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 50, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bq24735_charger_driver_exit, ptr @__initcall__kmod_bq24735_charger__289_513_bq24735_charger_driver_init6, ptr @bq24735_charger_driver_exit, ptr @bq24735_charger_probe._entry, ptr @bq24735_charger_probe._entry.12, ptr @bq24735_charger_probe._entry.15, ptr @bq24735_charger_probe._entry.18, ptr @bq24735_charger_probe._entry.21, ptr @bq24735_charger_probe._entry.24, ptr @bq24735_charger_probe._entry.27, ptr @bq24735_charger_probe._entry.30, ptr @bq24735_charger_probe._entry.33, ptr @bq24735_charger_probe._entry.8, ptr @bq24735_charger_probe._entry_ptr, ptr @bq24735_charger_probe._entry_ptr.10, ptr @bq24735_charger_probe._entry_ptr.14, ptr @bq24735_charger_probe._entry_ptr.17, ptr @bq24735_charger_probe._entry_ptr.20, ptr @bq24735_charger_probe._entry_ptr.23, ptr @bq24735_charger_probe._entry_ptr.26, ptr @bq24735_charger_probe._entry_ptr.29, ptr @bq24735_charger_probe._entry_ptr.32, ptr @bq24735_charger_probe._entry_ptr.35, ptr @bq24735_config_charger._entry, ptr @bq24735_config_charger._entry.48, ptr @bq24735_config_charger._entry.51, ptr @bq24735_config_charger._entry_ptr, ptr @bq24735_config_charger._entry_ptr.50, ptr @bq24735_config_charger._entry_ptr.53, ptr @bq24735_parse_dt_data._entry, ptr @bq24735_parse_dt_data._entry_ptr, ptr @bq24735_charger_driver, ptr @.str, ptr @bq24735_match_ids, ptr @bq24735_charger_id, ptr @bq24735_charger_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @bq24735_charger_properties, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @devm_delayed_work_autocancel.__key, ptr @.str.54, ptr @devm_delayed_work_autocancel.__key.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_match_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_properties to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_charger_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_parse_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_config_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_config_charger._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24735_config_charger._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24735_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq24735_charger_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq24735_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bq24735_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24735_charger_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq24735_charger_probe.__key) #7
  %charging = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %charging to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %charging, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pdata, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %do.body
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end9thread-pre-split, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !118
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i236

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %bq24735_parse_dt_data.exit

if.end.i236:                                      ; preds = %if.then6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.39, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i236.if.end6.i_crit_edge

if.end.i236.if.end6.i_crit_edge:                  ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i236.if.end6.i_crit_edge
  %call.i.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.40, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i31.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i31.i, -1
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %charge_voltage.i = getelementptr inbounds %struct.bq24735_platform, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %charge_voltage.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %charge_voltage.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %call.i.i32.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.41, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i32.i)
  %tobool12.not.i = icmp sgt i32 %call.i.i32.i, -1
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %input_current.i = getelementptr inbounds %struct.bq24735_platform, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %input_current.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %input_current.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %call.i33.i = call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.42, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i33.i, null
  %ext_control.i = getelementptr inbounds %struct.bq24735_platform, ptr %call.i.i, i32 0, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %17 = ptrtoint ptr %ext_control.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool.i, ptr %ext_control.i, align 4
  br label %bq24735_parse_dt_data.exit

bq24735_parse_dt_data.exit:                       ; preds = %if.end14.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %pdata, align 4
  br label %if.end9

if.end9thread-pre-split:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %pdata, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %bq24735_parse_dt_data.exit
  %20 = phi ptr [ %.pr, %if.end9thread-pre-split ], [ %call.i.i, %bq24735_parse_dt_data.exit ]
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %do.end15, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end9.if.end17_crit_edge, %do.body.if.end17_crit_edge
  %21 = phi ptr [ %20, %if.end9.if.end17_crit_edge ], [ %3, %do.body.if.end17_crit_edge ]
  %name19 = getelementptr inbounds %struct.bq24735_platform, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name19, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then21:                                        ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i237 = icmp eq ptr %25, null
  br i1 %tobool.not.i237, label %if.end.i238, label %if.then21.dev_name.exit_crit_edge

if.then21.dev_name.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i238:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i238, %if.then21.dev_name.exit_crit_edge
  %retval.0.i239 = phi ptr [ %27, %if.end.i238 ], [ %25, %if.then21.dev_name.exit_crit_edge ]
  %call25 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i239) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %dev_name.exit.if.end33_crit_edge

dev_name.exit.if.end33_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end33:                                         ; preds = %dev_name.exit.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %name.0 = phi ptr [ %23, %if.end17.if.end33_crit_edge ], [ %call25, %dev_name.exit.if.end33_crit_edge ]
  %client34 = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %client34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %client, ptr %client34, align 4
  %charger_desc = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %charger_desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name.0, ptr %charger_desc, align 4
  %type = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %type, align 4
  %properties = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bq24735_charger_properties, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bq24735_charger_get_property, ptr %get_property, align 4
  %set_property = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 7
  %34 = ptrtoint ptr %set_property to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bq24735_charger_set_property, ptr %set_property, align 4
  %property_is_writeable = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bq24735_charger_property_is_writeable, ptr %property_is_writeable, align 4
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 4
  %supplied_to = getelementptr inbounds %struct.bq24735_platform, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supplied_to, align 4
  %supplied_to37 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %40 = ptrtoint ptr %supplied_to37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %supplied_to37, align 4
  %num_supplicants = getelementptr inbounds %struct.bq24735_platform, ptr %37, i32 0, i32 6
  %41 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_supplicants, align 4
  %num_supplicants39 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %43 = ptrtoint ptr %num_supplicants39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %num_supplicants39, align 4
  %of_node41 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %44 = ptrtoint ptr %of_node41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node41, align 8
  %46 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %47 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %drv_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call44 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1) #7
  %status_gpio = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %status_gpio to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call44, ptr %status_gpio, align 4
  %cmp.i240 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %50) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end33
  %tobool.not.i241 = icmp eq ptr %call44, null
  br i1 %tobool.not.i241, label %if.else.i246, label %if.then.i243

if.then.i243:                                     ; preds = %if.end54
  %call.i242 = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool2.not.i = icmp eq i32 %call.i242, 0
  br i1 %tobool2.not.i, label %if.then.i243.if.then56_crit_edge, label %if.then.i243.if.end95_crit_edge

if.then.i243.if.end95_crit_edge:                  ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then.i243.if.then56_crit_edge:                 ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.else.i246:                                     ; preds = %if.end54
  %51 = ptrtoint ptr %client34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client34, align 4
  %call.i.i244 = call i32 @i2c_smbus_read_word_data(ptr noundef %52, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i244)
  %cmp.i245 = icmp slt i32 %call.i.i244, 0
  br i1 %cmp.i245, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.else.i246
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24735_charger_probe, %if.end95)) #7
          to label %bq24735_charger_is_present.exit.thread [label %if.end95], !srcloc !119

bq24735_charger_is_present.exit.thread:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %client34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client34, align 4
  %dev.i247 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, ptr noundef %dev.i247, ptr noundef nonnull @.str.45, i32 noundef %call.i.i244) #7
  br label %if.end95

if.end13.i:                                       ; preds = %if.else.i246
  %and.i = and i32 %call.i.i244, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.i.not, label %if.end13.i.if.end95_crit_edge, label %if.end13.i.if.then56_crit_edge

if.end13.i.if.then56_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.end13.i.if.end95_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then56:                                        ; preds = %if.end13.i.if.then56_crit_edge, %if.then.i243.if.then56_crit_edge
  %call.i248 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp = icmp slt i32 %call.i248, 0
  br i1 %cmp, label %do.end61, label %if.else

do.end61:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i248) #10
  br label %cleanup

if.else:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i248)
  %cmp63.not = icmp eq i32 %call.i248, 64
  br i1 %cmp63.not, label %if.end70, label %do.end67

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i248) #10
  br label %cleanup

if.end70:                                         ; preds = %if.else
  %call.i249 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %cmp72 = icmp slt i32 %call.i249, 0
  br i1 %cmp72, label %do.end76, label %if.else78

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i249) #10
  br label %cleanup

if.else78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i249)
  %cmp79.not = icmp eq i32 %call.i249, 11
  br i1 %cmp79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i249) #10
  br label %cleanup

if.end86:                                         ; preds = %if.else78
  %call87 = call fastcc i32 @bq24735_enable_charging(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %if.end86.if.end95_crit_edge

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end86.if.end95_crit_edge, %if.end13.i.if.end95_crit_edge, %bq24735_charger_is_present.exit.thread, %do.body.i, %if.then.i243.if.end95_crit_edge
  %call97 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %charger_desc, ptr noundef nonnull %psy_cfg) #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call97, ptr %call.i, align 4
  %cmp.i250 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i250, label %if.then101, label %if.end108

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call97 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %56) #10
  br label %cleanup

if.end108:                                        ; preds = %if.end95
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool109.not = icmp eq i32 %58, 0
  br i1 %tobool109.not, label %if.else124, label %if.then110

if.then110:                                       ; preds = %if.end108
  %59 = ptrtoint ptr %charger_desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %charger_desc, align 4
  %call115 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %58, ptr noundef null, ptr noundef nonnull @bq24735_charger_isr, i32 noundef 8195, ptr noundef %60, ptr noundef %call97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then110.cleanup_crit_edge, label %do.end120

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end120:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %62, i32 noundef %call115) #10
  br label %cleanup

if.else124:                                       ; preds = %if.end108
  %poll_interval = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 7
  %call.i251 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %poll_interval, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool127.not = icmp eq i32 %call.i251, 0
  br i1 %tobool127.not, label %if.end129, label %if.else124.cleanup_crit_edge

if.else124.cleanup_crit_edge:                     ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129:                                        ; preds = %if.else124
  %63 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool131.not = icmp eq i32 %64, 0
  br i1 %tobool131.not, label %if.end129.cleanup_crit_edge, label %if.end133

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end133:                                        ; preds = %if.end129
  %poll = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %poll, i32 noundef 0) #7
  %65 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %poll, align 4
  %lockdep_map.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %68 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @bq24735_poll, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 6, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.56, ptr noundef nonnull @devm_delayed_work_autocancel.__key.55) #7
  %call.i252 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %poll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool136.not = icmp eq i32 %call.i252, 0
  br i1 %tobool136.not, label %if.else.i, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %poll_interval, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %70) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %71 = load ptr, ptr @system_wq, align 4
  %call.i.i253 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %poll, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end133.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.else124.cleanup_crit_edge, %do.end120, %if.then110.cleanup_crit_edge, %if.then101, %do.end92, %do.end83, %do.end76, %do.end67, %do.end61, %if.then47, %do.end30, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %50, %if.then47 ], [ %call.i248, %do.end61 ], [ -19, %do.end67 ], [ %call.i249, %do.end76 ], [ -19, %do.end83 ], [ %call87, %do.end92 ], [ %56, %if.then101 ], [ %call115, %do.end120 ], [ -12, %do.end30 ], [ -22, %do.end15 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else124.cleanup_crit_edge ], [ 0, %if.end129.cleanup_crit_edge ], [ %call.i252, %if.end133.cleanup_crit_edge ], [ 0, %if.then110.cleanup_crit_edge ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24735_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %status_gpio.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %status_gpio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %status_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i12 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool2.not.i = icmp eq i32 %call.i12, 0
  br label %bq24735_charger_is_present.exit

if.else.i:                                        ; preds = %sw.bb
  %client.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24735_charger_get_property, %bq24735_charger_is_present.exit)) #7
          to label %if.then11.i [label %bq24735_charger_is_present.exit], !srcloc !119

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #7
  br label %bq24735_charger_is_present.exit

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.i = icmp ne i32 %and.i, 0
  br label %bq24735_charger_is_present.exit

bq24735_charger_is_present.exit:                  ; preds = %if.end13.i, %if.then11.i, %do.body.i, %if.then.i
  %retval.1.i = phi i1 [ %tobool2.not.i, %if.then.i ], [ %tobool14.i, %if.end13.i ], [ false, %if.then11.i ], [ false, %do.body.i ]
  %cond = zext i1 %retval.1.i to i32
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @bq24735_charger_is_charging(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %switch.selectcmp = icmp eq i32 %call3, 0
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %switch.selectcmp13 = icmp eq i32 %call3, 1
  %switch.select14 = select i1 %switch.selectcmp13, i32 1, i32 %switch.select
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %bq24735_charger_is_present.exit
  %cond.sink = phi i32 [ %cond, %bq24735_charger_is_present.exit ], [ %switch.select14, %sw.bb2 ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24735_charger_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psp)
  %cond = icmp eq i32 %psp, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb.sw.bb4_crit_edge
    i32 3, label %sw.bb.sw.bb4_crit_edge31
  ]

sw.bb.sw.bb4_crit_edge31:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %charging = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %charging to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %charging, align 4
  %call2 = tail call fastcc i32 @bq24735_enable_charging(ptr noundef %call.i)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb.sw.bb4_crit_edge, %sw.bb.sw.bb4_crit_edge31
  %lock5 = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock5, i32 noundef 0) #7
  %charging6 = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %charging6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %charging6, align 4
  %pdata.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 4
  %ext_control.i = getelementptr inbounds %struct.bq24735_platform, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ext_control.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext_control.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %bq24735_disable_charging.exit.thread

bq24735_disable_charging.exit.thread:             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock5) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb4
  %client.i = getelementptr inbounds %struct.bq24735, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %bq24735_disable_charging.exit.thread28, label %bq24735_disable_charging.exit

bq24735_disable_charging.exit.thread28:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock5) #7
  br label %cleanup

bq24735_disable_charging.exit:                    ; preds = %if.end.i
  %11 = trunc i32 %call.i.i.i to i16
  %conv4.i.i = or i16 %11, 1
  %call.i1.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext 18, i16 noundef zeroext %conv4.i.i) #7
  tail call void @mutex_unlock(ptr noundef %lock5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool9.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool9.not, label %bq24735_disable_charging.exit.sw.epilog_crit_edge, label %bq24735_disable_charging.exit.cleanup_crit_edge

bq24735_disable_charging.exit.cleanup_crit_edge:  ; preds = %bq24735_disable_charging.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bq24735_disable_charging.exit.sw.epilog_crit_edge: ; preds = %bq24735_disable_charging.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %bq24735_disable_charging.exit.sw.epilog_crit_edge, %bq24735_disable_charging.exit.thread, %sw.bb1.sw.epilog_crit_edge
  tail call void @power_supply_changed(ptr noundef %psy) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %bq24735_disable_charging.exit.cleanup_crit_edge, %bq24735_disable_charging.exit.thread28, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call.i1.i.i, %bq24735_disable_charging.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call.i.i.i, %bq24735_disable_charging.exit.thread28 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq24735_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psp)
  %cond = icmp eq i32 %psp, 0
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24735_enable_charging(ptr nocapture noundef readonly %charger) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %pdata = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %ext_control = getelementptr inbounds %struct.bq24735_platform, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ext_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_control, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %6 = trunc i32 %5 to i16
  %conv.i = and i16 %6, 8128
  %client.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext 20, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %call.i.i) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.then3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %charge_voltage.i = getelementptr inbounds %struct.bq24735_platform, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %charge_voltage.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %charge_voltage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end26.i_crit_edge, label %if.then11.i

if.end9.i.if.end26.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.end9.i
  %13 = trunc i32 %12 to i16
  %conv14.i = and i16 %13, 32752
  %client15.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %14 = ptrtoint ptr %client15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client15.i, align 4
  %call.i70.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %15, i8 noundef zeroext 21, i16 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %cmp17.i = icmp slt i32 %call.i70.i, 0
  br i1 %cmp17.i, label %do.end22.i, label %if.then11.i.if.end26.i_crit_edge

if.then11.i.if.end26.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end22.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %client15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client15.i, align 4
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.49, i32 noundef %call.i70.i) #10
  br label %cleanup

if.end26.i:                                       ; preds = %if.then11.i.if.end26.i_crit_edge, %if.end9.i.if.end26.i_crit_edge
  %input_current.i = getelementptr inbounds %struct.bq24735_platform, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %input_current.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input_current.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not.i = icmp eq i32 %19, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end3_crit_edge, label %if.then28.i

if.end26.i.if.end3_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then28.i:                                      ; preds = %if.end26.i
  %20 = trunc i32 %19 to i16
  %conv31.i = and i16 %20, 8064
  %client32.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %21 = ptrtoint ptr %client32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client32.i, align 4
  %call.i71.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %22, i8 noundef zeroext 63, i16 noundef zeroext %conv31.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %cmp34.i = icmp slt i32 %call.i71.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.then28.i.if.end3_crit_edge

if.then28.i.if.end3_crit_edge:                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

do.end39.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %client32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client32.i, align 4
  %dev41.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i, ptr noundef nonnull @.str.52, i32 noundef %call.i71.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then28.i.if.end3_crit_edge, %if.end26.i.if.end3_crit_edge
  %client = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %call.i.i8 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %26, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %cmp.i9 = icmp slt i32 %call.i.i8, 0
  br i1 %cmp.i9, label %if.end3.cleanup_crit_edge, label %if.end.i10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i10:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %27 = trunc i32 %call.i.i8 to i16
  %28 = and i16 %27, -2
  %call.i1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %26, i8 noundef zeroext 18, i16 noundef zeroext %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i10, %if.end3.cleanup_crit_edge, %do.end39.i, %do.end22.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i1.i, %if.end.i10 ], [ %call.i.i8, %if.end3.cleanup_crit_edge ], [ %call.i71.i, %do.end39.i ], [ %call.i70.i, %do.end22.i ], [ %call.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24735_charger_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %devid) #7
  tail call fastcc void @bq24735_update(ptr noundef %call.i)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq24735_poll(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -160
  tail call fastcc void @bq24735_update(ptr noundef %add.ptr)
  %poll_interval = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef %call2.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24735_charger_is_charging(ptr nocapture noundef readonly %charger) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status_gpio.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 5
  %0 = ptrtoint ptr %status_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i:                                        ; preds = %entry
  %client.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24735_charger_is_charging, %cleanup)) #7
          to label %bq24735_charger_is_present.exit.thread [label %cleanup], !srcloc !119

bq24735_charger_is_present.exit.thread:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.else.i
  %and.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.i.not, label %if.end13.i.cleanup_crit_edge, label %if.end13.i.if.end_crit_edge

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end13.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %client = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %call.i7 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp = icmp slt i32 %call.i7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call.i7, 1
  %8 = xor i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %bq24735_charger_is_present.exit.thread, %do.body.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end3 ], [ %call.i7, %if.end.cleanup_crit_edge ], [ 0, %bq24735_charger_is_present.exit.thread ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end13.i.cleanup_crit_edge ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq24735_update(ptr noundef %charger) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %charging = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 8
  %0 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %charging, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %status_gpio.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 5
  %2 = ptrtoint ptr %status_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then_crit_edge, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else.i:                                        ; preds = %land.lhs.true
  %client.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24735_update, %if.else)) #7
          to label %bq24735_charger_is_present.exit.thread [label %if.else], !srcloc !119

bq24735_charger_is_present.exit.thread:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #7
  br label %if.else

if.end13.i:                                       ; preds = %if.else.i
  %and.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.i.not, label %if.end13.i.if.else_crit_edge, label %if.end13.i.if.then_crit_edge

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end13.i.if.else_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %if.end13.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %call1 = tail call fastcc i32 @bq24735_enable_charging(ptr noundef %charger)
  br label %if.end

if.else:                                          ; preds = %if.end13.i.if.else_crit_edge, %bq24735_charger_is_present.exit.thread, %do.body.i, %if.then.i.if.else_crit_edge, %entry.if.else_crit_edge
  %pdata.i = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 3
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %ext_control.i = getelementptr inbounds %struct.bq24735_platform, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ext_control.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ext_control.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i11 = icmp eq i8 %11, 0
  br i1 %tobool.not.i11, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %client.i12 = getelementptr inbounds %struct.bq24735, ptr %charger, i32 0, i32 2
  %12 = ptrtoint ptr %client.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i12, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = trunc i32 %call.i.i.i to i16
  %conv4.i.i = or i16 %14, 1
  %call.i1.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext 18, i16 noundef zeroext %conv4.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %15 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_bq24735_charger__289_513_bq24735_charger_driver_init6, !1, !"__initcall__kmod_bq24735_charger__289_513_bq24735_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq24735-charger.c", i32 513, i32 1}
!2 = !{ptr @__exitcall_bq24735_charger_driver_exit, !1, !"__exitcall_bq24735_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq24735-charger.c", i32 515, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq24735-charger.c", i32 516, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq24735-charger.c", i32 517, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq24735-charger.c", i32 506, i32 11}
!12 = !{ptr @bq24735_charger_driver, !13, !"bq24735_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq24735-charger.c", i32 504, i32 26}
!14 = !{ptr @bq24735_charger_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq24735-charger.c", i32 368, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/bq24735-charger.c", i32 376, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bq24735_charger_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @bq24735_charger_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/bq24735-charger.c", i32 383, i32 11}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/bq24735-charger.c", i32 386, i32 4}
!29 = !{ptr @bq24735_charger_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bq24735_charger_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/bq24735-charger.c", i32 412, i32 14}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/bq24735-charger.c", i32 416, i32 3}
!35 = !{ptr @bq24735_charger_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bq24735_charger_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/bq24735-charger.c", i32 423, i32 4}
!39 = !{ptr @bq24735_charger_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bq24735_charger_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/bq24735-charger.c", i32 427, i32 4}
!43 = !{ptr @bq24735_charger_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bq24735_charger_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/bq24735-charger.c", i32 434, i32 4}
!47 = !{ptr @bq24735_charger_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bq24735_charger_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/bq24735-charger.c", i32 437, i32 4}
!51 = !{ptr @bq24735_charger_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bq24735_charger_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/bq24735-charger.c", i32 444, i32 4}
!55 = !{ptr @bq24735_charger_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bq24735_charger_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/bq24735-charger.c", i32 453, i32 3}
!59 = !{ptr @bq24735_charger_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bq24735_charger_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/bq24735-charger.c", i32 467, i32 4}
!63 = !{ptr @bq24735_charger_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bq24735_charger_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bq24735-charger.c", i32 473, i32 48}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bq24735-charger.c", i32 333, i32 3}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bq24735_parse_dt_data._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bq24735_parse_dt_data._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/bq24735-charger.c", i32 338, i32 33}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/bq24735-charger.c", i32 342, i32 33}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/bq24735-charger.c", i32 346, i32 33}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/bq24735-charger.c", i32 350, i32 49}
!80 = !{ptr @bq24735_charger_properties, !81, !"bq24735_charger_properties", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/bq24735-charger.c", i32 66, i32 35}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/bq24735-charger.c", i32 196, i32 4}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @bq24735_charger_is_present.__UNIQUE_ID_ddebug288, !83, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bq24735-charger.c", i32 126, i32 4}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bq24735_config_charger._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @bq24735_config_charger._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/bq24735-charger.c", i32 139, i32 4}
!94 = !{ptr @bq24735_config_charger._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bq24735_config_charger._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/bq24735-charger.c", i32 152, i32 4}
!98 = !{ptr @bq24735_config_charger._entry.51, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @bq24735_config_charger._entry_ptr.53, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @devm_delayed_work_autocancel.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @devm_delayed_work_autocancel.__key.55, !101, !"__key", i1 false, i1 false}
!104 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bq24735_match_ids, !106, !"bq24735_match_ids", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/bq24735-charger.c", i32 498, i32 34}
!107 = !{ptr @bq24735_charger_id, !108, !"bq24735_charger_id", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/bq24735-charger.c", i32 492, i32 35}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i64 2148290989, i64 2148290994, i64 2148291007, i64 2148291051, i64 2148291085, i64 2148291106}
!120 = !{i8 0, i8 2}
