; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-si544.c_pt.bc'
source_filename = "../drivers/clk/clk-si544.c"
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
%struct.clk_si544 = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_si544_muldiv = type { i32, i16, i16, i8, i32 }

@__initcall__kmod_clk_si544__288_526_si544_driver_init6 = internal global ptr @si544_driver_init, section ".initcall6.init", align 4
@si544_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si544_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_si544_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si544_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si544_driver_exit = internal global ptr @si544_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"clk_si544.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [35 x i8] c"clk_si544.description=Si544 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"clk_si544.file=drivers/clk/clk-si544\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"clk_si544.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"si544\00", [26 x i8] zeroinitializer }, align 32
@clk_si544_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si544a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si544b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si544c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@si544_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si544a\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"si544b\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"si544c\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@si544_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si544_prepare, ptr @si544_unprepare, ptr @si544_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si544_recalc_rate, ptr @si544_round_rate, ptr null, ptr null, ptr null, ptr @si544_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@si544_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si544_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @si544_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clk_si544:476:(&si544_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@si544_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 489, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si544_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-si544.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si544_probe._entry_ptr = internal global ptr @si544_probe._entry, section ".printk_index", align 4
@si544_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 495, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@si544_probe._entry_ptr.10 = internal global ptr @si544_probe._entry.8, section ".printk_index", align 4
@switch.table.si544_round_rate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1500000000, i32 800000000, i32 350000000], [20 x i8] zeroinitializer }, align 32
@switch.table.si544_set_rate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1500000000, i32 800000000, i32 350000000], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"si544_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 518, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 520, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"clk_si544_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 510, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"si544_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 502, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"si544_clk_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 426, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 472, i32 51 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"si544_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 446, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 476, i32 17 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 489, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [27 x i8] c"../drivers/clk/clk-si544.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 495, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"switch.table.si544_round_rate\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"switch.table.si544_set_rate\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_si544_driver_exit, ptr @__initcall__kmod_clk_si544__288_526_si544_driver_init6, ptr @si544_driver_exit, ptr @si544_probe._entry, ptr @si544_probe._entry.8, ptr @si544_probe._entry_ptr, ptr @si544_probe._entry_ptr.10, ptr @si544_driver, ptr @.str, ptr @clk_si544_of_match, ptr @si544_id, ptr @si544_clk_ops, ptr @.str.1, ptr @si544_probe._key, ptr @si544_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @switch.table.si544_round_rate, ptr @switch.table.si544_set_rate], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_si544_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si544_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si544_round_rate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si544_set_rate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si544_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si544_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @si544_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 255, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @si544_clk_ops, ptr %ops, align 4
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
  %i2c_client = getelementptr inbounds %struct.clk_si544, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c_client, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %speed_grade = getelementptr inbounds %struct.clk_si544, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %speed_grade to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed_grade, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @of_property_read_string(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %init) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %init, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %call11 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si544_regmap_config, ptr noundef nonnull @si544_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.clk_si544, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = call i32 @regmap_write(ptr noundef %call11, i32 noundef 255, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call24 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call31 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %do.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end28.cleanup_crit_edge, %do.end, %if.end17.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then14 ], [ %call24, %do.end ], [ %call31, %do.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 17, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si544_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 17, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !48
  %regmap = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 17, ptr noundef nonnull %val) #8
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
  %and = and i32 %4, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %settings = alloca %struct.clk_si544_muldiv, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %settings) #8
  %0 = call ptr @memset(ptr %settings, i32 255, i32 16)
  %call = call fastcc i32 @si544_get_muldiv(ptr noundef %hw, ptr noundef nonnull %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hs_div.i.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 2
  %1 = ptrtoint ptr %hs_div.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hs_div.i.i, align 2
  %conv.i.i = zext i16 %2 to i32
  %ls_div_bits.i.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 3
  %3 = ptrtoint ptr %ls_div_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ls_div_bits.i.i, align 4
  %conv1.i.i = zext i8 %4 to i32
  %mul.i.i = shl i32 %conv.i.i, %conv1.i.i
  %5 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %settings, align 4
  %conv2.i.i = zext i32 %6 to i64
  %mul3.i.i = mul nuw nsw i64 %conv2.i.i, 55050000
  %add.i.i = add nuw nsw i64 %mul3.i.i, 27525000
  %shr.i.i = lshr i64 %add.i.i, 32
  %fb_div_int.i.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 1
  %7 = ptrtoint ptr %fb_div_int.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fb_div_int.i.i, align 4
  %conv4.i.i = zext i16 %8 to i64
  %mul5.i.i = mul nuw nsw i64 %conv4.i.i, 55050000
  %add6.i.i = add nuw nsw i64 %shr.i.i, %mul5.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add6.i.i)
  %cmp176.i.i = icmp ult i64 %add6.i.i, 4294967296
  br i1 %cmp176.i.i, label %if.then180.i.i, label %if.else186.i.i, !prof !49

