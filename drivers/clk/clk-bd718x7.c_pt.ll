; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-bd718x7.c_pt.bc'
source_filename = "../drivers/clk/clk-bd718x7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bd718xx_clk = type { %struct.clk_hw, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_bd718x7__289_161_bd71837_clk_init6 = internal global ptr @bd71837_clk_init, section ".initcall6.init", align 4
@bd71837_clk = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd71837_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bd718x7_clk_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd71837_clk_exit = internal global ptr @bd71837_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [71 x i8] c"clk_bd718x7.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [69 x i8] c"clk_bd718x7.description=BD718(15/18/28/37/47/50) and chip clk driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"clk_bd718x7.file=drivers/clk/clk-bd718x7\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"clk_bd718x7.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [39 x i8] c"clk_bd718x7.alias=platform:bd718xx-clk\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd718xx-clk\00", [20 x i8] zeroinitializer }, align 32
@bd718x7_clk_id = internal constant { [5 x %struct.platform_device_id], [40 x i8] } { [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd71837-clk\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"bd71847-clk\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id { [20 x i8] c"bd71828-clk\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"bd71815-clk\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd718xx-32k-out\00", [16 x i8] zeroinitializer }, align 32
@bd71837_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @bd71837_clk_enable, ptr @bd71837_clk_disable, ptr @bd71837_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.bd71837_clk_probe.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str.1, ptr @bd71837_clk_ops, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0 }, align 4
@bd71837_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No parent clk found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71837_clk_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-bd718x7.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd71837_clk_probe._entry_ptr = internal global ptr @bd71837_clk_probe._entry, section ".printk_index", align 4
@bd71837_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown clk chip\0A\00", [46 x i8] zeroinitializer }, align 32
@bd71837_clk_probe._entry_ptr.9 = internal global ptr @bd71837_clk_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@bd71837_clk_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register 32K clk\00", [37 x i8] zeroinitializer }, align 32
@bd71837_clk_probe._entry_ptr.13 = internal global ptr @bd71837_clk_probe._entry.11, section ".printk_index", align 4
@bd71837_clk_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adding clk provider failed\0A\00", [36 x i8] zeroinitializer }, align 32
@bd71837_clk_probe._entry_ptr.16 = internal global ptr @bd71837_clk_probe._entry.14, section ".printk_index", align 4
@bd71837_clk_disable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_bd718x7\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd71837_clk_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable 32K clk (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"bd71837_clk\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 153, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 155, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"bd718x7_clk_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 144, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 86, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"bd71837_clk_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 104, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 122, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 129, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 133, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 139, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [29 x i8] c"../drivers/clk/clk-bd718x7.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 49, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bd71837_clk_exit, ptr @__initcall__kmod_clk_bd718x7__289_161_bd71837_clk_init6, ptr @bd71837_clk_exit, ptr @bd71837_clk_probe._entry, ptr @bd71837_clk_probe._entry.11, ptr @bd71837_clk_probe._entry.14, ptr @bd71837_clk_probe._entry.7, ptr @bd71837_clk_probe._entry_ptr, ptr @bd71837_clk_probe._entry_ptr.13, ptr @bd71837_clk_probe._entry_ptr.16, ptr @bd71837_clk_probe._entry_ptr.9, ptr @bd71837_clk, ptr @.str, ptr @bd718x7_clk_id, ptr @.str.1, ptr @bd71837_clk_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718x7_clk_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_clk_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd71837_clk, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd71837_clk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd71837_clk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_clk = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %2 = call ptr @memcpy(ptr %init, ptr @__const.bd71837_clk_probe.init, i32 28)
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent1, align 8
  %call5 = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.bd718xx_clk, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %regmap, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @of_clk_get_parent_name(ptr noundef %12, i32 noundef 0) #5
  %13 = ptrtoint ptr %parent_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %parent_clk, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_clk, ptr %parent_names, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup.sink.split_crit_edge, label %if.end14

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end9
  %switch.tableidx = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 4
  br i1 %15, label %switch.lookup, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end14
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 774785821, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %reg19 = getelementptr inbounds %struct.bd718xx_clk, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %switch.masked, ptr %reg19, align 4
  %mask20 = getelementptr inbounds %struct.bd718xx_clk, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %mask20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %mask20, align 1
  %pdev25 = getelementptr inbounds %struct.bd718xx_clk, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %pdev25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pdev, ptr %pdev25, align 4
  %init26 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %init26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init, ptr %init26, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i80 = call i32 @of_property_read_string_helper(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull %init, i32 noundef 1, i32 noundef 0) #5
  %call31 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %switch.lookup.cleanup.sink.split_crit_edge

switch.lookup.cleanup.sink.split_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end38:                                         ; preds = %switch.lookup
  %call41 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end38.cleanup_crit_edge, label %if.end38.cleanup.sink.split_crit_edge

if.end38.cleanup.sink.split_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end38.cleanup.sink.split_crit_edge, %switch.lookup.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.2, %if.end9.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end14.cleanup.sink.split_crit_edge ], [ @.str.12, %switch.lookup.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end38.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.end9.cleanup.sink.split_crit_edge ], [ -22, %if.end14.cleanup.sink.split_crit_edge ], [ %call31, %switch.lookup.cleanup.sink.split_crit_edge ], [ %call41, %if.end38.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.15.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg.i, align 4
  %conv.i = zext i8 %3 to i32
  %mask.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mask.i, align 1
  %conv1.i = zext i8 %5 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bd71837_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg.i, align 4
  %conv.i = zext i8 %3 to i32
  %mask.i = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mask.i, align 1
  %conv1.i = zext i8 %5 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd71837_clk_disable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bd71837_clk_disable, %if.then6)) #5
          to label %if.end7 [label %if.then6], !srcloc !58

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd71837_clk_disable.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_clk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled, align 4, !annotation !59
  %regmap = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %enabled) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enabled, align 4
  %mask = getelementptr inbounds %struct.bd718xx_clk, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask, align 1
  %conv1 = zext i8 %8 to i32
  %and = and i32 %6, %conv1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_clk_bd718x7__289_161_bd71837_clk_init6, !1, !"__initcall__kmod_clk_bd718x7__289_161_bd71837_clk_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-bd718x7.c", i32 161, i32 1}
