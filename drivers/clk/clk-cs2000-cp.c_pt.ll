; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-cs2000-cp.c_pt.bc'
source_filename = "../drivers/clk/clk-cs2000-cp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.cs2000_priv = type { %struct.clk_hw, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_cs2000_cp__288_563_cs2000_driver_init6 = internal global ptr @cs2000_driver_init, section ".initcall6.init", align 4
@cs2000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs2000_probe, ptr @cs2000_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs2000_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs2000_pm_ops, ptr null, ptr null }, ptr @cs2000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs2000_driver_exit = internal global ptr @cs2000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [43 x i8] c"clk_cs2000_cp.description=CS2000-CP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [74 x i8] c"clk_cs2000_cp.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"clk_cs2000_cp.file=drivers/clk/clk-cs2000-cp\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"clk_cs2000_cp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs2000-cp\00", [22 x i8] zeroinitializer }, align 32
@cs2000_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs2000-cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs2000_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs2000_resume, ptr null, ptr @cs2000_resume, ptr null, ptr @cs2000_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs2000_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs2000-cp\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_in\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@cs2000_clk_register.parent_names = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@cs2000_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cs2000_enable, ptr @cs2000_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs2000_recalc_rate, ptr @cs2000_round_rate, ptr null, ptr null, ptr @cs2000_get_parent, ptr @cs2000_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cs2000_wait_pll_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 178, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pll lock failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs2000_wait_pll_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/clk-cs2000-cp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs2000_wait_pll_lock._entry_ptr = internal global ptr @cs2000_wait_pll_lock._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"B2 / B3\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C1\00", [29 x i8] zeroinitializer }, align 32
@cs2000_version_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 489, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"revision - %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs2000_version_print\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs2000_version_print._entry_ptr = internal global ptr @cs2000_version_print._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"cs2000_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 552, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 554, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"cs2000_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 85, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"cs2000_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 548, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"cs2000_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 91, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 401, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 406, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"parent_names\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 423, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 428, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"cs2000_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 387, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 178, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 480, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 483, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [31 x i8] c"../drivers/clk/clk-cs2000-cp.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 489, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cs2000_driver_exit, ptr @__initcall__kmod_clk_cs2000_cp__288_563_cs2000_driver_init6, ptr @cs2000_driver_exit, ptr @cs2000_version_print._entry, ptr @cs2000_version_print._entry_ptr, ptr @cs2000_wait_pll_lock._entry, ptr @cs2000_wait_pll_lock._entry_ptr, ptr @cs2000_driver, ptr @.str, ptr @cs2000_of_match, ptr @cs2000_pm_ops, ptr @cs2000_id, ptr @.str.1, ptr @.str.2, ptr @cs2000_clk_register.parent_names, ptr @.str.3, ptr @cs2000_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_clk_register.parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_wait_pll_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs2000_version_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs2000_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs2000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cs2000_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %client2 = getelementptr inbounds %struct.cs2000_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i30 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %cmp.i.i = icmp ugt ptr %call.i30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %cmp.i16.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16.i, label %if.end.i.cleanup_crit_edge, label %if.end5

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %clk_in7.i = getelementptr inbounds %struct.cs2000_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk_in7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i30, ptr %clk_in7.i, align 4
  %ref_clk8.i = getelementptr inbounds %struct.cs2000_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %ref_clk8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3.i, ptr %ref_clk8.i, align 4
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client2, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %8 = getelementptr inbounds i8, ptr %init.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %name.i, align 4
  %call.i32 = call i32 @of_property_read_string(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %name.i) #8
  %13 = ptrtoint ptr %ref_clk8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ref_clk8.i, align 4
  %call3.i33 = call i32 @clk_get_rate(ptr noundef %14) #8
  %call4.i = call fastcc i32 @__cs2000_set_rate(ptr noundef nonnull %call.i, i32 noundef %call3.i33, i32 noundef %call3.i33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end5.cs2000_clk_register.exit.thread_crit_edge, label %if.end.i35

if.end5.cs2000_clk_register.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_clk_register.exit.thread

if.end.i35:                                       ; preds = %if.end5
  %dev1.i34 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %clk_in7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_in7.i, align 4
  %call5.i = call ptr @__clk_get_name(ptr noundef %16) #8
  store ptr %call5.i, ptr @cs2000_clk_register.parent_names, align 4
  %17 = ptrtoint ptr %ref_clk8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ref_clk8.i, align 4
  %call7.i = call ptr @__clk_get_name(ptr noundef %18) #8
  store ptr %call7.i, ptr getelementptr inbounds ([2 x ptr], ptr @cs2000_clk_register.parent_names, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cs2000_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cs2000_clk_register.parent_names, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %25 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %num_parents.i, align 4
  %init9.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %init9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init9.i, align 4
  %call11.i = call i32 @clk_hw_register(ptr noundef %dev1.i34, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %cs2000_clk_register.exit

if.end13.i:                                       ; preds = %if.end.i35
  %call15.i = call i32 @of_clk_add_hw_provider(ptr noundef %7, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %cs2000_clk_register.exit.thread49

cs2000_clk_register.exit.thread49:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %if.end9

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_hw_unregister(ptr noundef nonnull %call.i) #8
  br label %cs2000_clk_register.exit.thread

cs2000_clk_register.exit.thread:                  ; preds = %if.then17.i, %if.end5.cs2000_clk_register.exit.thread_crit_edge
  %retval.0.i36.ph = phi i32 [ %call4.i, %if.end5.cs2000_clk_register.exit.thread_crit_edge ], [ %call15.i, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

cs2000_clk_register.exit:                         ; preds = %if.end.i35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp7 = icmp slt i32 %call11.i, 0
  br i1 %cmp7, label %cs2000_clk_register.exit.cleanup_crit_edge, label %cs2000_clk_register.exit.if.end9_crit_edge

cs2000_clk_register.exit.if.end9_crit_edge:       ; preds = %cs2000_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

cs2000_clk_register.exit.cleanup_crit_edge:       ; preds = %cs2000_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %cs2000_clk_register.exit.if.end9_crit_edge, %cs2000_clk_register.exit.thread49
  %27 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client2, align 4
  %dev1.i38 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %call.i39 = call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i40 = icmp slt i32 %call.i39, 0
  br i1 %cmp.i40, label %if.end9.probe_err_crit_edge, label %if.end.i42

if.end9.probe_err_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_err

if.end.i42:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i39)
  %tobool.not.i41 = icmp ult i32 %call.i39, 8
  br i1 %tobool.not.i41, label %if.end4.i, label %if.end.i42.probe_err_crit_edge

if.end.i42.probe_err_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_err

if.end4.i:                                        ; preds = %if.end.i42
  %29 = zext i32 %call.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i39, label %if.end4.i.probe_err_crit_edge [
    i32 4, label %if.end4.i.cs2000_version_print.exit_crit_edge
    i32 6, label %sw.bb5.i
  ]

if.end4.i.cs2000_version_print.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_version_print.exit

if.end4.i.probe_err_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_err

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_version_print.exit

cs2000_version_print.exit:                        ; preds = %sw.bb5.i, %if.end4.i.cs2000_version_print.exit_crit_edge
  %revision.0.i = phi ptr [ @.str.10, %sw.bb5.i ], [ @.str.9, %if.end4.i.cs2000_version_print.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i38, ptr noundef nonnull @.str.11, ptr noundef nonnull %revision.0.i) #11
  br label %cleanup

probe_err:                                        ; preds = %if.end4.i.probe_err_crit_edge, %if.end.i42.probe_err_crit_edge, %if.end9.probe_err_crit_edge
  %retval.0.i43.ph = phi i32 [ -5, %if.end4.i.probe_err_crit_edge ], [ -5, %if.end.i42.probe_err_crit_edge ], [ %call.i39, %if.end9.probe_err_crit_edge ]
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i = getelementptr inbounds %struct.cs2000_priv, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client1.i, align 4
  %of_node.i44 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 27
  %34 = ptrtoint ptr %of_node.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node.i44, align 8
  call void @of_clk_del_provider(ptr noundef %35) #8
  call void @clk_hw_unregister(ptr noundef %31) #8
  br label %cleanup

cleanup:                                          ; preds = %probe_err, %cs2000_version_print.exit, %cs2000_clk_register.exit.cleanup_crit_edge, %cs2000_clk_register.exit.thread, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i43.ph, %probe_err ], [ -12, %entry.cleanup_crit_edge ], [ %call11.i, %cs2000_clk_register.exit.cleanup_crit_edge ], [ 0, %cs2000_version_print.exit ], [ %retval.0.i36.ph, %cs2000_clk_register.exit.thread ], [ -517, %if.end.cleanup_crit_edge ], [ -517, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.cs2000_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #8
  tail call void @clk_hw_unregister(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cs2000_set_rate(ptr nocapture noundef %priv, i32 noundef %rate, i32 noundef %parent_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %parent_rate, -32000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %0)
  %1 = icmp ult i32 %0, 24000000
  br i1 %1, label %entry.if.end13.i_crit_edge, label %if.else.i

entry.if.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.else.i:                                        ; preds = %entry
  %2 = add i32 %parent_rate, -16000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %2)
  %3 = icmp ult i32 %2, 12000000
  br i1 %3, label %if.else.i.if.end13.i_crit_edge, label %if.else6.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.else6.i:                                       ; preds = %if.else.i
  %4 = add i32 %parent_rate, -8000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %4)
  %5 = icmp ult i32 %4, 6000000
  br i1 %5, label %if.else6.i.if.end13.i_crit_edge, label %if.else6.i.cleanup_crit_edge

if.else6.i.cleanup_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else6.i.if.end13.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else6.i.if.end13.i_crit_edge, %if.else.i.if.end13.i_crit_edge, %entry.if.end13.i_crit_edge
  %val.0.i = phi i8 [ 0, %entry.if.end13.i_crit_edge ], [ 8, %if.else.i.if.end13.i_crit_edge ], [ 16, %if.else6.i.if.end13.i_crit_edge ]
  %client.i.i = getelementptr inbounds %struct.cs2000_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end13.i.cleanup_crit_edge, label %cs2000_clk_in_bound_rate.exit

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_clk_in_bound_rate.exit:                    ; preds = %if.end13.i
  %8 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i.i, align 4
  %10 = trunc i32 %call.i.i to i8
  %11 = and i8 %10, -25
  %conv5.i.i = or i8 %11, %val.0.i
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 22, i8 noundef zeroext %conv5.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp = icmp slt i32 %call6.i.i, 0
  br i1 %cmp, label %cs2000_clk_in_bound_rate.exit.cleanup_crit_edge, label %if.end

cs2000_clk_in_bound_rate.exit.cleanup_crit_edge:  ; preds = %cs2000_clk_in_bound_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cs2000_clk_in_bound_rate.exit
  %conv.i.i = zext i32 %rate to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rate)
  %cmp167.i.i = icmp ult i32 %rate, 4096
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !57

if.then171.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv172.i.i = trunc i64 %shl.i.i to i32
  %div175.i.i = udiv i32 %conv172.i.i, %parent_rate
  br label %cs2000_rate_to_ratio.exit.i

if.else177.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %shl.i.i) #12, !srcloc !58
  %asmresult1.i.i.i = extractvalue { i64, i64 } %12, 1
  %extract.t288.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %cs2000_rate_to_ratio.exit.i

cs2000_rate_to_ratio.exit.i:                      ; preds = %if.else177.i.i, %if.then171.i.i
  %ratio.0.off0.i.i = phi i32 [ %div175.i.i, %if.then171.i.i ], [ %extract.t288.i.i, %if.else177.i.i ]
  %13 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i.i, align 4
  %shr.i = lshr i32 %ratio.0.off0.i.i, 24
  %conv5.i = trunc i32 %shr.i to i8
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 6, i8 noundef zeroext %conv5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %cs2000_rate_to_ratio.exit.i.cleanup_crit_edge, label %for.cond.i

cs2000_rate_to_ratio.exit.i.cleanup_crit_edge:    ; preds = %cs2000_rate_to_ratio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %cs2000_rate_to_ratio.exit.i
  %15 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i.i, align 4
  %shr.1.i = lshr i32 %ratio.0.off0.i.i, 16
  %conv5.1.i = trunc i32 %shr.1.i to i8
  %call6.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext %conv5.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %17 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i.i, align 4
  %shr.2.i = lshr i32 %ratio.0.off0.i.i, 8
  %conv5.2.i = trunc i32 %shr.2.i to i8
  %call6.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 8, i8 noundef zeroext %conv5.2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %cmp7.2.i = icmp slt i32 %call6.2.i, 0
  br i1 %cmp7.2.i, label %for.cond.1.i.cleanup_crit_edge, label %cs2000_ratio_set.exit

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_ratio_set.exit:                            ; preds = %for.cond.1.i
  %19 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i.i, align 4
  %conv5.3.i = trunc i32 %ratio.0.off0.i.i to i8
  %call6.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 9, i8 noundef zeroext %conv5.3.i) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %call6.3.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %cmp2 = icmp slt i32 %call6.3.i, 0
  br i1 %cmp2, label %cs2000_ratio_set.exit.cleanup_crit_edge, label %if.end4

