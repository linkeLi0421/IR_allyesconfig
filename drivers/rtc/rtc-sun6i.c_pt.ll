; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-sun6i.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sun6i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun6i_rtc_dev = type { ptr, ptr, ptr, i32, i32, %struct.clk_hw, ptr, ptr, ptr, %struct.spinlock }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.sun6i_rtc_clk_data = type { i32, i24 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__of_table_sun6i_a31_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_h3_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun50i_h5_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun50i_h6_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_r40_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_v3_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_rtc_sun6i__227_773_sun6i_rtc_driver_init6 = internal global ptr @sun6i_rtc_driver_init, section ".initcall6.init", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"losc\00", [27 x i8] zeroinitializer }, align 32
@sun6i_rtc_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_rtc_osc_recalc_rate, ptr null, ptr null, ptr @sun6i_rtc_osc_set_parent, ptr @sun6i_rtc_osc_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.sun6i_rtc_clk_init.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str, ptr @sun6i_rtc_osc_ops, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0 }, align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-int-osc\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"osc32k-out\00", [21 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\012Can't map RTC registers\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun6i_rtc_clk_init\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-sun6i.c\00", [40 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry_ptr = internal global ptr @sun6i_rtc_clk_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@sun6i_rtc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012Couldn't register the internal oscillator\0A\00", [51 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry_ptr.11 = internal global ptr @sun6i_rtc_clk_init._entry.9, section ".printk_index", align 4
@sun6i_rtc_clk_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012Couldn't register the LOSC clock\0A\00", [60 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry_ptr.14 = internal global ptr @sun6i_rtc_clk_init._entry.12, section ".printk_index", align 4
@sun6i_rtc_clk_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012Couldn't register the LOSC external gate\0A\00", [52 x i8] zeroinitializer }, align 32
@sun6i_rtc_clk_init._entry_ptr.17 = internal global ptr @sun6i_rtc_clk_init._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@sun6i_a31_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 667000, i8 0, i8 0, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@sun8i_a23_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 667000, i8 0, i8 0, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@sun8i_h3_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 16000000, i8 0, i8 32, i8 -32 }, [24 x i8] zeroinitializer }, align 32
@sun50i_h6_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 16000000, i8 0, i8 32, i8 -8 }, [24 x i8] zeroinitializer }, align 32
@sun8i_r40_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 16000000, i8 2, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@sun8i_v3_rtc_data = internal constant { { i32, i8, i8, i8 }, [24 x i8] } { { i32, i8, i8, i8 } { i32 32000, i8 0, i8 0, i8 64 }, [24 x i8] zeroinitializer }, align 32
@sun6i_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i-rtc\00", [22 x i8] zeroinitializer }, align 32
@sun6i_rtc_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@sun6i_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun6i_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@sun6i_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 697, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun6i_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_rtc_probe._entry_ptr = internal global ptr @sun6i_rtc_probe._entry, section ".printk_index", align 4
@sun6i_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @sun6i_rtc_gettime, ptr @sun6i_rtc_settime, ptr @sun6i_rtc_getalarm, ptr @sun6i_rtc_setalarm, ptr null, ptr @sun6i_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sun6i_rtc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.6, i32 742, ptr @.str.33, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RTC enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun6i_rtc_probe._entry_ptr.34 = internal global ptr @sun6i_rtc_probe._entry.31, section ".printk_index", align 4
@sun6i_rtc_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 591, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtc is still busy.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun6i_rtc_settime\00", [46 x i8] zeroinitializer }, align 32
@sun6i_rtc_settime._entry_ptr = internal global ptr @sun6i_rtc_settime._entry, section ".printk_index", align 4
@sun6i_rtc_settime._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 605, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set rtc time.\0A\00", [39 x i8] zeroinitializer }, align 32
@sun6i_rtc_settime._entry_ptr.39 = internal global ptr @sun6i_rtc_settime._entry.37, section ".printk_index", align 4
@sun6i_rtc_settime._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 619, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@sun6i_rtc_settime._entry_ptr.41 = internal global ptr @sun6i_rtc_settime._entry.40, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sun6i_rtc_setalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 520, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error in getting time\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun6i_rtc_setalarm\00", [45 x i8] zeroinitializer }, align 32
@sun6i_rtc_setalarm._entry_ptr = internal global ptr @sun6i_rtc_setalarm._entry, section ".printk_index", align 4
@sun6i_rtc_setalarm._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 527, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Date to set in the past\0A\00", [39 x i8] zeroinitializer }, align 32
@sun6i_rtc_setalarm._entry_ptr.46 = internal global ptr @sun6i_rtc_setalarm._entry.44, section ".printk_index", align 4
@sun6i_rtc_setalarm._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.6, i32 534, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Date too far in the future\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_rtc_setalarm._entry_ptr.49 = internal global ptr @sun6i_rtc_setalarm._entry.47, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 219, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"sun6i_rtc_osc_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 205, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 221, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 222, i32 28 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 237, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 241, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 253, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"sun6i_rtc\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 151, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 265, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 274, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 292, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 303, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 261, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"sun6i_a31_rtc_data\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 323, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"sun8i_a23_rtc_data\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 335, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"sun8i_h3_rtc_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 348, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"sun50i_h6_rtc_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 366, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"sun8i_r40_rtc_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 388, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"sun8i_v3_rtc_data\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 399, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"sun6i_rtc_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 765, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 768, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"sun6i_rtc_dt_ids\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 753, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"sun6i_rtc_pm_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 668, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 681, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 697, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"sun6i_rtc_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 636, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 742, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 591, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 605, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 619, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 520, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 527, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [27 x i8] c"../drivers/rtc/rtc-sun6i.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 534, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_rtc_sun6i__227_773_sun6i_rtc_driver_init6, ptr @__of_table_sun50i_h5_rtc_clk, ptr @__of_table_sun50i_h6_rtc_clk, ptr @__of_table_sun6i_a31_rtc_clk, ptr @__of_table_sun8i_a23_rtc_clk, ptr @__of_table_sun8i_h3_rtc_clk, ptr @__of_table_sun8i_r40_rtc_clk, ptr @__of_table_sun8i_v3_rtc_clk, ptr @sun6i_rtc_clk_init._entry, ptr @sun6i_rtc_clk_init._entry.12, ptr @sun6i_rtc_clk_init._entry.15, ptr @sun6i_rtc_clk_init._entry.9, ptr @sun6i_rtc_clk_init._entry_ptr, ptr @sun6i_rtc_clk_init._entry_ptr.11, ptr @sun6i_rtc_clk_init._entry_ptr.14, ptr @sun6i_rtc_clk_init._entry_ptr.17, ptr @sun6i_rtc_probe._entry, ptr @sun6i_rtc_probe._entry.31, ptr @sun6i_rtc_probe._entry_ptr, ptr @sun6i_rtc_probe._entry_ptr.34, ptr @sun6i_rtc_setalarm._entry, ptr @sun6i_rtc_setalarm._entry.44, ptr @sun6i_rtc_setalarm._entry.47, ptr @sun6i_rtc_setalarm._entry_ptr, ptr @sun6i_rtc_setalarm._entry_ptr.46, ptr @sun6i_rtc_setalarm._entry_ptr.49, ptr @sun6i_rtc_settime._entry, ptr @sun6i_rtc_settime._entry.37, ptr @sun6i_rtc_settime._entry.40, ptr @sun6i_rtc_settime._entry_ptr, ptr @sun6i_rtc_settime._entry_ptr.39, ptr @sun6i_rtc_settime._entry_ptr.41, ptr @.str, ptr @sun6i_rtc_osc_ops, ptr @.str.1, ptr @.str.2, ptr @sun6i_rtc_clk_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sun6i_rtc, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @sun6i_a31_rtc_data, ptr @sun8i_a23_rtc_data, ptr @sun8i_h3_rtc_data, ptr @sun50i_h6_rtc_data, ptr @sun8i_r40_rtc_data, ptr @sun8i_v3_rtc_data, ptr @sun6i_rtc_driver, ptr @.str.25, ptr @sun6i_rtc_dt_ids, ptr @sun6i_rtc_pm_ops, ptr @sun6i_rtc_probe.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @sun6i_rtc_ops, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_clk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_clk_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_clk_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_clk_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3_rtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_settime._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_settime._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_setalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_setalarm._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_rtc_setalarm._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_a31_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun6i_a31_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_a23_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun8i_a23_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_h3_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun8i_h3_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_h5_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun8i_h3_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_h6_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun50i_h6_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_r40_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun8i_r40_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_v3_rtc_clk_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %np, ptr noundef nonnull @sun8i_v3_rtc_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_rtc_clk_init(ptr noundef %node, ptr noundef %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %iosc_name = alloca ptr, align 4
  %clkout_name = alloca ptr, align 4
  %parents = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = call ptr @memcpy(ptr %init, ptr @__const.sun6i_rtc_clk_init.init, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iosc_name) #7
  %1 = ptrtoint ptr %iosc_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %iosc_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkout_name) #7
  %2 = ptrtoint ptr %clkout_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %clkout_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents) #7
  %3 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %parents, align 4, !annotation !124
  %4 = getelementptr inbounds [2 x ptr], ptr %parents, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %data1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i169 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #11
  %tobool4.not = icmp eq ptr %call7.i.i169, null
  br i1 %tobool4.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @sun6i_rtc_clk_init.__key, i16 noundef signext 3) #7
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %do.body.of_node_full_name.exit_crit_edge, label %cond.true.i