!2 = !{ptr @__exitcall_bd71837_clk_exit, !1, !"__exitcall_bd71837_clk_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-bd718x7.c", i32 163, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-bd718x7.c", i32 164, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-bd718x7.c", i32 165, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-bd718x7.c", i32 166, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-bd718x7.c", i32 155, i32 11}
!14 = !{ptr @bd71837_clk, !15, !"bd71837_clk", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-bd718x7.c", i32 153, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-bd718x7.c", i32 86, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-bd718x7.c", i32 104, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bd71837_clk_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bd71837_clk_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-bd718x7.c", i32 122, i32 3}
!28 = !{ptr @bd71837_clk_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bd71837_clk_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-bd718x7.c", i32 129, i32 11}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-bd718x7.c", i32 133, i32 3}
!34 = !{ptr @bd71837_clk_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd71837_clk_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-bd718x7.c", i32 139, i32 3}
!38 = !{ptr @bd71837_clk_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bd71837_clk_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @bd71837_clk_ops, !41, !"bd71837_clk_ops", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-bd718x7.c", i32 73, i32 29}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-bd718x7.c", i32 49, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bd71837_clk_disable.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!47 = !{ptr @bd718x7_clk_id, !48, !"bd718x7_clk_id", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-bd718x7.c", i32 144, i32 40}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148693579, i64 2148693584, i64 2148693597, i64 2148693641, i64 2148693675, i64 2148693696}
!59 = !{!"auto-init"}