cs2000_ratio_set.exit.cleanup_crit_edge:          ; preds = %cs2000_ratio_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %cs2000_ratio_set.exit
  %22 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i.i, align 4
  %call.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %cmp.i.i5, label %if.end4.cleanup_crit_edge, label %cs2000_bset.exit.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_bset.exit.i:                               ; preds = %if.end4
  %24 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i.i, align 4
  %26 = trunc i32 %call.i.i4 to i8
  %27 = and i8 %26, -25
  %call6.i.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 3, i8 noundef zeroext %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i6)
  %cmp2.i = icmp slt i32 %call6.i.i6, 0
  br i1 %cmp2.i, label %cs2000_bset.exit.i.cleanup_crit_edge, label %if.end5.i

cs2000_bset.exit.i.cleanup_crit_edge:             ; preds = %cs2000_bset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %cs2000_bset.exit.i
  %28 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i.i, align 4
  %call.i2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i3.i, label %if.end5.i.cleanup_crit_edge, label %cs2000_ratio_select.exit

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_ratio_select.exit:                         ; preds = %if.end5.i
  %30 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i.i, align 4
  %32 = trunc i32 %call.i2.i to i8
  %33 = and i8 %32, -16
  %call6.i5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 4, i8 noundef zeroext %33) #8
  %34 = tail call i32 @llvm.smin.i32(i32 %call6.i5.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i5.i)
  %cmp6 = icmp slt i32 %call6.i5.i, 0
  br i1 %cmp6, label %cs2000_ratio_select.exit.cleanup_crit_edge, label %if.end8

