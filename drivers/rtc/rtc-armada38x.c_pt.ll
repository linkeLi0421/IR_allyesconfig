; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-armada38x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-armada38x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.armada38x_rtc_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.armada38x_rtc = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.value_to_freq = type { i32, i8 }

@__initcall__kmod_rtc_armada38x__232_587_armada38x_rtc_driver_init6 = internal global ptr @armada38x_rtc_driver_init, section ".initcall6.init", align 4
@armada38x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada38x_rtc_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada38x_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_armada38x_rtc_driver_exit = internal global ptr @armada38x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [56 x i8] c"rtc_armada38x.description=Marvell Armada 38x RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [74 x i8] c"rtc_armada38x.author=Gregory CLEMENT <gregory.clement@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [45 x i8] c"rtc_armada38x.file=drivers/rtc/rtc-armada38x\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"rtc_armada38x.license=GPL\00", section ".modinfo", align 1
@armada38x_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc-soc\00", [24 x i8] zeroinitializer }, align 32
@armada38x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 530, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"armada38x_rtc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/rtc/rtc-armada38x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada38x_rtc_probe._entry_ptr = internal global ptr @armada38x_rtc_probe._entry, section ".printk_index", align 4
@armada38x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @armada38x_rtc_read_time, ptr @armada38x_rtc_set_time, ptr @armada38x_rtc_read_alarm, ptr @armada38x_rtc_set_alarm, ptr null, ptr @armada38x_rtc_alarm_irq_enable, ptr @armada38x_rtc_read_offset, ptr @armada38x_rtc_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@armada38x_rtc_alarm_irq.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtc_armada38x\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"armada38x_rtc_alarm_irq\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:irq(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"armada38x-rtc\00", [18 x i8] zeroinitializer }, align 32
@armada38x_rtc_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada38x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada8k_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@armada38x_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @armada38x_rtc_suspend, ptr @armada38x_rtc_resume, ptr @armada38x_rtc_suspend, ptr @armada38x_rtc_resume, ptr @armada38x_rtc_suspend, ptr @armada38x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@armada38x_data = internal constant { %struct.armada38x_rtc_data, [44 x i8] } { %struct.armada38x_rtc_data { ptr @rtc_update_38x_mbus_timing_params, ptr @read_rtc_register_38x_wa, ptr @armada38x_clear_isr, ptr @armada38x_unmask_interrupt, i32 0 }, [44 x i8] zeroinitializer }, align 32
@armada8k_data = internal constant { %struct.armada38x_rtc_data, [44 x i8] } { %struct.armada38x_rtc_data { ptr @rtc_update_8k_mbus_timing_params, ptr @read_rtc_register, ptr @armada8k_clear_isr, ptr @armada8k_unmask_interrupt, i32 1 }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"armada38x_rtc_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 579, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 509, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 511, i32 59 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 515, i32 59 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 530, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"armada38x_rtc_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 451, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 331, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 581, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"armada38x_rtc_of_match_table\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 478, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"armada38x_rtc_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 576, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"armada38x_data\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 461, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"armada8k_data\00", align 1
@___asan_gen_.70 = private constant [31 x i8] c"../drivers/rtc/rtc-armada38x.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 469, i32 40 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_armada38x_rtc_driver_exit, ptr @__initcall__kmod_rtc_armada38x__232_587_armada38x_rtc_driver_init6, ptr @armada38x_rtc_driver_exit, ptr @armada38x_rtc_probe._entry, ptr @armada38x_rtc_probe._entry_ptr, ptr @armada38x_rtc_driver, ptr @armada38x_rtc_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @armada38x_rtc_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @armada38x_rtc_of_match_table, ptr @armada38x_rtc_pm_ops, ptr @armada38x_data, ptr @armada8k_data], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada38x_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada8k_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @armada38x_rtc_driver, ptr noundef nonnull @armada38x_rtc_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada38x_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @armada38x_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 800, i32 noundef 3520) #6
  %val_to_freq = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %val_to_freq, align 4
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @armada38x_rtc_probe.__key, i16 noundef signext 3) #6
  %call10 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #6
  %regs = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %call19 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #6
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call19) #6
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs_soc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call21, ptr %regs_soc, align 4
  %cmp.i106 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.armada38x_rtc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call28, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call34 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call34, ptr %call.i, align 4
  %cmp.i107 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call.i108 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @armada38x_rtc_alarm_irq, ptr noundef null, i32 noundef 0, ptr noundef %12, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp44 = icmp slt i32 %call.i108, 0
  br i1 %cmp44, label %if.end51.thread, label %if.end51