do.body.of_node_full_name.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %9 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %do.body.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %10, %cond.true.i ], [ @.str.18, %do.body.of_node_full_name.exit_crit_edge ]
  %call9 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #7
  %base = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end17

do.end15:                                         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %err

if.end17:                                         ; preds = %of_node_full_name.exit
  %12 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data1, align 4
  %has_auto_swt = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %has_auto_swt to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %has_auto_swt, align 4
  %15 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 8432150) #7, !srcloc !126
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %reg.0 = phi i32 [ 380272640, %if.then20 ], [ 380239872, %if.end17.if.end25_crit_edge ]
  %call26 = tail call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.do.body39_crit_edge, label %if.then28

if.end25.do.body39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data1, align 4
  %has_losc_en = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %has_losc_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load31 = load i32, ptr %has_losc_en, align 4
  %21 = and i32 %bf.load31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool34.not = icmp eq i32 %21, 0
  %spec.select.v = select i1 %tobool34.not, i32 1, i32 17
  %spec.select = or i32 %spec.select.v, %reg.0
  br label %do.body39

do.body39:                                        ; preds = %if.then28, %if.end25.do.body39_crit_edge
  %reg.1 = phi i32 [ %reg.0, %if.end25.do.body39_crit_edge ], [ %spec.select, %if.then28 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !126
  store ptr %call7.i.i, ptr @sun6i_rtc, align 4
  %25 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data1, align 4
  %export_iosc = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %export_iosc to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load45 = load i32, ptr %export_iosc, align 4
  %28 = and i32 %bf.load45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not = icmp eq i32 %28, 0
  br i1 %tobool48.not, label %do.body39.if.end51_crit_edge, label %if.then49

do.body39.if.end51_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %iosc_name, i32 noundef 1, i32 noundef 2) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.body39.if.end51_crit_edge
  %29 = ptrtoint ptr %iosc_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iosc_name, align 4
  %31 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data1, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %call53 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %30, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %34, i32 noundef 300000000, i32 noundef 0) #7
  %int_osc = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %int_osc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call53, ptr %int_osc, align 8
  %cmp.i170 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %err