if.then180.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv181.i.i = trunc i64 %add6.i.i to i32
  %div184.i.i = udiv i32 %conv181.i.i, %mul.i.i
  br label %si544_calc_rate.exit

if.else186.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i.i, i64 %add6.i.i) #12, !srcloc !50
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t300.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %si544_calc_rate.exit

si544_calc_rate.exit:                             ; preds = %if.else186.i.i, %if.then180.i.i
  %vco.0.off0.i.i = phi i32 [ %div184.i.i, %if.then180.i.i ], [ %extract.t300.i.i, %if.else186.i.i ]
  %conv.i = zext i32 %vco.0.off0.i.i to i64
  %delta_m.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 4
  %10 = ptrtoint ptr %delta_m.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delta_m.i, align 4
  %mul.i = mul i32 %11, 19
  %conv1.i = sext i32 %mul.i to i64
  %mul2.i = mul nsw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp slt i32 %11, 0
  %delta.0.v.i = select i1 %cmp.i, i64 -81615120000, i64 81615120000
  %delta.0.i = add i64 %mul2.i, %delta.0.v.i
  %call5.i = tail call i64 @div64_s64(i64 noundef %delta.0.i, i64 noundef 163230240000) #8
  %12 = trunc i64 %call5.i to i32
  %conv8.i = add i32 %vco.0.off0.i.i, %12
  br label %cleanup

cleanup:                                          ; preds = %si544_calc_rate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8.i, %si544_calc_rate.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %settings) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si544_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %rate)
  %cmp.i = icmp ult i32 %rate, 200000
  br i1 %cmp.i, label %entry.is_valid_frequency.exit.thread_crit_edge, label %if.end.i

entry.is_valid_frequency.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_valid_frequency.exit.thread

if.end.i:                                         ; preds = %entry
  %speed_grade.i = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %speed_grade.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_grade.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %if.end.i.is_valid_frequency.exit_crit_edge

if.end.i.is_valid_frequency.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_valid_frequency.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.si544_round_rate, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %is_valid_frequency.exit

is_valid_frequency.exit:                          ; preds = %switch.lookup, %if.end.i.is_valid_frequency.exit_crit_edge
  %max_freq.0.i = phi i32 [ 0, %if.end.i.is_valid_frequency.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_freq.0.i, i32 %rate)
  %cmp3.i.not = icmp ult i32 %max_freq.0.i, %rate
  %spec.select = select i1 %cmp3.i.not, i32 -22, i32 %rate
  br label %is_valid_frequency.exit.thread

