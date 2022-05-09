; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-si570.c_pt.bc'
source_filename = "../drivers/clk/clk-si570.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_si570 = type { %struct.clk_hw, ptr, i32, i64, i64, i32, i32, i64, i64, ptr }

@__initcall__kmod_clk_si570__288_525_si570_driver_init6 = internal global ptr @si570_driver_init, section ".initcall6.init", align 4
@si570_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si570_probe, ptr @si570_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_si570_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si570_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si570_driver_exit = internal global ptr @si570_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"clk_si570.author=Guenter Roeck <guenter.roeck@ericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [63 x i8] c"clk_si570.author=Soeren Brinkmann <soren.brinkmann@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [35 x i8] c"clk_si570.description=Si570 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"clk_si570.file=drivers/clk/clk-si570\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"clk_si570.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"si570\00", [26 x i8] zeroinitializer }, align 32
@clk_si570_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si570\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si571\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si598\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si599\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@si570_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si570\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"si571\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"si598\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"si599\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@si570_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si570_recalc_rate, ptr @si570_round_rate, ptr null, ptr null, ptr null, ptr @si570_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temperature-stability\00", [42 x i8] zeroinitializer }, align 32
@si570_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"'temperature-stability' property missing\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si570_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-si570.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr = internal global ptr @si570_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"factory-fout\00", [19 x i8] zeroinitializer }, align 32
@si570_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"'factory-fout' property missing\0A\00", [63 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr.11 = internal global ptr @si570_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silabs,skip-recall\00", [45 x i8] zeroinitializer }, align 32
@si570_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si570_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @si570_regmap_is_writeable, ptr null, ptr @si570_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 137, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clk_si570:452:(&si570_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@si570_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr.16 = internal global ptr @si570_probe._entry.14, section ".printk_index", align 4
@si570_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr.19 = internal global ptr @si570_probe._entry.17, section ".printk_index", align 4
@si570_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr.22 = internal global ptr @si570_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@si570_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"registered, current frequency %llu Hz\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si570_probe._entry_ptr.27 = internal global ptr @si570_probe._entry.24, section ".printk_index", align 4
@si570_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to recalc rate\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si570_recalc_rate\00", [46 x i8] zeroinitializer }, align 32
@si570_recalc_rate._entry_ptr = internal global ptr @si570_recalc_rate._entry, section ".printk_index", align 4
@si570_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to round rate\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si570_round_rate\00", [47 x i8] zeroinitializer }, align 32
@si570_round_rate._entry_ptr = internal global ptr @si570_round_rate._entry, section ".printk_index", align 4
@si570_calc_divs.si570_hs_div_values = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0B\09\07\06\05\04", [26 x i8] zeroinitializer }, align 32
@si570_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested frequency %lu Hz is out of range\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si570_set_rate\00", [17 x i8] zeroinitializer }, align 32
@si570_set_rate._entry_ptr = internal global ptr @si570_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 135, i64 137]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"si570_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 516, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 518, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"clk_si570_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 507, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"si570_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 498, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"si570_clk_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 364, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 423, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 425, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 438, i32 51 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 442, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 445, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 450, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"si570_regmap_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 392, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 452, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 454, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 465, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 471, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 476, i32 49 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 486, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 234, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 265, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"si570_hs_div_values\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 196, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [27 x i8] c"../drivers/clk/clk-si570.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 345, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_si570_driver_exit, ptr @__initcall__kmod_clk_si570__288_525_si570_driver_init6, ptr @si570_driver_exit, ptr @si570_probe._entry, ptr @si570_probe._entry.14, ptr @si570_probe._entry.17, ptr @si570_probe._entry.20, ptr @si570_probe._entry.24, ptr @si570_probe._entry.9, ptr @si570_probe._entry_ptr, ptr @si570_probe._entry_ptr.11, ptr @si570_probe._entry_ptr.16, ptr @si570_probe._entry_ptr.19, ptr @si570_probe._entry_ptr.22, ptr @si570_probe._entry_ptr.27, ptr @si570_recalc_rate._entry, ptr @si570_recalc_rate._entry_ptr, ptr @si570_round_rate._entry, ptr @si570_round_rate._entry_ptr, ptr @si570_set_rate._entry, ptr @si570_set_rate._entry_ptr, ptr @si570_driver, ptr @.str, ptr @clk_si570_of_match, ptr @si570_id, ptr @si570_clk_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @si570_probe._key, ptr @si570_regmap_config, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @si570_calc_divs.si570_hs_div_values, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_si570_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_calc_divs.si570_hs_div_values to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si570_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si570_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si570_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @si570_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %reg.i.i = alloca [6 x i8], align 1
  %init = alloca %struct.clk_init_data, align 4
  %initial_fout = alloca i32, align 4
  %factory_fout = alloca i32, align 4
  %stability = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = call ptr @memset(ptr %init, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initial_fout) #7
  %1 = ptrtoint ptr %initial_fout to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %initial_fout, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %factory_fout) #7
  %2 = ptrtoint ptr %factory_fout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %factory_fout, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stability) #7
  %3 = ptrtoint ptr %stability to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stability, align 4, !annotation !92
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @si570_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %num_parents, align 4
  %init1 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %init1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init1, align 8
  %i2c_client = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %i2c_client, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %stability, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  %13 = ptrtoint ptr %stability to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stability, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp9 = icmp eq i32 %14, 7
  br i1 %cmp9, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %div_offset = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %div_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %div_offset, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %.sink = phi i64 [ 1417500000, %if.then10 ], [ 1417500000, %if.end8.if.end13_crit_edge ], [ 525000000, %if.end.if.end13_crit_edge ]
  %max_freq12 = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %max_freq12 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %.sink, ptr %max_freq12, align 8
  %of_node15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %17 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node15, align 8
  %call16 = call i32 @of_property_read_string(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef nonnull %init) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end13.if.end23_crit_edge, label %if.then18

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node15, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %init, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end13.if.end23_crit_edge
  %24 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node15, align 8
  %call.i.i141 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull %factory_fout, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i141)
  %tobool27.not = icmp sgt i32 %call.i.i141, -1
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %26 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node15, align 8
  %call.i142 = call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %call37 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si570_regmap_config, ptr noundef nonnull @si570_probe._key, ptr noundef nonnull @.str.13) #7
  %regmap = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %tobool.i.not = icmp eq ptr %call.i142, null
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %33 = ptrtoint ptr %factory_fout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %factory_fout, align 4
  %conv = zext i32 %34 to i64
  br i1 %tobool.i.not, label %if.then.i, label %if.end47.if.end.i_crit_edge

