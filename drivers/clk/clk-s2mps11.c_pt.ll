; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-s2mps11.c_pt.bc'
source_filename = "../drivers/clk/clk-s2mps11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s2mps11_clk = type { ptr, ptr, %struct.clk_hw, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@s2mps11_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps11-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps13-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps14-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5m8767-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@__initcall__kmod_clk_s2mps11__183_271_s2mps11_clk_driver_init6 = internal global ptr @s2mps11_clk_driver_init, section ".initcall6.init", align 4
@s2mps11_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s2mps11_clk_probe, ptr @s2mps11_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2mps11_clk_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s2mps11_clk_driver_exit = internal global ptr @s2mps11_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [45 x i8] c"clk_s2mps11.description=S2MPS11 Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [64 x i8] c"clk_s2mps11.author=Yadwinder Singh Brar <yadi.brar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [41 x i8] c"clk_s2mps11.file=drivers/clk/clk-s2mps11\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [24 x i8] c"clk_s2mps11.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s2mps11-clk\00", [20 x i8] zeroinitializer }, align 32
@s2mps11_clk_id = internal constant { [5 x %struct.platform_device_id], [40 x i8] } { [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s2mps11-clk\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"s2mps13-clk\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-clk\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s5m8767-clk\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@s2mps11_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid device type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s2mps11_clk_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-s2mps11.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s2mps11_clk_probe._entry_ptr = internal global ptr @s2mps11_clk_probe._entry, section ".printk_index", align 4
@s2mps11_clks_init = internal global { [3 x %struct.clk_init_data], [44 x i8] } { [3 x %struct.clk_init_data] [%struct.clk_init_data { ptr @.str.13, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr @.str.14, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr @.str.15, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@s2mps11_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to register : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@s2mps11_clk_probe._entry_ptr.8 = internal global ptr @s2mps11_clk_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@s2mps11_clk_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not find clock sub-node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s2mps11_clk_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@s2mps11_clk_parse_dt._entry_ptr = internal global ptr @s2mps11_clk_parse_dt._entry, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s2mps11_ap\00", [21 x i8] zeroinitializer }, align 32
@s2mps11_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @s2mps11_clk_prepare, ptr @s2mps11_clk_unprepare, ptr @s2mps11_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s2mps11_cp\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s2mps11_bt\00", [21 x i8] zeroinitializer }, align 32
@switch.table.s2mps11_clk_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10, i32 11, i32 11, i32 12, i32 12], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"s2mps11_dt_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 243, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"s2mps11_clk_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 263, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 265, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"s2mps11_clk_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 224, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 154, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"s2mps11_clks_init\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 82, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 174, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 107, i32 53 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 109, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 114, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 84, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"s2mps11_clk_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 74, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 88, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [29 x i8] c"../drivers/clk/clk-s2mps11.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 92, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"switch.table.s2mps11_clk_probe\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_s2mps11_clk_driver_exit, ptr @__initcall__kmod_clk_s2mps11__183_271_s2mps11_clk_driver_init6, ptr @s2mps11_clk_driver_exit, ptr @s2mps11_clk_parse_dt._entry, ptr @s2mps11_clk_parse_dt._entry_ptr, ptr @s2mps11_clk_probe._entry, ptr @s2mps11_clk_probe._entry.6, ptr @s2mps11_clk_probe._entry_ptr, ptr @s2mps11_clk_probe._entry_ptr.8, ptr @s2mps11_dt_match, ptr @s2mps11_clk_driver, ptr @.str, ptr @s2mps11_clk_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s2mps11_clks_init, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @s2mps11_clk_ops, ptr @.str.14, ptr @.str.15, ptr @switch.table.s2mps11_clk_probe], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clks_init to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2mps11_clk_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s2mps11_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s2mps11_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s2mps11_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 5
  br i1 %8, label %switch.hole_check, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end8.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.s2mps11_clk_probe, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %switch.lookup.s2mps11_clk_parse_dt.exit.thread_crit_edge, label %if.end.i

switch.lookup.s2mps11_clk_parse_dt.exit.thread_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %s2mps11_clk_parse_dt.exit.thread

if.end.i:                                         ; preds = %switch.lookup
  %call5.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %18, ptr noundef nonnull @.str.9) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %s2mps11_clk_parse_dt.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %s2mps11_clk_parse_dt.exit.thread

s2mps11_clk_parse_dt.exit.thread:                 ; preds = %do.end.i, %switch.lookup.s2mps11_clk_parse_dt.exit.thread_crit_edge
  %clk_np130 = getelementptr inbounds %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %clk_np130 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -22 to ptr), ptr %clk_np130, align 4
  br label %if.then16

s2mps11_clk_parse_dt.exit:                        ; preds = %if.end.i
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @s2mps11_clks_init, i32 noundef 1, i32 noundef 0) #6
  %call.i.1.i = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.12, ptr noundef getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), i32 noundef 1, i32 noundef 1) #6
  %call.i.2.i = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.12, ptr noundef getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), i32 noundef 1, i32 noundef 2) #6
  %clk_np = getelementptr inbounds %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %clk_np to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i, ptr %clk_np, align 4
  %cmp.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %s2mps11_clk_parse_dt.exit.if.then16_crit_edge, label %if.end23

