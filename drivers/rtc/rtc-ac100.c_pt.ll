; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ac100.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ac100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.ac100_rtc_dev = type { ptr, ptr, ptr, i32, i32, ptr, [3 x %struct.ac100_clkout], ptr }
%struct.ac100_clkout = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ac100_dev = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_rtc_ac100__227_639_ac100_rtc_driver_init6 = internal global ptr @ac100_rtc_driver_init, section ".initcall6.init", align 4
@ac100_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ac100_rtc_probe, ptr @ac100_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ac100_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ac100_rtc_driver_exit = internal global ptr @ac100_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [48 x i8] c"rtc_ac100.description=X-Powers AC100 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [46 x i8] c"rtc_ac100.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [37 x i8] c"rtc_ac100.file=drivers/rtc/rtc-ac100\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [25 x i8] c"rtc_ac100.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ac100-rtc\00", [22 x i8] zeroinitializer }, align 32
@ac100_rtc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,ac100-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ac100_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ac100_rtc_get_time, ptr @ac100_rtc_set_time, ptr @ac100_rtc_get_alarm, ptr @ac100_rtc_set_alarm, ptr null, ptr @ac100_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ac100_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ac100_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-ac100.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ac100_rtc_probe._entry_ptr = internal global ptr @ac100_rtc_probe._entry, section ".printk_index", align 4
@ac100_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtc only supports year in range %d - %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ac100_rtc_set_time\00", [45 x i8] zeroinitializer }, align 32
@ac100_rtc_set_time._entry_ptr = internal global ptr @ac100_rtc_set_time._entry, section ".printk_index", align 4
@ac100_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"alarm only supports year in range %d - %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ac100_rtc_set_alarm\00", [44 x i8] zeroinitializer }, align 32
@ac100_rtc_set_alarm._entry_ptr = internal global ptr @ac100_rtc_set_alarm._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ac100-rtc-32k\00", [18 x i8] zeroinitializer }, align 32
@__const.ac100_rtc_register_clks.parents = private unnamed_addr constant [2 x ptr] [ptr @.str.10, ptr null], align 8
@ac100_rtc_register_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register RTC-32k clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ac100_rtc_register_clks\00", [40 x i8] zeroinitializer }, align 32
@ac100_rtc_register_clks._entry_ptr = internal global ptr @ac100_rtc_register_clks._entry, section ".printk_index", align 4
@ac100_rtc_register_clks._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get ADDA 4M clock\0A\00", [35 x i8] zeroinitializer }, align 32
@ac100_rtc_register_clks._entry_ptr.15 = internal global ptr @ac100_rtc_register_clks._entry.13, section ".printk_index", align 4
@ac100_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @ac100_clkout_prepare, ptr @ac100_clkout_unprepare, ptr @ac100_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac100_clkout_recalc_rate, ptr null, ptr @ac100_clkout_determine_rate, ptr @ac100_clkout_set_parent, ptr @ac100_clkout_get_parent, ptr @ac100_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@ac100_rtc_register_clks._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register clk '%s': %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ac100_rtc_register_clks._entry_ptr.19 = internal global ptr @ac100_rtc_register_clks._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ac100-cko1-rtc\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ac100-cko2-rtc\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ac100-cko3-rtc\00", [17 x i8] zeroinitializer }, align 32
@ac100_clkout_prediv = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 32 }, %struct.clk_div_table { i32 6, i32 64 }, %struct.clk_div_table { i32 7, i32 122 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"ac100_rtc_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 631, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 635, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ac100_rtc_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 625, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"ac100_rtc_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 558, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 595, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 417, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 494, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 309, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 325, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 332, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"ac100_clkout_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 295, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 346, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 354, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 85, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 86, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"ac100_clkout_prediv\00", align 1
@___asan_gen_.111 = private constant [27 x i8] c"../drivers/rtc/rtc-ac100.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 106, i32 35 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ac100_rtc_driver_exit, ptr @__initcall__kmod_rtc_ac100__227_639_ac100_rtc_driver_init6, ptr @ac100_rtc_driver_exit, ptr @ac100_rtc_probe._entry, ptr @ac100_rtc_probe._entry_ptr, ptr @ac100_rtc_register_clks._entry, ptr @ac100_rtc_register_clks._entry.13, ptr @ac100_rtc_register_clks._entry.17, ptr @ac100_rtc_register_clks._entry_ptr, ptr @ac100_rtc_register_clks._entry_ptr.15, ptr @ac100_rtc_register_clks._entry_ptr.19, ptr @ac100_rtc_set_alarm._entry, ptr @ac100_rtc_set_alarm._entry_ptr, ptr @ac100_rtc_set_time._entry, ptr @ac100_rtc_set_time._entry_ptr, ptr @ac100_rtc_driver, ptr @.str, ptr @ac100_rtc_match, ptr @ac100_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @ac100_clkout_ops, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ac100_clkout_prediv], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_register_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_register_clks._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_rtc_register_clks._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac100_clkout_prediv to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ac100_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ac100_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ac100_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parents.i = alloca [2 x ptr], align 8
  %init.i = alloca %struct.clk_init_data, align 4
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev4, align 4
  %regmap = getelementptr inbounds %struct.ac100_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %regmap5, align 4
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call6, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call12, i32 0, i32 3
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ac100_rtc_ops, ptr %ops, align 8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.dev_name.exit_crit_edge

if.end18.dev_name.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end18.dev_name.exit_crit_edge ]
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef null, ptr noundef nonnull @ac100_rtc_irq, i32 noundef 8320, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end28:                                         ; preds = %dev_name.exit
  %19 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap5, align 4
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 199, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %21 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap5, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 208, i32 noundef 0) #6
  %23 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap5, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 209, i32 noundef 1) #6
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev4, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents.i) #6
  %29 = load i64, ptr @__const.ac100_rtc_register_clks.parents, align 8
  %30 = ptrtoint ptr %parents.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %parents.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef 16, i32 noundef 3520) #6
  %clk_data.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %clk_data.i, align 4
  %tobool.not.i72 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i72, label %if.end28.ac100_rtc_register_clks.exit.thread_crit_edge, label %if.end.i73