if.end47.if.end.i_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call.i143 = call i32 @regmap_write(ptr noundef %call37, i32 noundef 135, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end47.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %reg.i.i) #7
  %35 = call ptr @memset(ptr %reg.i.i, i32 255, i32 6)
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %div_offset.i.i = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %div_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %div_offset.i.i, align 8
  %add.i.i = add i32 %39, 7
  %call.i.i144 = call i32 @regmap_bulk_read(ptr noundef %37, i32 noundef %add.i.i, ptr noundef nonnull %reg.i.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %tobool.not.i.i = icmp eq i32 %call.i.i144, 0
  br i1 %tobool.not.i.i, label %if.end4.i, label %si570_get_defaults.exit

if.end4.i:                                        ; preds = %if.end.i
  %rfreq.i = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 7
  %hs_div.i = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 6
  %n1.i = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 5
  %40 = getelementptr inbounds [6 x i8], ptr %reg.i.i, i32 0, i32 5
  %41 = getelementptr inbounds [6 x i8], ptr %reg.i.i, i32 0, i32 4
  %42 = getelementptr inbounds [6 x i8], ptr %reg.i.i, i32 0, i32 3
  %43 = getelementptr inbounds [6 x i8], ptr %reg.i.i, i32 0, i32 2
  %44 = getelementptr inbounds [6 x i8], ptr %reg.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.i.i, align 1
  %47 = lshr i8 %46, 5
  %narrow.i.i = add nuw nsw i8 %47, 4
  %add1.i.i = zext i8 %narrow.i.i to i32
  %48 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add1.i.i, ptr %hs_div.i, align 4
  %49 = shl i8 %46, 2
  %50 = and i8 %49, 124
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %44, align 1
  %53 = lshr i8 %52, 6
  %add945.i.i = or i8 %53, %50
  %narrow46.i.i = add nuw i8 %add945.i.i, 1
  %add10.i.i = zext i8 %narrow46.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add945.i.i)
  %cmp.not.i.i = icmp eq i8 %add945.i.i, 0
  %and13.i.i = and i32 %add10.i.i, 254
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 %add10.i.i, i32 %and13.i.i
  %54 = ptrtoint ptr %n1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i.i, ptr %n1.i, align 4
  %55 = and i8 %52, 63
  %56 = zext i8 %55 to i64
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %43, align 1
  %conv21.i.i = zext i8 %58 to i64
  %59 = shl nuw nsw i64 %56, 16
  %60 = shl nuw nsw i64 %conv21.i.i, 8
  %shl23.i.i = or i64 %60, %59
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %42, align 1
  %conv25.i.i = zext i8 %62 to i64
  %add26.i.i = or i64 %shl23.i.i, %conv25.i.i
  %63 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %41, align 1
  %conv29.i.i = zext i8 %64 to i64
  %65 = shl nuw nsw i64 %add26.i.i, 16
  %66 = shl nuw nsw i64 %conv29.i.i, 8
  %shl31.i.i = or i64 %65, %66
  %67 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %40, align 1
  %conv33.i.i = zext i8 %68 to i64
  %add34.i.i = or i64 %shl31.i.i, %conv33.i.i
  %69 = ptrtoint ptr %rfreq.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %add34.i.i, ptr %rfreq.i, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg.i.i) #7
  %conv.i = zext i32 %spec.select.i.i to i64
  %conv7.i = zext i8 %narrow.i.i to i64
  %mul.i = mul nuw nsw i64 %conv7.i, %conv
  %mul8.i = mul nuw nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 68719476735, i64 %mul8.i)
  %cmp.i145 = icmp ugt i64 %mul8.i, 68719476735
  br i1 %cmp.i145, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i64 %mul8.i, 24
  %shr.i = lshr i64 %add34.i.i, 4
  %call12.i = call i64 @div64_u64(i64 noundef %shl.i, i64 noundef %shr.i) #7
  br label %if.end52

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl13.i = shl nuw i64 %mul8.i, 28
  %call15.i = call i64 @div64_u64(i64 noundef %shl13.i, i64 noundef %add34.i.i) #7
  br label %if.end52

