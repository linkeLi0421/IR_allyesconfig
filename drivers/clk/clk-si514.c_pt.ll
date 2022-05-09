; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-si514.c_pt.bc'
source_filename = "../drivers/clk/clk-si514.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.clk_si514 = type { %struct.clk_hw, ptr, ptr }

@__initcall__kmod_clk_si514__288_401_si514_driver_init6 = internal global ptr @si514_driver_init, section ".initcall6.init", align 4
@si514_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si514_probe, ptr @si514_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_si514_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si514_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si514_driver_exit = internal global ptr @si514_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"clk_si514.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [35 x i8] c"clk_si514.description=Si514 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"clk_si514.file=drivers/clk/clk-si514\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"clk_si514.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"si514\00", [26 x i8] zeroinitializer }, align 32
@clk_si514_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si514\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@si514_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si514\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si514_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si514_prepare, ptr @si514_unprepare, ptr @si514_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si514_recalc_rate, ptr @si514_round_rate, ptr null, ptr null, ptr null, ptr @si514_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@si514_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si514_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @si514_regmap_is_writeable, ptr null, ptr @si514_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 132, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clk_si514:351:(&si514_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@si514_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 353, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si514_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-si514.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si514_probe._entry_ptr = internal global ptr @si514_probe._entry, section ".printk_index", align 4
@si514_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@si514_probe._entry_ptr.10 = internal global ptr @si514_probe._entry.8, section ".printk_index", align 4
@si514_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 367, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@si514_probe._entry_ptr.13 = internal global ptr @si514_probe._entry.11, section ".printk_index", align 4
@si514_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 223, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to retrieve settings\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si514_recalc_rate\00", [46 x i8] zeroinitializer }, align 32
@si514_recalc_rate._entry_ptr = internal global ptr @si514_recalc_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 128, i64 132]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"si514_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 392, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 394, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"clk_si514_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 386, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"si514_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 380, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"si514_clk_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 287, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 347, i32 51 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"si514_regmap_config\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 321, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 351, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 353, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 361, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 367, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [27 x i8] c"../drivers/clk/clk-si514.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 223, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_si514_driver_exit, ptr @__initcall__kmod_clk_si514__288_401_si514_driver_init6, ptr @si514_driver_exit, ptr @si514_probe._entry, ptr @si514_probe._entry.11, ptr @si514_probe._entry.8, ptr @si514_probe._entry_ptr, ptr @si514_probe._entry_ptr.10, ptr @si514_probe._entry_ptr.13, ptr @si514_recalc_rate._entry, ptr @si514_recalc_rate._entry_ptr, ptr @si514_driver, ptr @.str, ptr @clk_si514_of_match, ptr @si514_id, ptr @si514_clk_ops, ptr @.str.1, ptr @si514_probe._key, ptr @si514_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_si514_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si514_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si514_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si514_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @si514_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 255, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @si514_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %3 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %num_parents, align 4
  %init1 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %init1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %init, ptr %init1, align 4
  %i2c_client = getelementptr inbounds %struct.clk_si514, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c_client, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @of_property_read_string(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %init) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %init, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %call11 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si514_regmap_config, ptr noundef nonnull @si514_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.clk_si514, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call21 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call32 = call i32 @of_clk_add_hw_provider(ptr noundef %19, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %do.end37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end28.cleanup_crit_edge, %do.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %call21, %do.end26 ], [ %call32, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 132, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si514_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 132, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !57
  %regmap = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 132, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = lshr i32 %4, 2
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %reg.i) #8
  %regmap.i = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 1
  %0 = call ptr @memset(ptr %reg.i, i32 255, i32 7)
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %reg.i, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg.i) #8
  %i2c_client = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 6
  %6 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 2
  %10 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg.i, align 1
  %conv.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %10, align 1
  %conv2.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %conv4.i = zext i8 %16 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %8, align 1
  %19 = and i8 %18, 31
  %and.i = zext i8 %19 to i32
  %shl9.i = shl nuw nsw i32 %and.i, 24
  %or10.i = or i32 %shl9.i, %or6.i
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %7, align 1
  %or17.i = call i8 @llvm.fshl.i8(i8 %21, i8 %18, i8 3) #8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 7
  %26 = and i8 %23, 3
  %and26.i = zext i8 %26 to i32
  %shl27.i = shl nuw nsw i32 %and26.i, 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv29.i = zext i8 %28 to i32
  %or30.i = or i32 %shl27.i, %conv29.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg.i) #8
  %conv.i5 = zext i32 %or10.i to i64
  %conv1.i = zext i8 %or17.i to i64
  %shl.i7 = shl nuw nsw i64 %conv1.i, 29
  %or.i8 = or i64 %shl.i7, %conv.i5
  %conv3.i = zext i8 %25 to i32
  %mul.i = shl nuw nsw i32 %or30.i, %conv3.i
  %mul5.i = mul nuw nsw i64 %or.i8, 31980000
  %add.i = add nuw nsw i64 %mul5.i, 15990000
  %shr.i = lshr i64 %add.i, 29
  %conv6.i = trunc i64 %shr.i to i32
  %div.i = udiv i32 %conv6.i, %mul.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %rate, -250000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -249900001, i32 %0)
  %1 = icmp ult i32 %0, -249900001
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2035224, i32 %rate)
  %cmp2.i = icmp ugt i32 %rate, 2035224
  br i1 %cmp2.i, label %if.end.i.if.end3_crit_edge, label %while.cond.preheader.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