if.end62:                                         ; preds = %if.end51
  %call64 = call ptr @clk_hw_get_name(ptr noundef %call53) #7
  %36 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call64, ptr %parents, align 4
  %call65 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call65, ptr %4, align 4
  %hw = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 5
  %init67 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %init67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %init, ptr %init67, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %39 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %parents, ptr %parent_names, align 4
  %call68 = call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  %40 = trunc i32 %call68 to i8
  %conv = add i8 %40, 1
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %41 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %num_parents, align 4
  %call.i171 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %init, i32 noundef 1, i32 noundef 0) #7
  %call71 = call ptr @clk_register(ptr noundef null, ptr noundef %hw) #7
  %losc = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %losc to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call71, ptr %losc, align 4
  %cmp.i172 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.end62.err_register_crit_edge, label %if.end80

if.end62.err_register_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register

if.end80:                                         ; preds = %if.end62
  %call.i173 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clkout_name, i32 noundef 1, i32 noundef 1) #7
  %43 = ptrtoint ptr %clkout_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clkout_name, align 4
  %45 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init, align 4
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 8
  %add.ptr84 = getelementptr i8, ptr %48, i32 96
  %call86 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %44, ptr noundef %46, i32 noundef 0, ptr noundef %add.ptr84, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %lock) #7
  %ext_losc = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call7.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %ext_losc to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call86, ptr %ext_losc, align 8
  %cmp.i174 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.end80.err_register_crit_edge, label %if.end95

if.end80.err_register_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register

