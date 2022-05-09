; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-hym8563.c_pt.bc'
source_filename = "../drivers/rtc/rtc-hym8563.c"
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.hym8563 = type { ptr, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_hym8563__289_597_hym8563_driver_init6 = internal global ptr @hym8563_driver_init, section ".initcall6.init", align 4
@hym8563_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hym8563_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hym8563_dt_idtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hym8563_pm_ops, ptr null, ptr null }, ptr @hym8563_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hym8563_driver_exit = internal global ptr @hym8563_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [52 x i8] c"rtc_hym8563.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [43 x i8] c"rtc_hym8563.description=HYM8563 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"rtc_hym8563.file=drivers/rtc/rtc-hym8563\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"rtc_hym8563.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-hym8563\00", [20 x i8] zeroinitializer }, align 32
@hym8563_dt_idtable = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"haoyu,hym8563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hym8563_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hym8563_suspend, ptr @hym8563_resume, ptr @hym8563_suspend, ptr @hym8563_resume, ptr @hym8563_suspend, ptr @hym8563_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hym8563_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hym8563\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hym8563_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not init device, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hym8563_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-hym8563.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hym8563_probe._entry_ptr = internal global ptr @hym8563_probe._entry, section ".printk_index", align 4
@hym8563_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irq %d request failed, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hym8563_probe._entry_ptr.8 = internal global ptr @hym8563_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@hym8563_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_hym8563\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtc information is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@hym8563_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @hym8563_rtc_read_time, ptr @hym8563_rtc_set_time, ptr @hym8563_rtc_read_alarm, ptr @hym8563_rtc_set_alarm, ptr null, ptr @hym8563_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hym8563_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error reading i2c data %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hym8563_irq\00", [20 x i8] zeroinitializer }, align 32
@hym8563_irq._entry_ptr = internal global ptr @hym8563_irq._entry, section ".printk_index", align 4
@hym8563_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error writing i2c data %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hym8563_irq._entry_ptr.18 = internal global ptr @hym8563_irq._entry.16, section ".printk_index", align 4
@hym8563_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 102, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no valid clock/calendar values available\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hym8563_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hym8563_rtc_read_time._entry_ptr = internal global ptr @hym8563_rtc_read_time._entry, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hym8563-clkout\00", [17 x i8] zeroinitializer }, align 32
@hym8563_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @hym8563_clkout_prepare, ptr @hym8563_clkout_unprepare, ptr @hym8563_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hym8563_clkout_recalc_rate, ptr @hym8563_clkout_round_rate, ptr null, ptr null, ptr null, ptr @hym8563_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clkout_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 1024, i32 32, i32 1], [16 x i8] zeroinitializer }, align 32
@hym8563_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enable_irq_wake failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hym8563_suspend\00", [16 x i8] zeroinitializer }, align 32
@hym8563_suspend._entry_ptr = internal global ptr @hym8563_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 32, i64 1024, i64 32768]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"hym8563_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 587, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 589, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"hym8563_dt_idtable\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 581, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"hym8563_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 514, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"hym8563_id\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 575, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 531, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 541, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 548, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 557, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"hym8563_rtc_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 270, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 439, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 448, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 101, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 401, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"hym8563_clkout_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 379, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 409, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"clkout_rates\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 285, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [29 x i8] c"../drivers/rtc/rtc-hym8563.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 495, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_hym8563_driver_exit, ptr @__initcall__kmod_rtc_hym8563__289_597_hym8563_driver_init6, ptr @hym8563_driver_exit, ptr @hym8563_irq._entry, ptr @hym8563_irq._entry.16, ptr @hym8563_irq._entry_ptr, ptr @hym8563_irq._entry_ptr.18, ptr @hym8563_probe._entry, ptr @hym8563_probe._entry.6, ptr @hym8563_probe._entry_ptr, ptr @hym8563_probe._entry_ptr.8, ptr @hym8563_rtc_read_time._entry, ptr @hym8563_rtc_read_time._entry_ptr, ptr @hym8563_suspend._entry, ptr @hym8563_suspend._entry_ptr, ptr @hym8563_driver, ptr @.str, ptr @hym8563_dt_idtable, ptr @hym8563_pm_ops, ptr @hym8563_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hym8563_rtc_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @hym8563_clkout_ops, ptr @.str.23, ptr @clkout_rates, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_dt_idtable to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hym8563_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hym8563_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hym8563_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @hym8563_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i = icmp slt i32 %call.i90, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end_crit_edge, label %hym8563_init_device.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