si570_get_defaults.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg.i.i) #7
  br label %cleanup

if.end52:                                         ; preds = %if.else.i, %if.then10.i
  %call15.sink.i = phi i64 [ %call12.i, %if.then10.i ], [ %call15.i, %if.else.i ]
  %70 = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call15.sink.i, ptr %70, align 8
  %frequency.i = getelementptr inbounds %struct.clk_si570, ptr %call.i, i32 0, i32 8
  %72 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv, ptr %frequency.i, align 8
  %call55 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %73 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node15, align 8
  %call66 = call i32 @of_clk_add_hw_provider(ptr noundef %74, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end73:                                         ; preds = %if.end62
  %75 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_node15, align 8
  %call.i.i146 = call i32 @of_property_read_variable_u32_array(ptr noundef %76, ptr noundef nonnull @.str.23, ptr noundef nonnull %initial_fout, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i146)
  %tobool77.not = icmp sgt i32 %call.i.i146, -1
  br i1 %tobool77.not, label %if.then78, label %if.end73.do.end89_crit_edge

if.end73.do.end89_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

if.then78:                                        ; preds = %if.end73
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %77 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk, align 4
  %79 = ptrtoint ptr %initial_fout to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %initial_fout, align 4
  %call80 = call i32 @clk_set_rate(ptr noundef %78, i32 noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.do.end89_crit_edge, label %if.then82

if.then78.do.end89_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node15, align 8
  call void @of_clk_del_provider(ptr noundef %82) #7
  br label %cleanup

do.end89:                                         ; preds = %if.then78.do.end89_crit_edge, %if.end73.do.end89_crit_edge
  %83 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %frequency.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, i64 noundef %84) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.then82, %do.end71, %do.end60, %si570_get_defaults.exit, %do.end43, %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i141, %do.end31 ], [ %31, %do.end43 ], [ %call55, %do.end60 ], [ %call66, %do.end71 ], [ 0, %do.end89 ], [ %call80, %if.then82 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i144, %si570_get_defaults.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stability) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %factory_fout) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initial_fout) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %reg.i) #7
  %regmap.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 1
  %0 = call ptr @memset(ptr %reg.i, i32 255, i32 6)
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %div_offset.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %div_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %div_offset.i, align 8
  %add.i = add i32 %4, 7
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %reg.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg.i) #7
  %i2c_client = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 9
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  %frequency = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 8
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %frequency, align 8
  %extract.t21 = trunc i64 %8 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [6 x i8], ptr %reg.i, i32 0, i32 5
  %10 = getelementptr inbounds [6 x i8], ptr %reg.i, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %reg.i, i32 0, i32 3
  %12 = getelementptr inbounds [6 x i8], ptr %reg.i, i32 0, i32 2
  %13 = getelementptr inbounds [6 x i8], ptr %reg.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg.i, align 1
  %16 = lshr i8 %15, 5
  %narrow.i = add nuw nsw i8 %16, 4
  %add1.i = zext i8 %narrow.i to i32
  %17 = shl i8 %15, 2
  %18 = and i8 %17, 124
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %13, align 1
  %21 = lshr i8 %20, 6
  %add945.i = or i8 %21, %18
  %narrow46.i = add nuw i8 %add945.i, 1
  %add10.i = zext i8 %narrow46.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add945.i)
  %cmp.not.i = icmp eq i8 %add945.i, 0
  %and13.i = and i32 %add10.i, 254
  %spec.select.i = select i1 %cmp.not.i, i32 %add10.i, i32 %and13.i
  %22 = and i8 %20, 63
  %23 = zext i8 %22 to i64
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %12, align 1
  %conv21.i = zext i8 %25 to i64
  %26 = shl nuw nsw i64 %23, 16
  %27 = shl nuw nsw i64 %conv21.i, 8
  %shl23.i = or i64 %27, %26
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %11, align 1
  %conv25.i = zext i8 %29 to i64
  %add26.i = or i64 %shl23.i, %conv25.i
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %10, align 1
  %conv29.i = zext i8 %31 to i64
  %32 = shl nuw nsw i64 %add26.i, 16
  %33 = shl nuw nsw i64 %conv29.i, 8
  %shl31.i = or i64 %32, %33
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %9, align 1
  %conv33.i = zext i8 %35 to i64
  %add34.i = or i64 %shl31.i, %conv33.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg.i) #7
  %mul = mul nuw nsw i32 %spec.select.i, %add1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add34.i)
  %cmp164.i.i = icmp ult i64 %add34.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !93

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %add34.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add34.i) #11, !srcloc !94
  %asmresult1.i.i.i = extractvalue { i64, i64 } %36, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %fxtal = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 4
  %37 = ptrtoint ptr %fxtal to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %fxtal, align 8
  %mul2 = mul i64 %38, %dividend.addr.0.i.i
  %shr = lshr i64 %mul2, 28
  %extract.t20 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit, %do.end
  %shr.sink.off0 = phi i32 [ %extract.t20, %div_u64.exit ], [ %extract.t21, %do.end ]
  ret i32 %shr.sink.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #2 align 64 {