s2mps11_clk_parse_dt.exit.if.then16_crit_edge:    ; preds = %s2mps11_clk_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %s2mps11_clk_parse_dt.exit.if.then16_crit_edge, %s2mps11_clk_parse_dt.exit.thread
  %retval.0.i132 = phi ptr [ inttoptr (i32 -22 to ptr), %s2mps11_clk_parse_dt.exit.thread ], [ %call5.i, %s2mps11_clk_parse_dt.exit.if.then16_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i132 to i32
  br label %cleanup

if.end23:                                         ; preds = %s2mps11_clk_parse_dt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp21 = icmp eq i32 %7, 6
  %22 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %call5.i.i, align 4
  %hw = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 2
  %init = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @s2mps11_clks_init, ptr %init, align 4
  %mask = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %mask, align 4
  %reg = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load, ptr %reg, align 4
  %call32 = tail call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw) #6
  %clk = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call32, ptr %clk, align 4
  %cmp.i127 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.end23.err_reg_crit_edge, label %if.end46

if.end23.err_reg_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reg

if.end46:                                         ; preds = %if.end23
  %27 = load ptr, ptr @s2mps11_clks_init, align 4
  %call51 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %hw, ptr noundef %27, ptr noundef null) #6
  %lookup = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call51, ptr %lookup, align 4
  %tobool55.not = icmp eq ptr %call51, null
  br i1 %tobool55.not, label %err_reg.thread153, label %for.inc

err_reg.thread153:                                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_np, align 4
  tail call void @of_node_put(ptr noundef %30) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end46
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 0
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %hw, ptr %arrayidx60, align 4
  br i1 %cmp21, label %for.inc.if.end23.2_crit_edge, label %if.end23.1

for.inc.if.end23.2_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.2

if.end23.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %arrayidx.1, align 4
  %hw.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 2
  %init.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 2, i32 2
  %33 = ptrtoint ptr %init.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), ptr %init.1, align 4
  %mask.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 5
  %34 = ptrtoint ptr %mask.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %mask.1, align 4
  %reg.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 6
  %35 = ptrtoint ptr %reg.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.load, ptr %reg.1, align 4
  %call32.1 = tail call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw.1) #6
  %clk.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 3
  %36 = ptrtoint ptr %clk.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call32.1, ptr %clk.1, align 4
  %cmp.i127.1 = icmp ugt ptr %call32.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.1, label %if.end23.1.err_reg_crit_edge, label %if.end46.1

if.end23.1.err_reg_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reg

if.end46.1:                                       ; preds = %if.end23.1
  %37 = load ptr, ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), align 4
  %call51.1 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %hw.1, ptr noundef %37, ptr noundef null) #6
  %lookup.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 1, i32 4
  %38 = ptrtoint ptr %lookup.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call51.1, ptr %lookup.1, align 4
  %tobool55.not.1 = icmp eq ptr %call51.1, null
  br i1 %tobool55.not.1, label %if.end46.1.err_reg.thread_crit_edge, label %if.end57.1

if.end46.1.err_reg.thread_crit_edge:              ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reg.thread

if.end57.1:                                       ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx60.1 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hw.1, ptr %arrayidx60.1, align 4
  br label %if.end23.2