hym8563_init_device.exit:                         ; preds = %if.end.i
  %and6.i = and i32 %call1.i, 8
  %2 = xor i32 %and6.i, -4
  %spec.select.i = and i32 %2, %call1.i
  %and10.i = and i32 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and13.i = and i32 %spec.select.i, 232
  %ret.1.i = select i1 %tobool11.not.i, i32 %spec.select.i, i32 %and13.i
  %3 = trunc i32 %ret.1.i to i8
  %conv.i = and i8 %3, -20
  %call16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool3.not = icmp eq i32 %call16.i, 0
  br i1 %tobool3.not, label %if.end6, label %hym8563_init_device.exit.do.end_crit_edge

hym8563_init_device.exit.do.end_crit_edge:        ; preds = %hym8563_init_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %hym8563_init_device.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i9199 = phi i32 [ %call16.i, %hym8563_init_device.exit.do.end_crit_edge ], [ %call1.i, %if.end.i.do.end_crit_edge ], [ %call.i90, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i9199) #11
  br label %cleanup

if.end6:                                          ; preds = %hym8563_init_device.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then7, label %if.end6.lor.lhs.false_crit_edge

if.end6.lor.lhs.false_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.then7:                                         ; preds = %if.end6
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call10 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %5, ptr noundef null, ptr noundef nonnull @hym8563_irq, i32 noundef 8200, ptr noundef %name, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br i1 %cmp11, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %call10) #11
  br label %cleanup

if.end19:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp21 = icmp sgt i32 %7, 0
  br i1 %cmp21, label %if.end19.if.then24_crit_edge, label %if.end19.lor.lhs.false_crit_edge

if.end19.lor.lhs.false_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end19.lor.lhs.false_crit_edge, %if.end6.lor.lhs.false_crit_edge
  %call.i92 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br i1 %call.i92, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end19.if.then24_crit_edge
  %call26 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %lor.lhs.false.if.end27_crit_edge
  %call28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %do.body32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hym8563_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hym8563_probe, %do.end43)) #8
          to label %if.then38 [label %do.end43], !srcloc !79

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool40.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hym8563_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.body32
  %name45 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call47 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %name45, ptr noundef nonnull @hym8563_rtc_ops, ptr noundef null) #8
  %rtc = getelementptr inbounds %struct.hym8563, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call47, ptr %rtc, align 4
  %cmp.i93 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then50, label %if.end53

if.then50:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %do.end43
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %call47, i32 0, i32 19
  %10 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %uie_unsupported, align 8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %15 = getelementptr inbounds i8, ptr %init.i, i32 12
  %16 = call ptr @memset(ptr %15, i32 255, i32 12)
  %call.i94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 13, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp slt i32 %call.i94, 0
  br i1 %cmp.i95, label %if.end53.hym8563_clkout_register_clk.exit_crit_edge, label %if.end.i96

if.end53.hym8563_clkout_register_clk.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %hym8563_clkout_register_clk.exit

if.end.i96:                                       ; preds = %if.end53
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.22, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hym8563_clkout_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %20 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %num_parents.i, align 4
  %clkout_hw.i = getelementptr inbounds %struct.hym8563, ptr %call.i, i32 0, i32 2
  %init3.i = getelementptr inbounds %struct.hym8563, ptr %call.i, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init.i, ptr %init3.i, align 4
  %call5.i = call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef nonnull %init.i) #8
  %call8.i = call ptr @clk_register(ptr noundef %dev.i, ptr noundef %clkout_hw.i) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i96.hym8563_clkout_register_clk.exit_crit_edge, label %if.then10.i

if.end.i96.hym8563_clkout_register_clk.exit_crit_edge: ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %hym8563_clkout_register_clk.exit

if.then10.i:                                      ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 @of_clk_add_provider(ptr noundef %14, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call8.i) #8
  br label %hym8563_clkout_register_clk.exit

hym8563_clkout_register_clk.exit:                 ; preds = %if.then10.i, %if.end.i96.hym8563_clkout_register_clk.exit_crit_edge, %if.end53.hym8563_clkout_register_clk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