cs2000_ratio_select.exit.cleanup_crit_edge:       ; preds = %cs2000_ratio_select.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %cs2000_ratio_select.exit
  call void @__sanitizer_cov_trace_pc() #10
  %saved_rate = getelementptr inbounds %struct.cs2000_priv, ptr %priv, i32 0, i32 4
  %35 = ptrtoint ptr %saved_rate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rate, ptr %saved_rate, align 4
  %saved_parent_rate = getelementptr inbounds %struct.cs2000_priv, ptr %priv, i32 0, i32 5
  %36 = ptrtoint ptr %saved_parent_rate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %parent_rate, ptr %saved_parent_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cs2000_ratio_select.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %cs2000_bset.exit.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %cs2000_ratio_set.exit.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %cs2000_rate_to_ratio.exit.i.cleanup_crit_edge, %cs2000_clk_in_bound_rate.exit.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.else6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call6.i.i, %cs2000_clk_in_bound_rate.exit.cleanup_crit_edge ], [ %21, %cs2000_ratio_set.exit.cleanup_crit_edge ], [ %34, %cs2000_ratio_select.exit.cleanup_crit_edge ], [ %call.i.i, %if.end13.i.cleanup_crit_edge ], [ -22, %if.else6.i.cleanup_crit_edge ], [ %call6.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call6.1.i, %for.cond.i.cleanup_crit_edge ], [ %call6.i, %cs2000_rate_to_ratio.exit.i.cleanup_crit_edge ], [ %call.i.i4, %if.end4.cleanup_crit_edge ], [ %call6.i.i6, %cs2000_bset.exit.i.cleanup_crit_edge ], [ %call.i2.i, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs2000_enable_dev_config(ptr noundef %hw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %client.i.i = getelementptr inbounds %struct.cs2000_priv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %cs2000_clk_out_enable.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_clk_out_enable.exit:                       ; preds = %if.end
  %2 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i.i, align 4
  %4 = trunc i32 %call.i.i to i8
  %5 = and i8 %4, -4
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp2 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp2, label %cs2000_clk_out_enable.exit.cleanup_crit_edge, label %if.end4

cs2000_clk_out_enable.exit.cleanup_crit_edge:     ; preds = %cs2000_clk_out_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %cs2000_clk_out_enable.exit
  %6 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end4
  %i.012.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %and.i = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %do.end.i, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %cs2000_clk_out_enable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6.i.i, %cs2000_clk_out_enable.exit.cleanup_crit_edge ], [ -110, %do.end.i ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs2000_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs2000_enable_dev_config(ptr noundef %hw, i1 noundef zeroext false)
  %client.i.i = getelementptr inbounds %struct.cs2000_priv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.cs2000_clk_out_enable.exit_crit_edge, label %if.end.i.i

entry.cs2000_clk_out_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_clk_out_enable.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i.i, align 4
  %4 = trunc i32 %call.i.i to i8
  %conv5.i.i = or i8 %4, 3
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %conv5.i.i) #8
  br label %cs2000_clk_out_enable.exit

cs2000_clk_out_enable.exit:                       ; preds = %if.end.i.i, %entry.cs2000_clk_out_enable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.cs2000_priv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %entry.cs2000_ratio_get.exit_crit_edge, label %if.end.i

entry.cs2000_ratio_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_ratio_get.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %if.end.i.cs2000_ratio_get.exit_crit_edge, label %if.end.1.i

if.end.i.cs2000_ratio_get.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_ratio_get.exit

if.end.1.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %if.end.1.i.cs2000_ratio_get.exit_crit_edge, label %if.end.2.i

if.end.1.i.cs2000_ratio_get.exit_crit_edge:       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_ratio_get.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %if.end.2.i.cs2000_ratio_get.exit_crit_edge, label %if.end.3.i

if.end.2.i.cs2000_ratio_get.exit_crit_edge:       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_ratio_get.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.2.i = shl i32 %call.2.i, 8
  %shl.2.i = and i32 %and.2.i, 65280
  %and.1.i = shl i32 %call.1.i, 16
  %shl.1.i = and i32 %and.1.i, 16711680
  %and.i = shl i32 %call.i, 24
  %or.1.i = or i32 %shl.1.i, %and.i
  %or.2.i = or i32 %shl.2.i, %or.1.i
  %and.3.i = and i32 %call.3.i, 255
  %or.3.i = or i32 %and.3.i, %or.2.i
  br label %cs2000_ratio_get.exit

cs2000_ratio_get.exit:                            ; preds = %if.end.3.i, %if.end.2.i.cs2000_ratio_get.exit_crit_edge, %if.end.1.i.cs2000_ratio_get.exit_crit_edge, %if.end.i.cs2000_ratio_get.exit_crit_edge, %entry.cs2000_ratio_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.cs2000_ratio_get.exit_crit_edge ], [ 0, %if.end.i.cs2000_ratio_get.exit_crit_edge ], [ 0, %if.end.1.i.cs2000_ratio_get.exit_crit_edge ], [ 0, %if.end.2.i.cs2000_ratio_get.exit_crit_edge ], [ %or.3.i, %if.end.3.i ]
  %conv.i = zext i32 %retval.0.i to i64
  %conv1.i = zext i32 %parent_rate to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 20
  %conv2.i = trunc i64 %shr.i to i32
  ret i32 %conv2.i
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %conv.i = zext i32 %rate to i64
  %shl.i = shl nuw nsw i64 %conv.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rate)
  %cmp167.i = icmp ult i32 %rate, 4096
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !57

