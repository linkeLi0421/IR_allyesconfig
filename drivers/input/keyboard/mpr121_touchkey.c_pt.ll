; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/mpr121_touchkey.c_pt.bc'
source_filename = "../drivers/input/keyboard/mpr121_touchkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.mpr121_touchkey = type { ptr, ptr, i32, i32, [12 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mpr121_touchkey__290_396_mpr_touchkey_driver_init6 = internal global ptr @mpr_touchkey_driver_init, section ".initcall6.init", align 4
@mpr_touchkey_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mpr_touchkey_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mpr121_touchkey_dt_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpr121_touchkey_pm_ops, ptr null, ptr null }, ptr @mpr121_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mpr_touchkey_driver_exit = internal global ptr @mpr_touchkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [60 x i8] c"mpr121_touchkey.file=drivers/input/keyboard/mpr121_touchkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"mpr121_touchkey.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [67 x i8] c"mpr121_touchkey.author=Zhang Jiejing <jiejing.zhang@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [71 x i8] c"mpr121_touchkey.description=Touch Key driver for Freescale MPR121 Chip\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mpr121\00", [25 x i8] zeroinitializer }, align 32
@mpr121_touchkey_dt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpr121-touchkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mpr121_touchkey_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mpr_suspend, ptr @mpr_resume, ptr @mpr_suspend, ptr @mpr_resume, ptr @mpr_suspend, ptr @mpr_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mpr121_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mpr121_touchkey\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too many keys defined (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpr_touchkey_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/keyboard/mpr121_touchkey.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr = internal global ptr @mpr_touchkey_probe._entry, section ".printk_index", align 4
@mpr_touchkey_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read linux,keycode property: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr.9 = internal global ptr @mpr_touchkey_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Freescale MPR121 Touchkey\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init register\0A\00", [39 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr.14 = internal global ptr @mpr_touchkey_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll-interval\00", [18 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr.18 = internal global ptr @mpr_touchkey_probe._entry.16, section ".printk_index", align 4
@mpr_touchkey_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to setup polling\0A\00", [39 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr.21 = internal global ptr @mpr_touchkey_probe._entry.19, section ".printk_index", align 4
@mpr_touchkey_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid IRQ number and polling not configured\0A\00", [49 x i8] zeroinitializer }, align 32
@mpr_touchkey_probe._entry_ptr.24 = internal global ptr @mpr_touchkey_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@mpr121_vdd_supply_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get vdd regulator: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mpr121_vdd_supply_init\00", [41 x i8] zeroinitializer }, align 32
@mpr121_vdd_supply_init._entry_ptr = internal global ptr @mpr121_vdd_supply_init._entry, section ".printk_index", align 4
@mpr121_vdd_supply_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable vdd regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mpr121_vdd_supply_init._entry_ptr.31 = internal global ptr @mpr121_vdd_supply_init._entry.29, section ".printk_index", align 4
@mpr121_vdd_supply_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to add disable regulator action: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mpr121_vdd_supply_init._entry_ptr.34 = internal global ptr @mpr121_vdd_supply_init._entry.32, section ".printk_index", align 4
@mpr121_phys_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpr121_touchkey\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpr121_phys_init\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set up with %x keys.\0A\00", [42 x i8] zeroinitializer }, align 32
@mpr121_phys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c write error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mpr121_phys_init._entry_ptr = internal global ptr @mpr121_phys_init._entry, section ".printk_index", align 4
@mpr_touchkey_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c read error [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mpr_touchkey_report\00", [44 x i8] zeroinitializer }, align 32
@mpr_touchkey_report._entry_ptr = internal global ptr @mpr_touchkey_report._entry, section ".printk_index", align 4
@mpr_touchkey_report._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mpr_touchkey_report._entry_ptr.42 = internal global ptr @mpr_touchkey_report._entry.41, section ".printk_index", align 4
@mpr_touchkey_report.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.40, ptr @.str.4, ptr @.str.43, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key %d %d %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"mpr_touchkey_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 386, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 388, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"mpr121_touchkey_dt_match_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 379, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"mpr121_touchkey_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 370, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"mpr121_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 372, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 261, i32 52 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 263, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 271, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 276, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 279, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 293, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 297, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 306, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 318, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 328, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 339, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 97, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 99, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 106, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 113, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 224, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 229, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 132, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 139, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [44 x i8] c"../drivers/input/keyboard/mpr121_touchkey.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 156, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mpr_touchkey_driver_exit, ptr @__initcall__kmod_mpr121_touchkey__290_396_mpr_touchkey_driver_init6, ptr @mpr121_phys_init._entry, ptr @mpr121_phys_init._entry_ptr, ptr @mpr121_vdd_supply_init._entry, ptr @mpr121_vdd_supply_init._entry.29, ptr @mpr121_vdd_supply_init._entry.32, ptr @mpr121_vdd_supply_init._entry_ptr, ptr @mpr121_vdd_supply_init._entry_ptr.31, ptr @mpr121_vdd_supply_init._entry_ptr.34, ptr @mpr_touchkey_driver_exit, ptr @mpr_touchkey_probe._entry, ptr @mpr_touchkey_probe._entry.12, ptr @mpr_touchkey_probe._entry.16, ptr @mpr_touchkey_probe._entry.19, ptr @mpr_touchkey_probe._entry.22, ptr @mpr_touchkey_probe._entry.7, ptr @mpr_touchkey_probe._entry_ptr, ptr @mpr_touchkey_probe._entry_ptr.14, ptr @mpr_touchkey_probe._entry_ptr.18, ptr @mpr_touchkey_probe._entry_ptr.21, ptr @mpr_touchkey_probe._entry_ptr.24, ptr @mpr_touchkey_probe._entry_ptr.9, ptr @mpr_touchkey_report._entry, ptr @mpr_touchkey_report._entry.41, ptr @mpr_touchkey_report._entry_ptr, ptr @mpr_touchkey_report._entry_ptr.42, ptr @mpr_touchkey_driver, ptr @.str, ptr @mpr121_touchkey_dt_match_table, ptr @mpr121_touchkey_pm_ops, ptr @mpr121_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_touchkey_dt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_touchkey_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_vdd_supply_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_vdd_supply_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_vdd_supply_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr121_phys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_touchkey_report._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpr_touchkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mpr_touchkey_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpr_touchkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mpr_touchkey_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpr_touchkey_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %poll_interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poll_interval) #5
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %poll_interval, align 4
  %call.i = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %1) #8
  br label %mpr121_vdd_supply_init.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @regulator_enable(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call3.i) #8
  %2 = inttoptr i32 %call3.i to ptr
  br label %mpr121_vdd_supply_init.exit

if.end9.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @mpr121_vdd_supply_disable, ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.mpr121_vdd_supply_init.exit_crit_edge, label %do.end15.i

if.end9.i.mpr121_vdd_supply_init.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpr121_vdd_supply_init.exit

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef %call.i) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call.i.i) #8
  %3 = inttoptr i32 %call.i.i to ptr
  br label %mpr121_vdd_supply_init.exit