entry:
  %rfreq = alloca i64, align 8
  %n1 = alloca i32, align 4
  %hs_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rfreq) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hs_div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %rate to i64
  %frequency = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %frequency, align 8
  %sub = sub i64 %conv, %1
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %mul = mul i64 %2, 10000
  %call = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 35, i64 %call)
  %cmp5 = icmp ult i64 %call, 35
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rfreq8 = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %rfreq8 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rfreq8, align 8
  %mul10 = mul i64 %4, %conv
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %frequency, align 8
  %call12 = tail call i64 @div64_u64(i64 noundef %6, i64 noundef 2) #7
  %add = add i64 %call12, %mul10
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %frequency, align 8
  %call14 = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %8) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call17 = call fastcc i32 @si570_calc_divs(i32 noundef %rate, ptr noundef %hw, ptr noundef nonnull %rfreq, ptr noundef nonnull %n1, ptr noundef nonnull %hs_div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 9
  %9 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %rate, %if.else.cleanup_crit_edge ], [ %rate, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hs_div) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rfreq) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si570_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.i.i36 = alloca [5 x i8], align 1
  %reg.i.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %rate)
  %cmp = icmp ult i32 %rate, 10000000
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %rate to i64
  %max_freq = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max_freq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp1 = icmp ult i64 %3, %conv
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %rate) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %frequency = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 8
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %frequency, align 8
  %sub = sub i64 %conv, %5
  %6 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %mul = mul i64 %6, 10000
  %call = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 35, i64 %call)
  %cmp9 = icmp ult i64 %call, 35
  %rfreq.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 7
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %rfreq.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rfreq.i, align 8
  %mul.i = mul i64 %8, %conv
  %9 = ptrtoint ptr %frequency to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %frequency, align 8
  %shr.i.i.i = lshr i64 %10, 1
  %add.i = add i64 %shr.i.i.i, %mul.i
  %call3.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %10) #7
  %11 = ptrtoint ptr %rfreq.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call3.i, ptr %rfreq.i, align 8
  %regmap.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 135, i32 noundef 32) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %reg.i.i) #7
  %14 = getelementptr inbounds [5 x i8], ptr %reg.i.i, i32 0, i32 1
  %15 = getelementptr inbounds [5 x i8], ptr %reg.i.i, i32 0, i32 2
  %16 = getelementptr inbounds [5 x i8], ptr %reg.i.i, i32 0, i32 3
  %17 = getelementptr inbounds [5 x i8], ptr %reg.i.i, i32 0, i32 4
  %n1.i.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 5
  %18 = ptrtoint ptr %n1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n1.i.i, align 8
  %sub.i.i = shl i32 %19, 6
  %shl.i.i = add i32 %sub.i.i, 192
  %conv.i.i = zext i32 %shl.i.i to i64
  %20 = ptrtoint ptr %rfreq.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rfreq.i, align 8
  %shr.i.i = lshr i64 %21, 32
  %and.i.i = and i64 %shr.i.i, 63
  %or.i.i = or i64 %and.i.i, %conv.i.i
  %conv1.i.i = trunc i64 %or.i.i to i8
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i.i, ptr %reg.i.i, align 1
  %shr3.i.i = lshr i64 %21, 24
  %conv5.i.i = trunc i64 %shr3.i.i to i8
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5.i.i, ptr %14, align 1
  %shr8.i.i = lshr i64 %21, 16
  %conv10.i.i = trunc i64 %shr8.i.i to i8
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv10.i.i, ptr %15, align 1
  %shr13.i.i = lshr i64 %21, 8
  %conv15.i.i = trunc i64 %shr13.i.i to i8
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv15.i.i, ptr %16, align 1
  %conv19.i.i = trunc i64 %21 to i8
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv19.i.i, ptr %17, align 1
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %div_offset.i.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 2
  %29 = ptrtoint ptr %div_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %div_offset.i.i, align 8
  %add.i.i = add i32 %30, 8
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef %add.i.i, ptr noundef nonnull %reg.i.i, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %reg.i.i) #7
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 135, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  br label %if.end16