if.end95:                                         ; preds = %if.end80
  %50 = ptrtoint ptr %call7.i.i169 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %call7.i.i169, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i169, i32 0, i32 1
  %51 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %hw, ptr %hws, align 4
  %call99 = call ptr @__clk_get_hw(ptr noundef %call86) #7
  %arrayidx101 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i169, i32 2
  %52 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call99, ptr %arrayidx101, align 8
  %53 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data1, align 4
  %export_iosc103 = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %export_iosc103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load104 = load i32, ptr %export_iosc103, align 4
  %56 = and i32 %bf.load104, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool107.not = icmp eq i32 %56, 0
  br i1 %tobool107.not, label %if.end95.if.end113_crit_edge, label %if.then108

if.end95.if.end113_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then108:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %int_osc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %int_osc, align 8
  %arrayidx111 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i169, i32 3
  %59 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %arrayidx111, align 4
  %60 = ptrtoint ptr %call7.i.i169 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %call7.i.i169, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end95.if.end113_crit_edge
  %call114 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i169) #7
  br label %cleanup

err_register:                                     ; preds = %if.end80.err_register_crit_edge, %if.end62.err_register_crit_edge
  %.str.16.sink = phi ptr [ @.str.13, %if.end62.err_register_crit_edge ], [ @.str.16, %if.end80.err_register_crit_edge ]
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #10
  %61 = ptrtoint ptr %int_osc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %int_osc, align 8
  call void @clk_hw_unregister_fixed_rate(ptr noundef %62) #7
  br label %err

