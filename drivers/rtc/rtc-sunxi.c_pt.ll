; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-sunxi.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sunxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_rtc_data_year = type { i32, i32, i32, i8 }
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
%struct.sunxi_rtc_dev = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_sunxi__227_484_sunxi_rtc_driver_init6 = internal global ptr @sunxi_rtc_driver_init, section ".initcall6.init", align 4
@sunxi_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_rtc_driver_exit = internal global ptr @sunxi_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [39 x i8] c"rtc_sunxi.description=sunxi RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [55 x i8] c"rtc_sunxi.author=Carlo Caione <carlo.caione@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [37 x i8] c"rtc_sunxi.file=drivers/rtc/rtc-sunxi\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"rtc_sunxi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-rtc\00", [22 x i8] zeroinitializer }, align 32
@sunxi_rtc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_year_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @data_year_param, i64 16) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sunxi_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-sunxi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_rtc_probe._entry_ptr = internal global ptr @sunxi_rtc_probe._entry, section ".printk_index", align 4
@sunxi_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to setup RTC data\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_rtc_probe._entry_ptr.8 = internal global ptr @sunxi_rtc_probe._entry.6, section ".printk_index", align 4
@sunxi_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @sunxi_rtc_gettime, ptr @sunxi_rtc_settime, ptr @sunxi_rtc_getalarm, ptr @sunxi_rtc_setalarm, ptr null, ptr @sunxi_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sunxi_rtc_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtc only supports year in range %u - %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_rtc_settime\00", [46 x i8] zeroinitializer }, align 32
@sunxi_rtc_settime._entry_ptr = internal global ptr @sunxi_rtc_settime._entry, section ".printk_index", align 4
@sunxi_rtc_settime._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set rtc time.\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_rtc_settime._entry_ptr.13 = internal global ptr @sunxi_rtc_settime._entry.11, section ".printk_index", align 4
@sunxi_rtc_settime._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sunxi_rtc_settime._entry_ptr.15 = internal global ptr @sunxi_rtc_settime._entry.14, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sunxi_rtc_setalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error in getting time\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sunxi_rtc_setalarm\00", [45 x i8] zeroinitializer }, align 32
@sunxi_rtc_setalarm._entry_ptr = internal global ptr @sunxi_rtc_setalarm._entry, section ".printk_index", align 4
@sunxi_rtc_setalarm._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Date to set in the past\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_rtc_setalarm._entry_ptr.20 = internal global ptr @sunxi_rtc_setalarm._entry.18, section ".printk_index", align 4
@sunxi_rtc_setalarm._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Day must be in the range 0 - 255\0A\00", [62 x i8] zeroinitializer }, align 32
@sunxi_rtc_setalarm._entry_ptr.23 = internal global ptr @sunxi_rtc_setalarm._entry.21, section ".printk_index", align 4
@data_year_param = internal constant { [2 x %struct.sunxi_rtc_data_year], [32 x i8] } { [2 x %struct.sunxi_rtc_data_year] [%struct.sunxi_rtc_data_year { i32 2010, i32 2073, i32 63, i8 22 }, %struct.sunxi_rtc_data_year { i32 1970, i32 2225, i32 255, i8 24 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"sunxi_rtc_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 476, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 479, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"sunxi_rtc_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 415, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 448, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 454, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"sunxi_rtc_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 407, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 343, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 376, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 390, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 269, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 275, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 280, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"data_year_param\00", align 1
@___asan_gen_.100 = private constant [27 x i8] c"../drivers/rtc/rtc-sunxi.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 123, i32 41 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_sunxi_rtc_driver_exit, ptr @__initcall__kmod_rtc_sunxi__227_484_sunxi_rtc_driver_init6, ptr @sunxi_rtc_driver_exit, ptr @sunxi_rtc_probe._entry, ptr @sunxi_rtc_probe._entry.6, ptr @sunxi_rtc_probe._entry_ptr, ptr @sunxi_rtc_probe._entry_ptr.8, ptr @sunxi_rtc_setalarm._entry, ptr @sunxi_rtc_setalarm._entry.18, ptr @sunxi_rtc_setalarm._entry.21, ptr @sunxi_rtc_setalarm._entry_ptr, ptr @sunxi_rtc_setalarm._entry_ptr.20, ptr @sunxi_rtc_setalarm._entry_ptr.23, ptr @sunxi_rtc_settime._entry, ptr @sunxi_rtc_settime._entry.11, ptr @sunxi_rtc_settime._entry.14, ptr @sunxi_rtc_settime._entry_ptr, ptr @sunxi_rtc_settime._entry_ptr.13, ptr @sunxi_rtc_settime._entry_ptr.15, ptr @sunxi_rtc_driver, ptr @.str, ptr @sunxi_rtc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @sunxi_rtc_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @data_year_param], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_settime._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_settime._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_setalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_setalarm._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rtc_setalarm._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_year_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %call4 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %base, align 4
  %cmp.i97 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call18, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end22.dev_name.exit_crit_edge ]
  %call.i98 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call18, ptr noundef nonnull @sunxi_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool28.not = icmp eq i32 %call.i98, 0
  br i1 %tobool28.not, label %if.end31, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  %call33 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data_year = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %data_year to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call33, ptr %data_year, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end39, label %do.body42

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.body42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 16777216) #6, !srcloc !67
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sunxi_rtc_ops, ptr %ops, align 8
  %23 = load ptr, ptr %call.i, align 4
  %call63 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %do.end39, %do.end, %if.end17.cleanup_crit_edge, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %5, %if.then14 ], [ %call.i98, %do.end ], [ %call63, %do.body42 ], [ -19, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_alarmirq(i32 noundef %irq, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !67
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id, align 4
  tail call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_gettime(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rtc_tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp.not = icmp eq i32 %4, %10
  br i1 %cmp.not, label %lor.rhs, label %do.body.do.body.backedge_crit_edge

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.body
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp24.not = icmp eq i32 %7, %13
  br i1 %cmp24.not, label %do.end, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.body.do.body.backedge_crit_edge
  br label %do.body

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %7)
  %15 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %14, 63
  %16 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %rtc_tm, align 4
  %and25 = lshr i32 %14, 8
  %shr26 = and i32 %and25, 63
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr26, ptr %tm_min, align 4
  %and27 = lshr i32 %14, 16
  %shr28 = and i32 %and27, 31
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr28, ptr %tm_hour, align 4
  %and29 = and i32 %15, 31
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and29, ptr %tm_mday, align 4
  %and31 = lshr i32 %15, 8
  %shr32 = and i32 %and31, 15
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr32, ptr %tm_mon, align 4
  %data_year = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %data_year to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_year, align 4
  %mask = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %shl = shl i32 %24, 16
  %and33 = and i32 %shl, %15
  %shr34 = lshr exact i32 %and33, 16
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %25 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr34, ptr %tm_year, align 4
  %sub = add nsw i32 %shr32, -1
  store i32 %sub, ptr %tm_mon, align 4
  %26 = load ptr, ptr %data_year, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %sub37 = add nsw i32 %shr34, -1900
  %add = add i32 %sub37, %28
  store i32 %add, ptr %tm_year, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_settime(ptr noundef %dev, ptr nocapture noundef %rtc_tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %add = add i32 %3, 1900
  %data_year = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_year, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ult i32 %add, %7
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp2 = icmp ugt i32 %add, %9
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %max6 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %max6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub10 = sub i32 %add, %7
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub10, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %13 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mon, align 4
  %add11 = add i32 %14, 1
  store i32 %add11, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %and = and i32 %16, 31
  %and13 = shl i32 %add11, 8
  %shl = and i32 %and13, 3840
  %or = or i32 %and, %shl
  %17 = ptrtoint ptr %data_year to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_year, align 4
  %mask = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %and16 = and i32 %20, %sub10
  %shl17 = shl i32 %and16, 16
  %or18 = or i32 %shl17, %or
  %rem.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %add, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.i.not = and i1 %tobool.not.i, %tobool2.not.i
  %rem3.i = urem i32 %add, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i = icmp eq i32 %rem3.i, 0
  %or.cond = select i1 %or.cond.i.not, i1 true, i1 %tobool4.not.i
  br i1 %or.cond, label %if.then20, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %leap_shift = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %leap_shift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %leap_shift, align 4
  %conv = zext i8 %22 to i32
  %shl22 = shl nuw i32 1, %conv
  %or23 = or i32 %shl22, %or18
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end.if.end24_crit_edge
  %date.0 = phi i32 [ %or23, %if.then20 ], [ %or18, %if.end.if.end24_crit_edge ]
  %23 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rtc_tm, align 4
  %and25 = and i32 %24, 63
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %25 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min, align 4
  %and27 = shl i32 %26, 8
  %shl28 = and i32 %and27, 16128
  %or29 = or i32 %shl28, %and25
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_hour, align 4
  %and30 = shl i32 %28, 16
  %shl31 = and i32 %and30, 2031616
  %or32 = or i32 %or29, %shl31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or32)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %33) #6, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -5, %36
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end24
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.not = icmp eq i32 %40, 0
  br i1 %cmp.i.not, label %do.cond.i, label %do.body52

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %41
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %do.cond.i.do.body.i_crit_edge, label %do.end50

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end50:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

do.body52:                                        ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %date.0)
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr56 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %42) #6, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i94 = sub i32 -5, %45
  br label %do.body.i97