mpr121_vdd_supply_init.exit:                      ; preds = %do.end15.i, %if.end9.i.mpr121_vdd_supply_init.exit_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i = phi ptr [ %call.i, %do.end.i ], [ %2, %do.end7.i ], [ %3, %do.end15.i ], [ %call.i, %if.end9.i.mpr121_vdd_supply_init.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %mpr121_vdd_supply_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %mpr121_vdd_supply_init.exit
  %call4 = tail call i32 @regulator_get_voltage(ptr noundef %retval.0.i) #5
  %call.i160 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i160, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %call.i160 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %call.i160, align 4
  %input_dev13 = getelementptr inbounds %struct.mpr121_touchkey, ptr %call.i160, i32 0, i32 1
  %6 = ptrtoint ptr %input_dev13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %input_dev13, align 4
  %call.i161 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0) #5
  %keycount = getelementptr inbounds %struct.mpr121_touchkey, ptr %call.i160, i32 0, i32 3
  %7 = ptrtoint ptr %keycount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i161, ptr %keycount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i161)
  %cmp = icmp ugt i32 %call.i161, 12
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i161) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %keycodes = getelementptr inbounds %struct.mpr121_touchkey, ptr %call.i160, i32 0, i32 4
  %call20 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %keycodes, i32 noundef %call.i161) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call20) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %8 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.10, ptr %call8, align 8
  %id27 = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 3
  %9 = ptrtoint ptr %id27 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %id27, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %parent, align 8
  %call.i162 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  br i1 %call.i162, label %if.then30, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 5
  %11 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %evbit, align 4
  %or.i = or i32 %12, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 4, i32 noundef 4) #5
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 40, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i160, ptr %driver_data.i.i, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 17
  %14 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 16
  %15 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %keycodesize, align 8
  %16 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keycount, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 15
  %18 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %keycodemax, align 4
  %19 = load i32, ptr %keycount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp37166.not = icmp eq i32 %19, 0
  br i1 %cmp37166.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mpr121_touchkey, ptr %call.i160, i32 0, i32 4, i32 %i.0167
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 1, i32 noundef %21) #5
  %inc = add nuw i32 %i.0167, 1
  %22 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keycount, align 4
  %cmp37 = icmp ult i32 %inc, %23
  br i1 %cmp37, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end32.for.end_crit_edge
  %call39 = tail call fastcc i32 @mpr121_phys_init(ptr noundef nonnull %call.i160, ptr noundef %client, i32 noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %call.i163 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %poll_interval, i32 noundef 1) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end45
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call51 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %25, ptr noundef null, ptr noundef nonnull @mpr_touchkey_interrupt, i32 noundef 8194, ptr noundef %29, ptr noundef nonnull %call.i160) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then48.if.end78_crit_edge, label %do.end56