is_valid_frequency.exit.thread:                   ; preds = %is_valid_frequency.exit, %entry.is_valid_frequency.exit.thread_crit_edge
  %4 = phi i32 [ -22, %entry.is_valid_frequency.exit.thread_crit_edge ], [ %spec.select, %is_valid_frequency.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si544_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.i135 = alloca [3 x i8], align 1
  %reg.i = alloca [3 x i8], align 1
  %remainder.i.i = alloca i32, align 4
  %settings = alloca %struct.clk_si544_muldiv, align 4
  %old_oe_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %settings) #8
  %0 = call ptr @memset(ptr %settings, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_oe_state) #8
  %1 = ptrtoint ptr %old_oe_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %old_oe_state, align 4, !annotation !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %rate)
  %cmp.i = icmp ult i32 %rate, 200000
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %speed_grade.i = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %speed_grade.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_grade.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %if.end.i.is_valid_frequency.exit_crit_edge

if.end.i.is_valid_frequency.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_valid_frequency.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.si544_set_rate, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %is_valid_frequency.exit

is_valid_frequency.exit:                          ; preds = %switch.lookup, %if.end.i.is_valid_frequency.exit_crit_edge
  %max_freq.0.i = phi i32 [ 0, %if.end.i.is_valid_frequency.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_freq.0.i, i32 %rate)
  %cmp3.i.not = icmp ult i32 %max_freq.0.i, %rate
  br i1 %cmp3.i.not, label %is_valid_frequency.exit.cleanup_crit_edge, label %if.end

is_valid_frequency.exit.cleanup_crit_edge:        ; preds = %is_valid_frequency.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %is_valid_frequency.exit
  %call1 = call fastcc i32 @si544_get_muldiv(ptr noundef %hw, ptr noundef nonnull %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hs_div.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 2
  %6 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hs_div.i, align 2
  %conv.i = zext i16 %7 to i32
  %ls_div_bits.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 3
  %8 = ptrtoint ptr %ls_div_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ls_div_bits.i, align 4
  %conv1.i = zext i8 %9 to i32
  %mul.i = shl i32 %conv.i, %conv1.i
  %10 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %settings, align 4
  %conv2.i = zext i32 %11 to i64
  %mul3.i = mul nuw nsw i64 %conv2.i, 55050000
  %add.i = add nuw nsw i64 %mul3.i, 27525000
  %shr.i = lshr i64 %add.i, 32
  %fb_div_int.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 1
  %12 = ptrtoint ptr %fb_div_int.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fb_div_int.i, align 4
  %conv4.i = zext i16 %13 to i64
  %mul5.i = mul nuw nsw i64 %conv4.i, 55050000
  %add6.i = add nuw nsw i64 %shr.i, %mul5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add6.i)
  %cmp176.i = icmp ult i64 %add6.i, 4294967296
  br i1 %cmp176.i, label %if.then180.i, label %if.else186.i, !prof !49

if.then180.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %conv181.i = trunc i64 %add6.i to i32
  %div184.i = udiv i32 %conv181.i, %mul.i
  br label %si544_calc_center_rate.exit

if.else186.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %add6.i) #12, !srcloc !50
  %asmresult1.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t300.i = trunc i64 %asmresult1.i.i to i32
  br label %si544_calc_center_rate.exit

si544_calc_center_rate.exit:                      ; preds = %if.else186.i, %if.then180.i
  %vco.0.off0.i = phi i32 [ %div184.i, %if.then180.i ], [ %extract.t300.i, %if.else186.i ]
  %conv.i81 = zext i32 %vco.0.off0.i to i64
  %mul.i82 = mul nuw nsw i64 %conv.i81, 19
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i82) #12, !srcloc !51
  %16 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i82, i64 %15) #12, !srcloc !52
  %div161263.i = lshr i64 %16, 12
  %extract.t264.i = trunc i64 %div161263.i to i32
  %sub = sub i32 %rate, %vco.0.off0.i
  %17 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %extract.t264.i)
  %cmp8.not = icmp sgt i32 %17, %extract.t264.i
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %si544_calc_center_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i83 = sext i32 %sub to i64
  %mul.i84 = mul nsw i64 %conv.i83, 8161512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %18 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !48
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul.i84, i32 noundef %extract.t264.i, ptr noundef nonnull %remainder.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg.i) #8
  %19 = getelementptr inbounds [3 x i8], ptr %reg.i, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %reg.i, i32 0, i32 2
  %conv.i86 = trunc i64 %call.i.i to i8
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i86, ptr %reg.i, align 1
  %22 = lshr i64 %call.i.i, 8
  %conv1.i87 = trunc i64 %22 to i8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i87, ptr %19, align 1
  %24 = lshr i64 %call.i.i, 16
  %conv4.i88 = trunc i64 %24 to i8
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i88, ptr %20, align 1
  %regmap.i = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 231, ptr noundef nonnull %reg.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i) #8
  br label %cleanup