if.end28.ac100_rtc_register_clks.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %ac100_rtc_register_clks.exit.thread

if.end.i73:                                       ; preds = %if.end28
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 4
  %call5.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %33, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #6
  %rtc_32k_clk.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %rtc_32k_clk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i, ptr %rtc_32k_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ac100_rtc_register_clks.exit, label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i73
  %call13.i = tail call ptr @of_clk_get_parent_name(ptr noundef %28, i32 noundef 0) #6
  %arrayidx.i = getelementptr inbounds [2 x ptr], ptr %parents.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call13.i, ptr %arrayidx.i, align 4
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end12.i
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %arrayidx22.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %36 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 50331647, ptr %num_parents.i, align 4
  %37 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.20, ptr %init.i, align 4
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ac100_clkout_ops, ptr %ops.i, align 4
  %39 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %parents.i, ptr %parent_names.i, align 4
  %40 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %parent_data.i, align 4
  %41 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %parent_hws.i, align 4
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags.i, align 4
  %call.i90.i = call i32 @of_property_read_string_helper(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef nonnull %init.i, i32 noundef 1, i32 noundef 0) #6
  %43 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap5, align 4
  %regmap26.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %45 = ptrtoint ptr %regmap26.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %regmap26.i, align 4
  %offset.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -63, ptr %offset.i, align 4
  %init27.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %init27.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %init.i, ptr %init27.i, align 4
  %48 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev4, align 4
  %call30.i = call i32 @devm_clk_hw_register(ptr noundef %49, ptr noundef %arrayidx22.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %for.inc.i, label %for.cond.preheader.i.cleanup.i_crit_edge

for.cond.preheader.i.cleanup.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.14) #9
  br label %ac100_rtc_register_clks.exit.thread