if.then48.if.end78_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.else:                                          ; preds = %if.end45
  %30 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %do.end76, label %if.then59

if.then59:                                        ; preds = %if.else
  %32 = add i32 %31, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -191, i32 %32)
  %33 = icmp ult i32 %32, -191
  br i1 %33, label %if.then59.cleanup_crit_edge, label %if.end65

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.then59
  %call66 = call i32 @input_setup_polling(ptr noundef nonnull %call8, ptr noundef nonnull @mpr_touchkey_report) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %poll_interval, align 4
  call void @input_set_poll_interval(ptr noundef nonnull %call8, i32 noundef %35) #5
  call void @input_set_min_poll_interval(ptr noundef nonnull %call8, i32 noundef 10) #5
  call void @input_set_max_poll_interval(ptr noundef nonnull %call8, i32 noundef 200) #5
  br label %if.end78

do.end76:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end78:                                         ; preds = %if.end72, %if.then48.if.end78_crit_edge
  %call79 = call i32 @input_register_device(ptr noundef nonnull %call8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i164 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i164 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i160, ptr %driver_data.i.i164, align 4
  %call.i165 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.25) #5
  %call84 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext %call.i165) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end78.cleanup_crit_edge, %do.end76, %do.end71, %if.then59.cleanup_crit_edge, %do.end56, %do.end44, %do.end25, %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %do.end ], [ %call20, %do.end25 ], [ %call39, %do.end44 ], [ %call51, %do.end56 ], [ 0, %if.end82 ], [ %call66, %do.end71 ], [ -22, %do.end76 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -22, %if.then59.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poll_interval) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpr121_phys_init(ptr nocapture noundef readonly %mpr121, ptr noundef %client, i32 noundef %vdd_uv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.body13.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body13.preheader:                             ; preds = %for.cond
  %call15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 43, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.body13.preheader.do.end54_crit_edge, label %for.cond10

for.body13.preheader.do.end54_crit_edge:          ; preds = %for.body13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.095 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.095 to i8
  %0 = shl i8 %i.0.tr, 1
  %conv = add i8 %0, 65
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.do.end54_crit_edge, label %if.end

for.body.do.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

if.end:                                           ; preds = %for.body
  %conv4 = add i8 %0, 66
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv4, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.do.end54_crit_edge, label %for.cond

if.end.do.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10:                                       ; preds = %for.body13.preheader
  %call15.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 44, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp slt i32 %call15.1, 0
  br i1 %cmp16.1, label %for.cond10.do.end54_crit_edge, label %for.cond10.1

for.cond10.do.end54_crit_edge:                    ; preds = %for.cond10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.1:                                     ; preds = %for.cond10
  %call15.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 47, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.2 = icmp slt i32 %call15.2, 0
  br i1 %cmp16.2, label %for.cond10.1.do.end54_crit_edge, label %for.cond10.2

for.cond10.1.do.end54_crit_edge:                  ; preds = %for.cond10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.2:                                     ; preds = %for.cond10.1
  %call15.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3)
  %cmp16.3 = icmp slt i32 %call15.3, 0
  br i1 %cmp16.3, label %for.cond10.2.do.end54_crit_edge, label %for.cond10.3