if.end12:                                         ; preds = %si544_calc_center_rate.exit
  %conv.i90 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 5278591, i32 %rate)
  %cmp.i91 = icmp ugt i32 %rate, 5278591
  br i1 %cmp.i91, label %if.then.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.end12
  %mul.i92 = mul nuw nsw i64 %conv.i90, 4092
  call void @__sanitizer_cov_trace_const_cmp8(i64 10799999999, i64 %mul.i92)
  %cmp7.i = icmp ugt i64 %mul.i92, 10799999999
  br i1 %cmp7.i, label %while.body.preheader.i.while.end.i_crit_edge, label %if.end.i93

while.body.preheader.i.while.end.i_crit_edge:     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ls_div_bits.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ls_div_bits.i, align 4
  br label %if.else199.i

if.end.i93:                                       ; preds = %while.body.preheader.i
  %mul.1.i = mul nuw nsw i64 %conv.i90, 8184
  call void @__sanitizer_cov_trace_const_cmp8(i64 10799999999, i64 %mul.1.i)
  %cmp7.1.i = icmp ugt i64 %mul.1.i, 10799999999
  br i1 %cmp7.1.i, label %if.end.i93.while.end.i_crit_edge, label %if.end.1.i

if.end.i93.while.end.i_crit_edge:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.1.i:                                       ; preds = %if.end.i93
  %mul.2.i = mul nuw nsw i64 %conv.i90, 16368
  call void @__sanitizer_cov_trace_const_cmp8(i64 10799999999, i64 %mul.2.i)
  %cmp7.2.i = icmp ugt i64 %mul.2.i, 10799999999
  br i1 %cmp7.2.i, label %if.end.1.i.while.end.i_crit_edge, label %if.end.2.i

if.end.1.i.while.end.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.3.i = mul nuw nsw i64 %conv.i90, 32736
  call void @__sanitizer_cov_trace_const_cmp8(i64 10799999999, i64 %mul.3.i)
  %cmp7.3.i = icmp ugt i64 %mul.3.i, 10799999999
  %spec.select = select i1 %cmp7.3.i, i8 4, i8 5
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.2.i, %if.end.1.i.while.end.i_crit_edge, %if.end.i93.while.end.i_crit_edge, %while.body.preheader.i.while.end.i_crit_edge
  %res.0.lcssa.i = phi i8 [ 1, %while.body.preheader.i.while.end.i_crit_edge ], [ 2, %if.end.i93.while.end.i_crit_edge ], [ 3, %if.end.1.i.while.end.i_crit_edge ], [ %spec.select, %if.end.2.i ]
  %29 = ptrtoint ptr %ls_div_bits.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %res.0.lcssa.i, ptr %ls_div_bits.i, align 4
  %conv11.i = zext i8 %res.0.lcssa.i to i32
  %shl12.i = shl nuw nsw i32 %rate, %conv11.i
  %.pre.i = zext i32 %shl12.i to i64
  br label %if.else199.i