cleanup:                                          ; preds = %hym8563_clkout_register_clk.exit, %if.then50, %if.end27.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i9199, %do.end ], [ %call10, %do.end15 ], [ %9, %if.then50 ], [ 0, %hym8563_clkout_register_clk.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %rtc = getelementptr inbounds %struct.hym8563, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call) #11
  br label %out

if.end:                                           ; preds = %entry
  %4 = trunc i32 %call to i8
  %conv = and i8 %4, -9
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call2) #11
  br label %out

out:                                              ; preds = %do.end8, %if.end.out_crit_edge, %do.end
  %5 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc, align 4
  %ops_lock12 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock12) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %6 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not = icmp sgt i8 %8, -1
  br i1 %tobool.not, label %cond.end, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i8 %8, 127
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %and6) #12
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call19, ptr %tm, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %12 = and i8 %11, 127
  %call40 = call i32 @_bcd2bin(i8 noundef zeroext %12) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call40, ptr %tm_min, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %16 = and i8 %15, 63
  %call63 = call i32 @_bcd2bin(i8 noundef zeroext %16) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call63, ptr %tm_hour, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %20 = and i8 %19, 63
  %call86 = call i32 @_bcd2bin(i8 noundef zeroext %20) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %21 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call86, ptr %tm_mday, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 1
  %24 = and i8 %23, 7
  %call109 = call i32 @_bcd2bin(i8 noundef zeroext %24) #12
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %25 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call109, ptr %tm_wday, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 1
  %28 = and i8 %27, 31
  %call132 = call i32 @_bcd2bin(i8 noundef zeroext %28) #12
  %sub = add i32 %call132, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %29 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %tm_mon, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 1
  %call147 = call i32 @_bcd2bin(i8 noundef zeroext %31) #12
  %add150 = add i32 %call147, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %32 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add150, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #8
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %2)
  %3 = icmp ult i32 %2, -100
  br i1 %3, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %9 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #12
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #12
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %9, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call34, ptr %8, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #12
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %7, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday, align 4
  %call66 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #12
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call66, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  %add72 = add i32 %26, 1
  %call86 = tail call zeroext i8 @_bin2bcd(i32 noundef %add72) #12
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call86, ptr %5, align 1
  %sub = add nsw i32 %1, -100
  %call106 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #12
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call106, ptr %4, align 1
  %call112 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %cond.end.cleanup_crit_edge, label %if.end116

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end116:                                        ; preds = %cond.end
  %call117 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end116.cleanup_crit_edge, label %if.end121

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %29 = call i32 @llvm.smin.i32(i32 %call122, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.end116.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call112, %cond.end.cleanup_crit_edge ], [ %call117, %if.end116.cleanup_crit_edge ], [ %29, %if.end121 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf, align 4
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext 4, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %time, align 4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool.not = icmp sgt i8 %6, -1
  br i1 %tobool.not, label %cond.false13, label %if.end.cond.end19_crit_edge

if.end.cond.end19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end19

cond.false13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and3 = and i8 %6, 127
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %and3) #12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false13, %if.end.cond.end19_crit_edge
  %cond20 = phi i32 [ -1, %if.end.cond.end19_crit_edge ], [ %call18, %cond.false13 ]
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond20, ptr %tm_min, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool24.not = icmp sgt i8 %9, -1
  br i1 %tobool24.not, label %cond.false42, label %cond.end19.cond.end50_crit_edge

cond.end19.cond.end50_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end50

