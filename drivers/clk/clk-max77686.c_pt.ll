; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-max77686.c_pt.bc'
source_filename = "../drivers/clk/clk-max77686.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max77686_hw_clk_info = type { ptr, i32, i32, i32 }
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
%struct.max77686_clk_driver_data = type { i32, ptr, i32 }
%struct.max77686_clk_init_data = type { ptr, %struct.clk_hw, %struct.clk_init_data, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_max77686__288_288_max77686_clk_driver_init6 = internal global ptr @max77686_clk_driver_init, section ".initcall6.init", align 4
@max77686_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77686_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77686_clk_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77686_clk_driver_exit = internal global ptr @max77686_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [50 x i8] c"clk_max77686.description=MAXIM 77686 Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"clk_max77686.author=Jonghwa Lee <jonghwa3.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"clk_max77686.file=drivers/clk/clk-max77686\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"clk_max77686.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77686-clk\00", [19 x i8] zeroinitializer }, align 32
@max77686_clk_id = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-clk\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max77802-clk\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77620-clock\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get rtc regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77686_clk_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-max77686.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr = internal global ptr @max77686_clk_probe._entry, section ".printk_index", align 4
@max77686_hw_clks_info = internal constant { [3 x %struct.max77686_hw_clk_info], [48 x i8] } { [3 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.22, i32 127, i32 1, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.23, i32 127, i32 2, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.24, i32 127, i32 4, i32 0 }], [48 x i8] zeroinitializer }, align 32
@max77802_hw_clks_info = internal constant { [2 x %struct.max77686_hw_clk_info], [32 x i8] } { [2 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.22, i32 181, i32 1, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.23, i32 181, i32 2, i32 0 }], [32 x i8] zeroinitializer }, align 32
@max77620_hw_clks_info = internal constant { [1 x %struct.max77686_hw_clk_info], [16 x i8] } { [1 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.25, i32 3, i32 4, i32 0 }], [16 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown Chip ID\0A\00", [47 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr.8 = internal global ptr @max77686_clk_probe._entry.6, section ".printk_index", align 4
@max77686_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @max77686_clk_prepare, ptr @max77686_clk_unprepare, ptr @max77686_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to clock register: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr.12 = internal global ptr @max77686_clk_probe._entry.10, section ".printk_index", align 4
@max77686_clk_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to clkdev register: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr.15 = internal global ptr @max77686_clk_probe._entry.13, section ".printk_index", align 4
@max77686_clk_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to register OF clock provider: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr.18 = internal global ptr @max77686_clk_probe._entry.16, section ".printk_index", align 4
@max77686_clk_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to config low-jitter: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max77686_clk_probe._entry_ptr.21 = internal global ptr @max77686_clk_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"32khz_ap\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"32khz_cp\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"32khz_pmic\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"32khz_out0\00", [21 x i8] zeroinitializer }, align 32
@of_clk_max77686_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_clk_max77686_get\00", [44 x i8] zeroinitializer }, align 32
@of_clk_max77686_get._entry_ptr = internal global ptr @of_clk_max77686_get._entry, section ".printk_index", align 4
@switch.table.max77686_clk_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @max77686_hw_clks_info, ptr @max77802_hw_clks_info, ptr @max77620_hw_clks_info], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"max77686_clk_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 280, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"max77686_clk_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 272, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 177, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"max77686_hw_clks_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 55, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"max77802_hw_clks_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 74, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"max77620_hw_clks_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 88, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 200, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"max77686_clk_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 140, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 224, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 234, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 242, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 252, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 264, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 57, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 62, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 67, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 90, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [30 x i8] c"../drivers/clk/clk-max77686.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 154, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [32 x i8] c"switch.table.max77686_clk_probe\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max77686_clk_driver_exit, ptr @__initcall__kmod_clk_max77686__288_288_max77686_clk_driver_init6, ptr @max77686_clk_driver_exit, ptr @max77686_clk_probe._entry, ptr @max77686_clk_probe._entry.10, ptr @max77686_clk_probe._entry.13, ptr @max77686_clk_probe._entry.16, ptr @max77686_clk_probe._entry.19, ptr @max77686_clk_probe._entry.6, ptr @max77686_clk_probe._entry_ptr, ptr @max77686_clk_probe._entry_ptr.12, ptr @max77686_clk_probe._entry_ptr.15, ptr @max77686_clk_probe._entry_ptr.18, ptr @max77686_clk_probe._entry_ptr.21, ptr @max77686_clk_probe._entry_ptr.8, ptr @of_clk_max77686_get._entry, ptr @of_clk_max77686_get._entry_ptr, ptr @max77686_clk_driver, ptr @.str, ptr @max77686_clk_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max77686_hw_clks_info, ptr @max77802_hw_clks_info, ptr @max77620_hw_clks_info, ptr @.str.7, ptr @max77686_clk_ops, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.max77686_clk_probe], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_hw_clks_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_hw_clks_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_hw_clks_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_clk_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_max77686_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77686_clk_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77686_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2, align 8
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup79