cleanup.i:                                        ; preds = %for.inc.1.i.cleanup.i_crit_edge, %for.inc.i.cleanup.i_crit_edge, %for.cond.preheader.i.cleanup.i_crit_edge
  %call30.lcssa.i = phi i32 [ %call30.i, %for.cond.preheader.i.cleanup.i_crit_edge ], [ %call30.1.i, %for.inc.i.cleanup.i_crit_edge ], [ %call30.2.i, %for.inc.1.i.cleanup.i_crit_edge ]
  %52 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev4, align 4
  %54 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.18, ptr noundef %55, i32 noundef %call30.lcssa.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %err_unregister_rtc_32k.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %56 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk_data.i, align 4
  %arrayidx41.i = getelementptr %struct.clk_hw_onecell_data, ptr %57, i32 0, i32 1, i32 0
  %58 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx22.i, ptr %arrayidx41.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %arrayidx22.1.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %59 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 50331647, ptr %num_parents.i, align 4
  %60 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.21, ptr %init.i, align 4
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ac100_clkout_ops, ptr %ops.i, align 4
  %62 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %parents.i, ptr %parent_names.i, align 4
  %63 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %parent_data.i, align 4
  %64 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %parent_hws.i, align 4
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %flags.i, align 4
  %call.i90.1.i = call i32 @of_property_read_string_helper(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef nonnull %init.i, i32 noundef 1, i32 noundef 1) #6
  %66 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap5, align 4
  %regmap26.1.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %68 = ptrtoint ptr %regmap26.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %regmap26.1.i, align 4
  %offset.1.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 1, i32 2
  %69 = ptrtoint ptr %offset.1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -62, ptr %offset.1.i, align 4
  %init27.1.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 1, i32 0, i32 2
  %70 = ptrtoint ptr %init27.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %init.i, ptr %init27.1.i, align 4
  %71 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev4, align 4
  %call30.1.i = call i32 @devm_clk_hw_register(ptr noundef %72, ptr noundef %arrayidx22.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1.i)
  %tobool31.not.1.i = icmp eq i32 %call30.1.i, 0
  br i1 %tobool31.not.1.i, label %for.inc.1.i, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %73 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk_data.i, align 4
  %arrayidx41.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %74, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx22.1.i, ptr %arrayidx41.1.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %arrayidx22.2.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %76 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 50331647, ptr %num_parents.i, align 4
  %77 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.22, ptr %init.i, align 4
  %78 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ac100_clkout_ops, ptr %ops.i, align 4
  %79 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %parents.i, ptr %parent_names.i, align 4
  %80 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %parent_data.i, align 4
  %81 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %parent_hws.i, align 4
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %flags.i, align 4
  %call.i90.2.i = call i32 @of_property_read_string_helper(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef nonnull %init.i, i32 noundef 1, i32 noundef 2) #6
  %83 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap5, align 4
  %regmap26.2.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %85 = ptrtoint ptr %regmap26.2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %regmap26.2.i, align 4
  %offset.2.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 2, i32 2
  %86 = ptrtoint ptr %offset.2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -61, ptr %offset.2.i, align 4
  %init27.2.i = getelementptr %struct.ac100_rtc_dev, ptr %call.i, i32 0, i32 6, i32 2, i32 0, i32 2
  %87 = ptrtoint ptr %init27.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %init.i, ptr %init27.2.i, align 4
  %88 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev4, align 4
  %call30.2.i = call i32 @devm_clk_hw_register(ptr noundef %89, ptr noundef %arrayidx22.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.2.i)
  %tobool31.not.2.i = icmp eq i32 %call30.2.i, 0
  br i1 %tobool31.not.2.i, label %for.inc.2.i, label %for.inc.1.i.cleanup.i_crit_edge

for.inc.1.i.cleanup.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %90 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk_data.i, align 4
  %arrayidx41.2.i = getelementptr %struct.clk_hw_onecell_data, ptr %91, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx22.2.i, ptr %arrayidx41.2.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %93 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_data.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %94, align 4
  %96 = load ptr, ptr %clk_data.i, align 4
  %call45.i = call i32 @of_clk_add_hw_provider(ptr noundef %28, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %ac100_rtc_register_clks.exit.thread77, label %for.inc.2.i.err_unregister_rtc_32k.i_crit_edge

for.inc.2.i.err_unregister_rtc_32k.i_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unregister_rtc_32k.i

ac100_rtc_register_clks.exit.thread77:            ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents.i) #6
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  %call40 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %98) #6
  br label %cleanup

err_unregister_rtc_32k.i:                         ; preds = %for.inc.2.i.err_unregister_rtc_32k.i_crit_edge, %cleanup.i
  %ret.0.i = phi i32 [ %call30.lcssa.i, %cleanup.i ], [ %call45.i, %for.inc.2.i.err_unregister_rtc_32k.i_crit_edge ]
  %99 = ptrtoint ptr %rtc_32k_clk.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rtc_32k_clk.i, align 4
  %clk50.i = getelementptr inbounds %struct.clk_hw, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %clk50.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk50.i, align 4
  call void @clk_unregister_fixed_rate(ptr noundef %102) #6
  br label %ac100_rtc_register_clks.exit.thread