while.cond.preheader.i:                           ; preds = %if.end.i
  %mul315.i = mul nuw i32 %rate, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul315.i)
  %cmp5316.i = icmp ugt i32 %mul315.i, 2079999999
  br i1 %cmp5316.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %if.end7.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i:                                        ; preds = %while.cond.preheader.i
  %mul.i = mul i32 %rate, 4088
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i)
  %cmp5.i = icmp ugt i32 %mul.i, 2079999999
  br i1 %cmp5.i, label %if.end7.i.while.end.i_crit_edge, label %if.end7.i.1

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.1:                                      ; preds = %if.end7.i
  %mul.i.1 = mul i32 %rate, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.1)
  %cmp5.i.1 = icmp ugt i32 %mul.i.1, 2079999999
  br i1 %cmp5.i.1, label %if.end7.i.1.while.end.i_crit_edge, label %if.end7.i.2

if.end7.i.1.while.end.i_crit_edge:                ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.2:                                      ; preds = %if.end7.i.1
  %mul.i.2 = mul i32 %rate, 16352
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.2)
  %cmp5.i.2 = icmp ugt i32 %mul.i.2, 2079999999
  br i1 %cmp5.i.2, label %if.end7.i.2.while.end.i_crit_edge, label %if.end7.i.3

if.end7.i.2.while.end.i_crit_edge:                ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.3:                                      ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.3 = mul i32 %rate, 32704
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.3)
  %cmp5.i.3 = icmp ugt i32 %mul.i.3, 2079999999
  %spec.select = select i1 %cmp5.i.3, i8 5, i8 6
  br label %while.end.i

while.end.i:                                      ; preds = %if.end7.i.3, %if.end7.i.2.while.end.i_crit_edge, %if.end7.i.1.while.end.i_crit_edge, %if.end7.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %res.0.lcssa.i = phi i8 [ 1, %while.cond.preheader.i.while.end.i_crit_edge ], [ 2, %if.end7.i.while.end.i_crit_edge ], [ 3, %if.end7.i.1.while.end.i_crit_edge ], [ 4, %if.end7.i.2.while.end.i_crit_edge ], [ %spec.select, %if.end7.i.3 ]
  %conv.i = zext i8 %res.0.lcssa.i to i32
  %shl9.i = shl i32 %rate, %conv.i
  br label %if.end3