err:                                              ; preds = %err_register, %do.end59, %do.end15
  call void @kfree(ptr noundef nonnull %call7.i.i169) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end113, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkout_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iosc_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_osc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !128
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %fixed_prescaler = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fixed_prescaler to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %fixed_prescaler, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load)
  %tobool4.not = icmp ult i32 %bf.load, 65536
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr = lshr i32 %bf.load, 16
  %div = udiv i32 %parent_rate, %bf.lshr
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %parent_rate.addr.0 = phi i32 [ %div, %if.then5 ], [ %parent_rate, %if.end.if.end10_crit_edge ]
  %7 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.end10.if.end24_crit_edge, label %if.then15

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !128
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %and23 = and i32 %11, 31
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %if.end10.if.end24_crit_edge
  %val.0 = phi i32 [ %and23, %if.then15 ], [ %3, %if.end10.if.end24_crit_edge ]
  %add = add nuw i32 %val.0, 1
  %div25 = udiv i32 %parent_rate.addr.0, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div25, %if.end24 ], [ %parent_rate, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_osc_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr i8, ptr %hw, i32 24
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %3 = and i32 %2, -16820759
  %4 = or i32 %3, 43542
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool.not = icmp eq i8 %index, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %or14 = or i32 %5, %cond
  %data = getelementptr i8, ptr %hw, i32 -16
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %has_losc_en = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %has_losc_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %has_losc_en, align 4
  %9 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  %and17 = and i32 %or14, -17
  %cond20 = select i1 %tobool.not, i32 0, i32 16
  %or21 = or i32 %and17, %cond20
  %val.0 = select i1 %tobool15.not, i32 %or14, i32 %or21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !126
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sun6i_rtc_osc_get_parent(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !128
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 1
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_probe(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sun6i_rtc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then
  %lock = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @sun6i_rtc_probe.__key, i16 noundef signext 3) #7
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %do.body.if.end11_crit_edge

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  %chip.0 = phi ptr [ %0, %entry.if.end11_crit_edge ], [ %call.i, %do.body.if.end11_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chip.0, ptr %driver_data.i.i, align 4
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %chip.0, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end16.dev_name.exit_crit_edge ]
  %call.i129 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev17, i32 noundef %call12, ptr noundef nonnull @sun6i_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %chip.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool22.not = icmp eq i32 %call.i129, 0
  br i1 %tobool22.not, label %do.body29, label %do.end26

do.end26:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.27) #10
  br label %cleanup

do.body29:                                        ; preds = %dev_name.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %base32 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %chip.0, i32 0, i32 2
  %9 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base32, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base32, align 4
  %add.ptr37 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base32, align 4
  %add.ptr42 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base32, align 4
  %add.ptr47 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base32, align 4
  %add.ptr52 = getelementptr i8, ptr %18, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base32, align 4
  %add.ptr57 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 16777216) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base32, align 4
  %add.ptr62 = getelementptr i8, ptr %22, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 16777216) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base32, align 4
  %add.ptr67 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #7, !srcloc !126
  %losc = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %chip.0, i32 0, i32 7
  %25 = ptrtoint ptr %losc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %losc, align 4
  %call.i130 = tail call i32 @clk_prepare(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.not.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool.not.i131, label %if.end.i132, label %do.body29.clk_prepare_enable.exit_crit_edge

do.body29.clk_prepare_enable.exit_crit_edge:      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i132:                                      ; preds = %do.body29
  %call1.i = tail call i32 @clk_enable(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i132.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i132.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i132.clk_prepare_enable.exit_crit_edge, %do.body29.clk_prepare_enable.exit_crit_edge
  %call70 = tail call i32 @device_init_wakeup(ptr noundef %dev17, i1 noundef zeroext true) #7
  %call72 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev17) #7
  %27 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call72, ptr %chip.0, align 4
  %cmp.i133 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then75, label %if.end78

if.then75:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call72 to i32
  br label %cleanup

if.end78:                                         ; preds = %clk_prepare_enable.exit
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call72, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sun6i_rtc_ops, ptr %ops, align 8
  %30 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip.0, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 2019686399, ptr %range_max, align 8
  %33 = load ptr, ptr %chip.0, align 4
  %call82 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.end88, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.32) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.end78.cleanup_crit_edge, %if.then75, %do.end26, %if.end11.cleanup_crit_edge, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i129, %do.end26 ], [ %28, %if.then75 ], [ 0, %do.end88 ], [ %2, %if.then7 ], [ -12, %if.then.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call82, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_alarmirq(i32 noundef %irq, ptr noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %id, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !126
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id, align 4
  tail call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef 160) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_gettime(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rtc_tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp.not = icmp eq i32 %4, %10
  br i1 %cmp.not, label %lor.rhs, label %do.body.do.body.backedge_crit_edge

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.body
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp24.not = icmp eq i32 %7, %13
  br i1 %cmp24.not, label %do.end, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.body.do.body.backedge_crit_edge
  br label %do.body

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %7)
  %15 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %14, 63
  %16 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %rtc_tm, align 4
  %and25 = lshr i32 %14, 8
  %shr = and i32 %and25, 63
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %tm_min, align 4
  %and26 = lshr i32 %14, 16
  %shr27 = and i32 %and26, 31
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr27, ptr %tm_hour, align 4
  %and28 = and i32 %15, 31
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and28, ptr %tm_mday, align 4
  %and29 = lshr i32 %15, 8
  %shr30 = and i32 %and29, 15
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %and31 = lshr i32 %15, 16
  %shr32 = and i32 %and31, 63
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %sub = add nsw i32 %shr30, -1
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %tm_mon, align 4
  %add = add nuw nsw i32 %shr32, 70
  %21 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %tm_year, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_settime(ptr noundef %dev, ptr nocapture noundef %rtc_tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %sub = add i32 %3, -70
  store i32 %sub, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %6 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mday, align 4
  %and = and i32 %7, 31
  %shl = shl i32 %add, 8
  %and2 = and i32 %shl, 3840
  %shl4 = shl i32 %sub, 16
  %and5 = and i32 %shl4, 4128768
  %or = or i32 %and2, %and5
  %or6 = or i32 %or, %and
  %add8 = add i32 %3, 1900
  %rem.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %add8, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.i.not = and i1 %tobool.not.i, %tobool2.not.i
  %rem3.i = urem i32 %add8, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i = icmp eq i32 %rem3.i, 0
  %or.cond = select i1 %or.cond.i.not, i1 true, i1 %tobool4.not.i
  %or1083 = or i32 %or6, 4194304
  %8 = select i1 %or.cond, i32 %or1083, i32 %or6
  %9 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtc_tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %base.i = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  %add.neg.i = sub i32 -5, %15
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %19 = and i32 %18, -2147287040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i61 = icmp eq i32 %19, 0
  br i1 %tobool.not.i61, label %do.body21, label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %20
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup.sink.split_crit_edge

do.cond.i.cleanup.sink.split_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body21:                                        ; preds = %do.body.i
  %and11 = and i32 %10, 63
  %shl12 = shl i32 %12, 8
  %and13 = and i32 %shl12, 16128
  %or14 = or i32 %and13, %and11
  %shl15 = shl i32 %14, 16
  %and16 = and i32 %shl15, 2031616
  %or17 = or i32 %or14, %and16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #7, !srcloc !126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i63 = sub i32 -5, %24
  br label %do.body.i66

do.body.i66:                                      ; preds = %do.cond.i69.do.body.i66_crit_edge, %do.body21
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i65 = icmp eq i32 %28, 0
  br i1 %tobool.not.i65, label %do.body31, label %do.cond.i69

do.cond.i69:                                      ; preds = %do.body.i66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i67 = add i32 %add.neg.i63, %29
  %cmp.i68 = icmp slt i32 %sub.i67, 0
  br i1 %cmp.i68, label %do.cond.i69.do.body.i66_crit_edge, label %do.cond.i69.cleanup.sink.split_crit_edge

do.cond.i69.cleanup.sink.split_crit_edge:         ; preds = %do.cond.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.cond.i69.do.body.i66_crit_edge:                ; preds = %do.cond.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i66

do.body31:                                        ; preds = %do.body.i66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %8)
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr35 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %30) #7, !srcloc !126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i73 = sub i32 -5, %33
  br label %do.body.i76

