; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-dra7-atl.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-dra7-atl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.dra7_atl_desc = type { ptr, %struct.clk_hw, ptr, i32, i8, i8, i8, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.dra7_atl_clock_info = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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

@__of_table_dra7_atl_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-atl-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_dra7_atl_clock_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_dra7_atl__184_312_dra7_atl_clk_driver_init6 = internal global ptr @dra7_atl_clk_driver_init, section ".initcall6.init", align 4
@of_dra7_atl_clock_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: could not allocate dra7_atl_desc\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_dra7_atl_clock_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/ti/clk-dra7-atl.c\00", [34 x i8] zeroinitializer }, align 32
@of_dra7_atl_clock_setup._entry_ptr = internal global ptr @of_dra7_atl_clock_setup._entry, section ".printk_index", align 4
@atl_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @atl_clk_enable, ptr @atl_clk_disable, ptr @atl_clk_is_enabled, ptr null, ptr null, ptr null, ptr @atl_clk_recalc_rate, ptr @atl_clk_round_rate, ptr null, ptr null, ptr null, ptr @atl_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@of_dra7_atl_clock_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: atl clock %pOFn must have 1 parent\0A\00", [54 x i8] zeroinitializer }, align 32
@of_dra7_atl_clock_setup._entry_ptr.5 = internal global ptr @of_dra7_atl_clock_setup._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atl_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 89, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atl%d has not been configured\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl_clk_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl_clk_enable._entry_ptr = internal global ptr @atl_clk_enable._entry, section ".printk_index", align 4
@dra7_atl_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_dra7_atl_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_dra7_atl_clk_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dra7-atl\00", [23 x i8] zeroinitializer }, align 32
@of_dra7_atl_clk_match_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-atl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,provided-clocks\00", [45 x i8] zeroinitializer }, align 32
@of_dra7_atl_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to lookup atl clock %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_dra7_atl_clk_probe\00", [42 x i8] zeroinitializer }, align 32
@of_dra7_atl_clk_probe._entry_ptr = internal global ptr @of_dra7_atl_clk_probe._entry, section ".printk_index", align 4
@of_dra7_atl_clk_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: failed to get atl clock %d from provider\0A\00", [48 x i8] zeroinitializer }, align 32
@of_dra7_atl_clk_probe._entry_ptr.16 = internal global ptr @of_dra7_atl_clk_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atl%u\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bws\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aws\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 180, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"atl_clk_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 162, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 192, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 88, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"dra7_atl_clk_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 304, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 306, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"of_dra7_atl_clk_match_tbl\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 299, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 248, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 252, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 259, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 269, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 272, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [33 x i8] c"../drivers/clk/ti/clk-dra7-atl.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 274, i32 42 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__initcall__kmod_clk_dra7_atl__184_312_dra7_atl_clk_driver_init6, ptr @__of_table_dra7_atl_clock, ptr @atl_clk_enable._entry, ptr @atl_clk_enable._entry_ptr, ptr @of_dra7_atl_clk_probe._entry, ptr @of_dra7_atl_clk_probe._entry.14, ptr @of_dra7_atl_clk_probe._entry_ptr, ptr @of_dra7_atl_clk_probe._entry_ptr.16, ptr @of_dra7_atl_clock_setup._entry, ptr @of_dra7_atl_clock_setup._entry.3, ptr @of_dra7_atl_clock_setup._entry_ptr, ptr @of_dra7_atl_clock_setup._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @atl_clk_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dra7_atl_clk_driver, ptr @.str.10, ptr @of_dra7_atl_clk_match_tbl, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_atl_clock_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_atl_clock_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_atl_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_atl_clk_match_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_atl_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_atl_clk_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_dra7_atl_clock_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #11
  %0 = getelementptr inbounds i8, ptr %init, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br label %cleanup28

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dra7_atl_desc, ptr %call7.i.i, i32 0, i32 1
  %init2 = getelementptr inbounds %struct.dra7_atl_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %init2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %init, ptr %init2, align 4
  %divider = getelementptr inbounds %struct.dra7_atl_desc, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %divider to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %divider, align 4
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @atl_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %flags, align 4
  %call4 = call i32 @of_clk_get_parent_count(ptr noundef %node) #11
  %conv = trunc i32 %call4 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %conv6 = and i32 %call4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv6)
  %cmp.not = icmp eq i32 %conv6, 1
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %node) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4) #14
  %tobool16.not = icmp eq ptr %call7.i.i46, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #11
  %12 = ptrtoint ptr %call7.i.i46 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %call7.i.i46, align 8
  %parent_names20 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i46, ptr %parent_names20, align 4
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %call23 = call ptr @ti_clk_register(ptr noundef null, ptr noundef %hw, ptr noundef %15) #11
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.cleanup_crit_edge, label %if.then25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call23) #11
  call void @kfree(ptr noundef nonnull %call7.i.i46) #11
  br label %cleanup28

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end11
  %parent_names.0 = phi ptr [ null, %do.end11 ], [ %call7.i.i46, %if.end18.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ]
  call void @kfree(ptr noundef %parent_names.0) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup, %if.then25, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7_atl_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dra7_atl_clk_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl_clk_enable(ptr nocapture noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %probed = getelementptr i8, ptr %hw, i32 20
  %0 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %probed, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %valid = getelementptr i8, ptr %hw, i32 21
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %do.end, label %if.end.if.end6_crit_edge, !prof !56

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cinfo = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cinfo, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %id = getelementptr i8, ptr %hw, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %9) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %cinfo7 = getelementptr i8, ptr %hw, i32 12
  %10 = ptrtoint ptr %cinfo7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cinfo7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #11
  %14 = ptrtoint ptr %cinfo7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cinfo7, align 4
  %id10 = getelementptr i8, ptr %hw, i32 16
  %16 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id10, align 4
  %mul = shl i32 %17, 7
  %add = add i32 %mul, 520
  %divider = getelementptr i8, ptr %hw, i32 32
  %18 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %divider, align 4
  %sub = add i32 %19, -1
  %iobase.i = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %sub) #11, !srcloc !57
  %22 = ptrtoint ptr %cinfo7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cinfo7, align 4
  %24 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id10, align 4
  %mul13 = shl i32 %25, 7
  %add14 = add i32 %mul13, 528
  %iobase.i25 = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %iobase.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i25, align 4
  %add.ptr.i26 = getelementptr i8, ptr %27, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 1) #11, !srcloc !57
  br label %out