if.then171.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv172.i = trunc i64 %shl.i to i32
  %div175.i = udiv i32 %conv172.i, %1
  br label %cs2000_rate_to_ratio.exit

if.else177.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %shl.i) #12, !srcloc !58
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  %extract.t288.i = trunc i64 %asmresult1.i.i to i32
  br label %cs2000_rate_to_ratio.exit

cs2000_rate_to_ratio.exit:                        ; preds = %if.else177.i, %if.then171.i
  %ratio.0.off0.i = phi i32 [ %div175.i, %if.then171.i ], [ %extract.t288.i, %if.else177.i ]
  %conv.i3 = zext i32 %ratio.0.off0.i to i64
  %conv1.i = zext i32 %1 to i64
  %mul.i4 = mul nuw i64 %conv.i3, %conv1.i
  %shr.i5 = lshr i64 %mul.i4, 20
  %conv2.i = trunc i64 %shr.i5 to i32
  ret i32 %conv2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cs2000_get_parent(ptr nocapture noundef readnone %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__cs2000_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs2000_enable_dev_config(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i8
  %client.i = getelementptr inbounds %struct.cs2000_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %cs2000_bset.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_bset.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %4 = trunc i32 %call.i to i8
  %5 = and i8 %4, -2
  %conv5.i = or i8 %5, %conv
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext %conv5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %cs2000_bset.exit.cleanup_crit_edge, label %if.end

cs2000_bset.exit.cleanup_crit_edge:               ; preds = %cs2000_bset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cs2000_bset.exit
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call.i38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %if.end.cleanup_crit_edge, label %cs2000_bset.exit46

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_bset.exit46:                               ; preds = %if.end
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %10 = trunc i32 %call.i38 to i8
  %11 = and i8 %10, -2
  %conv5.i42 = or i8 %11, %conv
  %call6.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 5, i8 noundef zeroext %conv5.i42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i43)
  %cmp7 = icmp slt i32 %call6.i43, 0
  br i1 %cmp7, label %cs2000_bset.exit46.cleanup_crit_edge, label %if.end10

cs2000_bset.exit46.cleanup_crit_edge:             ; preds = %cs2000_bset.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %cs2000_bset.exit46
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %call.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.end10.cleanup_crit_edge, label %cs2000_bset.exit55

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs2000_bset.exit55:                               ; preds = %if.end10
  %conv14 = select i1 %enable, i8 -128, i8 0
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %16 = trunc i32 %call.i48 to i8
  %17 = and i8 %16, 127
  %conv5.i51 = or i8 %17, %conv14
  %call6.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 22, i8 noundef zeroext %conv5.i51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i52)
  %cmp16 = icmp slt i32 %call6.i52, 0
  br i1 %cmp16, label %cs2000_bset.exit55.cleanup_crit_edge, label %if.end19