do.body.i76:                                      ; preds = %do.cond.i79.do.body.i76_crit_edge, %do.body31
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool.not.i75 = icmp sgt i32 %36, -1
  br i1 %tobool.not.i75, label %do.body.i76.cleanup_crit_edge, label %do.cond.i79

do.body.i76.cleanup_crit_edge:                    ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i79:                                      ; preds = %do.body.i76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i77 = add i32 %add.neg.i73, %37
  %cmp.i78 = icmp slt i32 %sub.i77, 0
  br i1 %cmp.i78, label %do.cond.i79.do.body.i76_crit_edge, label %do.cond.i79.cleanup.sink.split_crit_edge

do.cond.i79.cleanup.sink.split_crit_edge:         ; preds = %do.cond.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.cond.i79.do.body.i76_crit_edge:                ; preds = %do.cond.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i76

cleanup.sink.split:                               ; preds = %do.cond.i79.cleanup.sink.split_crit_edge, %do.cond.i69.cleanup.sink.split_crit_edge, %do.cond.i.cleanup.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.38, %do.cond.i79.cleanup.sink.split_crit_edge ], [ @.str.38, %do.cond.i69.cleanup.sink.split_crit_edge ], [ @.str.35, %do.cond.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %do.cond.i79.cleanup.sink.split_crit_edge ], [ -110, %do.cond.i69.cleanup.sink.split_crit_edge ], [ -16, %do.cond.i.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.38.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body.i76.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.body.i76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_getalarm(ptr nocapture noundef readonly %dev, ptr noundef %wkalrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %8 = lshr i32 %4, 24
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %wkalrm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %wkalrm, align 4
  %12 = lshr i32 %7, 24
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 1
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pending, align 1
  %alarm = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alarm, align 4
  %conv26 = zext i32 %17 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv26, ptr noundef %time) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_setalarm(ptr noundef %dev, ptr noundef %wkalrm) #5 align 64 {
entry:
  %tm_now = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm_now) #7
  %2 = getelementptr inbounds i8, ptr %tm_now, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  %base.i = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp.not.i = icmp eq i32 %6, %12
  br i1 %cmp.not.i, label %lor.rhs.i, label %do.body.i.do.body.i.backedge_crit_edge

do.body.i.do.body.i.backedge_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.backedge

lor.rhs.i:                                        ; preds = %do.body.i
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp24.not.i = icmp eq i32 %9, %15
  br i1 %cmp24.not.i, label %sun6i_rtc_gettime.exit, label %lor.rhs.i.do.body.i.backedge_crit_edge

lor.rhs.i.do.body.i.backedge_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %lor.rhs.i.do.body.i.backedge_crit_edge, %do.body.i.do.body.i.backedge_crit_edge
  br label %do.body.i

sun6i_rtc_gettime.exit:                           ; preds = %lor.rhs.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %and.i = and i32 %16, 63
  %18 = ptrtoint ptr %tm_now to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %tm_now, align 4
  %and25.i = lshr i32 %16, 8
  %shr.i = and i32 %and25.i, 63
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %tm_min.i, align 4
  %and26.i = lshr i32 %16, 16
  %shr27.i = and i32 %and26.i, 31
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr27.i, ptr %tm_hour.i, align 4
  %and28.i = and i32 %17, 31
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 3
  %21 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and28.i, ptr %tm_mday.i, align 4
  %and29.i = lshr i32 %17, 8
  %shr30.i = and i32 %and29.i, 15
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 4
  %and31.i = lshr i32 %17, 16
  %shr32.i = and i32 %and31.i, 63
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 5
  %sub.i = add nsw i32 %shr30.i, -1
  %22 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %add.i = add nuw nsw i32 %shr32.i, 70
  %23 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %tm_year.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #7
  %conv = trunc i64 %call2 to i32
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm_now) #7
  %conv4 = trunc i64 %call3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp5.not = icmp ugt i32 %conv, %conv4
  br i1 %cmp5.not, label %if.end18, label %do.end10