if.end51.thread:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %irq, align 4
  %driver_data.i.i109 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i109 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i109, align 4
  br label %if.else

if.end51:                                         ; preds = %if.end40
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %irq, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp53.not = icmp eq i32 %.pr, -1
  br i1 %cmp53.not, label %if.end51.if.else_crit_edge, label %if.then54

if.end51.if.else_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end58

if.else:                                          ; preds = %if.end51.if.else_crit_edge, %if.end51.thread
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #6
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void %22(ptr noundef nonnull %call.i) #6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @armada38x_rtc_ops, ptr %ops, align 8
  %26 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 4294967295, ptr %range_max, align 8
  %28 = load ptr, ptr %call.i, align 4
  %call63 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %28) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then37, %if.end27.cleanup_crit_edge, %if.then24, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then15 ], [ %5, %if.then24 ], [ %8, %if.then37 ], [ %call63, %if.end58 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_alarm_irq(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada38x_rtc, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %alarm = getelementptr inbounds %struct.armada38x_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @armada38x_rtc_alarm_irq.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@armada38x_rtc_alarm_irq, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @armada38x_rtc_alarm_irq.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %irq) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 4
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %clear_isr = getelementptr inbounds %struct.armada38x_rtc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %clear_isr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_isr, align 4
  tail call void %9(ptr noundef %data) #6
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data1, align 4
  %read_rtc_reg = getelementptr inbounds %struct.armada38x_rtc_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read_rtc_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_rtc_reg, align 4
  %conv = trunc i32 %add to i8
  %call7 = tail call i32 %13(ptr noundef %data, i8 noundef zeroext %conv) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.armada38x_rtc, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #6
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data1, align 4
  %alarm9 = getelementptr inbounds %struct.armada38x_rtc_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %alarm9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alarm9, align 4
  %shl = shl nuw i32 1, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %and = and i32 %call7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %and13 = and i32 %call7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %. = select i1 %tobool14.not, i32 224, i32 176
  %event.0 = select i1 %tobool11.not, i32 160, i32 %.
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %34, i32 noundef 1, i32 noundef %event.0) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %read_rtc_reg = getelementptr inbounds %struct.armada38x_rtc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_rtc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_rtc_reg, align 4
  %call6 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 12) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %conv8 = zext i32 %call6 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv8, ptr noundef %tm) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %initialized = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %read_rtc_reg.i = getelementptr inbounds %struct.armada38x_rtc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_rtc_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_rtc_reg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 28) #6
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.armada38x_rtc_reset.exit_crit_edge, label %if.then.i

if.then.armada38x_rtc_reset.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %armada38x_rtc_reset.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %regs.i.i = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #6
  tail call void @msleep(i32 noundef 500) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr8.i8.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i8.i, i32 0) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 50331648) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr8.i11.i = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i11.i, i32 2097152) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #6
  br label %armada38x_rtc_reset.exit

armada38x_rtc_reset.exit:                         ; preds = %if.then.i, %if.then.armada38x_rtc_reset.exit_crit_edge
  %36 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %initialized, align 4
  br label %do.body2

