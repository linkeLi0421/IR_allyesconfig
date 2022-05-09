; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-cpcap.c_pt.bc'
source_filename = "../drivers/rtc/rtc-cpcap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cpcap_rtc = type { ptr, ptr, i16, i32, i8, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.cpcap_time = type { i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_cpcap__227_321_cpcap_rtc_driver_init6 = internal global ptr @cpcap_rtc_driver_init, section ".initcall6.init", align 4
@cpcap_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_rtc_driver_exit = internal global ptr @cpcap_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [35 x i8] c"rtc_cpcap.alias=platform:cpcap-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [39 x i8] c"rtc_cpcap.description=CPCAP RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [52 x i8] c"rtc_cpcap.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [37 x i8] c"rtc_cpcap.file=drivers/rtc/rtc-cpcap\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"rtc_cpcap.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpcap-rtc\00", [22 x i8] zeroinitializer }, align 32
@cpcap_rtc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cpcap_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @cpcap_rtc_read_time, ptr @cpcap_rtc_set_time, ptr @cpcap_rtc_read_alarm, ptr @cpcap_rtc_set_alarm, ptr null, ptr @cpcap_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_alarm\00", [22 x i8] zeroinitializer }, align 32
@cpcap_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not request alarm irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpcap_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-cpcap.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_rtc_probe._entry_ptr = internal global ptr @cpcap_rtc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_1hz\00", [24 x i8] zeroinitializer }, align 32
@cpcap_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not request update irq: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cpcap_rtc_probe._entry_ptr.10 = internal global ptr @cpcap_rtc_probe._entry.8, section ".printk_index", align 4
@cpcap_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wakeup initialization failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cpcap_rtc_probe._entry_ptr.13 = internal global ptr @cpcap_rtc_probe._entry.11, section ".printk_index", align 4
@cpcap_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to read time\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpcap_rtc_read_time\00", [44 x i8] zeroinitializer }, align 32
@cpcap_rtc_read_time._entry_ptr = internal global ptr @cpcap_rtc_read_time._entry, section ".printk_index", align 4
@cpcap_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpcap_rtc_read_alarm\00", [43 x i8] zeroinitializer }, align 32
@cpcap_rtc_read_alarm._entry_ptr = internal global ptr @cpcap_rtc_read_alarm._entry, section ".printk_index", align 4
@cpcap_get_vendor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not read vendor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpcap_get_vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/linux/mfd/motorola-cpcap.h\00", [61 x i8] zeroinitializer }, align 32
@cpcap_get_vendor._entry_ptr = internal global ptr @cpcap_get_vendor._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"cpcap_rtc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 313, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 316, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"cpcap_rtc_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 307, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"cpcap_rtc_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 220, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 274, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 276, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 291, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 293, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 300, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 109, i32 3 }
@___asan_gen_.81 = private constant [27 x i8] c"../drivers/rtc/rtc-cpcap.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 184, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [38 x i8] c"../include/linux/mfd/motorola-cpcap.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 284, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_cpcap_rtc_driver_exit, ptr @__initcall__kmod_rtc_cpcap__227_321_cpcap_rtc_driver_init6, ptr @cpcap_get_vendor._entry, ptr @cpcap_get_vendor._entry_ptr, ptr @cpcap_rtc_driver_exit, ptr @cpcap_rtc_probe._entry, ptr @cpcap_rtc_probe._entry.11, ptr @cpcap_rtc_probe._entry.8, ptr @cpcap_rtc_probe._entry_ptr, ptr @cpcap_rtc_probe._entry_ptr.10, ptr @cpcap_rtc_probe._entry_ptr.13, ptr @cpcap_rtc_read_alarm._entry, ptr @cpcap_rtc_read_alarm._entry_ptr, ptr @cpcap_rtc_read_time._entry, ptr @cpcap_rtc_read_time._entry_ptr, ptr @cpcap_rtc_driver, ptr @.str, ptr @cpcap_rtc_of_match, ptr @cpcap_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_get_vendor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #5
  %rtc_dev = getelementptr inbounds %struct.cpcap_rtc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %rtc_dev, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call7, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cpcap_rtc_ops, ptr %ops, align 8
  %7 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc_dev, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2831155199, ptr %range_max, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !64
  %call.i89 = call i32 @regmap_read(ptr noundef %11, i32 noundef 72, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i, label %if.end20, label %cpcap_get_vendor.exit

cpcap_get_vendor.exit:                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %vendor = getelementptr inbounds %struct.cpcap_rtc, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = trunc i32 %14 to i16
  %16 = lshr i16 %15, 6
  %conv.i = and i16 %16, 7
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %vendor, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %call21 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %alarm_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call21, ptr %alarm_irq, align 4
  %call23 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call21, ptr noundef null, ptr noundef nonnull @cpcap_rtc_alarm_irq, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call23) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alarm_irq, align 4
  call void @disable_irq(i32 noundef %20) #5
  %call28 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  %update_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %update_irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call28, ptr %update_irq, align 4
  %call30 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call28, ptr noundef null, ptr noundef nonnull @cpcap_rtc_update_irq, i32 noundef 8192, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call30) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %update_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %update_irq, align 4
  call void @disable_irq(i32 noundef %23) #5
  %call38 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end36.if.end44_crit_edge, label %do.end43

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call38) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.end36.if.end44_crit_edge
  %24 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc_dev, align 4
  %call46 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end35, %do.end, %cpcap_get_vendor.exit, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ %call23, %do.end ], [ %call30, %do.end35 ], [ %call46, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call.i89, %cpcap_get_vendor.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc_dev = getelementptr inbounds %struct.cpcap_rtc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_update_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc_dev = getelementptr inbounds %struct.cpcap_rtc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 144) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %cpcap_tm = alloca %struct.cpcap_time, align 4
  %temp_tod2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cpcap_tm) #5
  %0 = ptrtoint ptr %cpcap_tm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpcap_tm, align 4, !annotation !64
  %1 = getelementptr inbounds %struct.cpcap_time, ptr %cpcap_tm, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !64
  %3 = getelementptr inbounds %struct.cpcap_time, ptr %cpcap_tm, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_tod2) #5
  %5 = ptrtoint ptr %temp_tod2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %temp_tod2, align 4, !annotation !64
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 1044, ptr noundef nonnull %temp_tod2) #5
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 1056, ptr noundef nonnull %cpcap_tm) #5
  %or = or i32 %call3, %call1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %call5 = call i32 @regmap_read(ptr noundef %13, i32 noundef 1040, ptr noundef %1) #5
  %or6 = or i32 %or, %call5
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %call8 = call i32 @regmap_read(ptr noundef %15, i32 noundef 1044, ptr noundef %3) #5
  %or9 = or i32 %or6, %call8
  %16 = ptrtoint ptr %temp_tod2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_tod2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp sgt i32 %17, %19
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %call13 = call i32 @regmap_read(ptr noundef %21, i32 noundef 1056, ptr noundef nonnull %cpcap_tm) #5
  %or14 = or i32 %call13, %or9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %or14, %if.then ], [ %or9, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %and.i = and i32 %23, 255
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %and1.i = shl i32 %25, 8
  %shl.i = and i32 %and1.i, 130816
  %or.i = or i32 %shl.i, %and.i
  %26 = ptrtoint ptr %cpcap_tm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpcap_tm, align 4
  %and2.i = and i32 %27, 32767
  %mul.i = mul nuw i32 %and2.i, 86400
  %add.i = add i32 %or.i, %mul.i
  %conv.i = zext i32 %add.i to i64
  call void @rtc_time64_to_tm(i64 noundef %conv.i, ptr noundef %tm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_tod2) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cpcap_tm) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %conv.i = trunc i64 %call.i to i32
  %conv.i.frozen = freeze i32 %conv.i
  %div.i = udiv i32 %conv.i.frozen, 86400
  %2 = mul i32 %div.i, 86400
  %rem.i.decomposed = sub i32 %conv.i.frozen, %2
  %shr.i = lshr i32 %rem.i.decomposed, 8
  %and1.i = and i32 %rem.i.decomposed, 255
  %alarm_enabled = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alarm_enabled, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %alarm_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_irq, align 4
  tail call void @disable_irq(i32 noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update_enabled = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %update_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_enabled, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %update_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %update_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %update_irq, align 4
  tail call void @disable_irq(i32 noundef %10) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %vendor = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp = icmp eq i16 %12, 0
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1040, i32 noundef 255, i32 noundef %and1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 1044, i32 noundef 511, i32 noundef %shr.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or9 = or i32 %call.i62, %call.i61
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 1056, i32 noundef 32767, i32 noundef %div.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or12 = or i32 %or9, %call.i63
  br label %if.end28

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1040, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 1056, i32 noundef 32767, i32 noundef %div.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or19 = or i32 %call.i65, %call.i64
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 1044, i32 noundef 511, i32 noundef %shr.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or23 = or i32 %or19, %call.i66
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 1040, i32 noundef 255, i32 noundef %and1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or27 = or i32 %or23, %call.i67
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %or12, %if.then5 ], [ %or27, %if.else ]
  %25 = ptrtoint ptr %update_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %update_enabled, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %update_irq32 = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %update_irq32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %update_irq32, align 4
  tail call void @enable_irq(i32 noundef %28) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  %29 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %alarm_enabled, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool35.not = icmp eq i8 %30, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %alarm_irq37 = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %alarm_irq37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alarm_irq37, align 4
  tail call void @enable_irq(i32 noundef %32) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %cpcap_tm = alloca %struct.cpcap_time, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cpcap_tm) #5
  %0 = ptrtoint ptr %cpcap_tm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpcap_tm, align 4, !annotation !64
  %1 = getelementptr inbounds %struct.cpcap_time, ptr %cpcap_tm, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !64
  %3 = getelementptr inbounds %struct.cpcap_time, ptr %cpcap_tm, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !64
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %alarm_enabled = getelementptr inbounds %struct.cpcap_rtc, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alarm_enabled, align 4, !range !65
  %9 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %alrm, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 1060, ptr noundef nonnull %cpcap_tm) #5
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %call3 = call i32 @regmap_read(ptr noundef %13, i32 noundef 1052, ptr noundef %3) #5
  %or = or i32 %call3, %call1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %call5 = call i32 @regmap_read(ptr noundef %15, i32 noundef 1048, ptr noundef %1) #5
  %or6 = or i32 %or, %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool7.not = icmp eq i32 %or6, 0
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %and.i = and i32 %17, 255
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %and1.i = shl i32 %19, 8
  %shl.i = and i32 %and1.i, 130816
  %or.i = or i32 %shl.i, %and.i
  %20 = ptrtoint ptr %cpcap_tm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpcap_tm, align 4
  %and2.i = and i32 %21, 32767
  %mul.i = mul nuw i32 %and2.i, 86400
  %add.i = add i32 %or.i, %mul.i
  %conv.i = zext i32 %add.i to i64
  call void @rtc_time64_to_tm(i64 noundef %conv.i, ptr noundef %time) #5
  %call9 = call i32 @rtc_valid_tm(ptr noundef %time) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cpcap_tm) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #5
  %conv.i = trunc i64 %call.i to i32
  %conv.i.frozen = freeze i32 %conv.i
  %div.i = udiv i32 %conv.i.frozen, 86400
  %2 = mul i32 %div.i, 86400
  %rem.i.decomposed = sub i32 %conv.i.frozen, %2
  %shr.i = lshr i32 %rem.i.decomposed, 8
  %and1.i = and i32 %rem.i.decomposed, 255
  %alarm_enabled = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alarm_enabled, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %alarm_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_irq, align 4
  tail call void @disable_irq(i32 noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1060, i32 noundef 32767, i32 noundef %div.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1052, i32 noundef 511, i32 noundef %shr.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or = or i32 %call.i22, %call.i21
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 1048, i32 noundef 255, i32 noundef %and1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or6 = or i32 %or, %call.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool7.not = icmp eq i32 %or6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %alarm_irq9 = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %alarm_irq9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alarm_irq9, align 4
  tail call void @enable_irq(i32 noundef %14) #5
  %15 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %alarm_enabled, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  ret i32 %or6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_enabled = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarm_enabled, align 4, !range !65
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enabled)
  %cmp = icmp eq i32 %4, %enabled
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool2 = icmp ne i32 %enabled, 0
  %alarm_irq = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_irq, align 4
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %6) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq(i32 noundef %6) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %frombool = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %alarm_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_rtc_cpcap__227_321_cpcap_rtc_driver_init6, !1, !"__initcall__kmod_rtc_cpcap__227_321_cpcap_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-cpcap.c", i32 321, i32 1}
!2 = !{ptr @__exitcall_cpcap_rtc_driver_exit, !1, !"__exitcall_cpcap_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias228, !4, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-cpcap.c", i32 323, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-cpcap.c", i32 324, i32 1}
!7 = !{ptr @__UNIQUE_ID_author230, !8, !"__UNIQUE_ID_author230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-cpcap.c", i32 325, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-cpcap.c", i32 326, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-cpcap.c", i32 316, i32 11}
!14 = !{ptr @cpcap_rtc_driver, !15, !"cpcap_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-cpcap.c", i32 313, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-cpcap.c", i32 274, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-cpcap.c", i32 276, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpcap_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cpcap_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-cpcap.c", i32 291, i32 6}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-cpcap.c", i32 293, i32 3}
!30 = !{ptr @cpcap_rtc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cpcap_rtc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-cpcap.c", i32 300, i32 3}
!34 = !{ptr @cpcap_rtc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cpcap_rtc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @cpcap_rtc_ops, !37, !"cpcap_rtc_ops", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-cpcap.c", i32 220, i32 35}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-cpcap.c", i32 109, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cpcap_rtc_read_time._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cpcap_rtc_read_time._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-cpcap.c", i32 184, i32 3}
!45 = !{ptr @cpcap_rtc_read_alarm._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cpcap_rtc_read_alarm._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/mfd/motorola-cpcap.h", i32 284, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cpcap_get_vendor._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @cpcap_get_vendor._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @cpcap_rtc_of_match, !54, !"cpcap_rtc_of_match", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-cpcap.c", i32 307, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i8 0, i8 2}