do.end10:                                         ; preds = %sun6i_rtc_gettime.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end18:                                         ; preds = %sun6i_rtc_gettime.exit
  %sub = sub i32 %conv, %conv4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %25, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 16777216) #7, !srcloc !126
  %lock.i = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 9
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %27, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %29, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %31, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #7, !srcloc !126
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !126
  call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  call void @arm_heavy_mb() #7
  %34 = call i32 @llvm.bswap.i32(i32 %sub)
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr26 = getelementptr i8, ptr %36, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %34) #7, !srcloc !126
  %alarm = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %alarm, align 4
  %38 = ptrtoint ptr %wkalrm to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wkalrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %do.body.i52, label %if.end18.sun6i_rtc_setaie.exit_crit_edge

if.end18.sun6i_rtc_setaie.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun6i_rtc_setaie.exit

do.body.i52:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %41, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 16777216) #7, !srcloc !126
  br label %sun6i_rtc_setaie.exit

sun6i_rtc_setaie.exit:                            ; preds = %do.body.i52, %if.end18.sun6i_rtc_setaie.exit_crit_edge
  %alrm_val.0.i = phi i32 [ 0, %do.body.i52 ], [ 16777216, %if.end18.sun6i_rtc_setaie.exit_crit_edge ]
  %call3.i54 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr12.i56 = getelementptr i8, ptr %43, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i56, i32 %alrm_val.0.i) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr17.i57 = getelementptr i8, ptr %45, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i57, i32 %alrm_val.0.i) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr22.i58 = getelementptr i8, ptr %47, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i58, i32 %alrm_val.0.i) #7, !srcloc !126
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i54) #7
  br label %cleanup