cond.false42:                                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  %and29 = and i8 %9, 63
  %call47 = call i32 @_bcd2bin(i8 noundef zeroext %and29) #12
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false42, %cond.end19.cond.end50_crit_edge
  %cond51 = phi i32 [ -1, %cond.end19.cond.end50_crit_edge ], [ %call47, %cond.false42 ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond51, ptr %tm_hour, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool55.not = icmp sgt i8 %12, -1
  br i1 %tobool55.not, label %cond.false73, label %cond.end50.cond.end81_crit_edge

cond.end50.cond.end81_crit_edge:                  ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end81

cond.false73:                                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i8 %12, 63
  %call78 = call i32 @_bcd2bin(i8 noundef zeroext %and60) #12
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false73, %cond.end50.cond.end81_crit_edge
  %cond82 = phi i32 [ -1, %cond.end50.cond.end81_crit_edge ], [ %call78, %cond.false73 ]
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond82, ptr %tm_mday, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool86.not = icmp sgt i8 %15, -1
  br i1 %tobool86.not, label %cond.false104, label %cond.end81.cond.end112_crit_edge

cond.end81.cond.end112_crit_edge:                 ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end112

cond.false104:                                    ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #10
  %and91 = and i8 %15, 7
  %call109 = call i32 @_bcd2bin(i8 noundef zeroext %and91) #12
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false104, %cond.end81.cond.end112_crit_edge
  %cond113 = phi i32 [ -1, %cond.end81.cond.end112_crit_edge ], [ %call109, %cond.false104 ]
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond113, ptr %tm_wday, align 4
  %call114 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %cond.end112.cleanup_crit_edge, label %if.end118

cond.end112.cleanup_crit_edge:                    ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end118:                                        ; preds = %cond.end112
  %and119 = and i32 %call114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.cleanup_crit_edge, label %if.then121

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %alm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end118.cleanup_crit_edge, %cond.end112.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call114, %cond.end112.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %if.end118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_min, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %inc)
  %cmp = icmp sgt i32 %inc, 59
  br i1 %cmp, label %if.then3, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_hour, align 4
  %inc5 = add i32 %10, 1
  store i32 %inc5, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %inc5)
  %cmp7 = icmp sgt i32 %inc5, 23
  br i1 %cmp7, label %if.then8, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %inc10 = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc10)
  %cmp12 = icmp sgt i32 %inc10, 31
  %spec.store.select = select i1 %cmp12, i32 0, i32 %inc10
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select, ptr %tm_mday, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.then3.if.end17_crit_edge, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %15 = trunc i32 %call to i8
  %conv = and i8 %15, -3
  %call21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %tm_min26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %17)
  %18 = icmp ult i32 %17, 60
  br i1 %18, label %cond.false, label %if.end25.cond.end41_crit_edge

if.end25.cond.end41_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end41

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false, %if.end25.cond.end41_crit_edge
  %cond42 = phi i8 [ %call38, %cond.false ], [ -128, %if.end25.cond.end41_crit_edge ]
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond42, ptr %buf, align 1
  %tm_hour44 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_hour44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %22 = icmp ult i32 %21, 24
  br i1 %22, label %cond.false61, label %cond.end41.cond.end68_crit_edge

cond.end41.cond.end68_crit_edge:                  ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end68

cond.false61:                                     ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false61, %cond.end41.cond.end68_crit_edge
  %cond69 = phi i8 [ %call63, %cond.false61 ], [ -128, %cond.end41.cond.end68_crit_edge ]
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond69, ptr %0, align 1
  %tm_mday72 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %tm_mday72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mday72, align 4
  %26 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %26)
  %27 = icmp ult i32 %26, 31
  br i1 %27, label %cond.false89, label %cond.end68.cond.end96_crit_edge

cond.end68.cond.end96_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end96

cond.false89:                                     ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #12
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false89, %cond.end68.cond.end96_crit_edge
  %cond97 = phi i8 [ %call91, %cond.false89 ], [ -128, %cond.end68.cond.end96_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond97, ptr %1, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %cond.false116, label %cond.end96.cond.end123_crit_edge

cond.end96.cond.end123_crit_edge:                 ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end123

cond.false116:                                    ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #10
  %call118 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #12
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false116, %cond.end96.cond.end123_crit_edge
  %cond124.shrunk = phi i8 [ %call118, %cond.false116 ], [ -128, %cond.end96.cond.end123_crit_edge ]
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond124.shrunk, ptr %2, align 1
  %call127 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext 4, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %cond.end123.cleanup_crit_edge, label %if.end131

cond.end123.cleanup_crit_edge:                    ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end131:                                        ; preds = %cond.end123
  %33 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %alm, align 4
  %call.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end131.cleanup_crit_edge, label %if.end.i

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %and.i = and i32 %call.i, 253
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 2
  %data.0.i = or i32 %and.i, %masksel.i
  %conv.i = trunc i32 %data.0.i to i8
  %call3.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end131.cleanup_crit_edge, %cond.end123.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end17.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call127, %cond.end123.cleanup_crit_edge ], [ %call3.i, %if.end.i ], [ %call.i, %if.end131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %and = and i32 %call, 253
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %data.0 = or i32 %and, %masksel
  %conv = trunc i32 %data.0 to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.hym8563_clkout_control.exit_crit_edge, label %if.end.i

entry.hym8563_clkout_control.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hym8563_clkout_control.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = trunc i32 %call.i to i8
  %conv.i = or i8 %2, -128
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %conv.i) #8
  br label %hym8563_clkout_control.exit