out:                                              ; preds = %if.end6, %entry.out_crit_edge
  %enabled = getelementptr i8, ptr %hw, i32 22
  %28 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %enabled, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl_clk_disable(ptr nocapture noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %probed = getelementptr i8, ptr %hw, i32 20
  %0 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %probed, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cinfo = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinfo, align 4
  %id = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 7
  %add = add i32 %mul, 528
  %iobase.i = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !57
  %8 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cinfo, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #11
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %enabled = getelementptr i8, ptr %hw, i32 22
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %hw, i32 22
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !55
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %divider = getelementptr i8, ptr %hw, i32 32
  %0 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %divider, align 4
  %div = udiv i32 %parent_rate, %1
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div6 = lshr i32 %rate, 1
  %add = add i32 %1, %div6
  %div1 = udiv i32 %add, %rate
  %2 = tail call i32 @llvm.umin.i32(i32 %div1, i32 32)
  %div2 = udiv i32 %1, %2
  ret i32 %div2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atl_clk_set_rate(ptr noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool1.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %div12 = lshr i32 %rate, 1
  %add = add i32 %div12, %parent_rate
  %div2 = udiv i32 %add, %rate
  %sub = add i32 %div2, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 31)
  %add5 = add nuw nsw i32 %0, 1
  %divider6 = getelementptr i8, ptr %hw, i32 32
  %1 = ptrtoint ptr %divider6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add5, ptr %divider6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_dra7_atl_clk_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %prop = alloca [5 x i8], align 1
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup56_crit_edge, label %if.end4

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #11
  %iobase = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %iobase, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %call.i98 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %add.ptr.i = getelementptr i8, ptr %call5, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #11, !srcloc !57
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4
  %i.0117 = phi i32 [ 0, %if.end4 ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0116 = phi i32 [ 0, %if.end4 ], [ %ret.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %prop) #11
  %4 = call ptr @memset(ptr %prop, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #11
  %5 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %call.i99 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef %i.0117, ptr noundef nonnull %clkspec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool12.not = icmp eq i32 %call.i99, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %i.0117) #15
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %call16 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #11
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %i.0117) #15
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = call ptr @__clk_get_hw(ptr noundef %call16) #11
  %cinfo28 = getelementptr i8, ptr %call26, i32 12
  %7 = ptrtoint ptr %cinfo28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %cinfo28, align 4
  %id = getelementptr i8, ptr %call26, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.0117, ptr %id, align 4
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop, i32 noundef 5, ptr noundef nonnull @.str.17, i32 noundef %i.0117)
  %call31 = call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull %prop) #11
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end25.if.end43_crit_edge, label %if.then33

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then33:                                        ; preds = %if.end25
  %bws = getelementptr i8, ptr %call26, i32 24
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call31, ptr noundef nonnull @.str.18, ptr noundef %bws, i32 noundef 1, i32 noundef 0) #11
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #11
  %aws = getelementptr i8, ptr %call26, i32 28
  %call.i.i100 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call31, ptr noundef nonnull @.str.19, ptr noundef %aws, i32 noundef 1, i32 noundef 0) #11
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i100, i32 0) #11
  %or = or i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool36.not = icmp eq i32 %or, 0
  br i1 %tobool36.not, label %if.then37, label %if.then33.if.end42_crit_edge