cleanup:                                          ; preds = %sun6i_rtc_setaie.exit, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %sun6i_rtc_setaie.exit ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm_now) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !126
  %lock.i = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #7, !srcloc !126
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_suspend(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__of_table_sun6i_a31_rtc_clk, !1, !"__of_table_sun6i_a31_rtc_clk", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-sun6i.c", i32 332, i32 1}
!2 = !{ptr @__of_table_sun8i_a23_rtc_clk, !3, !"__of_table_sun8i_a23_rtc_clk", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-sun6i.c", i32 345, i32 1}
!4 = !{ptr @__of_table_sun8i_h3_rtc_clk, !5, !"__of_table_sun8i_h3_rtc_clk", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-sun6i.c", i32 360, i32 1}
!6 = !{ptr @__of_table_sun50i_h5_rtc_clk, !7, !"__of_table_sun50i_h5_rtc_clk", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-sun6i.c", i32 363, i32 1}
!8 = !{ptr @__of_table_sun50i_h6_rtc_clk, !9, !"__of_table_sun50i_h6_rtc_clk", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-sun6i.c", i32 380, i32 1}
!10 = !{ptr @__of_table_sun8i_r40_rtc_clk, !11, !"__of_table_sun8i_r40_rtc_clk", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-sun6i.c", i32 396, i32 1}
!12 = !{ptr @__of_table_sun8i_v3_rtc_clk, !13, !"__of_table_sun8i_v3_rtc_clk", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-sun6i.c", i32 408, i32 1}
!14 = !{ptr @__initcall__kmod_rtc_sun6i__227_773_sun6i_rtc_driver_init6, !15, !"__initcall__kmod_rtc_sun6i__227_773_sun6i_rtc_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-sun6i.c", i32 773, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-sun6i.c", i32 219, i32 12}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-sun6i.c", i32 221, i32 26}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-sun6i.c", i32 222, i32 28}
!22 = !{ptr @sun6i_rtc_clk_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-sun6i.c", i32 237, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-sun6i.c", i32 241, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun6i_rtc_clk_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun6i_rtc_clk_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-sun6i.c", i32 253, i32 28}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-sun6i.c", i32 265, i32 39}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-sun6i.c", i32 274, i32 3}
!37 = !{ptr @sun6i_rtc_clk_init._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sun6i_rtc_clk_init._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-sun6i.c", i32 292, i32 3}
!41 = !{ptr @sun6i_rtc_clk_init._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun6i_rtc_clk_init._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-sun6i.c", i32 303, i32 3}
!45 = !{ptr @sun6i_rtc_clk_init._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun6i_rtc_clk_init._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sun6i_rtc_osc_ops, !48, !"sun6i_rtc_osc_ops", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-sun6i.c", i32 205, i32 29}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/of.h", i32 261, i32 30}
!51 = !{ptr @sun6i_rtc, !52, !"sun6i_rtc", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-sun6i.c", i32 151, i32 30}
!53 = !{ptr @sun6i_a31_rtc_data, !54, !"sun6i_a31_rtc_data", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-sun6i.c", i32 323, i32 40}
!55 = !{ptr @sun8i_a23_rtc_data, !56, !"sun8i_a23_rtc_data", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-sun6i.c", i32 335, i32 40}
!57 = !{ptr @sun8i_h3_rtc_data, !58, !"sun8i_h3_rtc_data", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-sun6i.c", i32 348, i32 40}
!59 = !{ptr @sun50i_h6_rtc_data, !60, !"sun50i_h6_rtc_data", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-sun6i.c", i32 366, i32 40}
!61 = !{ptr @sun8i_r40_rtc_data, !62, !"sun8i_r40_rtc_data", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-sun6i.c", i32 388, i32 40}
!63 = !{ptr @sun8i_v3_rtc_data, !64, !"sun8i_v3_rtc_data", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-sun6i.c", i32 399, i32 40}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-sun6i.c", i32 768, i32 12}
!67 = !{ptr @sun6i_rtc_driver, !68, !"sun6i_rtc_driver", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-sun6i.c", i32 765, i32 31}
!69 = !{ptr @sun6i_rtc_probe.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-sun6i.c", i32 681, i32 3}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-sun6i.c", i32 697, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sun6i_rtc_probe._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @sun6i_rtc_probe._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-sun6i.c", i32 742, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sun6i_rtc_probe._entry.31, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sun6i_rtc_probe._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sun6i_rtc_ops, !85, !"sun6i_rtc_ops", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-sun6i.c", i32 636, i32 35}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-sun6i.c", i32 591, i32 3}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sun6i_rtc_settime._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @sun6i_rtc_settime._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-sun6i.c", i32 605, i32 3}
!93 = !{ptr @sun6i_rtc_settime._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @sun6i_rtc_settime._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @sun6i_rtc_settime._entry.40, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-sun6i.c", i32 619, i32 3}
!97 = !{ptr @sun6i_rtc_settime._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-sun6i.c", i32 520, i32 3}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sun6i_rtc_setalarm._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sun6i_rtc_setalarm._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rtc/rtc-sun6i.c", i32 527, i32 3}
!105 = !{ptr @sun6i_rtc_setalarm._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sun6i_rtc_setalarm._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rtc/rtc-sun6i.c", i32 534, i32 3}
!109 = !{ptr @sun6i_rtc_setalarm._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sun6i_rtc_setalarm._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @sun6i_rtc_dt_ids, !112, !"sun6i_rtc_dt_ids", i1 false, i1 false}
!112 = !{!"../drivers/rtc/rtc-sun6i.c", i32 753, i32 34}
!113 = !{ptr @sun6i_rtc_pm_ops, !114, !"sun6i_rtc_pm_ops", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-sun6i.c", i32 668, i32 8}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 2154078792}
!126 = !{i64 5461766}
!127 = !{i64 2154079366}
!128 = !{i64 5462184}
!129 = !{i64 2154065988}
!130 = !{i64 2154066567}
!131 = !{i64 2154075011}
!132 = !{i64 2154075576}
!133 = !{i64 2154068870}
!134 = !{i64 2154122353}
!135 = !{i64 2154122745}
!136 = !{i64 2154123137}
!137 = !{i64 2154123529}
!138 = !{i64 2154123921}
!139 = !{i64 2154124421}
!140 = !{i64 2154124999}
!141 = !{i64 2154125469}
!142 = !{i64 2154095662}
!143 = !{i64 2154096049}
!144 = !{i64 2154099211}
!145 = !{i64 2154099712}
!146 = !{i64 2154100213}
!147 = !{i64 2154100714}
!148 = !{i64 2154108532}
!149 = !{i64 2154111667}
!150 = !{i64 2154113750}
!151 = !{i64 2154101774}
!152 = !{i64 2154102275}
!153 = !{i64 2154096811}
!154 = !{i64 2154097642}
!155 = !{i64 2154098066}
!156 = !{i64 2154098503}
!157 = !{i64 2154107447}
!158 = !{i64 2154107846}