if.else:                                          ; preds = %if.end
  %n1.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 5
  %hs_div.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 6
  %call.i = tail call fastcc i32 @si570_calc_divs(i32 noundef %rate, ptr noundef %hw, ptr noundef %rfreq.i, ptr noundef %n1.i, ptr noundef %hs_div.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i38 = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 1
  %33 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i38, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 137, i32 noundef 16) #7
  %35 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i38, align 4
  %div_offset.i = getelementptr inbounds %struct.clk_si570, ptr %hw, i32 0, i32 2
  %37 = ptrtoint ptr %div_offset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %div_offset.i, align 8
  %add.i39 = add i32 %38, 7
  %39 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hs_div.i, align 4
  %sub.i = shl i32 %40, 5
  %shl.i = add i32 %sub.i, -128
  %41 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n1.i, align 8
  %sub5.i = add i32 %42, 127
  %shr.i = lshr i32 %sub5.i, 2
  %and.i = and i32 %shr.i, 31
  %or.i = or i32 %and.i, %shl.i
  %call6.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %add.i39, i32 noundef %or.i) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %reg.i.i36) #7
  %43 = getelementptr inbounds [5 x i8], ptr %reg.i.i36, i32 0, i32 1
  %44 = getelementptr inbounds [5 x i8], ptr %reg.i.i36, i32 0, i32 2
  %45 = getelementptr inbounds [5 x i8], ptr %reg.i.i36, i32 0, i32 3
  %46 = getelementptr inbounds [5 x i8], ptr %reg.i.i36, i32 0, i32 4
  %47 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n1.i, align 8
  %sub.i.i40 = shl i32 %48, 6
  %shl.i.i41 = add i32 %sub.i.i40, 192
  %conv.i.i42 = zext i32 %shl.i.i41 to i64
  %49 = ptrtoint ptr %rfreq.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rfreq.i, align 8
  %shr.i.i43 = lshr i64 %50, 32
  %and.i.i44 = and i64 %shr.i.i43, 63
  %or.i.i45 = or i64 %and.i.i44, %conv.i.i42
  %conv1.i.i46 = trunc i64 %or.i.i45 to i8
  %51 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv1.i.i46, ptr %reg.i.i36, align 1
  %shr3.i.i47 = lshr i64 %50, 24
  %conv5.i.i48 = trunc i64 %shr3.i.i47 to i8
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv5.i.i48, ptr %43, align 1
  %shr8.i.i49 = lshr i64 %50, 16
  %conv10.i.i50 = trunc i64 %shr8.i.i49 to i8
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv10.i.i50, ptr %44, align 1
  %shr13.i.i51 = lshr i64 %50, 8
  %conv15.i.i52 = trunc i64 %shr13.i.i51 to i8
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv15.i.i52, ptr %45, align 1
  %conv19.i.i53 = trunc i64 %50 to i8
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv19.i.i53, ptr %46, align 1
  %56 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i38, align 4
  %58 = ptrtoint ptr %div_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %div_offset.i, align 8
  %add.i.i54 = add i32 %59, 8
  %call.i.i55 = call i32 @regmap_bulk_write(ptr noundef %57, i32 noundef %add.i.i54, ptr noundef nonnull %reg.i.i36, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %reg.i.i36) #7
  %60 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i38, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %61, i32 noundef 137, i32 noundef 0) #7
  %62 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i38, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 135, i32 noundef 64) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.then11
  %64 = ptrtoint ptr %frequency to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv, ptr %frequency, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end16 ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si570_calc_divs(i32 noundef %frequency, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %out_rfreq, ptr nocapture noundef writeonly %out_n1, ptr nocapture noundef writeonly %out_hs_div) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv29.i.i60 = zext i32 %frequency to i64
  %fxtal = getelementptr inbounds %struct.clk_si570, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %best_fdco.0168 = phi i64 [ -1, %entry ], [ %best_fdco.1.lcssa, %for.inc.for.body_crit_edge ]
  %i.0167 = phi i32 [ 0, %entry ], [ %inc23, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr @si570_calc_divs.si570_hs_div_values, i32 0, i32 %i.0167
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 4850000000) #11, !srcloc !94
  %asmresult1.i.i.i = extractvalue { i64, i64 } %2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %asmresult1.i.i.i)
  %cmp164.i.i = icmp ult i64 %asmresult1.i.i.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !93