for.cond10.2.do.end54_crit_edge:                  ; preds = %for.cond10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.3:                                     ; preds = %for.cond10.2
  %call15.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 49, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.4)
  %cmp16.4 = icmp slt i32 %call15.4, 0
  br i1 %cmp16.4, label %for.cond10.3.do.end54_crit_edge, label %for.cond10.4

for.cond10.3.do.end54_crit_edge:                  ; preds = %for.cond10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.4:                                     ; preds = %for.cond10.3
  %call15.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 50, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.5)
  %cmp16.5 = icmp slt i32 %call15.5, 0
  br i1 %cmp16.5, label %for.cond10.4.do.end54_crit_edge, label %for.cond10.5

for.cond10.4.do.end54_crit_edge:                  ; preds = %for.cond10.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.5:                                     ; preds = %for.cond10.4
  %call15.6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 93, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.6)
  %cmp16.6 = icmp slt i32 %call15.6, 0
  br i1 %cmp16.6, label %for.cond10.5.do.end54_crit_edge, label %for.cond10.6

for.cond10.5.do.end54_crit_edge:                  ; preds = %for.cond10.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.6:                                     ; preds = %for.cond10.5
  %call15.7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 92, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.7)
  %cmp16.7 = icmp slt i32 %call15.7, 0
  br i1 %cmp16.7, label %for.cond10.6.do.end54_crit_edge, label %for.cond10.7

for.cond10.6.do.end54_crit_edge:                  ; preds = %for.cond10.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.7:                                     ; preds = %for.cond10.6
  %call15.8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 123, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.8)
  %cmp16.8 = icmp slt i32 %call15.8, 0
  br i1 %cmp16.8, label %for.cond10.7.do.end54_crit_edge, label %for.cond10.8

for.cond10.7.do.end54_crit_edge:                  ; preds = %for.cond10.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

for.cond10.8:                                     ; preds = %for.cond10.7
  %div = sdiv i32 %vdd_uv, 1000
  %sub = shl nsw i32 %div, 8
  %mul23 = add nsw i32 %sub, -179200
  %div24 = sdiv i32 %mul23, %div
  %conv25 = trunc i32 %div24 to i8
  %1 = trunc i32 %div24 to i16
  %2 = and i16 %1, 255
  %div28.lhs.trunc = mul nuw nsw i16 %2, 65
  %div2892 = udiv i16 %div28.lhs.trunc, 100
  %conv29 = trunc i16 %div2892 to i8
  %div32.lhs.trunc = mul nuw nsw i16 %2, 90
  %div3293 = udiv i16 %div32.lhs.trunc, 100
  %conv33 = trunc i16 %div3293 to i8
  %call34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 125, i8 noundef zeroext %conv25) #5
  %call35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 126, i8 noundef zeroext %conv29) #5
  %or = or i32 %call35, %call34
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 127, i8 noundef zeroext %conv33) #5
  %or37 = or i32 %or, %call36
  %keycount = getelementptr inbounds %struct.mpr121_touchkey, ptr %mpr121, i32 0, i32 3
  %3 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %keycount, align 4
  %5 = trunc i32 %4 to i8
  %conv39 = or i8 %5, -128
  %call40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 94, i8 noundef zeroext %conv39) #5
  %or41 = or i32 %or37, %call40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or41)
  %cmp42.not = icmp eq i32 %or41, 0
  br i1 %cmp42.not, label %do.body, label %for.cond10.8.do.end54_crit_edge