if.end3:                                          ; preds = %while.end.i, %if.end.i.if.end3_crit_edge
  %settings.sroa.8.0 = phi i8 [ %res.0.lcssa.i, %while.end.i ], [ 0, %if.end.i.if.end3_crit_edge ]
  %ls_freq.0.i = phi i32 [ %shl9.i, %while.end.i ], [ %rate, %if.end.i.if.end3_crit_edge ]
  %sub.i = add i32 %ls_freq.0.i, 1039999999
  %div.i = udiv i32 %sub.i, %ls_freq.0.i
  %conv12.i = shl i32 %div.i, 1
  %conv14.i = and i32 %conv12.i, 65534
  %mul15.i = mul i32 %ls_freq.0.i, %conv14.i
  %conv16.i = zext i32 %mul15.i to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 29
  %add18.i = or i64 %shl17.i, 15990000
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8769289107438598873, i64 %add18.i, i32 0) #12, !srcloc !58
  %asmresult.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8769289107438598873, i64 %add18.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !59
  %asmresult10.i.i = extractvalue { i64, i32 } %3, 0
  %div188313.i = lshr i64 %asmresult10.i.i, 24
  %or.i = and i64 %div188313.i, 137438953471
  %conv3.i = zext i8 %settings.sroa.8.0 to i32
  %mul.i13 = shl i32 %conv14.i, %conv3.i
  %mul5.i = mul nuw nsw i64 %or.i, 31980000
  %add.i = add nuw nsw i64 %mul5.i, 15990000
  %shr.i = lshr i64 %add.i, 29
  %conv6.i = trunc i64 %shr.i to i32
  %div.i14 = udiv i32 %conv6.i, %mul.i13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i14, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si514_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.i = alloca [7 x i8], align 1
  %old_oe_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_oe_state) #8
  %0 = ptrtoint ptr %old_oe_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old_oe_state, align 4, !annotation !57
  %1 = add i32 %rate, -250000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -249900001, i32 %1)
  %2 = icmp ult i32 %1, -249900001
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2035224, i32 %rate)
  %cmp2.i = icmp ugt i32 %rate, 2035224
  br i1 %cmp2.i, label %if.end.i.if.end_crit_edge, label %while.cond.preheader.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader.i:                           ; preds = %if.end.i
  %mul315.i = mul nuw i32 %rate, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul315.i)
  %cmp5316.i = icmp ugt i32 %mul315.i, 2079999999
  br i1 %cmp5316.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %if.end7.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i:                                        ; preds = %while.cond.preheader.i
  %mul.i = mul i32 %rate, 4088
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i)
  %cmp5.i = icmp ugt i32 %mul.i, 2079999999
  br i1 %cmp5.i, label %if.end7.i.while.end.i_crit_edge, label %if.end7.i.1

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.1:                                      ; preds = %if.end7.i
  %mul.i.1 = mul i32 %rate, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.1)
  %cmp5.i.1 = icmp ugt i32 %mul.i.1, 2079999999
  br i1 %cmp5.i.1, label %if.end7.i.1.while.end.i_crit_edge, label %if.end7.i.2

if.end7.i.1.while.end.i_crit_edge:                ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.2:                                      ; preds = %if.end7.i.1
  %mul.i.2 = mul i32 %rate, 16352
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.2)
  %cmp5.i.2 = icmp ugt i32 %mul.i.2, 2079999999
  br i1 %cmp5.i.2, label %if.end7.i.2.while.end.i_crit_edge, label %if.end7.i.3

if.end7.i.2.while.end.i_crit_edge:                ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end7.i.3:                                      ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.3 = mul i32 %rate, 32704
  call void @__sanitizer_cov_trace_const_cmp4(i32 2079999999, i32 %mul.i.3)
  %cmp5.i.3 = icmp ugt i32 %mul.i.3, 2079999999
  %spec.select63 = select i1 %cmp5.i.3, i8 5, i8 6
  br label %while.end.i