if.then168.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %asmresult1.i.i.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %frequency
  br label %div_u64.exit157

if.else174.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %frequency, i64 %asmresult1.i.i.i) #11, !srcloc !94
  %asmresult1.i.i.i155 = extractvalue { i64, i64 } %3, 1
  %extract.t160 = trunc i64 %asmresult1.i.i.i155 to i32
  br label %div_u64.exit157

div_u64.exit157:                                  ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i156.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t160, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i156.off0)
  %tobool.not = icmp eq i32 %dividend.addr.0.i.i156.off0, 0
  %and = and i32 %dividend.addr.0.i.i156.off0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp ne i32 %and, 0
  %not.or.cond = or i1 %tobool.not, %tobool3.not
  %inc = zext i1 %not.or.cond to i32
  %n1.0 = add i32 %dividend.addr.0.i.i156.off0, %inc
  %conv7 = zext i8 %1 to i64
  %mul = mul nuw nsw i64 %conv7, %conv29.i.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %n1.0)
  %cmp4162 = icmp ult i32 %n1.0, 129
  br i1 %cmp4162, label %div_u64.exit157.while.body_crit_edge, label %div_u64.exit157.for.inc_crit_edge

div_u64.exit157.for.inc_crit_edge:                ; preds = %div_u64.exit157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