do.body.i97:                                      ; preds = %do.cond.i100.do.body.i97_crit_edge, %do.body52
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i96 = icmp slt i32 %48, 0
  br i1 %cmp.i96, label %do.body.i97.cleanup_crit_edge, label %do.cond.i100

do.body.i97.cleanup_crit_edge:                    ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond.i100:                                     ; preds = %do.body.i97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i98 = add i32 %add.neg.i94, %49
  %cmp3.i99 = icmp slt i32 %sub.i98, 0
  br i1 %cmp3.i99, label %do.cond.i100.do.body.i97_crit_edge, label %do.end62

do.cond.i100.do.body.i97_crit_edge:               ; preds = %do.cond.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i97

do.end62:                                         ; preds = %do.cond.i100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.body.i97.cleanup_crit_edge, %do.end50, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -1, %do.end50 ], [ -1, %do.end62 ], [ 0, %do.body.i97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_getalarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wkalrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %base = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %and = and i32 %5, 63
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %time, align 4
  %and10 = lshr i32 %5, 8
  %shr11 = and i32 %and10, 63
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr11, ptr %tm_min, align 4
  %and12 = lshr i32 %5, 16
  %shr13 = and i32 %and12, 31
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr13, ptr %tm_hour, align 4
  %and14 = and i32 %9, 31
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %tm_mday, align 4
  %and16 = lshr i32 %9, 8
  %shr17 = and i32 %and16, 15
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr17, ptr %tm_mon, align 4
  %data_year = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %data_year to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_year, align 4
  %mask = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  %shl = shl i32 %18, 16
  %and18 = and i32 %shl, %9
  %shr19 = lshr exact i32 %and18, 16
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr19, ptr %tm_year, align 4
  %sub = add nsw i32 %shr17, -1
  store i32 %sub, ptr %tm_mon, align 4
  %20 = load ptr, ptr %data_year, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %sub22 = add nsw i32 %shr19, -1900
  %add = add i32 %sub22, %22
  store i32 %add, ptr %tm_year, align 4
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %26 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %wkalrm to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %wkalrm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_setalarm(ptr noundef %dev, ptr noundef %wkalrm) #2 align 64 {
entry:
  %tm_now = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm_now) #6
  %2 = getelementptr inbounds i8, ptr %tm_now, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  %base.i = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp.not.i = icmp eq i32 %6, %12
  br i1 %cmp.not.i, label %lor.rhs.i, label %do.body.i.do.body.i.backedge_crit_edge