hym8563_clkout_control.exit:                      ; preds = %if.end.i, %entry.hym8563_clkout_control.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %entry.hym8563_clkout_control.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hym8563_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.hym8563_clkout_control.exit_crit_edge, label %if.end.i

entry.hym8563_clkout_control.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hym8563_clkout_control.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, 127
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %conv.i) #8
  br label %hym8563_clkout_control.exit

hym8563_clkout_control.exit:                      ; preds = %if.end.i, %entry.hym8563_clkout_control.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %and = lshr i32 %call, 7
  %and.lobit = and i32 %and, 1
  %retval.0 = select i1 %cmp, i32 %call, i32 %and.lobit
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, 3
  %arrayidx = getelementptr [4 x i32], ptr @clkout_rates, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %rate)
  %cmp1.not = icmp ult i32 %rate, 32768
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rate)
  %cmp1.not.1 = icmp ult i32 %rate, 1024
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rate)
  %cmp1.not.2 = icmp ult i32 %rate, 32
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.3 = icmp ne i32 %rate, 0
  %spec.select = zext i1 %cmp1.not.3 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32768, %entry.cleanup_crit_edge ], [ 1024, %for.cond.cleanup_crit_edge ], [ 32, %for.cond.1.cleanup_crit_edge ], [ %spec.select, %for.cond.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %for.body.preheader.cleanup_crit_edge [
    i32 32768, label %for.body.preheader.if.then4_crit_edge
    i32 1024, label %if.then4.fold.split
    i32 32, label %if.then4.fold.split21
    i32 1, label %if.then4.fold.split22
  ]

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split21:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split22:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split22, %if.then4.fold.split21, %if.then4.fold.split, %for.body.preheader.if.then4_crit_edge
  %i.019.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %if.then4.fold.split ], [ 2, %if.then4.fold.split21 ], [ 3, %if.then4.fold.split22 ]
  %and = and i32 %call, 252
  %or = or i32 %i.019.lcssa, %and
  %conv = trunc i32 %or to i8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hym8563_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_rtc_hym8563__289_597_hym8563_driver_init6, !1, !"__initcall__kmod_rtc_hym8563__289_597_hym8563_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-hym8563.c", i32 597, i32 1}
!2 = !{ptr @__exitcall_hym8563_driver_exit, !1, !"__exitcall_hym8563_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-hym8563.c", i32 599, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-hym8563.c", i32 600, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-hym8563.c", i32 601, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-hym8563.c", i32 589, i32 11}
!12 = !{ptr @hym8563_driver, !13, !"hym8563_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-hym8563.c", i32 587, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-hym8563.c", i32 531, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hym8563_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hym8563_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-hym8563.c", i32 541, i32 4}
!24 = !{ptr @hym8563_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hym8563_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-hym8563.c", i32 548, i32 46}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-hym8563.c", i32 557, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hym8563_probe.__UNIQUE_ID_ddebug288, !29, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!32 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-hym8563.c", i32 439, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hym8563_irq._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hym8563_irq._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-hym8563.c", i32 448, i32 3}
!41 = !{ptr @hym8563_irq._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hym8563_irq._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @hym8563_rtc_ops, !44, !"hym8563_rtc_ops", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-hym8563.c", i32 270, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-hym8563.c", i32 101, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hym8563_rtc_read_time._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @hym8563_rtc_read_time._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-hym8563.c", i32 401, i32 14}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-hym8563.c", i32 409, i32 32}
!55 = !{ptr @hym8563_clkout_ops, !56, !"hym8563_clkout_ops", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-hym8563.c", i32 379, i32 29}
!57 = !{ptr @clkout_rates, !58, !"clkout_rates", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-hym8563.c", i32 285, i32 12}
!59 = !{ptr @hym8563_dt_idtable, !60, !"hym8563_dt_idtable", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-hym8563.c", i32 581, i32 34}
!61 = !{ptr @hym8563_pm_ops, !62, !"hym8563_pm_ops", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-hym8563.c", i32 514, i32 8}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-hym8563.c", i32 495, i32 4}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hym8563_suspend._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @hym8563_suspend._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @hym8563_id, !69, !"hym8563_id", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-hym8563.c", i32 575, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148965713, i64 2148965718, i64 2148965731, i64 2148965775, i64 2148965809, i64 2148965830}