div_u64.exit157.while.body_crit_edge:             ; preds = %div_u64.exit157
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %div_u64.exit157.while.body_crit_edge
  %best_fdco.1165 = phi i64 [ %best_fdco.2, %if.end20.while.body_crit_edge ], [ %best_fdco.0168, %div_u64.exit157.while.body_crit_edge ]
  %n1.1163 = phi i32 [ %add, %if.end20.while.body_crit_edge ], [ %n1.0, %div_u64.exit157.while.body_crit_edge ]
  %conv8 = zext i32 %n1.1163 to i64
  %mul9 = mul nuw nsw i64 %mul, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5670000000, i64 %mul9)
  %cmp10 = icmp ugt i64 %mul9, 5670000000
  br i1 %cmp10, label %while.body.for.inc_crit_edge, label %if.end13

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 4849999999, i64 %mul9)
  %cmp14 = icmp ugt i64 %mul9, 4849999999
  call void @__sanitizer_cov_trace_cmp8(i64 %mul9, i64 %best_fdco.1165)
  %cmp16 = icmp ult i64 %mul9, %best_fdco.1165
  %or.cond49 = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond49, label %if.then18, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %out_n1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %n1.1163, ptr %out_n1, align 4
  %5 = ptrtoint ptr %out_hs_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %out_hs_div, align 4
  %shl = shl nuw nsw i64 %mul9, 28
  %6 = ptrtoint ptr %fxtal to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fxtal, align 8
  %call19 = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %7) #7
  %8 = ptrtoint ptr %out_rfreq to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call19, ptr %out_rfreq, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge
  %best_fdco.2 = phi i64 [ %mul9, %if.then18 ], [ %best_fdco.1165, %if.end13.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n1.1163)
  %cmp21 = icmp eq i32 %n1.1163, 1
  %cond = select i1 %cmp21, i32 1, i32 2
  %add = add nuw nsw i32 %cond, %n1.1163
  %cmp4 = icmp ult i32 %add, 129
  br i1 %cmp4, label %if.end20.while.body_crit_edge, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %while.body.for.inc_crit_edge, %div_u64.exit157.for.inc_crit_edge
  %best_fdco.1.lcssa = phi i64 [ %best_fdco.0168, %div_u64.exit157.for.inc_crit_edge ], [ %best_fdco.2, %if.end20.for.inc_crit_edge ], [ %best_fdco.1165, %while.body.for.inc_crit_edge ]
  %inc23 = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc23, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %best_fdco.1.lcssa)
  %cmp24 = icmp eq i64 %best_fdco.1.lcssa, -1
  %. = select i1 %cmp24, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si570_regmap_is_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 135, label %entry.return_crit_edge
    i32 137, label %entry.return_crit_edge2
    i32 7, label %entry.return_crit_edge3
    i32 8, label %entry.return_crit_edge4
    i32 9, label %entry.return_crit_edge5
    i32 10, label %entry.return_crit_edge6
    i32 11, label %entry.return_crit_edge7
    i32 12, label %entry.return_crit_edge8
    i32 13, label %entry.return_crit_edge9
    i32 14, label %entry.return_crit_edge10
    i32 15, label %entry.return_crit_edge11
    i32 16, label %entry.return_crit_edge12
    i32 17, label %entry.return_crit_edge13
    i32 18, label %entry.return_crit_edge14
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si570_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %reg)
  %cond = icmp eq i32 %reg, 135
  ret i1 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_clk_si570__288_525_si570_driver_init6, !1, !"__initcall__kmod_clk_si570__288_525_si570_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-si570.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_si570_driver_exit, !1, !"__exitcall_si570_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-si570.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-si570.c", i32 528, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-si570.c", i32 529, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/clk/clk-si570.c", i32 530, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-si570.c", i32 518, i32 11}