do.body.i.do.body.i.backedge_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.backedge

lor.rhs.i:                                        ; preds = %do.body.i
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp24.not.i = icmp eq i32 %9, %15
  br i1 %cmp24.not.i, label %sunxi_rtc_gettime.exit, label %lor.rhs.i.do.body.i.backedge_crit_edge

lor.rhs.i.do.body.i.backedge_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %lor.rhs.i.do.body.i.backedge_crit_edge, %do.body.i.do.body.i.backedge_crit_edge
  br label %do.body.i

sunxi_rtc_gettime.exit:                           ; preds = %lor.rhs.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %and.i = and i32 %16, 63
  %18 = ptrtoint ptr %tm_now to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %tm_now, align 4
  %and25.i = lshr i32 %16, 8
  %shr26.i = and i32 %and25.i, 63
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr26.i, ptr %tm_min.i, align 4
  %and27.i = lshr i32 %16, 16
  %shr28.i = and i32 %and27.i, 31
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr28.i, ptr %tm_hour.i, align 4
  %and29.i = and i32 %17, 31
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 3
  %21 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and29.i, ptr %tm_mday.i, align 4
  %and31.i = lshr i32 %17, 8
  %shr32.i = and i32 %and31.i, 15
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 4
  %data_year.i = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %data_year.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_year.i, align 4
  %mask.i = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask.i, align 4
  %shl.i = shl i32 %25, 16
  %and33.i = and i32 %shl.i, %17
  %shr34.i = lshr exact i32 %and33.i, 16
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now, i32 0, i32 5
  %sub.i = add nsw i32 %shr32.i, -1
  %26 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %27 = load ptr, ptr %data_year.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %sub37.i = add nsw i32 %shr34.i, -1900
  %add.i = add i32 %sub37.i, %29
  %30 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %tm_year.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %call1.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm_now) #6
  %sub.i77 = sub i64 %call.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i77)
  %cmp3 = icmp slt i64 %sub.i77, 1
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %sunxi_rtc_gettime.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end8:                                          ; preds = %sunxi_rtc_gettime.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 22032000, i64 %sub.i77)
  %cmp9 = icmp ugt i64 %sub.i77, 22032000
  br i1 %cmp9, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %conv = trunc i64 %sub.i77 to i32
  %div = udiv i32 %conv, 86400
  %mul.neg = mul nsw i32 %div, -86400
  %sub = add nsw i32 %mul.neg, %conv
  %div15 = udiv i32 %sub, 3600
  %mul16.neg = mul i32 %div15, -3600
  %sub17 = add i32 %mul16.neg, %sub
  %div18 = udiv i32 %sub17, 60
  %mul19.neg = shl nuw nsw i32 %div18, 2
  %sub20 = add i32 %mul19.neg, %sub17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16777216) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %34, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %36, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !67
  call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #6
  %and = and i32 %sub20, 63
  %and24 = shl i32 %div18, 8
  %shl = and i32 %and24, 16128
  %and25 = shl i32 %div15, 16
  %shl26 = and i32 %and25, 2031616
  %and28 = shl nuw nsw i32 %div, 21
  %shl29 = and i32 %and28, 2143289344
  %or = or i32 %shl26, %shl29
  %or27 = or i32 %or, %shl
  %or30 = or i32 %or27, %and
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %39 = call i32 @llvm.bswap.i32(i32 %or30)
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr35 = getelementptr i8, ptr %41, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %39) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr40 = getelementptr i8, ptr %43, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr45 = getelementptr i8, ptr %45, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 16777216) #6, !srcloc !67
  %46 = ptrtoint ptr %wkalrm to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wkalrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %do.body.i83, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %49, i32 20
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %51 = or i32 %50, 65536
  %52 = call i32 @llvm.bswap.i32(i32 %51) #6
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %54, i32 24
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %56 = or i32 %55, 16777216
  %57 = call i32 @llvm.bswap.i32(i32 %56) #6
  br label %sunxi_rtc_setaie.exit