if.else199.i:                                     ; preds = %while.end.i, %if.then.i
  %conv14.pre-phi.i = phi i64 [ %.pre.i, %while.end.i ], [ %conv.i90, %if.then.i ]
  %ls_freq.0.i = phi i32 [ %shl12.i, %while.end.i ], [ %rate, %if.then.i ]
  %sub.i = add nuw nsw i64 %conv14.pre-phi.i, 10799999999
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %ls_freq.0.i, i64 %sub.i) #12, !srcloc !50
  %asmresult1.i.i130 = extractvalue { i64, i64 } %30, 1
  %extract.t = trunc i64 %asmresult1.i.i130 to i16
  %extract.t148 = trunc i64 %asmresult1.i.i130 to i32
  %31 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %extract.t, ptr %hs_div.i, align 2
  %and208.i = and i32 %extract.t148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %if.else199.i.si544_calc_muldiv.exit_crit_edge, label %land.lhs.true210.i

if.else199.i.si544_calc_muldiv.exit_crit_edge:    ; preds = %if.else199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si544_calc_muldiv.exit

land.lhs.true210.i:                               ; preds = %if.else199.i
  %conv207.i = and i32 %extract.t148, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %conv207.i)
  %cmp213.i = icmp ugt i32 %conv207.i, 33
  br i1 %cmp213.i, label %land.lhs.true210.i.if.then218.i_crit_edge, label %lor.lhs.false.i

land.lhs.true210.i.if.then218.i_crit_edge:        ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true210.i
  %32 = ptrtoint ptr %ls_div_bits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ls_div_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool217.not.i = icmp eq i8 %33, 0
  br i1 %tobool217.not.i, label %lor.lhs.false.i.si544_calc_muldiv.exit_crit_edge, label %lor.lhs.false.i.if.then218.i_crit_edge

lor.lhs.false.i.if.then218.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then218.i

lor.lhs.false.i.si544_calc_muldiv.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si544_calc_muldiv.exit

if.then218.i:                                     ; preds = %lor.lhs.false.i.if.then218.i_crit_edge, %land.lhs.true210.i.if.then218.i_crit_edge
  %inc220.i = add i16 %extract.t, 1
  %34 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %inc220.i, ptr %hs_div.i, align 2
  br label %si544_calc_muldiv.exit

si544_calc_muldiv.exit:                           ; preds = %if.then218.i, %lor.lhs.false.i.si544_calc_muldiv.exit_crit_edge, %if.else199.i.si544_calc_muldiv.exit_crit_edge
  %35 = ptrtoint ptr %hs_div.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hs_div.i, align 2
  %conv224.i = zext i16 %36 to i64
  %mul225.i = mul nuw nsw i64 %conv14.pre-phi.i, %conv224.i
  %conv259.i = trunc i64 %mul225.i to i32
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7202965333606188538, i64 %mul225.i, i32 0) #12, !srcloc !53
  %asmresult.i7.i = extractvalue { i64, i32 } %37, 0
  %asmresult4.i8.i = extractvalue { i64, i32 } %37, 1
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7202965333606188538, i64 %mul225.i, i64 %asmresult.i7.i, i32 %asmresult4.i8.i) #12, !srcloc !54
  %asmresult10.i12.i = extractvalue { i64, i32 } %38, 0
  %div4211.i = lshr i64 %asmresult10.i12.i, 25
  %conv422.i = trunc i64 %div4211.i to i32
  %mul423.neg.i = mul i32 %conv422.i, -55050000
  %sub424.i = add i32 %mul423.neg.i, %conv259.i
  %conv447.i = trunc i64 %div4211.i to i16
  %39 = ptrtoint ptr %fb_div_int.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv447.i, ptr %fb_div_int.i, align 4
  %conv448.i = zext i32 %sub424.i to i64
  %shl449.i = shl nuw i64 %conv448.i, 32
  %add450.i = or i64 %shl449.i, 27525000
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7202965333606188538, i64 %add450.i, i32 0) #12, !srcloc !53
  %asmresult.i17.i = extractvalue { i64, i32 } %40, 0
  %asmresult4.i18.i = extractvalue { i64, i32 } %40, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7202965333606188538, i64 %add450.i, i64 %asmresult.i17.i, i32 %asmresult4.i18.i) #12, !srcloc !54
  %asmresult10.i22.i = extractvalue { i64, i32 } %41, 0
  %storemerge.i = lshr i64 %asmresult10.i22.i, 25
  %conv672.i = trunc i64 %storemerge.i to i32
  %42 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv672.i, ptr %settings, align 4
  %delta_m.i = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 4
  %43 = ptrtoint ptr %delta_m.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %delta_m.i, align 4
  %regmap = getelementptr inbounds %struct.clk_si544, ptr %hw, i32 0, i32 1
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %45, i32 noundef 17, ptr noundef nonnull %old_oe_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %si544_calc_muldiv.exit.cleanup_crit_edge