ac100_rtc_register_clks.exit.thread:              ; preds = %err_unregister_rtc_32k.i, %do.end19.i, %if.end28.ac100_rtc_register_clks.exit.thread_crit_edge
  %retval.0.i74.ph = phi i32 [ -12, %if.end28.ac100_rtc_register_clks.exit.thread_crit_edge ], [ -22, %do.end19.i ], [ %ret.0.i, %err_unregister_rtc_32k.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents.i) #6
  br label %cleanup

ac100_rtc_register_clks.exit:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %call5.i to i32
  %104 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.11, i32 noundef %103) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ac100_rtc_register_clks.exit, %ac100_rtc_register_clks.exit.thread, %ac100_rtc_register_clks.exit.thread77, %do.end, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then15 ], [ %call24, %do.end ], [ %call40, %ac100_rtc_register_clks.exit.thread77 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %103, %ac100_rtc_register_clks.exit ], [ %retval.0.i74.ph, %ac100_rtc_register_clks.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #6
  %rtc_32k_clk.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rtc_32k_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_32k_clk.i, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_unregister_fixed_rate(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #6
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 209, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.then3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef 160) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %call5 = call i32 @regmap_write(ptr noundef %1, i32 noundef 209, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.out_crit_edge

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ac100_rtc_dev, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap1.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 208, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end8, %if.then3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %ops_lock15 = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_get_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rtc_tm) #2 align 64 {
entry:
  %reg = alloca [7 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %reg) #6
  %4 = call ptr @memset(ptr %reg, i32 255, i32 14)
  %call2 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 200, ptr noundef nonnull %reg, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 6
  %6 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 2
  %10 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 1
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg, align 2
  %13 = trunc i16 %12 to i8
  %conv3 = and i8 %13, 127
  %call15 = call i32 @_bcd2bin(i8 noundef zeroext %conv3) #10
  %14 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call15, ptr %rtc_tm, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %10, align 2
  %17 = trunc i16 %16 to i8
  %conv19 = and i8 %17, 127
  %call36 = call i32 @_bcd2bin(i8 noundef zeroext %conv19) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call36, ptr %tm_min, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %9, align 2
  %21 = trunc i16 %20 to i8
  %conv42 = and i8 %21, 63
  %call59 = call i32 @_bcd2bin(i8 noundef zeroext %conv42) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call59, ptr %tm_hour, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %8, align 2
  %25 = trunc i16 %24 to i8
  %conv65 = and i8 %25, 7
  %call82 = call i32 @_bcd2bin(i8 noundef zeroext %conv65) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call82, ptr %tm_wday, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %7, align 2
  %29 = trunc i16 %28 to i8
  %conv88 = and i8 %29, 63
  %call105 = call i32 @_bcd2bin(i8 noundef zeroext %conv88) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %30 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call105, ptr %tm_mday, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %6, align 2
  %33 = trunc i16 %32 to i8
  %conv111 = and i8 %33, 31
  %call128 = call i32 @_bcd2bin(i8 noundef zeroext %conv111) #10
  %sub = add i32 %call128, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %tm_mon, align 4
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %5, align 2
  %conv134 = trunc i16 %36 to i8
  %call151 = call i32 @_bcd2bin(i8 noundef zeroext %conv134) #10
  %add154 = add i32 %call151, 70
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %37 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add154, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %reg) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %rtc_tm) #2 align 64 {
entry:
  %reg = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #6
  %4 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 6
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %5 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_year, align 4
  %sub = add i32 %6, -70
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %sub)
  %7 = icmp ugt i32 %sub, 169
  br i1 %7, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 1970, i32 noundef 2069) #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %8 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 7
  %9 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 4
  %11 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 1
  %14 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rtc_tm, align 4
  %call6 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = and i8 %call6, 127
  %conv8 = zext i8 %16 to i16
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv8, ptr %reg, align 2
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %call19 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  %20 = and i8 %call19, 127
  %conv24 = zext i8 %20 to i16
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv24, ptr %13, align 2
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour, align 4
  %call36 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #10
  %24 = and i8 %call36, 63
  %conv41 = zext i8 %24 to i16
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv41, ptr %12, align 2
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_wday, align 4
  %call53 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #10
  %28 = and i8 %call53, 7
  %conv58 = zext i8 %28 to i16
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv58, ptr %11, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %30 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_mday, align 4
  %call70 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #10
  %32 = and i8 %call70, 63
  %conv75 = zext i8 %32 to i16
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv75, ptr %10, align 2
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mon, align 4
  %add77 = add i32 %35, 1
  %call91 = tail call zeroext i8 @_bin2bcd(i32 noundef %add77) #10
  %36 = and i8 %call91, 31
  %conv96 = zext i8 %36 to i16
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv96, ptr %9, align 2
  %call105 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %conv106 = zext i8 %call105 to i16
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv106, ptr %4, align 2
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -32768, ptr %8, align 2
  %rem.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %40 = trunc i32 %6 to i16
  %rem1.i.lhs.trunc = add nuw nsw i16 %40, 1900
  %rem1.i160 = urem i16 %rem1.i.lhs.trunc, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1.i160)
  %tobool2.not.i = icmp ne i16 %rem1.i160, 0
  %or.cond.i.not = and i1 %tobool.not.i, %tobool2.not.i
  %rem3.i161 = urem i16 %rem1.i.lhs.trunc, 400
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem3.i161)
  %tobool4.not.i = icmp eq i16 %rem3.i161, 0
  %or.cond = select i1 %or.cond.i.not, i1 true, i1 %tobool4.not.i
  br i1 %or.cond, label %if.then116, label %cond.end.if.end120_crit_edge