while.end.i:                                      ; preds = %if.end7.i.3, %if.end7.i.2.while.end.i_crit_edge, %if.end7.i.1.while.end.i_crit_edge, %if.end7.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %res.0.lcssa.i = phi i8 [ 1, %while.cond.preheader.i.while.end.i_crit_edge ], [ 2, %if.end7.i.while.end.i_crit_edge ], [ 3, %if.end7.i.1.while.end.i_crit_edge ], [ 4, %if.end7.i.2.while.end.i_crit_edge ], [ %spec.select63, %if.end7.i.3 ]
  %conv.i = zext i8 %res.0.lcssa.i to i32
  %shl9.i = shl i32 %rate, %conv.i
  br label %if.end

if.end:                                           ; preds = %while.end.i, %if.end.i.if.end_crit_edge
  %settings.sroa.13.0 = phi i8 [ %res.0.lcssa.i, %while.end.i ], [ 0, %if.end.i.if.end_crit_edge ]
  %ls_freq.0.i = phi i32 [ %shl9.i, %while.end.i ], [ %rate, %if.end.i.if.end_crit_edge ]
  %sub.i = add i32 %ls_freq.0.i, 1039999999
  %div.i = udiv i32 %sub.i, %ls_freq.0.i
  %div.tr.i = trunc i32 %div.i to i16
  %conv12.i = shl i16 %div.tr.i, 1
  %conv14.i = zext i16 %conv12.i to i32
  %mul15.i = mul i32 %ls_freq.0.i, %conv14.i
  %conv16.i = zext i32 %mul15.i to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 29
  %add18.i = or i64 %shl17.i, 15990000
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8769289107438598873, i64 %add18.i, i32 0) #12, !srcloc !58
  %asmresult.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8769289107438598873, i64 %add18.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !59
  %asmresult10.i.i = extractvalue { i64, i32 } %4, 0
  %div188313.i = lshr i64 %asmresult10.i.i, 24
  %conv210.i = trunc i64 %div188313.i to i32
  %and211.i = and i32 %conv210.i, 536870911
  %shr212.i = lshr i64 %asmresult10.i.i, 53
  %conv214.i = trunc i64 %shr212.i to i8
  %regmap = getelementptr inbounds %struct.clk_si514, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 132, ptr noundef nonnull %old_oe_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 132, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %reg.i) #8
  %9 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 1
  %10 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 3
  %12 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 4
  %13 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 5
  %14 = getelementptr inbounds [7 x i8], ptr %reg.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %conv214.i)
  %cmp.i = icmp ult i8 %conv214.i, 65
  br i1 %cmp.i, label %if.end4.if.end55.i_crit_edge, label %lor.lhs.false.i

if.end4.if.end55.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

lor.lhs.false.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %conv214.i)
  %cmp4.i34 = icmp eq i8 %conv214.i, 65
  br i1 %cmp4.i34, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 139575832, i32 %and211.i)
  %cmp6.i = icmp ult i32 %and211.i, 139575832
  %spec.select.i = select i1 %cmp6.i, i32 34, i32 35
  br label %if.end55.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %conv214.i)
  %cmp10.i = icmp ult i8 %conv214.i, 67
  br i1 %cmp10.i, label %if.else.i.if.end55.i_crit_edge, label %lor.lhs.false12.i

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

lor.lhs.false12.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %conv214.i)
  %cmp15.i = icmp eq i8 %conv214.i, 67
  br i1 %cmp15.i, label %land.lhs.true17.i, label %if.else22.i

land.lhs.true17.i:                                ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 461581995, i32 %and211.i)
  %cmp19.i = icmp ult i32 %and211.i, 461581995
  %spec.select130.i = select i1 %cmp19.i, i32 35, i32 51
  br label %if.end55.i

if.else22.i:                                      ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %conv214.i)
  %cmp25.i = icmp ult i8 %conv214.i, 72
  br i1 %cmp25.i, label %if.else22.i.if.end55.i_crit_edge, label %lor.lhs.false27.i

if.else22.i.if.end55.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