if.end6:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %switch.lookup, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup79

switch.lookup:                                    ; preds = %if.end6
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.max77686_clk_probe, i32 0, i32 %5
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.offset = sub i32 3, %5
  %num_clks13 = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %num_clks13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.offset, ptr %num_clks13, align 4
  %10 = mul nuw nsw i32 %switch.offset, 48
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %10, i32 noundef 3520) #6
  %max_clk_data = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %max_clk_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %max_clk_data, align 4
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %switch.lookup.cleanup79_crit_edge, label %for.cond.preheader

switch.lookup.cleanup79_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

for.cond.preheader:                               ; preds = %switch.lookup
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %12 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !76
  %13 = ptrtoint ptr %max_clk_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %max_clk_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %14, align 4
  %clk_info = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %clk_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %switch.load, ptr %clk_info, align 4
  %flags = getelementptr %struct.max77686_hw_clk_info, ptr %switch.load, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %clk_idata = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 2
  %flags24 = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags24, align 4
  %ops = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @max77686_clk_ops, ptr %ops, align 4
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %for.cond.preheader.if.else_crit_edge, label %land.lhs.true

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.cond.preheader
  %call.i144 = call i32 @of_property_read_string_helper(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i144)
  %tobool29.not = icmp sgt i32 %call.i144, -1
  br i1 %tobool29.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  br label %if.end36

if.end36:                                         ; preds = %if.else, %land.lhs.true.if.end36_crit_edge
  %storemerge.in = phi ptr [ %switch.load, %if.else ], [ %clk_name, %land.lhs.true.if.end36_crit_edge ]
  %23 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %24 = ptrtoint ptr %clk_idata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %storemerge, ptr %clk_idata, align 4
  %hw = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 1
  %init = getelementptr %struct.max77686_clk_init_data, ptr %14, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %clk_idata, ptr %init, align 4
  %call39 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %if.end36.do.end44_crit_edge

if.end36.do.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end44:                                         ; preds = %if.end36.2.do.end44_crit_edge, %if.end36.1.do.end44_crit_edge, %if.end36.do.end44_crit_edge
  %call39.lcssa = phi i32 [ %call39, %if.end36.do.end44_crit_edge ], [ %call39.1, %if.end36.1.do.end44_crit_edge ], [ %call39.2, %if.end36.2.do.end44_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call39.lcssa) #9
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end36
  %26 = ptrtoint ptr %clk_idata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_idata, align 4
  %call49 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev1, ptr noundef %hw, ptr noundef %27, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end45.do.end54_crit_edge, label %for.inc

if.end45.do.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