!14 = !{ptr @si570_driver, !15, !"si570_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-si570.c", i32 516, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-si570.c", i32 423, i32 5}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-si570.c", i32 425, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @si570_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @si570_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-si570.c", i32 438, i32 51}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-si570.c", i32 442, i32 50}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-si570.c", i32 445, i32 3}
!32 = !{ptr @si570_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @si570_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-si570.c", i32 450, i32 10}
!36 = !{ptr @si570_probe._key, !37, !"_key", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-si570.c", i32 452, i32 17}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-si570.c", i32 454, i32 3}
!41 = !{ptr @si570_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @si570_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-si570.c", i32 465, i32 3}
!45 = !{ptr @si570_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @si570_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-si570.c", i32 471, i32 3}
!49 = !{ptr @si570_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @si570_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-si570.c", i32 476, i32 49}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-si570.c", i32 486, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @si570_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @si570_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @si570_clk_ops, !59, !"si570_clk_ops", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-si570.c", i32 364, i32 29}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-si570.c", i32 234, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @si570_recalc_rate._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @si570_recalc_rate._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-si570.c", i32 265, i32 4}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @si570_round_rate._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @si570_round_rate._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @si570_calc_divs.si570_hs_div_values, !71, !"si570_hs_div_values", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-si570.c", i32 196, i32 23}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-si570.c", i32 345, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @si570_set_rate._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @si570_set_rate._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @si570_regmap_config, !78, !"si570_regmap_config", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-si570.c", i32 392, i32 35}
!79 = !{ptr @clk_si570_of_match, !80, !"clk_si570_of_match", i1 false, i1 false}
!80 = !{!"../drivers/clk/clk-si570.c", i32 507, i32 34}
!81 = !{ptr @si570_id, !82, !"si570_id", i1 false, i1 false}
!82 = !{!"../drivers/clk/clk-si570.c", i32 498, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148641931, i64 2148642211, i64 2148642545, i64 2148642879}