if.then33.if.end42_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %valid = getelementptr i8, ptr %call26, i32 21
  %11 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %valid, align 1
  %mul = shl i32 %i.0117, 7
  %add = add nuw nsw i32 %mul, 532
  %12 = ptrtoint ptr %bws to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bws, align 4
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr.i102 = getelementptr i8, ptr %15, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %13) #11, !srcloc !57
  %add40 = add nuw nsw i32 %mul, 536
  %16 = ptrtoint ptr %aws to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aws, align 4
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr.i104 = getelementptr i8, ptr %19, i32 %add40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %17) #11, !srcloc !57
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then33.if.end42_crit_edge
  call void @of_node_put(ptr noundef nonnull %call31) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end25.if.end43_crit_edge
  %ret.1 = phi i32 [ %or, %if.end42 ], [ %ret.0116, %if.end25.if.end43_crit_edge ]
  %probed = getelementptr i8, ptr %call26, i32 20
  %20 = ptrtoint ptr %probed to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %probed, align 4
  %enabled = getelementptr i8, ptr %call26, i32 22
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enabled, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool44.not = icmp eq i8 %22, 0
  br i1 %tobool44.not, label %if.end43.for.inc_crit_edge, label %if.then45

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then45:                                        ; preds = %if.end43
  %call46 = call ptr @__clk_get_hw(ptr noundef %call16) #11
  %probed.i = getelementptr i8, ptr %call46, i32 20
  %23 = ptrtoint ptr %probed.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %probed.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then45.atl_clk_enable.exit_crit_edge, label %if.end.i

if.then45.atl_clk_enable.exit_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %atl_clk_enable.exit

if.end.i:                                         ; preds = %if.then45
  %valid.i = getelementptr i8, ptr %call46, i32 21
  %25 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %valid.i, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end.i.if.end6.i_crit_edge, !prof !56

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %cinfo.i = getelementptr i8, ptr %call46, i32 12
  %27 = ptrtoint ptr %cinfo.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cinfo.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %id.i = getelementptr i8, ptr %call46, i32 16
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %32) #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.if.end6.i_crit_edge
  %cinfo7.i = getelementptr i8, ptr %call46, i32 12
  %33 = ptrtoint ptr %cinfo7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cinfo7.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i.i105 = call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #11
  %37 = ptrtoint ptr %cinfo7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cinfo7.i, align 4
  %id10.i = getelementptr i8, ptr %call46, i32 16
  %39 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id10.i, align 4
  %mul.i = shl i32 %40, 7
  %add.i = add i32 %mul.i, 520
  %divider.i = getelementptr i8, ptr %call46, i32 32
  %41 = ptrtoint ptr %divider.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %divider.i, align 4
  %sub.i = add i32 %42, -1
  %iobase.i.i = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %sub.i) #11, !srcloc !57
  %45 = ptrtoint ptr %cinfo7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cinfo7.i, align 4
  %47 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id10.i, align 4
  %mul13.i = shl i32 %48, 7
  %add14.i = add i32 %mul13.i, 528
  %iobase.i25.i = getelementptr inbounds %struct.dra7_atl_clock_info, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %iobase.i25.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i25.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %50, i32 %add14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 1) #11, !srcloc !57
  br label %atl_clk_enable.exit

atl_clk_enable.exit:                              ; preds = %if.end6.i, %if.then45.atl_clk_enable.exit_crit_edge
  %enabled.i = getelementptr i8, ptr %call46, i32 22
  %51 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %enabled.i, align 2
  br label %for.inc

cleanup:                                          ; preds = %do.end21, %do.end
  %retval.1 = phi i32 [ %6, %do.end21 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %prop) #11
  br label %cleanup56

for.inc:                                          ; preds = %atl_clk_enable.exit, %if.end43.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %prop) #11
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call.i106 = call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 4) #11
  br label %cleanup56

cleanup56:                                        ; preds = %for.end, %cleanup, %if.end.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ %ret.1, %for.end ], [ -19, %entry.cleanup56_crit_edge ], [ -12, %if.end.cleanup56_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__of_table_dra7_atl_clock, !1, !"__of_table_dra7_atl_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 217, i32 1}
!2 = !{ptr @__initcall__kmod_clk_dra7_atl__184_312_dra7_atl_clk_driver_init6, !3, !"__initcall__kmod_clk_dra7_atl__184_312_dra7_atl_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 312, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 180, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_dra7_atl_clock_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_dra7_atl_clock_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 192, i32 3}
!12 = !{ptr @of_dra7_atl_clock_setup._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_dra7_atl_clock_setup._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @atl_clk_ops, !15, !"atl_clk_ops", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 162, i32 29}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 88, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @atl_clk_enable._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @atl_clk_enable._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 306, i32 11}
!25 = !{ptr @dra7_atl_clk_driver, !26, !"dra7_atl_clk_driver", i1 false, i1 false}
!26 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 304, i32 31}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 248, i32 41}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 252, i32 4}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @of_dra7_atl_clk_probe._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @of_dra7_atl_clk_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 259, i32 4}
!36 = !{ptr @of_dra7_atl_clk_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @of_dra7_atl_clk_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 269, i32 32}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 272, i32 41}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 274, i32 42}
!44 = !{ptr @of_dra7_atl_clk_match_tbl, !45, !"of_dra7_atl_clk_match_tbl", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clk-dra7-atl.c", i32 299, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 4984037}