lor.lhs.false27.i:                                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %conv214.i)
  %cmp30.i = icmp eq i8 %conv214.i, 72
  br i1 %cmp30.i, label %land.lhs.true32.i, label %if.else37.i

land.lhs.true32.i:                                ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 503383579, i32 %and211.i)
  %cmp34.i = icmp ult i32 %and211.i, 503383579
  %spec.select131.i = select i1 %cmp34.i, i32 51, i32 52
  br label %if.end55.i

if.else37.i:                                      ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 75, i8 %conv214.i)
  %cmp40.i = icmp ult i8 %conv214.i, 75
  br i1 %cmp40.i, label %if.else37.i.if.end55.i_crit_edge, label %lor.lhs.false42.i

if.else37.i.if.end55.i_crit_edge:                 ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

lor.lhs.false42.i:                                ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 75, i8 %conv214.i)
  %cmp45.i = icmp eq i8 %conv214.i, 75
  call void @__sanitizer_cov_trace_const_cmp4(i32 452724475, i32 %and211.i)
  %cmp49.i = icmp ult i32 %and211.i, 452724475
  %or.cond = select i1 %cmp45.i, i1 %cmp49.i, i1 false
  %spec.select = select i1 %or.cond, i8 75, i8 %conv214.i
  %spec.select60 = select i1 %or.cond, i32 52, i32 68
  br label %if.end55.i

if.end55.i:                                       ; preds = %lor.lhs.false42.i, %if.else37.i.if.end55.i_crit_edge, %land.lhs.true32.i, %if.else22.i.if.end55.i_crit_edge, %land.lhs.true17.i, %if.else.i.if.end55.i_crit_edge, %land.lhs.true.i, %if.end4.if.end55.i_crit_edge
  %settings.sroa.9.056 = phi i8 [ %conv214.i, %if.end4.if.end55.i_crit_edge ], [ 66, %if.else.i.if.end55.i_crit_edge ], [ %conv214.i, %if.else22.i.if.end55.i_crit_edge ], [ %conv214.i, %if.else37.i.if.end55.i_crit_edge ], [ 65, %land.lhs.true.i ], [ 67, %land.lhs.true17.i ], [ 72, %land.lhs.true32.i ], [ %spec.select, %lor.lhs.false42.i ]
  %lp.0.i = phi i32 [ 34, %if.end4.if.end55.i_crit_edge ], [ 35, %if.else.i.if.end55.i_crit_edge ], [ 51, %if.else22.i.if.end55.i_crit_edge ], [ 52, %if.else37.i.if.end55.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %spec.select130.i, %land.lhs.true17.i ], [ %spec.select131.i, %land.lhs.true32.i ], [ %spec.select60, %lor.lhs.false42.i ]
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 0, i32 noundef %lp.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp57.i = icmp slt i32 %call.i, 0
  br i1 %cmp57.i, label %if.end55.i.si514_set_muldiv.exit.thread_crit_edge, label %if.end60.i

if.end55.i.si514_set_muldiv.exit.thread_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si514_set_muldiv.exit.thread

if.end60.i:                                       ; preds = %if.end55.i
  %conv62.i = trunc i64 %div188313.i to i8
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv62.i, ptr %reg.i, align 1
  %shr.i61 = lshr i64 %asmresult10.i.i, 32
  %conv64.i = trunc i64 %shr.i61 to i8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv64.i, ptr %9, align 1
  %shr67.i62 = lshr i64 %asmresult10.i.i, 40
  %conv68.i = trunc i64 %shr67.i62 to i8
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv68.i, ptr %10, align 1
  %shr71.i = lshr i32 %and211.i, 24
  %conv73.i = zext i8 %settings.sroa.9.056 to i32
  %shl.i36 = shl nuw nsw i32 %conv73.i, 5
  %or.i = or i32 %shl.i36, %shr71.i
  %conv74.i = trunc i32 %or.i to i8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv74.i, ptr %11, align 1
  %21 = lshr i8 %settings.sroa.9.056, 3
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %12, align 1
  %conv81.i = trunc i16 %conv12.i to i8
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv81.i, ptr %13, align 1
  %24 = lshr i16 %conv12.i, 8
  %25 = trunc i16 %24 to i8
  %shl87.i = shl nsw i8 %settings.sroa.13.0, 4
  %or88.i = or i8 %shl87.i, %25
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or88.i, ptr %14, align 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call92.i = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 10, ptr noundef %13, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %if.end60.i.si514_set_muldiv.exit.thread_crit_edge, label %si514_set_muldiv.exit