do.end54:                                         ; preds = %if.end45.2.do.end54_crit_edge, %if.end45.1.do.end54_crit_edge, %if.end45.do.end54_crit_edge
  %call49.lcssa = phi i32 [ %call49, %if.end45.do.end54_crit_edge ], [ %call49.1, %if.end45.1.do.end54_crit_edge ], [ %call49.2, %if.end45.2.do.end54_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call49.lcssa) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end54, %do.end44
  %retval.1.ph = phi i32 [ %call49.lcssa, %do.end54 ], [ %call39.lcssa, %do.end44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  br label %cleanup79

for.inc:                                          ; preds = %if.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %exitcond.not = icmp eq i32 %5, 2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %28 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !76
  %29 = ptrtoint ptr %max_clk_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %max_clk_data, align 4
  %arrayidx.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call3, ptr %arrayidx.1, align 4
  %arrayidx22.1 = getelementptr %struct.max77686_hw_clk_info, ptr %switch.load, i32 1
  %clk_info.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 3
  %32 = ptrtoint ptr %clk_info.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx22.1, ptr %clk_info.1, align 4
  %flags.1 = getelementptr %struct.max77686_hw_clk_info, ptr %switch.load, i32 1, i32 3
  %33 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.1, align 4
  %clk_idata.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 2
  %flags24.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 2, i32 6
  %35 = ptrtoint ptr %flags24.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags24.1, align 4
  %ops.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 2, i32 1
  %36 = ptrtoint ptr %ops.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @max77686_clk_ops, ptr %ops.1, align 4
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %tobool26.not.1 = icmp eq ptr %38, null
  br i1 %tobool26.not.1, label %for.body.1.if.else.1_crit_edge, label %land.lhs.true.1

for.body.1.if.else.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %call.i144.1 = call i32 @of_property_read_string_helper(ptr noundef nonnull %38, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i144.1)
  %tobool29.not.1 = icmp sgt i32 %call.i144.1, -1
  br i1 %tobool29.not.1, label %land.lhs.true.1.if.end36.1_crit_edge, label %land.lhs.true.1.if.else.1_crit_edge

land.lhs.true.1.if.else.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

land.lhs.true.1.if.end36.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.1

if.else.1:                                        ; preds = %land.lhs.true.1.if.else.1_crit_edge, %for.body.1.if.else.1_crit_edge
  br label %if.end36.1

if.end36.1:                                       ; preds = %if.else.1, %land.lhs.true.1.if.end36.1_crit_edge
  %storemerge.in.1 = phi ptr [ %arrayidx22.1, %if.else.1 ], [ %clk_name, %land.lhs.true.1.if.end36.1_crit_edge ]
  %39 = ptrtoint ptr %storemerge.in.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %storemerge.1 = load ptr, ptr %storemerge.in.1, align 4
  %40 = ptrtoint ptr %clk_idata.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %storemerge.1, ptr %clk_idata.1, align 4
  %hw.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 1
  %init.1 = getelementptr %struct.max77686_clk_init_data, ptr %30, i32 1, i32 1, i32 2
  %41 = ptrtoint ptr %init.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %clk_idata.1, ptr %init.1, align 4
  %call39.1 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %if.end45.1, label %if.end36.1.do.end44_crit_edge

if.end36.1.do.end44_crit_edge:                    ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end45.1:                                       ; preds = %if.end36.1
  %42 = ptrtoint ptr %clk_idata.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_idata.1, align 4
  %call49.1 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev1, ptr noundef %hw.1, ptr noundef %43, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %cmp50.1 = icmp slt i32 %call49.1, 0
  br i1 %cmp50.1, label %if.end45.1.do.end54_crit_edge, label %for.inc.1

if.end45.1.do.end54_crit_edge:                    ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

for.inc.1:                                        ; preds = %if.end45.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %exitcond.not.1 = icmp eq i32 %5, 1
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %44 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !76
  %45 = ptrtoint ptr %max_clk_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %max_clk_data, align 4
  %arrayidx.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call3, ptr %arrayidx.2, align 4
  %arrayidx22.2 = getelementptr %struct.max77686_hw_clk_info, ptr %switch.load, i32 2
  %clk_info.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 3
  %48 = ptrtoint ptr %clk_info.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx22.2, ptr %clk_info.2, align 4
  %flags.2 = getelementptr %struct.max77686_hw_clk_info, ptr %switch.load, i32 2, i32 3
  %49 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.2, align 4
  %clk_idata.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 2
  %flags24.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 2, i32 6
  %51 = ptrtoint ptr %flags24.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flags24.2, align 4
  %ops.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 2, i32 1
  %52 = ptrtoint ptr %ops.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @max77686_clk_ops, ptr %ops.2, align 4
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %tobool26.not.2 = icmp eq ptr %54, null
  br i1 %tobool26.not.2, label %for.body.2.if.else.2_crit_edge, label %land.lhs.true.2

for.body.2.if.else.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.2

land.lhs.true.2:                                  ; preds = %for.body.2
  %call.i144.2 = call i32 @of_property_read_string_helper(ptr noundef nonnull %54, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i144.2)
  %tobool29.not.2 = icmp sgt i32 %call.i144.2, -1
  br i1 %tobool29.not.2, label %land.lhs.true.2.if.end36.2_crit_edge, label %land.lhs.true.2.if.else.2_crit_edge

land.lhs.true.2.if.else.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.2

land.lhs.true.2.if.end36.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.2

if.else.2:                                        ; preds = %land.lhs.true.2.if.else.2_crit_edge, %for.body.2.if.else.2_crit_edge
  br label %if.end36.2

if.end36.2:                                       ; preds = %if.else.2, %land.lhs.true.2.if.end36.2_crit_edge
  %storemerge.in.2 = phi ptr [ %arrayidx22.2, %if.else.2 ], [ %clk_name, %land.lhs.true.2.if.end36.2_crit_edge ]
  %55 = ptrtoint ptr %storemerge.in.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %storemerge.2 = load ptr, ptr %storemerge.in.2, align 4
  %56 = ptrtoint ptr %clk_idata.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %storemerge.2, ptr %clk_idata.2, align 4
  %hw.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 1
  %init.2 = getelementptr %struct.max77686_clk_init_data, ptr %46, i32 2, i32 1, i32 2
  %57 = ptrtoint ptr %init.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %clk_idata.2, ptr %init.2, align 4
  %call39.2 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %tobool40.not.2 = icmp eq i32 %call39.2, 0
  br i1 %tobool40.not.2, label %if.end45.2, label %if.end36.2.do.end44_crit_edge

if.end36.2.do.end44_crit_edge:                    ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end45.2:                                       ; preds = %if.end36.2
  %58 = ptrtoint ptr %clk_idata.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_idata.2, align 4
  %call49.2 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev1, ptr noundef %hw.2, ptr noundef %59, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %cmp50.2 = icmp slt i32 %call49.2, 0
  br i1 %cmp50.2, label %if.end45.2.do.end54_crit_edge, label %for.inc.2

if.end45.2.do.end54_crit_edge:                    ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

for.inc.2:                                        ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %tobool58.not = icmp eq ptr %61, null
  br i1 %tobool58.not, label %for.end.if.end67_crit_edge, label %if.then59

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then59:                                        ; preds = %for.end
  %call60 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_max77686_get, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %if.then59.if.end67_crit_edge

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call60) #9
  br label %cleanup79