cond.end.if.end120_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then116:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %41 = or i16 %conv106, -32768
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %4, align 2
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %cond.end.if.end120_crit_edge
  %call121 = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 200, ptr noundef nonnull %reg, i32 noundef 8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call121, %if.end120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_get_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %reg = alloca [7 x i16], align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %reg) #6
  %4 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i16], ptr %reg, i32 0, i32 6
  %10 = call ptr @memset(ptr %reg, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val, align 4, !annotation !74
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef 208, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %alrm, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 216, ptr noundef nonnull %reg, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg, align 2
  %19 = trunc i16 %18 to i8
  %conv11 = and i8 %19, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %conv11) #10
  %20 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call23, ptr %time, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 2
  %23 = trunc i16 %22 to i8
  %conv27 = and i8 %23, 127
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %conv27) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call44, ptr %tm_min, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %5, align 2
  %27 = trunc i16 %26 to i8
  %conv50 = and i8 %27, 63
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %conv50) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call67, ptr %tm_hour, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %6, align 2
  %31 = trunc i16 %30 to i8
  %conv73 = and i8 %31, 7
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %conv73) #10
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call90, ptr %tm_wday, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %7, align 2
  %35 = trunc i16 %34 to i8
  %conv96 = and i8 %35, 63
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %conv96) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call113, ptr %tm_mday, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %8, align 2
  %39 = trunc i16 %38 to i8
  %conv119 = and i8 %39, 31
  %call136 = call i32 @_bcd2bin(i8 noundef zeroext %conv119) #10
  %sub = add i32 %call136, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %tm_mon, align 4
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %9, align 2
  %conv142 = trunc i16 %42 to i8
  %call159 = call i32 @_bcd2bin(i8 noundef zeroext %conv142) #10
  %add162 = add i32 %call159, 70
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add162, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call2, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %reg = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #6
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %sub = add i32 %5, -70
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %sub)
  %6 = icmp ugt i32 %sub, 169
  br i1 %6, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 1970, i32 noundef 2069) #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %7 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 7
  %8 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 4
  %11 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i16], ptr %reg, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %14 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time, align 4
  %call6 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = and i8 %call6, 127
  %17 = zext i8 %16 to i16
  %conv8 = or i16 %17, -32768
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv8, ptr %reg, align 2
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min, align 4
  %call19 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %21 = and i8 %call19, 127
  %22 = zext i8 %21 to i16
  %conv25 = or i16 %22, -32768
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv25, ptr %13, align 2
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_hour, align 4
  %call37 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %26 = and i8 %call37, 63
  %27 = zext i8 %26 to i16
  %conv43 = or i16 %27, -32768
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv43, ptr %12, align 2
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_wday, align 4
  %call55 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #10
  %31 = and i8 %call55, 7
  %conv60 = zext i8 %31 to i16
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv60, ptr %11, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_mday, align 4
  %call72 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #10
  %35 = and i8 %call72, 63
  %36 = zext i8 %35 to i16
  %conv78 = or i16 %36, -32768
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv78, ptr %10, align 2
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mon, align 4
  %add80 = add i32 %39, 1
  %call94 = tail call zeroext i8 @_bin2bcd(i32 noundef %add80) #10
  %40 = and i8 %call94, 31
  %41 = zext i8 %40 to i16
  %conv100 = or i16 %41, -32768
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv100, ptr %9, align 2
  %call109 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %conv110 = zext i8 %call109 to i16
  %conv115 = or i16 %conv110, -32768
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv115, ptr %8, align 2
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -32768, ptr %7, align 2
  %call118 = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 216, ptr noundef nonnull %reg, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool.not = icmp eq i32 %call118, 0
  br i1 %tobool.not, label %if.end120, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %alrm, align 4
  %47 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i, align 4
  %regmap1.i = getelementptr inbounds %struct.ac100_rtc_dev, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp ne i8 %46, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %call2.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 208, i32 noundef %cond.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %cond.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2.i, %if.end120 ], [ %call118, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp ne i32 %en, 0
  %cond = zext i1 %tobool.not to i32
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 208, i32 noundef %cond) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset, align 4
  %conv = zext i8 %3 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ac100_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset, align 4
  %conv = zext i8 %3 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !74
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offset, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_recalc_rate(ptr noundef %hw, i32 noundef %prate) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !74
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offset, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %prate)
  %cmp.not = icmp eq i32 %prate, 32768
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %shr = lshr i32 %6, 5
  %and = and i32 %shr, 7
  %call2 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %prate, i32 noundef %and, ptr noundef nonnull @ac100_clkout_prediv, i32 noundef 0, i32 noundef 3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prate.addr.0 = phi i32 [ %call2, %if.then ], [ 32768, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %shr3 = lshr i32 %8, 1
  %and4 = and i32 %shr3, 7
  %call5 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %prate.addr.0, i32 noundef %and4, ptr noundef null, i32 noundef 2, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #2 align 64 {
entry:
  %prate.addr.i = alloca i32, align 4
  %tmp_prate.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42 = icmp sgt i32 %call, 0
  br i1 %cmp42, label %entry.for.body_crit_edge, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best.044 = phi i32 [ %best.2, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best_parent.043 = phi ptr [ %best_parent.2, %cleanup.for.body_crit_edge ], [ inttoptr (i32 -1 to ptr), %entry.for.body_crit_edge ]
  %call1 = call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.045) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call2 = call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #6
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prate.addr.i)
  %2 = ptrtoint ptr %prate.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %prate.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_prate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call2)
  %cmp.i = icmp eq i32 %call2, 32768
  br i1 %cmp.i, label %if.then.i, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call1.i.i = call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i.i, i32 noundef %1, ptr noundef nonnull %prate.addr.i, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  br label %ac100_clkout_round_rate.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %best_rate.030.i = phi i32 [ %best_rate.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.clk_div_table], ptr @ac100_clkout_prediv, i32 0, i32 %i.031.i
  %3 = ptrtoint ptr %prate.addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prate.addr.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, -1
  %sub.i = add i32 %add.i, %6
  %div4.i = udiv i32 %sub.i, %6
  %7 = ptrtoint ptr %tmp_prate.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div4.i, ptr %tmp_prate.i, align 4
  %call.i28.i = call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call1.i29.i = call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i28.i, i32 noundef %1, ptr noundef nonnull %tmp_prate.i, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call1.i29.i)
  %cmp6.i = icmp ult i32 %1, %call1.i29.i
  %sub9.i = sub i32 %1, %call1.i29.i
  %sub10.i = sub i32 %best_rate.030.i, %call1.i29.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %sub10.i)
  %cmp11.i = icmp ult i32 %sub9.i, %sub10.i
  %spec.select.i = select i1 %cmp11.i, i32 %call1.i29.i, i32 %best_rate.030.i
  %best_rate.1.i = select i1 %cmp6.i, i32 %best_rate.030.i, i32 %spec.select.i
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.i, label %for.body.i.ac100_clkout_round_rate.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.ac100_clkout_round_rate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ac100_clkout_round_rate.exit