cs2000_bset.exit55.cleanup_crit_edge:             ; preds = %cs2000_bset.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %cs2000_bset.exit55
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %call.i57 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %if.end19.cs2000_bset.exit64_crit_edge, label %if.end.i62

if.end19.cs2000_bset.exit64_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs2000_bset.exit64

if.end.i62:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %22 = trunc i32 %call.i57 to i8
  %conv5.i60 = or i8 %22, 8
  %call6.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 23, i8 noundef zeroext %conv5.i60) #8
  br label %cs2000_bset.exit64

cs2000_bset.exit64:                               ; preds = %if.end.i62, %if.end19.cs2000_bset.exit64_crit_edge
  %retval.0.i63 = phi i32 [ %call6.i61, %if.end.i62 ], [ %call.i57, %if.end19.cs2000_bset.exit64_crit_edge ]
  %23 = tail call i32 @llvm.smin.i32(i32 %retval.0.i63, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %cs2000_bset.exit64, %cs2000_bset.exit55.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %cs2000_bset.exit46.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cs2000_bset.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %cs2000_bset.exit.cleanup_crit_edge ], [ %call6.i43, %cs2000_bset.exit46.cleanup_crit_edge ], [ %call6.i52, %cs2000_bset.exit55.cleanup_crit_edge ], [ %23, %cs2000_bset.exit64 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i38, %if.end.cleanup_crit_edge ], [ %call.i48, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs2000_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %saved_rate.i = getelementptr inbounds %struct.cs2000_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %saved_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_rate.i, align 4
  %saved_parent_rate.i = getelementptr inbounds %struct.cs2000_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %saved_parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_parent_rate.i, align 4
  %call.i = tail call fastcc i32 @__cs2000_set_rate(ptr noundef %1, i32 noundef %3, i32 noundef %5) #8
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_clk_cs2000_cp__288_563_cs2000_driver_init6, !1, !"__initcall__kmod_clk_cs2000_cp__288_563_cs2000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 563, i32 1}
!2 = !{ptr @__exitcall_cs2000_driver_exit, !1, !"__exitcall_cs2000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 565, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 566, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 567, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 554, i32 11}
!12 = !{ptr @cs2000_driver, !13, !"cs2000_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 552, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 401, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 406, i32 30}
!18 = !{ptr @cs2000_clk_register.parent_names, !19, !"parent_names", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 423, i32 21}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 428, i32 30}
!22 = !{ptr @cs2000_ops, !23, !"cs2000_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 387, i32 29}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 178, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cs2000_wait_pll_lock._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @cs2000_wait_pll_lock._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 480, i32 14}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 483, i32 14}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 489, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cs2000_version_print._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @cs2000_version_print._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @cs2000_of_match, !43, !"cs2000_of_match", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 85, i32 34}
!44 = !{ptr @cs2000_pm_ops, !45, !"cs2000_pm_ops", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 548, i32 32}
!46 = !{ptr @cs2000_id, !47, !"cs2000_id", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-cs2000-cp.c", i32 91, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148951735, i64 2148952015, i64 2148952349, i64 2148952683}