if.end67:                                         ; preds = %if.then59.if.end67_crit_edge, %for.end.if.end67_crit_edge
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp69 = icmp eq i32 %63, 1
  br i1 %cmp69, label %if.then70, label %if.end67.cleanup79_crit_edge

if.end67.cleanup79_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.then70:                                        ; preds = %if.end67
  %call.i145 = call i32 @regmap_update_bits_base(ptr noundef nonnull %call3, i32 noundef 181, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp72 = icmp slt i32 %call.i145, 0
  br i1 %cmp72, label %do.end76, label %if.then70.cleanup79_crit_edge

if.then70.cleanup79_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i145) #9
  br label %cleanup79

cleanup79:                                        ; preds = %do.end76, %if.then70.cleanup79_crit_edge, %if.end67.cleanup79_crit_edge, %do.end65, %cleanup.thread, %switch.lookup.cleanup79_crit_edge, %do.end12, %do.end, %entry.cleanup79_crit_edge
  %retval.2 = phi i32 [ -22, %do.end12 ], [ %call60, %do.end65 ], [ %call.i145, %do.end76 ], [ -19, %do.end ], [ -12, %entry.cleanup79_crit_edge ], [ -12, %switch.lookup.cleanup79_crit_edge ], [ 0, %if.then70.cleanup79_crit_edge ], [ 0, %if.end67.cleanup79_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_max77686_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clks = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max_clk_data = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %max_clk_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max_clk_data, align 4
  %hw = getelementptr %struct.max77686_clk_init_data, ptr %5, i32 %1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %clk_info = getelementptr i8, ptr %hw, i32 40
  %2 = ptrtoint ptr %clk_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_info, align 4
  %clk_reg = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_reg, align 4
  %clk_enable_mask = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk_enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77686_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %clk_info = getelementptr i8, ptr %hw, i32 40
  %2 = ptrtoint ptr %clk_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_info, align 4
  %clk_reg = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_reg, align 4
  %clk_enable_mask = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk_enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_enable_mask, align 4
  %neg = xor i32 %7, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !76
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %clk_info = getelementptr i8, ptr %hw, i32 40
  %3 = ptrtoint ptr %clk_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_info, align 4
  %clk_reg = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %val) #6
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
  %9 = ptrtoint ptr %clk_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_info, align 4
  %clk_enable_mask = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %clk_enable_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_enable_mask, align 4
  %and = and i32 %12, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max77686_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_clk_max77686__288_288_max77686_clk_driver_init6, !1, !"__initcall__kmod_clk_max77686__288_288_max77686_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-max77686.c", i32 288, i32 1}