do.body2:                                         ; preds = %armada38x_rtc_reset.exit, %entry.do.body2_crit_edge
  %conv = trunc i64 %call1 to i32
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %41) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %alarm = getelementptr inbounds %struct.armada38x_rtc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alarm, align 4
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %read_rtc_reg = getelementptr inbounds %struct.armada38x_rtc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read_rtc_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_rtc_reg, align 4
  %.tr = trunc i32 %5 to i8
  %10 = shl i8 %.tr, 2
  %conv11 = add i8 %10, 16
  %call12 = tail call i32 %9(ptr noundef %1, i8 noundef zeroext %conv11) #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %read_rtc_reg14 = getelementptr inbounds %struct.armada38x_rtc_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_rtc_reg14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_rtc_reg14, align 4
  %conv15 = add i8 %10, 4
  %call16 = tail call i32 %14(ptr noundef %1, i8 noundef zeroext %conv15) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #6
  %15 = trunc i32 %call16 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %alrm, align 4
  %conv19 = zext i32 %call12 to i64
  %time20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv19, ptr noundef %time20) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %alarm = getelementptr inbounds %struct.armada38x_rtc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alarm, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 16
  %time5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call6 = tail call i64 @rtc_tm_to_time64(ptr noundef %time5) #6
  %conv = trunc i64 %call6 to i32
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %10) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #6
  %14 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add4 = add i32 %mul, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i24 = getelementptr i8, ptr %21, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i24, i32 16777216) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #6
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %unmask_interrupt = getelementptr inbounds %struct.armada38x_rtc_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %unmask_interrupt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unmask_interrupt, align 4
  tail call void %26(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %alarm = getelementptr inbounds %struct.armada38x_rtc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alarm, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 4
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs.i12 = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i12, align 4
  %add.ptr8.i13 = getelementptr i8, ptr %11, i32 %add
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i13, i32 16777216) #6, !srcloc !55
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i13, i32 0) #6, !srcloc !55
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_read_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %offset) #3 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %read_rtc_reg = getelementptr inbounds %struct.armada38x_rtc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_rtc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_rtc_reg, align 4
  %call6 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 24) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %and = and i32 %call6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 954, i32 3815
  %sext = shl i32 %call6, 24
  %conv9 = ashr exact i32 %sext, 24
  %mul = mul nsw i32 %cond, %conv9
  %add.i = add nsw i32 %mul, 1000000000
  %div1.i1516 = lshr i32 %add.i, 1
  %6 = zext i32 %div1.i1516 to i64
  %add2.i = add nuw nsw i64 %6, 1000000000000000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %7 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !59
  %call.i.i = call i64 @div_s64_rem(i64 noundef %add2.i, i32 noundef %add.i, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %8 = trunc i64 %call.i.i to i32
  %conv3.i = add i32 %8, -1000000000
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv3.i, ptr %offset, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_set_offset(ptr nocapture noundef readonly %dev, i32 noundef %offset) #3 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %offset, i32 -484270)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 488558)
  %add.i = add nsw i32 %3, 1000000000
  %div1.i6566 = lshr i32 %add.i, 1
  %4 = zext i32 %div1.i6566 to i64
  %add2.i = add nuw nsw i64 %4, 1000000000000000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %5 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !59
  %call.i.i = call i64 @div_s64_rem(i64 noundef %add2.i, i32 noundef %add.i, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %6 = trunc i64 %call.i.i to i32
  %conv3.i = add i32 %6, -1000000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp9 = icmp sgt i32 %conv3.i, 0
  %cond20.in.v = select i1 %cmp9, i32 -999999523, i32 -1000000477
  %cond20.in = add i32 %cond20.in.v, %6
  %cond20 = sdiv i32 %cond20.in, 954
  %7 = add i32 %cond20.in, -122112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -245177, i32 %7)
  %8 = icmp ult i32 %7, -245177
  %cond43.in.v = select i1 %cmp9, i32 -999998093, i32 -1000001907
  %cond43.in = add i32 %cond43.in.v, %6
  %cond43 = sdiv i32 %cond43.in, 3815
  %off.0 = select i1 %8, i32 %cond43, i32 %cond20
  %ccr.0 = select i1 %8, i32 32768, i32 0
  %and = and i32 %off.0, 16383
  %9 = or i32 %and, %ccr.0
  %or = xor i32 %9, 8192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.armada38x_rtc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  call void @arm_heavy_mb() #6
  %14 = call i32 @llvm.bswap.i32(i32 %or) #6
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %16, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %14) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 1073740) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_update_38x_mbus_timing_params(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %3 = or i32 %2, -16580484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_soc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_rtc_register_38x_wa(ptr nocapture noundef readonly %rtc, i8 noundef zeroext %rtc_reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 1
  %conv = zext i8 %rtc_reg to i32
  %val_to_freq = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.097 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !60
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %4 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %val_to_freq, align 4
  %arrayidx = getelementptr %struct.value_to_freq, ptr %5, i32 %i.097
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %arrayidx, align 4
  %7 = load ptr, ptr %val_to_freq, align 4
  %freq = getelementptr %struct.value_to_freq, ptr %7, i32 %i.097, i32 1
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %freq, align 4
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.body.for.body7_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body7:                                        ; preds = %if.end36.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %i.1104 = phi i32 [ %inc55, %if.end36.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %index_max.0103 = phi i32 [ %spec.select92, %if.end36.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %max.0102 = phi i32 [ %34, %if.end36.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %9 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %val_to_freq, align 4
  %arrayidx10 = getelementptr %struct.value_to_freq, ptr %10, i32 %i.1104
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  %freq1498 = getelementptr %struct.value_to_freq, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %freq1498 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %freq1498, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not99 = icmp eq i8 %14, 0
  br i1 %tobool.not99, label %for.body7.while.end_crit_edge, label %while.body.preheader

for.body7.while.end_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %for.body7
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp18116 = icmp eq i32 %16, %12
  br i1 %cmp18116, label %while.body.preheader.if.then_crit_edge, label %while.body.preheader.if.end_crit_edge

while.body.preheader.if.end_crit_edge:            ; preds = %while.body.preheader
  br label %if.end

while.body.preheader.if.then_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

while.body:                                       ; preds = %if.end
  %arrayidx13 = getelementptr %struct.value_to_freq, ptr %10, i32 %inc24
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  %cmp18 = icmp eq i32 %18, %12
  br i1 %cmp18, label %while.body.if.then_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.preheader.if.then_crit_edge
  %.lcssa = phi i8 [ %14, %while.body.preheader.if.then_crit_edge ], [ %21, %while.body.if.then_crit_edge ]
  %freq14101.lcssa = phi ptr [ %freq1498, %while.body.preheader.if.then_crit_edge ], [ %freq14, %while.body.if.then_crit_edge ]
  %j.0100.lcssa = phi i32 [ 0, %while.body.preheader.if.then_crit_edge ], [ %inc24, %while.body.if.then_crit_edge ]
  %inc23 = add i8 %.lcssa, 1
  %19 = ptrtoint ptr %freq14101.lcssa to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %inc23, ptr %freq14101.lcssa, align 4
  br label %while.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.preheader.if.end_crit_edge
  %j.0100117 = phi i32 [ %inc24, %while.body.if.end_crit_edge ], [ 0, %while.body.preheader.if.end_crit_edge ]
  %inc24 = add i32 %j.0100117, 1
  %freq14 = getelementptr %struct.value_to_freq, ptr %10, i32 %inc24, i32 1
  %20 = ptrtoint ptr %freq14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %freq14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then, %for.body7.while.end_crit_edge
  %j.096 = phi i32 [ %j.0100.lcssa, %if.then ], [ 0, %for.body7.while.end_crit_edge ], [ %inc24, %if.end.while.end_crit_edge ]
  %22 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %val_to_freq, align 4
  %freq27 = getelementptr %struct.value_to_freq, ptr %23, i32 %j.096, i32 1
  %24 = ptrtoint ptr %freq27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %freq27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %if.then29, label %while.end.if.end36_crit_edge

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26 = getelementptr %struct.value_to_freq, ptr %23, i32 %j.096
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %12, ptr %arrayidx26, align 4
  %27 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %val_to_freq, align 4
  %freq35 = getelementptr %struct.value_to_freq, ptr %28, i32 %j.096, i32 1
  %29 = ptrtoint ptr %freq35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %freq35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %while.end.if.end36_crit_edge
  %30 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %val_to_freq, align 4
  %freq39 = getelementptr %struct.value_to_freq, ptr %31, i32 %j.096, i32 1
  %32 = ptrtoint ptr %freq39 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %freq39, align 4
  %conv40 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0102, i32 %conv40)
  %cmp41 = icmp ult i32 %max.0102, %conv40
  %34 = tail call i32 @llvm.smax.i32(i32 %max.0102, i32 %conv40)
  %spec.select92 = select i1 %cmp41, i32 %j.096, i32 %index_max.0103
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %34)
  %cmp49 = icmp ugt i32 %34, 50
  %inc55 = add nuw nsw i32 %i.1104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc55)
  %exitcond108.not = icmp eq i32 %inc55, 100
  %or.cond = select i1 %cmp49, i1 true, i1 %exitcond108.not
  br i1 %or.cond, label %for.end56, label %if.end36.for.body7_crit_edge

if.end36.for.body7_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end56:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %val_to_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %val_to_freq, align 4
  %arrayidx58 = getelementptr %struct.value_to_freq, ptr %36, i32 %spec.select92
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx58, align 4
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada38x_clear_isr(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_soc, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada38x_unmask_interrupt(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %3 = or i32 %2, 67108864
  %4 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_soc, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_update_8k_mbus_timing_params(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs_soc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -16570112) #6, !srcloc !55
  %5 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_soc, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %8 = and i32 %7, 65535
  %9 = or i32 %8, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_soc, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_rtc_register(ptr nocapture noundef readonly %rtc, i8 noundef zeroext %rtc_reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %conv = zext i8 %rtc_reg to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !60
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada8k_clear_isr(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada8k_unmask_interrupt(ptr nocapture noundef readonly %rtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %regs_soc = getelementptr inbounds %struct.armada38x_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %regs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_soc, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %device_may_wakeup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.then

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.armada38x_rtc, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %return

return:                                           ; preds = %if.then, %device_may_wakeup.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada38x_rtc_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %device_may_wakeup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.then

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.armada38x_rtc, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %4) #6
  %irq = getelementptr inbounds %struct.armada38x_rtc, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.then, %device_may_wakeup.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_rtc_armada38x__232_587_armada38x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_armada38x__232_587_armada38x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-armada38x.c", i32 587, i32 1}
!2 = !{ptr @__exitcall_armada38x_rtc_driver_exit, !1, !"__exitcall_armada38x_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-armada38x.c", i32 589, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-armada38x.c", i32 590, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-armada38x.c", i32 591, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @armada38x_rtc_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-armada38x.c", i32 509, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-armada38x.c", i32 511, i32 59}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-armada38x.c", i32 515, i32 59}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-armada38x.c", i32 530, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @armada38x_rtc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @armada38x_rtc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-armada38x.c", i32 331, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @armada38x_rtc_alarm_irq.__UNIQUE_ID_ddebug227, !26, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!30 = !{ptr @armada38x_rtc_ops, !31, !"armada38x_rtc_ops", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-armada38x.c", i32 451, i32 35}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-armada38x.c", i32 581, i32 11}
!34 = !{ptr @armada38x_rtc_driver, !35, !"armada38x_rtc_driver", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-armada38x.c", i32 579, i32 31}
!36 = !{ptr @armada38x_rtc_of_match_table, !37, !"armada38x_rtc_of_match_table", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-armada38x.c", i32 478, i32 34}
!38 = !{ptr @armada38x_data, !39, !"armada38x_data", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-armada38x.c", i32 461, i32 40}
!40 = !{ptr @armada8k_data, !41, !"armada8k_data", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-armada38x.c", i32 469, i32 40}
!42 = !{ptr @armada38x_rtc_pm_ops, !43, !"armada38x_rtc_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-armada38x.c", i32 576, i32 8}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148770577, i64 2148770582, i64 2148770595, i64 2148770639, i64 2148770673, i64 2148770694}
!54 = !{i64 2153963463}
!55 = !{i64 2989834}
!56 = !{i64 2153963844}
!57 = !{i64 2153964226}
!58 = !{i8 0, i8 2}
!59 = !{!"auto-init"}
!60 = !{i64 2990252}
!61 = !{i64 2153965436}
!62 = !{i64 2153965731}
!63 = !{i64 2153968812}
!64 = !{i64 2153969318}
!65 = !{i64 2153969652}
!66 = !{i64 2153970423}
!67 = !{i64 2153970755}
!68 = !{i64 2153966406}
!69 = !{i64 2153966709}
!70 = !{i64 2153967384}
!71 = !{i64 2153967643}
!72 = !{i64 2153968314}
!73 = !{i64 2153971350}
!74 = !{i64 2153971928}