for.cond10.8.do.end54_crit_edge:                  ; preds = %for.cond10.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

do.body:                                          ; preds = %for.cond10.8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpr121_phys_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpr121_phys_init, %if.then49)) #5
          to label %cleanup [label %if.then49], !srcloc !106

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keycount, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpr121_phys_init.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %7) #5
  br label %cleanup

do.end54:                                         ; preds = %for.cond10.8.do.end54_crit_edge, %for.cond10.7.do.end54_crit_edge, %for.cond10.6.do.end54_crit_edge, %for.cond10.5.do.end54_crit_edge, %for.cond10.4.do.end54_crit_edge, %for.cond10.3.do.end54_crit_edge, %for.cond10.2.do.end54_crit_edge, %for.cond10.1.do.end54_crit_edge, %for.cond10.do.end54_crit_edge, %if.end.do.end54_crit_edge, %for.body.do.end54_crit_edge, %for.body13.preheader.do.end54_crit_edge
  %ret.0 = phi i32 [ %or41, %for.cond10.8.do.end54_crit_edge ], [ %call15, %for.body13.preheader.do.end54_crit_edge ], [ %call15.1, %for.cond10.do.end54_crit_edge ], [ %call15.2, %for.cond10.1.do.end54_crit_edge ], [ %call15.3, %for.cond10.2.do.end54_crit_edge ], [ %call15.4, %for.cond10.3.do.end54_crit_edge ], [ %call15.5, %for.cond10.4.do.end54_crit_edge ], [ %call15.6, %for.cond10.5.do.end54_crit_edge ], [ %call15.7, %for.cond10.6.do.end54_crit_edge ], [ %call15.8, %for.cond10.7.do.end54_crit_edge ], [ %call5, %if.end.do.end54_crit_edge ], [ %call, %for.body.do.end54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.38, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.then49, %do.body
  %retval.0 = phi i32 [ %ret.0, %do.end54 ], [ 0, %if.then49 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpr_touchkey_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.mpr121_touchkey, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  tail call void @mpr_touchkey_report(ptr noundef %1)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpr_touchkey_report(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %bit_changed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.mpr121_touchkey, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_changed) #5
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.39, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %call2, 8
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #5
  %or = or i32 %call4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp5 = icmp slt i32 %or, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.39, i32 noundef %or) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and = and i32 %or, 4095
  %statusbits = getelementptr inbounds %struct.mpr121_touchkey, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %statusbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %statusbits, align 4
  %xor = xor i32 %7, %and
  %8 = ptrtoint ptr %bit_changed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor, ptr %bit_changed, align 4
  store i32 %and, ptr %statusbits, align 4
  %keycount = getelementptr inbounds %struct.mpr121_touchkey, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %keycount, align 4
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %bit_changed, i32 noundef %10, i32 noundef 0) #5
  %11 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keycount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %12)
  %cmp1565 = icmp ult i32 %call13, %12
  br i1 %cmp1565, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end27.for.body_crit_edge, %for.body.lr.ph
  %key_num.066 = phi i32 [ %call13, %for.body.lr.ph ], [ %call29, %do.end27.for.body_crit_edge ]
  %shl16 = shl nuw i32 1, %key_num.066
  %and17 = and i32 %shl16, %and
  %arrayidx = getelementptr %struct.mpr121_touchkey, ptr %1, i32 0, i32 4, i32 %key_num.066
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef %key_num.066) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.i = icmp ne i32 %and17, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %14, i32 noundef %lnot.ext.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpr_touchkey_report.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpr_touchkey_report, %if.then22)) #5
          to label %do.end27 [label %if.then22], !srcloc !106

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool24.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool24.not, ptr @.str.45, ptr @.str.44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpr_touchkey_report.__UNIQUE_ID_ddebug288, ptr noundef %dev23, ptr noundef nonnull @.str.43, i32 noundef %key_num.066, i32 noundef %14, ptr noundef nonnull %cond) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %for.body
  %15 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keycount, align 4
  %add = add nuw i32 %key_num.066, 1
  %call29 = call i32 @_find_next_bit_be(ptr noundef nonnull %bit_changed, i32 noundef %16, i32 noundef %add) #5
  %17 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keycount, align 4
  %cmp15 = icmp ult i32 %call29, %18
  br i1 %cmp15, label %do.end27.for.body_crit_edge, label %do.end27.for.end_crit_edge

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %do.end27.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_changed) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_min_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_max_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpr121_vdd_supply_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpr_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 94, i8 noundef zeroext 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpr_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %keycount = getelementptr inbounds %struct.mpr121_touchkey, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %keycount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keycount, align 4
  %conv = trunc i32 %8 to i8
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 94, i8 noundef zeroext %conv) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_mpr121_touchkey__290_396_mpr_touchkey_driver_init6, !1, !"__initcall__kmod_mpr121_touchkey__290_396_mpr_touchkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 396, i32 1}
!2 = !{ptr @__exitcall_mpr_touchkey_driver_exit, !1, !"__exitcall_mpr_touchkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 398, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author293, !7, !"__UNIQUE_ID_author293", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 399, i32 1}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 400, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 388, i32 11}
!12 = !{ptr @mpr_touchkey_driver, !13, !"mpr_touchkey_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 386, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 261, i32 52}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 263, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mpr_touchkey_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mpr_touchkey_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 271, i32 3}
!26 = !{ptr @mpr_touchkey_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mpr_touchkey_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 276, i32 20}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 279, i32 37}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 293, i32 3}
!34 = !{ptr @mpr_touchkey_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mpr_touchkey_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 297, i32 32}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 306, i32 4}
!40 = !{ptr @mpr_touchkey_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mpr_touchkey_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 318, i32 4}
!44 = !{ptr @mpr_touchkey_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mpr_touchkey_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 328, i32 3}
!48 = !{ptr @mpr_touchkey_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mpr_touchkey_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 339, i32 35}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 97, i32 39}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 99, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mpr121_vdd_supply_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mpr121_vdd_supply_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 106, i32 3}
!61 = !{ptr @mpr121_vdd_supply_init._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mpr121_vdd_supply_init._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 113, i32 3}
!65 = !{ptr @mpr121_vdd_supply_init._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mpr121_vdd_supply_init._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 224, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mpr121_phys_init.__UNIQUE_ID_ddebug289, !68, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 229, i32 2}
!74 = !{ptr @mpr121_phys_init._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mpr121_phys_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"init_reg_table", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 73, i32 42}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 132, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mpr_touchkey_report._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mpr_touchkey_report._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mpr_touchkey_report._entry.41, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 139, i32 3}
!85 = !{ptr @mpr_touchkey_report._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 156, i32 3}
!88 = !{ptr @mpr_touchkey_report.__UNIQUE_ID_ddebug288, !87, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!89 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mpr121_touchkey_dt_match_table, !92, !"mpr121_touchkey_dt_match_table", i1 false, i1 false}
!92 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 379, i32 34}
!93 = !{ptr @mpr121_touchkey_pm_ops, !94, !"mpr121_touchkey_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 370, i32 8}
!95 = !{ptr @mpr121_id, !96, !"mpr121_id", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/mpr121_touchkey.c", i32 372, i32 35}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148765192, i64 2148765197, i64 2148765210, i64 2148765254, i64 2148765288, i64 2148765309}