ac100_clkout_round_rate.exit:                     ; preds = %for.body.i.ac100_clkout_round_rate.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call1.i.i, %if.then.i ], [ %best_rate.1.i, %for.body.i.ac100_clkout_round_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_prate.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prate.addr.i)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %retval.0.i)
  %cmp5 = icmp ult i32 %9, %retval.0.i
  br i1 %cmp5, label %ac100_clkout_round_rate.exit.cleanup_crit_edge, label %if.end7

ac100_clkout_round_rate.exit.cleanup_crit_edge:   ; preds = %ac100_clkout_round_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %ac100_clkout_round_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %9, %retval.0.i
  %sub10 = sub i32 %9, %best.044
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub10)
  %cmp11 = icmp ult i32 %sub, %sub10
  %spec.select = select i1 %cmp11, ptr %call1, ptr %best_parent.043
  %spec.select41 = select i1 %cmp11, i32 %retval.0.i, i32 %best.044
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ac100_clkout_round_rate.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_parent.2 = phi ptr [ %spec.select, %if.end7 ], [ %best_parent.043, %for.body.cleanup_crit_edge ], [ %best_parent.043, %ac100_clkout_round_rate.exit.cleanup_crit_edge ]
  %best.2 = phi i32 [ %spec.select41, %if.end7 ], [ %best.044, %for.body.cleanup_crit_edge ], [ %best.044, %ac100_clkout_round_rate.exit.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best.2)
  %tobool16.not = icmp eq i32 %best.2, 0
  br i1 %tobool16.not, label %for.end.cleanup20_crit_edge, label %if.end18

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %best_parent.2, ptr %best_parent_hw, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %best.2, ptr %best_parent_rate, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %best.2, ptr %req, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %if.end18, %for.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %for.end.cleanup20_crit_edge ], [ -22, %entry.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool.not = icmp eq i8 %index, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef 16, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ac100_clkout_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !74
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offset, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 4
  %conv1 = and i8 %8, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i8 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac100_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %prate)
  %cmp2.not = icmp eq i32 %prate, 32768
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  %or.cond = or i1 %cmp2.not, %cmp
  br i1 %or.cond, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mul.1 = shl i32 %rate, 1
  %call.1 = tail call i32 @divider_get_val(i32 noundef %mul.1, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1)
  %cmp.1 = icmp sgt i32 %call.1, -1
  br i1 %cmp.1, label %land.rhs.if.end7_crit_edge, label %land.rhs.1