do.body.i83:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr11.i82 = getelementptr i8, ptr %59, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i82, i32 16777216) #6, !srcloc !67
  br label %sunxi_rtc_setaie.exit

sunxi_rtc_setaie.exit:                            ; preds = %do.body.i83, %if.then.i
  %alrm_irq_val.0.i = phi i32 [ %57, %if.then.i ], [ 0, %do.body.i83 ]
  %alrm_val.0.i = phi i32 [ %52, %if.then.i ], [ 0, %do.body.i83 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %60 = call i32 @llvm.bswap.i32(i32 %alrm_val.0.i) #6
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr16.i85 = getelementptr i8, ptr %62, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i85, i32 %60) #6, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %63 = call i32 @llvm.bswap.i32(i32 %alrm_irq_val.0.i) #6
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr21.i86 = getelementptr i8, ptr %65, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i86, i32 %63) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %sunxi_rtc_setaie.exit, %do.end13, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end13 ], [ 0, %sunxi_rtc_setaie.exit ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm_now) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %base10.i = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16777216) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base10.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base10.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #6, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_rtc_sunxi__227_484_sunxi_rtc_driver_init6, !1, !"__initcall__kmod_rtc_sunxi__227_484_sunxi_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-sunxi.c", i32 484, i32 1}
!2 = !{ptr @__exitcall_sunxi_rtc_driver_exit, !1, !"__exitcall_sunxi_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-sunxi.c", i32 486, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-sunxi.c", i32 487, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-sunxi.c", i32 488, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-sunxi.c", i32 479, i32 12}
!12 = !{ptr @sunxi_rtc_driver, !13, !"sunxi_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-sunxi.c", i32 476, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-sunxi.c", i32 448, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sunxi_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-sunxi.c", i32 454, i32 3}
!24 = !{ptr @sunxi_rtc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_rtc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sunxi_rtc_ops, !27, !"sunxi_rtc_ops", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-sunxi.c", i32 407, i32 35}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-sunxi.c", i32 343, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sunxi_rtc_settime._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sunxi_rtc_settime._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-sunxi.c", i32 376, i32 3}
!35 = !{ptr @sunxi_rtc_settime._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sunxi_rtc_settime._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @sunxi_rtc_settime._entry.14, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-sunxi.c", i32 390, i32 3}
!39 = !{ptr @sunxi_rtc_settime._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-sunxi.c", i32 269, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sunxi_rtc_setalarm._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sunxi_rtc_setalarm._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-sunxi.c", i32 275, i32 3}
!47 = !{ptr @sunxi_rtc_setalarm._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sunxi_rtc_setalarm._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-sunxi.c", i32 280, i32 3}
!51 = !{ptr @sunxi_rtc_setalarm._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sunxi_rtc_setalarm._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sunxi_rtc_dt_ids, !54, !"sunxi_rtc_dt_ids", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-sunxi.c", i32 415, i32 34}
!55 = !{ptr @data_year_param, !56, !"data_year_param", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-sunxi.c", i32 123, i32 41}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2153993157}
!67 = !{i64 5169823}
!68 = !{i64 2153993549}
!69 = !{i64 2153993941}
!70 = !{i64 2153994441}
!71 = !{i64 5170241}
!72 = !{i64 2153965378}
!73 = !{i64 2153965765}
!74 = !{i64 2153971392}
!75 = !{i64 2153971893}
!76 = !{i64 2153972394}
!77 = !{i64 2153972895}
!78 = !{i64 2153984837}
!79 = !{i64 2153985229}
!80 = !{i64 2153985624}
!81 = !{i64 2153981401}
!82 = !{i64 2153987703}
!83 = !{i64 2153969053}
!84 = !{i64 2153969554}
!85 = !{i64 2153970809}
!86 = !{i64 2153967447}
!87 = !{i64 2153967924}
!88 = !{i64 2153968348}
!89 = !{i64 2153978868}
!90 = !{i64 2153979757}
!91 = !{i64 2153980158}
!92 = !{i64 2153980658}
!93 = !{i64 2153966453}
!94 = !{i64 2153967036}