!2 = !{ptr @__exitcall_max77686_clk_driver_exit, !1, !"__exitcall_max77686_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-max77686.c", i32 290, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-max77686.c", i32 291, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-max77686.c", i32 292, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-max77686.c", i32 282, i32 12}
!12 = !{ptr @max77686_clk_driver, !13, !"max77686_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-max77686.c", i32 280, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-max77686.c", i32 177, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max77686_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max77686_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-max77686.c", i32 200, i32 3}
!24 = !{ptr @max77686_clk_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max77686_clk_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-max77686.c", i32 224, i32 10}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-max77686.c", i32 234, i32 4}
!30 = !{ptr @max77686_clk_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max77686_clk_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-max77686.c", i32 242, i32 4}
!34 = !{ptr @max77686_clk_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max77686_clk_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-max77686.c", i32 252, i32 4}
!38 = !{ptr @max77686_clk_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max77686_clk_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-max77686.c", i32 264, i32 4}
!42 = !{ptr @max77686_clk_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max77686_clk_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-max77686.c", i32 57, i32 11}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-max77686.c", i32 62, i32 11}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/clk-max77686.c", i32 67, i32 11}
!50 = !{ptr @max77686_hw_clks_info, !51, !"max77686_hw_clks_info", i1 false, i1 false}
!51 = !{!"../drivers/clk/clk-max77686.c", i32 55, i32 22}
!52 = !{ptr @max77802_hw_clks_info, !53, !"max77802_hw_clks_info", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-max77686.c", i32 74, i32 22}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-max77686.c", i32 90, i32 11}
!56 = !{ptr @max77620_hw_clks_info, !57, !"max77620_hw_clks_info", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-max77686.c", i32 88, i32 22}
!58 = !{ptr @max77686_clk_ops, !59, !"max77686_clk_ops", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-max77686.c", i32 140, i32 29}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-max77686.c", i32 154, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @of_clk_max77686_get._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @of_clk_max77686_get._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @max77686_clk_id, !66, !"max77686_clk_id", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-max77686.c", i32 272, i32 40}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