if.end23.2:                                       ; preds = %if.end57.1, %for.inc.if.end23.2_crit_edge
  %arrayidx.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %3, ptr %arrayidx.2, align 4
  %hw.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 2
  %init.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 2, i32 2
  %41 = ptrtoint ptr %init.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), ptr %init.2, align 4
  %mask.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 5
  %42 = ptrtoint ptr %mask.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %mask.2, align 4
  %reg.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 6
  %43 = ptrtoint ptr %reg.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %switch.load, ptr %reg.2, align 4
  %call32.2 = tail call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw.2) #6
  %clk.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 3
  %44 = ptrtoint ptr %clk.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call32.2, ptr %clk.2, align 4
  %cmp.i127.2 = icmp ugt ptr %call32.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.2, label %if.end23.2.err_reg_crit_edge, label %if.end46.2

if.end23.2.err_reg_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reg

if.end46.2:                                       ; preds = %if.end23.2
  %45 = load ptr, ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), align 4
  %call51.2 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %hw.2, ptr noundef %45, ptr noundef null) #6
  %lookup.2 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 2, i32 4
  %46 = ptrtoint ptr %lookup.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call51.2, ptr %lookup.2, align 4
  %tobool55.not.2 = icmp eq ptr %call51.2, null
  br i1 %tobool55.not.2, label %if.end46.2.err_reg.thread_crit_edge, label %for.inc.2

if.end46.2.err_reg.thread_crit_edge:              ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reg.thread

for.inc.2:                                        ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx60.2 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %hw.2, ptr %arrayidx60.2, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %call.i, align 4
  %49 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_np, align 4
  %call62 = tail call i32 @of_clk_add_hw_provider(ptr noundef %50, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #6
  %driver_data.i.i128 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i, ptr %driver_data.i.i128, align 4
  br label %cleanup

err_reg.thread:                                   ; preds = %if.end46.2.err_reg.thread_crit_edge, %if.end46.1.err_reg.thread_crit_edge
  %i.0138147.ph = phi i32 [ 2, %if.end46.2.err_reg.thread_crit_edge ], [ 1, %if.end46.1.err_reg.thread_crit_edge ]
  %52 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk_np, align 4
  tail call void @of_node_put(ptr noundef %53) #6
  br label %while.body

err_reg:                                          ; preds = %if.end23.2.err_reg_crit_edge, %if.end23.1.err_reg_crit_edge, %if.end23.err_reg_crit_edge
  %i.0138.lcssa = phi i32 [ 0, %if.end23.err_reg_crit_edge ], [ 1, %if.end23.1.err_reg_crit_edge ], [ 2, %if.end23.2.err_reg_crit_edge ]
  %arrayidx25.lcssa = phi ptr [ @s2mps11_clks_init, %if.end23.err_reg_crit_edge ], [ getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), %if.end23.1.err_reg_crit_edge ], [ getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), %if.end23.2.err_reg_crit_edge ]
  %clk.lcssa = phi ptr [ %clk, %if.end23.err_reg_crit_edge ], [ %clk.1, %if.end23.1.err_reg_crit_edge ], [ %clk.2, %if.end23.2.err_reg_crit_edge ]
  %54 = ptrtoint ptr %arrayidx25.lcssa to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx25.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %55) #9
  %56 = ptrtoint ptr %clk.lcssa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.lcssa, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk_np, align 4
  tail call void @of_node_put(ptr noundef %60) #6
  br i1 %cmp.i127, label %err_reg.cleanup_crit_edge, label %err_reg.while.body_crit_edge

err_reg.while.body_crit_edge:                     ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