if.end60.i.si514_set_muldiv.exit.thread_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si514_set_muldiv.exit.thread

si514_set_muldiv.exit.thread:                     ; preds = %if.end60.i.si514_set_muldiv.exit.thread_crit_edge, %if.end55.i.si514_set_muldiv.exit.thread_crit_edge
  %retval.0.i39.ph = phi i32 [ %call92.i, %if.end60.i.si514_set_muldiv.exit.thread_crit_edge ], [ %call.i, %if.end55.i.si514_set_muldiv.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg.i) #8
  br label %cleanup

si514_set_muldiv.exit:                            ; preds = %if.end60.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call99.i = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 5, ptr noundef nonnull %reg.i, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp = icmp slt i32 %call99.i, 0
  br i1 %cmp, label %si514_set_muldiv.exit.cleanup_crit_edge, label %if.end8

si514_set_muldiv.exit.cleanup_crit_edge:          ; preds = %si514_set_muldiv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %si514_set_muldiv.exit
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %32, i32 noundef 132, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %33 = ptrtoint ptr %old_oe_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old_oe_state, align 4
  %and = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i.i41 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 132, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %si514_set_muldiv.exit.cleanup_crit_edge, %si514_set_muldiv.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call99.i, %si514_set_muldiv.exit.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call10, %if.then15 ], [ %call10, %if.end13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i39.ph, %si514_set_muldiv.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_oe_state) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si514_regmap_is_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 14, label %entry.return_crit_edge3
    i32 128, label %entry.return_crit_edge4
    i32 132, label %entry.return_crit_edge5
    i32 5, label %entry.return_crit_edge6
    i32 6, label %entry.return_crit_edge7
    i32 7, label %entry.return_crit_edge8
    i32 8, label %entry.return_crit_edge9
    i32 9, label %entry.return_crit_edge10
    i32 10, label %entry.return_crit_edge11
    i32 11, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si514_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -128
  %switch.and = and i32 %0, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_clk_si514__288_401_si514_driver_init6, !1, !"__initcall__kmod_clk_si514__288_401_si514_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-si514.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_si514_driver_exit, !1, !"__exitcall_si514_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-si514.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-si514.c", i32 404, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-si514.c", i32 405, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-si514.c", i32 394, i32 11}
!12 = !{ptr @si514_driver, !13, !"si514_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-si514.c", i32 392, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-si514.c", i32 347, i32 51}
!16 = !{ptr @si514_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-si514.c", i32 351, i32 17}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/clk-si514.c", i32 353, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @si514_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @si514_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-si514.c", i32 361, i32 3}
!29 = !{ptr @si514_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @si514_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-si514.c", i32 367, i32 3}
!33 = !{ptr @si514_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @si514_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @si514_clk_ops, !36, !"si514_clk_ops", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-si514.c", i32 287, i32 29}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-si514.c", i32 223, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @si514_recalc_rate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @si514_recalc_rate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @si514_regmap_config, !43, !"si514_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-si514.c", i32 321, i32 35}
!44 = !{ptr @clk_si514_of_match, !45, !"clk_si514_of_match", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-si514.c", i32 386, i32 34}
!46 = !{ptr @si514_id, !47, !"si514_id", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-si514.c", i32 380, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i64 1464263, i64 1464290, i64 1464312, i64 1464340}
!59 = !{i64 1464671, i64 1464698, i64 1464731, i64 1464752, i64 1464779, i64 1464805}