land.rhs.if.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.1:                                       ; preds = %land.rhs
  %mul.2 = shl i32 %rate, 2
  %call.2 = tail call i32 @divider_get_val(i32 noundef %mul.2, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2)
  %cmp.2 = icmp sgt i32 %call.2, -1
  br i1 %cmp.2, label %land.rhs.1.if.end7_crit_edge, label %land.rhs.2

land.rhs.1.if.end7_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.2:                                       ; preds = %land.rhs.1
  %mul.3 = shl i32 %rate, 3
  %call.3 = tail call i32 @divider_get_val(i32 noundef %mul.3, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.3)
  %cmp.3 = icmp sgt i32 %call.3, -1
  br i1 %cmp.3, label %land.rhs.2.if.end7_crit_edge, label %land.rhs.3

land.rhs.2.if.end7_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.3:                                       ; preds = %land.rhs.2
  %mul.4 = shl i32 %rate, 4
  %call.4 = tail call i32 @divider_get_val(i32 noundef %mul.4, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.4)
  %cmp.4 = icmp sgt i32 %call.4, -1
  br i1 %cmp.4, label %land.rhs.3.if.end7_crit_edge, label %land.rhs.4

land.rhs.3.if.end7_crit_edge:                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.4:                                       ; preds = %land.rhs.3
  %mul.5 = shl i32 %rate, 5
  %call.5 = tail call i32 @divider_get_val(i32 noundef %mul.5, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.5)
  %cmp.5 = icmp sgt i32 %call.5, -1
  br i1 %cmp.5, label %land.rhs.4.if.end7_crit_edge, label %land.rhs.5

land.rhs.4.if.end7_crit_edge:                     ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.5:                                       ; preds = %land.rhs.4
  %mul.6 = shl i32 %rate, 6
  %call.6 = tail call i32 @divider_get_val(i32 noundef %mul.6, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.6)
  %cmp.6 = icmp sgt i32 %call.6, -1
  br i1 %cmp.6, label %land.rhs.5.if.end7_crit_edge, label %land.rhs.6

land.rhs.5.if.end7_crit_edge:                     ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.6:                                       ; preds = %land.rhs.5
  %mul.7 = mul i32 %rate, 122
  %call.7 = tail call i32 @divider_get_val(i32 noundef %mul.7, i32 noundef %prate, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.7)
  %cmp.7 = icmp sgt i32 %call.7, -1
  br i1 %cmp.7, label %land.rhs.6.if.end7_crit_edge, label %land.rhs.6.cleanup_crit_edge