err_reg.cleanup_crit_edge:                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %err_reg.while.body_crit_edge, %err_reg.thread
  %ret.0152 = phi i32 [ -12, %err_reg.thread ], [ %58, %err_reg.while.body_crit_edge ]
  %i.0138147151 = phi i32 [ %i.0138147.ph, %err_reg.thread ], [ %i.0138.lcssa, %err_reg.while.body_crit_edge ]
  %dec142 = add nsw i32 %i.0138147151, -1
  %lookup67 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 %dec142, i32 4
  %61 = ptrtoint ptr %lookup67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lookup67, align 4
  tail call void @clkdev_drop(ptr noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0138147151)
  %cmp65 = icmp ugt i32 %i.0138147151, 1
  br i1 %cmp65, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec142.1 = add nsw i32 %i.0138147151, -2
  %lookup67.1 = getelementptr %struct.s2mps11_clk, ptr %call5.i.i, i32 %dec142.1, i32 4
  %63 = ptrtoint ptr %lookup67.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lookup67.1, align 4
  tail call void @clkdev_drop(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.1, %while.body.cleanup_crit_edge, %err_reg.cleanup_crit_edge, %for.inc.2, %err_reg.thread153, %if.then16, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %21, %if.then16 ], [ 0, %for.inc.2 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %58, %err_reg.cleanup_crit_edge ], [ -12, %err_reg.thread153 ], [ %ret.0152, %while.body.1 ], [ %ret.0152, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_np = getelementptr inbounds %struct.s2mps11_clk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_np, align 4
  tail call void @of_clk_del_provider(ptr noundef %3) #6
  %4 = ptrtoint ptr %clk_np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_np, align 4
  tail call void @of_node_put(ptr noundef %5) #6
  %lookup = getelementptr %struct.s2mps11_clk, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lookup, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clkdev_drop(ptr noundef nonnull %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %lookup.1 = getelementptr %struct.s2mps11_clk, ptr %1, i32 1, i32 4
  %8 = ptrtoint ptr %lookup.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lookup.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clkdev_drop(ptr noundef nonnull %9) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %lookup.2 = getelementptr %struct.s2mps11_clk, ptr %1, i32 2, i32 4
  %10 = ptrtoint ptr %lookup.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lookup.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clkdev_drop(ptr noundef nonnull %11) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_hw_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_pmic, align 4
  %reg = getelementptr i8, ptr %hw, i32 24
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %mask = getelementptr i8, ptr %hw, i32 20
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s2mps11_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_pmic, align 4
  %reg = getelementptr i8, ptr %hw, i32 24
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %mask = getelementptr i8, ptr %hw, i32 20
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %neg = xor i32 %7, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !58
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_pmic, align 4
  %reg = getelementptr i8, ptr %hw, i32 24
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mask = getelementptr i8, ptr %hw, i32 20
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %and = and i32 %10, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s2mps11_clk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @s2mps11_dt_match, !1, !"s2mps11_dt_match", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-s2mps11.c", i32 243, i32 34}
!2 = !{ptr @__initcall__kmod_clk_s2mps11__183_271_s2mps11_clk_driver_init6, !3, !"__initcall__kmod_clk_s2mps11__183_271_s2mps11_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-s2mps11.c", i32 271, i32 1}
!4 = !{ptr @__exitcall_s2mps11_clk_driver_exit, !3, !"__exitcall_s2mps11_clk_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description184, !6, !"__UNIQUE_ID_description184", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-s2mps11.c", i32 273, i32 1}
!7 = !{ptr @__UNIQUE_ID_author185, !8, !"__UNIQUE_ID_author185", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-s2mps11.c", i32 274, i32 1}
!9 = !{ptr @__UNIQUE_ID_file186, !10, !"__UNIQUE_ID_file186", i1 false, i1 false}
!10 = !{!"../drivers/clk/clk-s2mps11.c", i32 275, i32 1}
!11 = !{ptr @__UNIQUE_ID_license187, !10, !"__UNIQUE_ID_license187", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-s2mps11.c", i32 265, i32 12}
!14 = !{ptr @s2mps11_clk_driver, !15, !"s2mps11_clk_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-s2mps11.c", i32 263, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-s2mps11.c", i32 154, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s2mps11_clk_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s2mps11_clk_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-s2mps11.c", i32 174, i32 4}
!26 = !{ptr @s2mps11_clk_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s2mps11_clk_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-s2mps11.c", i32 107, i32 53}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-s2mps11.c", i32 109, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s2mps11_clk_parse_dt._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @s2mps11_clk_parse_dt._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-s2mps11.c", i32 114, i32 41}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-s2mps11.c", i32 84, i32 11}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-s2mps11.c", i32 88, i32 11}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-s2mps11.c", i32 92, i32 11}
!43 = !{ptr @s2mps11_clks_init, !44, !"s2mps11_clks_init", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-s2mps11.c", i32 82, i32 29}
!45 = !{ptr @s2mps11_clk_ops, !46, !"s2mps11_clk_ops", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-s2mps11.c", i32 74, i32 29}
!47 = !{ptr @s2mps11_clk_id, !48, !"s2mps11_clk_id", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-s2mps11.c", i32 224, i32 40}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