si544_calc_muldiv.exit.cleanup_crit_edge:         ; preds = %si544_calc_muldiv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %si544_calc_muldiv.exit
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i.i134 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 17, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %49, i32 noundef 69, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg.i135) #8
  %50 = getelementptr inbounds [3 x i8], ptr %reg.i135, i32 0, i32 1
  %51 = getelementptr inbounds [3 x i8], ptr %reg.i135, i32 0, i32 2
  %52 = ptrtoint ptr %reg.i135 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %reg.i135, align 1
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %50, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %51, align 1
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i140 = call i32 @regmap_bulk_write(ptr noundef %56, i32 noundef 231, ptr noundef nonnull %reg.i135, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i135) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp28 = icmp slt i32 %call.i140, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc i32 @si544_set_muldiv(ptr noundef %hw, ptr noundef nonnull %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_write(ptr noundef %58, i32 noundef 7, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %59 = ptrtoint ptr %old_oe_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %old_oe_state, align 4
  %and = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i.i142 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 17, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %si544_calc_muldiv.exit.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %is_valid_frequency.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ -22, %is_valid_frequency.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call17, %si544_calc_muldiv.exit.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ %call.i140, %if.end26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ], [ %call36, %if.then41 ], [ %call36, %if.end39.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_oe_state) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %settings) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si544_get_muldiv(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %settings) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %reg) #8
  %0 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 5
  %regmap = getelementptr inbounds %struct.clk_si544, ptr %data, i32 0, i32 1
  %5 = call ptr @memset(ptr %reg, i32 255, i32 6)
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 23, ptr noundef nonnull %reg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 7
  %ls_div_bits = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 3
  %12 = ptrtoint ptr %ls_div_bits to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ls_div_bits, align 4
  %13 = and i8 %9, 7
  %and4 = zext i8 %13 to i16
  %shl = shl nuw nsw i16 %and4, 8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg, align 1
  %conv6 = zext i8 %15 to i16
  %or = or i16 %shl, %conv6
  %hs_div = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 2
  %16 = ptrtoint ptr %hs_div to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or, ptr %hs_div, align 2
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 26, ptr noundef nonnull %reg, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv15 = zext i8 %20 to i16
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %4, align 1
  %23 = and i8 %22, 7
  %and18 = zext i8 %23 to i16
  %shl19 = shl nuw nsw i16 %and18, 8
  %or20 = or i16 %shl19, %conv15
  %fb_div_int = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 1
  %24 = ptrtoint ptr %fb_div_int to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or20, ptr %fb_div_int, align 4
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg, align 1
  %conv23 = zext i8 %26 to i32
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv25 = zext i8 %28 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %or27 = or i32 %shl26, %conv23
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv29 = zext i8 %30 to i32
  %shl30 = shl nuw nsw i32 %conv29, 16
  %or31 = or i32 %or27, %shl30
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv33 = zext i8 %32 to i32
  %shl34 = shl nuw i32 %conv33, 24
  %or35 = or i32 %or31, %shl34
  %33 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or35, ptr %settings, align 4
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call38 = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef 231, ptr noundef nonnull %reg, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg, align 1
  %conv43 = zext i8 %37 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  %conv46 = zext i8 %39 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or48 = or i32 %shl47, %shl44
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 1
  %conv50 = zext i8 %41 to i32
  %shl51 = shl nuw i32 %conv50, 24
  %or52 = or i32 %or48, %shl51
  %delta_m = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 4
  %shr54 = ashr exact i32 %or52, 8
  %42 = ptrtoint ptr %delta_m to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr54, ptr %delta_m, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ %call38, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si544_set_muldiv(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %settings) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %reg) #8
  %0 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 1
  %hs_div = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %reg, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %1, align 1
  %3 = ptrtoint ptr %hs_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hs_div, align 2
  %conv = trunc i16 %4 to i8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %reg, align 1
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  %ls_div_bits = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 3
  %8 = ptrtoint ptr %ls_div_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ls_div_bits, align 4
  %shl = shl i8 %9, 4
  %or = or i8 %shl, %7
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %0, align 1
  %regmap = getelementptr inbounds %struct.clk_si544, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef 23, ptr noundef nonnull %reg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 5
  %14 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 4
  %15 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 3
  %16 = getelementptr inbounds [6 x i8], ptr %reg, i32 0, i32 2
  %17 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %settings, align 4
  %conv7 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %reg, align 1
  %shr10 = lshr i32 %18, 8
  %conv11 = trunc i32 %shr10 to i8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv11, ptr %0, align 1
  %shr14 = lshr i32 %18, 16
  %conv15 = trunc i32 %shr14 to i8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %16, align 1
  %shr18 = lshr i32 %18, 24
  %conv19 = trunc i32 %shr18 to i8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %15, align 1
  %fb_div_int = getelementptr inbounds %struct.clk_si544_muldiv, ptr %settings, i32 0, i32 1
  %23 = ptrtoint ptr %fb_div_int to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fb_div_int, align 4
  %conv21 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21, ptr %14, align 1
  %26 = lshr i16 %24, 8
  %conv26 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26, ptr %13, align 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 26, ptr noundef nonnull %reg, i32 noundef 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si544_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 69
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_clk_si544__288_526_si544_driver_init6, !1, !"__initcall__kmod_clk_si544__288_526_si544_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-si544.c", i32 526, i32 1}
!2 = !{ptr @__exitcall_si544_driver_exit, !1, !"__exitcall_si544_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-si544.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-si544.c", i32 529, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-si544.c", i32 530, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-si544.c", i32 520, i32 11}
!12 = !{ptr @si544_driver, !13, !"si544_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-si544.c", i32 518, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-si544.c", i32 472, i32 51}
!16 = !{ptr @si544_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-si544.c", i32 476, i32 17}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/clk-si544.c", i32 489, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @si544_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @si544_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-si544.c", i32 495, i32 3}
!29 = !{ptr @si544_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @si544_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @si544_clk_ops, !32, !"si544_clk_ops", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-si544.c", i32 426, i32 29}
!33 = !{ptr @si544_regmap_config, !34, !"si544_regmap_config", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-si544.c", i32 446, i32 35}
!35 = !{ptr @clk_si544_of_match, !36, !"clk_si544_of_match", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-si544.c", i32 510, i32 34}
!37 = !{ptr @si544_id, !38, !"si544_id", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-si544.c", i32 502, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148952857, i64 2148953137, i64 2148953471, i64 2148953805}
!51 = !{i64 1467026, i64 1467053}
!52 = !{i64 1467536, i64 1467563, i64 1467597, i64 1467618}
!53 = !{i64 1467313, i64 1467340, i64 1467362, i64 1467390}
!54 = !{i64 1467721, i64 1467748, i64 1467781, i64 1467802, i64 1467829, i64 1467855}