land.rhs.6.cleanup_crit_edge:                     ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.6.if.end7_crit_edge:                     ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end.cleanup_crit_edge, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end.if.end7_crit_edge, %land.rhs.6.if.end7_crit_edge, %land.rhs.5.if.end7_crit_edge, %land.rhs.4.if.end7_crit_edge, %land.rhs.3.if.end7_crit_edge, %land.rhs.2.if.end7_crit_edge, %land.rhs.1.if.end7_crit_edge, %land.rhs.if.end7_crit_edge
  %call.lcssa32 = phi i32 [ %call, %do.end.if.end7_crit_edge ], [ %call.7, %land.rhs.6.if.end7_crit_edge ], [ %call.6, %land.rhs.5.if.end7_crit_edge ], [ %call.5, %land.rhs.4.if.end7_crit_edge ], [ %call.4, %land.rhs.3.if.end7_crit_edge ], [ %call.3, %land.rhs.2.if.end7_crit_edge ], [ %call.2, %land.rhs.1.if.end7_crit_edge ], [ %call.1, %land.rhs.if.end7_crit_edge ]
  %pre_div.0.lcssa31 = phi i32 [ 0, %do.end.if.end7_crit_edge ], [ 7, %land.rhs.6.if.end7_crit_edge ], [ 6, %land.rhs.5.if.end7_crit_edge ], [ 5, %land.rhs.4.if.end7_crit_edge ], [ 4, %land.rhs.3.if.end7_crit_edge ], [ 3, %land.rhs.2.if.end7_crit_edge ], [ 2, %land.rhs.1.if.end7_crit_edge ], [ 1, %land.rhs.if.end7_crit_edge ]
  %arrayidx8 = getelementptr [9 x %struct.clk_div_table], ptr @ac100_clkout_prediv, i32 0, i32 %pre_div.0.lcssa31
  %0 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx8, align 4
  %regmap = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.ac100_clkout, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset, align 4
  %conv = zext i8 %5 to i32
  %sub = shl nuw i32 %call.lcssa32, 1
  %shl = add i32 %sub, -2
  %sub9 = shl i32 %1, 5
  %shl10 = add i32 %sub9, -32
  %or = or i32 %shl10, %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef 238, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge, %land.rhs.6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %do.end.cleanup_crit_edge ], [ %call.7, %land.rhs.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_rtc_ac100__227_639_ac100_rtc_driver_init6, !1, !"__initcall__kmod_rtc_ac100__227_639_ac100_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ac100.c", i32 639, i32 1}
!2 = !{ptr @__exitcall_ac100_rtc_driver_exit, !1, !"__exitcall_ac100_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ac100.c", i32 641, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ac100.c", i32 642, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ac100.c", i32 643, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ac100.c", i32 635, i32 12}
!12 = !{ptr @ac100_rtc_driver, !13, !"ac100_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ac100.c", i32 631, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ac100.c", i32 595, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ac100_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ac100_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ac100_rtc_ops, !23, !"ac100_rtc_ops", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-ac100.c", i32 558, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-ac100.c", i32 417, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ac100_rtc_set_time._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ac100_rtc_set_time._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ac100.c", i32 494, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ac100_rtc_set_alarm._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ac100_rtc_set_alarm._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-ac100.c", i32 309, i32 28}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-ac100.c", i32 325, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ac100_rtc_register_clks._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ac100_rtc_register_clks._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ac100.c", i32 332, i32 3}
!43 = !{ptr @ac100_rtc_register_clks._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ac100_rtc_register_clks._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-ac100.c", i32 346, i32 37}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ac100.c", i32 354, i32 4}
!49 = !{ptr @ac100_rtc_register_clks._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ac100_rtc_register_clks._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-ac100.c", i32 85, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-ac100.c", i32 86, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ac100.c", i32 87, i32 2}
!57 = distinct !{null, !58, !"ac100_clkout_names", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ac100.c", i32 84, i32 27}
!59 = !{ptr @ac100_clkout_ops, !60, !"ac100_clkout_ops", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-ac100.c", i32 295, i32 29}
!61 = !{ptr @ac100_clkout_prediv, !62, !"ac100_clkout_prediv", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-ac100.c", i32 106, i32 35}
!63 = !{ptr @ac100_rtc_match, !64, !"ac100_rtc_match", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-ac100.c", i32 625, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
