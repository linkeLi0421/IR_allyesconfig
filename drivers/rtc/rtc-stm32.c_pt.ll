; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-stm32.c_pt.bc'
source_filename = "../drivers/rtc/rtc-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.stm32_rtc_data = type { %struct.stm32_rtc_registers, %struct.stm32_rtc_events, ptr, i8, i8, i8 }
%struct.stm32_rtc_registers = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stm32_rtc_events = type { i32 }
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
%struct.stm32_rtc = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_stm32__228_928_stm32_rtc_driver_init6 = internal global ptr @stm32_rtc_driver_init, section ".initcall6.init", align 4
@stm32_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_rtc_probe, ptr @stm32_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_rtc_driver_exit = internal global ptr @stm32_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [35 x i8] c"rtc_stm32.alias=platform:stm32_rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [58 x i8] c"rtc_stm32.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [70 x i8] c"rtc_stm32.description=STMicroelectronics STM32 Real Time Clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [37 x i8] c"rtc_stm32.file=drivers/rtc/rtc-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [25 x i8] c"rtc_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32_rtc\00", [22 x i8] zeroinitializer }, align 32
@stm32_rtc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stm32_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no st,syscfg\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-stm32.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr = internal global ptr @stm32_rtc_probe._entry, section ".printk_index", align 4
@stm32_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't read DBP register offset\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.9 = internal global ptr @stm32_rtc_probe._entry.7, section ".printk_index", align 4
@stm32_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 728, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't read DBP register mask\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.12 = internal global ptr @stm32_rtc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no pclk clock\00", [18 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.16 = internal global ptr @stm32_rtc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtc_ck\00", [25 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no rtc_ck clock\00", [16 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.20 = internal global ptr @stm32_rtc_probe._entry.18, section ".printk_index", align 4
@stm32_rtc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 794, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"alarm can't wake up the system: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.24 = internal global ptr @stm32_rtc_probe._entry.21, section ".printk_index", align 4
@stm32_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @stm32_rtc_read_time, ptr @stm32_rtc_set_time, ptr @stm32_rtc_read_alarm, ptr @stm32_rtc_set_alarm, ptr null, ptr @stm32_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rtc device registration failed, err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.27 = internal global ptr @stm32_rtc_probe._entry.25, section ".printk_index", align 4
@stm32_rtc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IRQ%d (alarm interrupt) already claimed\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.30 = internal global ptr @stm32_rtc_probe._entry.28, section ".printk_index", align 4
@stm32_rtc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 822, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Date/Time must be initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.33 = internal global ptr @stm32_rtc_probe._entry.31, section ".printk_index", align 4
@stm32_rtc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 829, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered rev:%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_rtc_probe._entry_ptr.37 = internal global ptr @stm32_rtc_probe._entry.34, section ".printk_index", align 4
@stm32_rtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 661, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtc_ck is %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_rtc_init\00", [17 x i8] zeroinitializer }, align 32
@stm32_rtc_init._entry_ptr = internal global ptr @stm32_rtc_init._entry, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@stm32_rtc_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.4, i32 669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't enter in init mode. Prescaler config failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_rtc_init._entry_ptr.44 = internal global ptr @stm32_rtc_init._entry.42, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't enter in init mode. Set time aborted.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_rtc_set_time\00", [45 x i8] zeroinitializer }, align 32
@stm32_rtc_set_time._entry_ptr = internal global ptr @stm32_rtc_set_time._entry, section ".printk_index", align 4
@stm32_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Alarm can be set only on upcoming month.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_rtc_set_alarm\00", [44 x i8] zeroinitializer }, align 32
@stm32_rtc_set_alarm._entry_ptr = internal global ptr @stm32_rtc_set_alarm._entry, section ".printk_index", align 4
@stm32_rtc_set_alarm._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Alarm update not allowed\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_rtc_set_alarm._entry_ptr.51 = internal global ptr @stm32_rtc_set_alarm._entry.49, section ".printk_index", align 4
@stm32_rtc_alarm_irq.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_stm32\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_rtc_alarm_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Alarm occurred\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_rtc_data = internal constant { %struct.stm32_rtc_data, [32 x i8] } { %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 8, i16 12, i16 16, i16 28, i16 36, i16 12, i16 -1, i16 -1 }, %struct.stm32_rtc_events { i32 256 }, ptr @stm32_rtc_clear_events, i8 0, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@stm32h7_rtc_data = internal constant { %struct.stm32_rtc_data, [32 x i8] } { %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 8, i16 12, i16 16, i16 28, i16 36, i16 12, i16 -1, i16 -1 }, %struct.stm32_rtc_events { i32 256 }, ptr @stm32_rtc_clear_events, i8 1, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@stm32mp1_data = internal constant { %struct.stm32_rtc_data, [32 x i8] } { %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 24, i16 12, i16 16, i16 64, i16 36, i16 80, i16 92, i16 1012 }, %struct.stm32_rtc_events { i32 1 }, ptr @stm32mp1_rtc_clear_events, i8 1, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"stm32_rtc_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 918, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 922, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"stm32_rtc_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 622, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"stm32_rtc_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 915, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 712, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 714, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 721, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 728, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 737, i32 40 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 739, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 742, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 745, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 794, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"stm32_rtc_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 529, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 802, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 812, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 822, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 827, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 659, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 668, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 320, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 481, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 515, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 220, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"stm32_rtc_data\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 547, i32 36 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"stm32h7_rtc_data\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 569, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant [14 x i8] c"stm32mp1_data\00", align 1
@___asan_gen_.215 = private constant [27 x i8] c"../drivers/rtc/rtc-stm32.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 600, i32 36 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_stm32_rtc_driver_exit, ptr @__initcall__kmod_rtc_stm32__228_928_stm32_rtc_driver_init6, ptr @stm32_rtc_driver_exit, ptr @stm32_rtc_init._entry, ptr @stm32_rtc_init._entry.42, ptr @stm32_rtc_init._entry_ptr, ptr @stm32_rtc_init._entry_ptr.44, ptr @stm32_rtc_probe._entry, ptr @stm32_rtc_probe._entry.10, ptr @stm32_rtc_probe._entry.14, ptr @stm32_rtc_probe._entry.18, ptr @stm32_rtc_probe._entry.21, ptr @stm32_rtc_probe._entry.25, ptr @stm32_rtc_probe._entry.28, ptr @stm32_rtc_probe._entry.31, ptr @stm32_rtc_probe._entry.34, ptr @stm32_rtc_probe._entry.7, ptr @stm32_rtc_probe._entry_ptr, ptr @stm32_rtc_probe._entry_ptr.12, ptr @stm32_rtc_probe._entry_ptr.16, ptr @stm32_rtc_probe._entry_ptr.20, ptr @stm32_rtc_probe._entry_ptr.24, ptr @stm32_rtc_probe._entry_ptr.27, ptr @stm32_rtc_probe._entry_ptr.30, ptr @stm32_rtc_probe._entry_ptr.33, ptr @stm32_rtc_probe._entry_ptr.37, ptr @stm32_rtc_probe._entry_ptr.9, ptr @stm32_rtc_set_alarm._entry, ptr @stm32_rtc_set_alarm._entry.49, ptr @stm32_rtc_set_alarm._entry_ptr, ptr @stm32_rtc_set_alarm._entry_ptr.51, ptr @stm32_rtc_set_time._entry, ptr @stm32_rtc_set_time._entry_ptr, ptr @stm32_rtc_driver, ptr @.str, ptr @stm32_rtc_of_match, ptr @stm32_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @stm32_rtc_ops, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @stm32_rtc_data, ptr @stm32h7_rtc_data, ptr @stm32mp1_data], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_set_alarm._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rtc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_rtc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %data, align 4
  %need_dbp = getelementptr inbounds %struct.stm32_rtc_data, ptr %call9, i32 0, i32 4
  %3 = ptrtoint ptr %need_dbp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %need_dbp, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool13.not = icmp eq i8 %4, 0
  br i1 %tobool13.not, label %if.end7.if.end44_crit_edge, label %if.then14

if.end7.if.end44_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then14:                                        ; preds = %if.end7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  %dbp = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %dbp, align 4
  %cmp.i310 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %do.end, label %if.end23

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbp, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.then14
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %dbp_reg = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 3
  %call26 = tail call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %dbp_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %dbp_mask = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 4
  %call36 = tail call i32 @of_property_read_u32_index(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef %dbp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end33.if.end44_crit_edge, label %do.end41

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end33.if.end44_crit_edge, %if.end7.if.end44_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %has_pclk = getelementptr inbounds %struct.stm32_rtc_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %has_pclk to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_pclk, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool46.not = icmp eq i8 %18, 0
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %pclk = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pclk, align 4
  %call49 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  br label %if.end66

if.else:                                          ; preds = %if.end44
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %pclk52 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %pclk52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call51, ptr %pclk52, align 4
  %cmp.i311 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %21 = ptrtoint ptr %pclk52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pclk52, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.then47
  %call64.sink = phi ptr [ %call64, %if.end62 ], [ %call49, %if.then47 ]
  %rtc_ck65 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %rtc_ck65 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call64.sink, ptr %rtc_ck65, align 4
  %rtc_ck67 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 6
  %cmp.i312 = icmp ugt ptr %call64.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %do.end72, label %if.end76

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %25 = ptrtoint ptr %rtc_ck67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc_ck67, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %has_pclk78 = getelementptr inbounds %struct.stm32_rtc_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %has_pclk78 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_pclk78, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool79.not = icmp eq i8 %31, 0
  br i1 %tobool79.not, label %if.end76.if.end86_crit_edge, label %if.then80

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then80:                                        ; preds = %if.end76
  %pclk81 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %pclk81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pclk81, align 4
  %call.i313 = tail call i32 @clk_prepare(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool.not.i = icmp eq i32 %call.i313, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then80
  %call1.i = tail call i32 @clk_enable(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end86_crit_edge, label %if.then3.i

if.end.i.if.end86_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %cleanup

if.end86:                                         ; preds = %if.end.i.if.end86_crit_edge, %if.end76.if.end86_crit_edge
  %34 = ptrtoint ptr %rtc_ck67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc_ck67, align 4
  %call.i314 = tail call i32 @clk_prepare(ptr noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool.not.i315 = icmp eq i32 %call.i314, 0
  br i1 %tobool.not.i315, label %if.end.i318, label %if.end86.err_no_rtc_ck_crit_edge

if.end86.err_no_rtc_ck_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_no_rtc_ck

if.end.i318:                                      ; preds = %if.end86
  %call1.i316 = tail call i32 @clk_enable(ptr noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i316)
  %tobool2.not.i317 = icmp eq i32 %call1.i316, 0
  br i1 %tobool2.not.i317, label %if.end91, label %if.end.i318.err_no_rtc_ck.sink.split_crit_edge

if.end.i318.err_no_rtc_ck.sink.split_crit_edge:   ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_no_rtc_ck.sink.split

if.end91:                                         ; preds = %if.end.i318
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %need_dbp93 = getelementptr inbounds %struct.stm32_rtc_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %need_dbp93 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %need_dbp93, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool94.not = icmp eq i8 %39, 0
  br i1 %tobool94.not, label %if.end91.if.end101_crit_edge, label %if.then95

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %dbp96 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %dbp96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dbp96, align 4
  %dbp_reg97 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %dbp_reg97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dbp_reg97, align 4
  %dbp_mask98 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %dbp_mask98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dbp_mask98, align 4
  %call.i322 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %if.end91.if.end101_crit_edge
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %rtc_ck67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rtc_ck67, align 4
  %call.i323 = tail call i32 @clk_get_rate(ptr noundef %49) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end101
  %add98.i = phi i32 [ 128, %if.end101 ], [ %pred_a.097.i, %for.inc.i.for.body.i_crit_edge ]
  %pred_a.097.i = phi i32 [ 127, %if.end101 ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %div.i = udiv i32 %call.i323, %add98.i
  %mul.i = mul nuw i32 %div.i, %add98.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %call.i323)
  %cmp5.i = icmp eq i32 %mul.i, %call.i323
  br i1 %cmp5.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %pred_a.097.i, -1
  %cmp.not.i = icmp eq i32 %pred_a.097.i, 0
  br i1 %cmp.not.i, label %for.inc.i.if.then8.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then8.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

for.end.i:                                        ; preds = %for.body.i
  %sub.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %sub.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %pred_a.097.i)
  %cmp7.i = icmp ugt i32 %pred_a.097.i, 127
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %for.end.i.if.then8.i_crit_edge, label %for.end.i.if.end16.i_crit_edge

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

for.end.i.if.then8.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

if.then8.i:                                       ; preds = %for.end.i.if.then8.i_crit_edge, %for.inc.i.if.then8.i_crit_edge
  %div1075.i = lshr i32 %call.i323, 7
  %sub11.i = add nsw i32 %div1075.i, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %for.end.i.if.end16.i_crit_edge
  %pred_a.1.i = phi i32 [ 127, %if.then8.i ], [ %pred_a.097.i, %for.end.i.if.end16.i_crit_edge ]
  %pred_s.2.i = phi i32 [ %sub11.i, %if.then8.i ], [ %sub.i, %for.end.i.if.end16.i_crit_edge ]
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %wpr.i.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %51, i32 0, i32 6
  %54 = ptrtoint ptr %wpr.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %wpr.i.i, align 2
  %conv.i.i = zext i16 %55 to i32
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -905969664) #6, !srcloc !120
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %58 = ptrtoint ptr %wpr.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wpr.i.i, align 2
  %conv4.i.i = zext i16 %59 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %57, i32 %conv4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 1392508928) #6, !srcloc !120
  %call17.i = tail call fastcc i32 @stm32_rtc_enter_init_mode(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i324 = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i324, label %if.end23.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %stm32_rtc_init.exit

if.end23.i:                                       ; preds = %if.end16.i
  %and.i = and i32 %pred_s.2.i, 32767
  %60 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %prer24.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %47, i32 0, i32 4
  %63 = ptrtoint ptr %prer24.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %prer24.i, align 2
  %conv.i = zext i16 %64 to i32
  %add.ptr.i = getelementptr i8, ptr %62, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %60) #6, !srcloc !120
  %shl25.i = shl nuw nsw i32 %pred_a.1.i, 16
  %and26.i = and i32 %shl25.i, 8323072
  %or.i = or i32 %and.i, %and26.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %68 = ptrtoint ptr %prer24.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %prer24.i, align 2
  %conv29.i = zext i16 %69 to i32
  %add.ptr30.i = getelementptr i8, ptr %67, i32 %conv29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %65) #6, !srcloc !120
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %cr32.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %47, i32 0, i32 2
  %72 = ptrtoint ptr %cr32.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cr32.i, align 2
  %conv33.i = zext i16 %73 to i32
  %add.ptr34.i = getelementptr i8, ptr %71, i32 %conv33.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #6, !srcloc !121
  %75 = and i32 %74, -1073741825
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %78 = ptrtoint ptr %cr32.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cr32.i, align 2
  %conv39.i = zext i16 %79 to i32
  %add.ptr40.i = getelementptr i8, ptr %77, i32 %conv39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %75) #6, !srcloc !120
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data, align 4
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %isr2.i.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %81, i32 0, i32 3
  %84 = ptrtoint ptr %isr2.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %isr2.i.i, align 2
  %conv.i78.i = zext i16 %85 to i32
  %add.ptr.i79.i = getelementptr i8, ptr %83, i32 %conv.i78.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #6, !srcloc !121
  %87 = and i32 %86, 2147483647
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %90 = ptrtoint ptr %isr2.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %isr2.i.i, align 2
  %conv5.i.i = zext i16 %91 to i32
  %add.ptr6.i.i = getelementptr i8, ptr %89, i32 %conv5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %87) #6, !srcloc !120
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %isr2.i82.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %93, i32 0, i32 3
  %96 = ptrtoint ptr %isr2.i82.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %isr2.i82.i, align 2
  %conv.i83.i = zext i16 %97 to i32
  %add.ptr.i84.i = getelementptr i8, ptr %95, i32 %conv.i83.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #6, !srcloc !121
  %99 = and i32 %98, -536870913
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %102 = ptrtoint ptr %isr2.i82.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %isr2.i82.i, align 2
  %conv5.i85.i = zext i16 %103 to i32
  %add.ptr6.i86.i = getelementptr i8, ptr %101, i32 %conv5.i85.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i86.i, i32 %99) #6, !srcloc !120
  %call7.i.i = tail call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call7.i.i, 100000000
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %106 = ptrtoint ptr %isr2.i82.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %isr2.i82.i, align 2
  %conv1257.i.i = zext i16 %107 to i32
  %add.ptr1358.i.i = getelementptr i8, ptr %105, i32 %conv1257.i.i
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1358.i.i) #6, !srcloc !121
  %109 = and i32 %108, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not60.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not60.i.i, label %if.end23.i.land.lhs.true.i.i_crit_edge, label %if.end23.i.stm32_rtc_init.exit_crit_edge

if.end23.i.stm32_rtc_init.exit_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_rtc_init.exit

if.end23.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end23.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.end23.i.land.lhs.true.i.i_crit_edge
  %call18.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call18.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 2147480) #6
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %113 = ptrtoint ptr %isr2.i82.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %isr2.i82.i, align 2
  %conv12.i.i = zext i16 %114 to i32
  %add.ptr13.i.i = getelementptr i8, ptr %112, i32 %conv12.i.i
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #6, !srcloc !121
  %116 = and i32 %115, 536870912
  %tobool.not.i.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.land.lhs.true.i.i_crit_edge, label %cond.false.i.i.stm32_rtc_init.exit_crit_edge

cond.false.i.i.stm32_rtc_init.exit_crit_edge:     ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_rtc_init.exit

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 4
  %119 = ptrtoint ptr %isr2.i82.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %isr2.i82.i, align 2
  %conv25.i.i = zext i16 %120 to i32
  %add.ptr26.i.i = getelementptr i8, ptr %118, i32 %conv25.i.i
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i.i) #6, !srcloc !121
  %122 = and i32 %121, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool40.not.i.i = icmp eq i32 %122, 0
  %spec.select = select i1 %tobool40.not.i.i, i32 -110, i32 0
  br label %stm32_rtc_init.exit

stm32_rtc_init.exit:                              ; preds = %for.end.i.i, %cond.false.i.i.stm32_rtc_init.exit_crit_edge, %if.end23.i.stm32_rtc_init.exit_crit_edge, %do.end21.i
  %ret.0.i = phi i32 [ %call17.i, %do.end21.i ], [ 0, %if.end23.i.stm32_rtc_init.exit_crit_edge ], [ %spec.select, %for.end.i.i ], [ 0, %cond.false.i.i.stm32_rtc_init.exit_crit_edge ]
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data, align 4
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %wpr.i89.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %124, i32 0, i32 6
  %127 = ptrtoint ptr %wpr.i89.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %wpr.i89.i, align 2
  %conv.i90.i = zext i16 %128 to i32
  %add.ptr.i91.i = getelementptr i8, ptr %126, i32 %conv.i90.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 -16777216) #6, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool103.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool103.not, label %if.end105, label %stm32_rtc_init.exit.err_crit_edge

stm32_rtc_init.exit.err_crit_edge:                ; preds = %stm32_rtc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end105:                                        ; preds = %stm32_rtc_init.exit
  %call106 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq_alarm = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 8
  %129 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call106, ptr %irq_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call106)
  %cmp = icmp slt i32 %call106, 1
  br i1 %cmp, label %if.end105.err_crit_edge, label %if.end110

if.end105.err_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end110:                                        ; preds = %if.end105
  %call112 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %130 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data, align 4
  %has_wakeirq = getelementptr inbounds %struct.stm32_rtc_data, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %has_wakeirq to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %has_wakeirq, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool114.not = icmp eq i8 %133, 0
  br i1 %tobool114.not, label %if.end110.if.end130_crit_edge, label %if.then115

if.end110.if.end130_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then115:                                       ; preds = %if.end110
  %call116 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %wakeirq_alarm = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 9
  %134 = ptrtoint ptr %wakeirq_alarm to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call116, ptr %wakeirq_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp118 = icmp sgt i32 %call116, 0
  br i1 %cmp118, label %if.then119, label %if.else123

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %call116) #6
  br label %if.end130

if.else123:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call116)
  %cmp126 = icmp eq i32 %call116, -517
  br i1 %cmp126, label %if.else123.err_crit_edge, label %if.else123.if.end130_crit_edge

if.else123.if.end130_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.else123.err_crit_edge:                         ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end130:                                        ; preds = %if.else123.if.end130_crit_edge, %if.then119, %if.end110.if.end130_crit_edge
  %ret.0 = phi i32 [ %call122, %if.then119 ], [ %call116, %if.else123.if.end130_crit_edge ], [ %call112, %if.end110.if.end130_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool131.not = icmp eq i32 %ret.0, 0
  br i1 %tobool131.not, label %if.end130.if.end137_crit_edge, label %do.end135

if.end130.if.end137_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

do.end135:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %ret.0) #9
  br label %if.end137

if.end137:                                        ; preds = %do.end135, %if.end130.if.end137_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %135 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %136 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev, align 8
  %call139 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %137, ptr noundef nonnull @stm32_rtc_ops, ptr noundef null) #6
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call139, ptr %call.i, align 4
  %cmp.i325 = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then142, label %if.end149

if.then142:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %call139 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %139) #9
  br label %err

if.end149:                                        ; preds = %if.end137
  %140 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq_alarm, align 4
  %142 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev, align 8
  %call153 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %141, ptr noundef null, ptr noundef nonnull @stm32_rtc_alarm_irq, i32 noundef 8192, ptr noundef %143, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end161, label %do.end158

do.end158:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %irq_alarm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %145) #9
  br label %err

if.end161:                                        ; preds = %if.end149
  %146 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base, align 4
  %isr = getelementptr inbounds %struct.stm32_rtc_registers, ptr %call9, i32 0, i32 3
  %148 = ptrtoint ptr %isr to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %isr, align 2
  %conv = zext i16 %149 to i32
  %add.ptr = getelementptr i8, ptr %147, i32 %conv
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %151 = and i32 %150, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool164.not = icmp eq i32 %151, 0
  br i1 %tobool164.not, label %do.end168, label %if.end161.if.end170_crit_edge

if.end161.if.end170_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.end168:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %if.end170

if.end170:                                        ; preds = %do.end168, %if.end161.if.end170_crit_edge
  %verr = getelementptr inbounds %struct.stm32_rtc_registers, ptr %call9, i32 0, i32 9
  %152 = ptrtoint ptr %verr to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %verr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %153)
  %cmp172.not = icmp eq i16 %153, -1
  br i1 %cmp172.not, label %if.end170.cleanup_crit_edge, label %if.then174

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %conv171 = zext i16 %153 to i32
  %154 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base, align 4
  %add.ptr179 = getelementptr i8, ptr %155, i32 %conv171
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #6, !srcloc !121
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %shr = lshr i32 %157, 4
  %and186 = and i32 %shr, 15
  %and188 = and i32 %157, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %and186, i32 noundef %and188) #9
  br label %cleanup

err:                                              ; preds = %do.end158, %if.then142, %if.else123.err_crit_edge, %if.end105.err_crit_edge, %stm32_rtc_init.exit.err_crit_edge
  %ret.1 = phi i32 [ %ret.0.i, %stm32_rtc_init.exit.err_crit_edge ], [ %139, %if.then142 ], [ %call153, %do.end158 ], [ -517, %if.else123.err_crit_edge ], [ %call106, %if.end105.err_crit_edge ]
  %158 = ptrtoint ptr %rtc_ck67 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rtc_ck67, align 4
  tail call void @clk_disable(ptr noundef %159) #6
  br label %err_no_rtc_ck.sink.split

err_no_rtc_ck.sink.split:                         ; preds = %err, %if.end.i318.err_no_rtc_ck.sink.split_crit_edge
  %.sink = phi ptr [ %159, %err ], [ %35, %if.end.i318.err_no_rtc_ck.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err ], [ %call1.i316, %if.end.i318.err_no_rtc_ck.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %err_no_rtc_ck

err_no_rtc_ck:                                    ; preds = %err_no_rtc_ck.sink.split, %if.end86.err_no_rtc_ck_crit_edge
  %ret.2 = phi i32 [ %call.i314, %if.end86.err_no_rtc_ck_crit_edge ], [ %ret.2.ph, %err_no_rtc_ck.sink.split ]
  %160 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data, align 4
  %has_pclk192 = getelementptr inbounds %struct.stm32_rtc_data, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %has_pclk192 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %has_pclk192, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool193.not = icmp eq i8 %163, 0
  br i1 %tobool193.not, label %err_no_rtc_ck.if.end196_crit_edge, label %if.then194

err_no_rtc_ck.if.end196_crit_edge:                ; preds = %err_no_rtc_ck
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then194:                                       ; preds = %err_no_rtc_ck
  call void @__sanitizer_cov_trace_pc() #8
  %pclk195 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 5
  %164 = ptrtoint ptr %pclk195 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pclk195, align 4
  tail call void @clk_disable(ptr noundef %165) #6
  tail call void @clk_unprepare(ptr noundef %165) #6
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %err_no_rtc_ck.if.end196_crit_edge
  %166 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data, align 4
  %need_dbp198 = getelementptr inbounds %struct.stm32_rtc_data, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %need_dbp198 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %need_dbp198, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool199.not = icmp eq i8 %169, 0
  br i1 %tobool199.not, label %if.end196.if.end205_crit_edge, label %if.then200

if.end196.if.end205_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then200:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  %dbp201 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 2
  %170 = ptrtoint ptr %dbp201 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dbp201, align 4
  %dbp_reg202 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 3
  %172 = ptrtoint ptr %dbp_reg202 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dbp_reg202, align 4
  %dbp_mask203 = getelementptr inbounds %struct.stm32_rtc, ptr %call.i, i32 0, i32 4
  %174 = ptrtoint ptr %dbp_mask203 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dbp_mask203, align 4
  %call.i326 = tail call i32 @regmap_update_bits_base(ptr noundef %171, i32 noundef %173, i32 noundef %175, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end205

if.end205:                                        ; preds = %if.then200, %if.end196.if.end205_crit_edge
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #6
  %call208 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.then174, %if.end170.cleanup_crit_edge, %if.then3.i, %if.then80.cleanup_crit_edge, %do.end72, %do.end58, %do.end41, %do.end31, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %10, %do.end ], [ %call26, %do.end31 ], [ %call36, %do.end41 ], [ %23, %do.end58 ], [ %27, %do.end72 ], [ %ret.2, %if.end205 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then174 ], [ 0, %if.end170.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i313, %if.then80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %wpr.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wpr.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -905969664) #6, !srcloc !120
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wpr.i, align 2
  %conv4.i = zext i16 %11 to i32
  %add.ptr5.i = getelementptr i8, ptr %9, i32 %conv4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1392508928) #6, !srcloc !120
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %cr2 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cr2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cr2, align 2
  %conv = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %17 = and i32 %16, -1048577
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = ptrtoint ptr %cr2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cr2, align 2
  %conv6 = zext i16 %21 to i32
  %add.ptr7 = getelementptr i8, ptr %19, i32 %conv6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #6, !srcloc !120
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %wpr.i33 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %wpr.i33 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %wpr.i33, align 2
  %conv.i34 = zext i16 %27 to i32
  %add.ptr.i35 = getelementptr i8, ptr %25, i32 %conv.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 -16777216) #6, !srcloc !120
  %rtc_ck = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %rtc_ck to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtc_ck, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %has_pclk = getelementptr inbounds %struct.stm32_rtc_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %has_pclk to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_pclk, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pclk = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %need_dbp = getelementptr inbounds %struct.stm32_rtc_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %need_dbp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %need_dbp, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool10.not = icmp eq i8 %39, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dbp = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dbp, align 4
  %dbp_reg = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %dbp_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dbp_reg, align 4
  %dbp_mask = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %dbp_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dbp_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #6
  %call15 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_alarm_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %events = getelementptr inbounds %struct.stm32_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %sr = getelementptr inbounds %struct.stm32_rtc_registers, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sr, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %cr5 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cr5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cr5, align 2
  %conv6 = zext i16 %13 to i32
  %add.ptr7 = getelementptr i8, ptr %11, i32 %conv6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !121
  %15 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %events, align 4
  %and = and i32 %16, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %17 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_rtc_alarm_irq.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_rtc_alarm_irq, %do.end)) #6
          to label %if.then18 [label %do.end], !srcloc !122

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_rtc_alarm_irq.__UNIQUE_ID_ddebug227, ptr noundef %19, ptr noundef nonnull @.str.54) #6
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  tail call void @rtc_update_irq(ptr noundef %21, i32 noundef 1, i32 noundef 160) #6
  %22 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %events, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %clear_events.i = getelementptr inbounds %struct.stm32_rtc_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %clear_events.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clear_events.i, align 4
  tail call void %27(ptr noundef %dev_id, i32 noundef %23) #6
  br label %if.end22

if.end22:                                         ; preds = %do.end, %entry.if.end22_crit_edge
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %ops_lock24 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock24) #6
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_rtc_enter_init_mode(ptr nocapture noundef readonly %rtc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %isr2 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %isr2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %isr2, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %or = or i32 %7, 128
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = ptrtoint ptr %isr2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %isr2, align 2
  %conv5 = zext i16 %12 to i32
  %add.ptr6 = getelementptr i8, ptr %10, i32 %conv5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #6, !srcloc !120
  %call7 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call7, 100000000
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = ptrtoint ptr %isr2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %isr2, align 2
  %conv1262 = zext i16 %16 to i32
  %add.ptr1363 = getelementptr i8, ptr %14, i32 %conv1262
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1363) #6, !srcloc !121
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not65 = icmp eq i32 %18, 0
  br i1 %tobool17.not65, label %if.then.land.lhs.true_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %isr2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %isr2, align 2
  %conv12 = zext i16 %23 to i32
  %add.ptr13 = getelementptr i8, ptr %21, i32 %conv12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !121
  %25 = and i32 %24, 1073741824
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %28 = ptrtoint ptr %isr2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %isr2, align 2
  %conv27 = zext i16 %29 to i32
  %add.ptr28 = getelementptr i8, ptr %27, i32 %conv27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !121
  %31 = and i32 %30, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not = icmp eq i32 %31, 0
  %spec.select = select i1 %tobool42.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %spec.select, %for.end ], [ 0, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %dr6 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dr6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dr6, align 2
  %conv7 = zext i16 %13 to i32
  %add.ptr8 = getelementptr i8, ptr %11, i32 %conv7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !121
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and11 = lshr i32 %9, 8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %and13 = lshr i32 %9, 16
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %and17 = lshr i32 %15, 8
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = trunc i32 %9 to i8
  %conv.i = and i8 %16, 127
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %17 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %tm, align 4
  %18 = trunc i32 %and11 to i8
  %conv6.i = and i8 %18, 127
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i) #10
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call17.i, ptr %tm_min, align 4
  %20 = trunc i32 %and13 to i8
  %conv21.i = and i8 %20, 63
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #10
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call32.i, ptr %tm_hour, align 4
  %22 = trunc i32 %15 to i8
  %conv36.i = and i8 %22, 63
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #10
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call47.i, ptr %tm_mday, align 4
  %24 = trunc i32 %and17 to i8
  %conv51.i = and i8 %24, 31
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #10
  %sub.i = add i32 %call62.i, -1
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %tm_mon, align 4
  %and19 = lshr i32 %15, 16
  %conv66.i = trunc i32 %and19 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %and21 = lshr i32 %15, 13
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add80.i = add i32 %call77.i, 100
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add80.i, ptr %tm_year, align 4
  %27 = trunc i32 %and21 to i8
  %rem.i44.lhs.trunc = and i8 %27, 7
  %rem.i4445 = urem i8 %rem.i44.lhs.trunc, 7
  %rem.i44.zext = zext i8 %rem.i4445 to i32
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem.i44.zext, ptr %tm_wday, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_set_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #10
  %conv4.i = zext i8 %call.i to i32
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4.i, ptr %tm, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #10
  %conv17.i = zext i8 %call16.i to i32
  %9 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %conv32.i = zext i8 %call31.i to i32
  %12 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #10
  %conv47.i = zext i8 %call46.i to i32
  %15 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %17, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #10
  %conv66.i = zext i8 %call65.i to i32
  %18 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %20, -100
  %call83.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %conv84.i = zext i8 %call83.i to i32
  %21 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv84.i, ptr %tm_year.i, align 4
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %spec.select.i = select i1 %tobool.not.i, i32 7, i32 %23
  %24 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %tm_wday.i, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %wpr.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %wpr.i, align 2
  %conv.i42 = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %28, i32 %conv.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -905969664) #6, !srcloc !120
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %33 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %wpr.i, align 2
  %conv4.i43 = zext i16 %34 to i32
  %add.ptr5.i = getelementptr i8, ptr %32, i32 %conv4.i43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1392508928) #6, !srcloc !120
  %call18 = tail call fastcc i32 @stm32_rtc_enter_init_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %end

if.end:                                           ; preds = %entry
  %and8 = and i32 %conv47.i, 63
  %shl9 = shl nuw nsw i32 %conv66.i, 8
  %and10 = and i32 %shl9, 7936
  %or11 = or i32 %and10, %and8
  %shl12 = shl nuw nsw i32 %conv84.i, 16
  %or14 = or i32 %or11, %shl12
  %shl15 = shl i32 %spec.select.i, 13
  %and16 = and i32 %shl15, 57344
  %or17 = or i32 %or14, %and16
  %and = and i32 %conv4.i, 127
  %shl2 = shl nuw nsw i32 %conv17.i, 8
  %and3 = and i32 %shl2, 32512
  %or = or i32 %and3, %and
  %shl4 = shl nuw nsw i32 %conv32.i, 16
  %and5 = and i32 %shl4, 4128768
  %or6 = or i32 %or, %and5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 2
  %conv = zext i16 %39 to i32
  %add.ptr = getelementptr i8, ptr %37, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %35) #6, !srcloc !120
  %40 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %dr21 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %dr21 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dr21, align 2
  %conv22 = zext i16 %44 to i32
  %add.ptr23 = getelementptr i8, ptr %42, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %40) #6, !srcloc !120
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %isr2.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %isr2.i, align 2
  %conv.i46 = zext i16 %50 to i32
  %add.ptr.i47 = getelementptr i8, ptr %48, i32 %conv.i46
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !121
  %52 = and i32 %51, 2147483647
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %55 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %isr2.i, align 2
  %conv5.i = zext i16 %56 to i32
  %add.ptr6.i = getelementptr i8, ptr %54, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %52) #6, !srcloc !120
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %isr2.i50 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %isr2.i50 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %isr2.i50, align 2
  %conv.i51 = zext i16 %62 to i32
  %add.ptr.i52 = getelementptr i8, ptr %60, i32 %conv.i51
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #6, !srcloc !121
  %64 = and i32 %63, -536870913
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %67 = ptrtoint ptr %isr2.i50 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %isr2.i50, align 2
  %conv5.i53 = zext i16 %68 to i32
  %add.ptr6.i54 = getelementptr i8, ptr %66, i32 %conv5.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i54, i32 %64) #6, !srcloc !120
  %call7.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call7.i, 100000000
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %71 = ptrtoint ptr %isr2.i50 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %isr2.i50, align 2
  %conv1257.i = zext i16 %72 to i32
  %add.ptr1358.i = getelementptr i8, ptr %70, i32 %conv1257.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1358.i) #6, !srcloc !121
  %74 = and i32 %73, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not60.i = icmp eq i32 %74, 0
  br i1 %tobool.not60.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i56.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call18.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i56

cond.false.i56:                                   ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #6
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %78 = ptrtoint ptr %isr2.i50 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %isr2.i50, align 2
  %conv12.i = zext i16 %79 to i32
  %add.ptr13.i = getelementptr i8, ptr %77, i32 %conv12.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #6, !srcloc !121
  %81 = and i32 %80, 536870912
  %tobool.not.i55 = icmp eq i32 %81, 0
  br i1 %tobool.not.i55, label %cond.false.i56.land.lhs.true.i_crit_edge, label %cond.false.i56.end_crit_edge

cond.false.i56.end_crit_edge:                     ; preds = %cond.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

cond.false.i56.land.lhs.true.i_crit_edge:         ; preds = %cond.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %84 = ptrtoint ptr %isr2.i50 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %isr2.i50, align 2
  %conv25.i = zext i16 %85 to i32
  %add.ptr26.i = getelementptr i8, ptr %83, i32 %conv25.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #6, !srcloc !121
  %87 = and i32 %86, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool40.not.i = icmp eq i32 %87, 0
  %spec.select.i57 = select i1 %tobool40.not.i, i32 -110, i32 0
  br label %end

end:                                              ; preds = %for.end.i, %cond.false.i56.end_crit_edge, %if.end.end_crit_edge, %do.end
  %ret.0 = phi i32 [ %call18, %do.end ], [ 0, %if.end.end_crit_edge ], [ %spec.select.i57, %for.end.i ], [ 0, %cond.false.i56.end_crit_edge ]
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %wpr.i60 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %89, i32 0, i32 6
  %92 = ptrtoint ptr %wpr.i60 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %wpr.i60, align 2
  %conv.i61 = zext i16 %93 to i32
  %add.ptr.i62 = getelementptr i8, ptr %91, i32 %conv.i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 -16777216) #6, !srcloc !120
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %alrmar3 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %alrmar3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alrmar3, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %cr7 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %cr7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cr7, align 2
  %conv8 = zext i16 %13 to i32
  %add.ptr9 = getelementptr i8, ptr %11, i32 %conv8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !121
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %sr = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %sr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sr, align 2
  %conv14 = zext i16 %18 to i32
  %add.ptr15 = getelementptr i8, ptr %16, i32 %conv14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tm_mday, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tm_wday, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %and18 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %tm_mday21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %tm_mday21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tm_mday21, align 4
  %and22 = lshr i32 %9, 24
  %tm_wday23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %23 = trunc i32 %and22 to i8
  %rem.lhs.trunc = and i8 %23, 15
  %rem99 = urem i8 %rem.lhs.trunc, 7
  %rem.zext = zext i8 %rem99 to i32
  %24 = ptrtoint ptr %tm_wday23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.zext, ptr %tm_wday23, align 4
  br label %if.end30

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %tm_wday26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %tm_wday26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tm_wday26, align 4
  %and27 = lshr i32 %9, 24
  %shr28 = and i32 %and27, 63
  %tm_mday29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %tm_mday29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr28, ptr %tm_mday29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then20, %if.then
  %and31 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tm_hour, align 4
  br label %if.end43

if.else34:                                        ; preds = %if.end30
  %and35 = lshr i32 %9, 16
  %shr36 = and i32 %and35, 63
  %tm_hour37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr36, ptr %tm_hour37, align 4
  %and38 = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else34.if.end43_crit_edge, label %if.then40

if.else34.if.end43_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %shr36, 12
  %29 = ptrtoint ptr %tm_hour37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %tm_hour37, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.else34.if.end43_crit_edge, %if.then33
  %and44 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and48 = lshr i32 %9, 8
  %shr49 = and i32 %and48, 127
  %.sink = select i1 %tobool45.not, i32 %shr49, i32 -1
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %30, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %and52 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %32 = trunc i32 %9 to i8
  %33 = and i8 %32, 127
  %conv.i = select i1 %tobool53.not, i8 %33, i8 -1
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %34 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %time, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %30, align 4
  %conv6.i = trunc i32 %36 to i8
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i) #10
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call17.i, ptr %30, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour.i, align 4
  %conv21.i = trunc i32 %39 to i8
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #10
  %40 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday.i, align 4
  %conv36.i = trunc i32 %42 to i8
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #10
  %43 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon.i, align 4
  %conv51.i = trunc i32 %45 to i8
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #10
  %sub.i = add i32 %call62.i, -1
  %46 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %47 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_year.i, align 4
  %conv66.i = trunc i32 %48 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #10
  %events = getelementptr inbounds %struct.stm32_rtc_data, ptr %3, i32 0, i32 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add80.i = add i32 %call77.i, 100
  %50 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add80.i, ptr %tm_year.i, align 4
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_wday.i, align 4
  %rem.i = srem i32 %52, 7
  store i32 %rem.i, ptr %tm_wday.i, align 4
  %53 = lshr i32 %14, 16
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %alrm, align 4
  %57 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %events, align 4
  %and63 = and i32 %58, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp ne i32 %and63, 0
  %conv66 = zext i1 %tobool64.not to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %59 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv66, ptr %pending, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #10
  %conv4.i = zext i8 %call.i to i32
  %6 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4.i, ptr %time, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #10
  %conv17.i = zext i8 %call16.i to i32
  %9 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %conv32.i = zext i8 %call31.i to i32
  %12 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #10
  %conv47.i = zext i8 %call46.i to i32
  %15 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %17, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #10
  %conv66.i = zext i8 %call65.i to i32
  %18 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %20, -100
  %call83.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %conv84.i = zext i8 %call83.i to i32
  %21 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv84.i, ptr %tm_year.i, align 4
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %spec.select.i = select i1 %tobool.not.i, i32 7, i32 %23
  %24 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %tm_wday.i, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %dr2.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %dr2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dr2.i, align 2
  %conv.i109 = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %28, i32 %conv.i109
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !121
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %26, align 2
  %conv6.i110 = zext i16 %36 to i32
  %add.ptr7.i = getelementptr i8, ptr %34, i32 %conv6.i110
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !121
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %and.i = and i32 %32, 63
  %and10.i = lshr i32 %32, 8
  %shr11.i = and i32 %and10.i, 31
  %and12.i = lshr i32 %32, 16
  %shr13.i = and i32 %and12.i, 255
  %and14.i = and i32 %38, 127
  %and16.i = lshr i32 %38, 8
  %shr17.i = and i32 %and16.i, 127
  %and18.i = lshr i32 %38, 16
  %shr19.i = and i32 %and18.i, 63
  %39 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_year.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %shr13.i)
  %cmp.i = icmp sgt i32 %40, %shr13.i
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.lor.lhs.false.i_crit_edge

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %entry
  %41 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp21.i = icmp eq i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %shr11.i)
  %cmp24.i = icmp eq i32 %shr11.i, 18
  %or.cond.i = select i1 %cmp21.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true33.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true.i.land.lhs.true33.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %shr13.i)
  %cmp27.i = icmp eq i32 %40, %shr13.i
  br i1 %cmp27.i, label %land.lhs.true29.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true29.i:                                ; preds = %lor.lhs.false.i
  %43 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_mon.i, align 4
  %add.i113 = add nuw nsw i32 %shr11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i113)
  %cmp31.not.i = icmp sgt i32 %44, %add.i113
  br i1 %cmp31.not.i, label %land.lhs.true29.i.do.end_crit_edge, label %land.lhs.true29.i.land.lhs.true33.i_crit_edge

land.lhs.true29.i.land.lhs.true33.i_crit_edge:    ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33.i

land.lhs.true29.i.do.end_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true33.i:                                ; preds = %land.lhs.true29.i.land.lhs.true33.i_crit_edge, %land.lhs.true.i.land.lhs.true33.i_crit_edge
  %45 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_mday.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %and.i)
  %cmp34.i = icmp sgt i32 %46, %and.i
  br i1 %cmp34.i, label %land.lhs.true33.i.if.end_crit_edge, label %lor.lhs.false36.i

land.lhs.true33.i.if.end_crit_edge:               ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false36.i:                                ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %and.i)
  %cmp38.i = icmp eq i32 %46, %and.i
  br i1 %cmp38.i, label %land.lhs.true40.i, label %lor.lhs.false36.i.do.end_crit_edge

lor.lhs.false36.i.do.end_crit_edge:               ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true40.i:                                ; preds = %lor.lhs.false36.i
  %47 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_hour.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr19.i)
  %cmp41.i = icmp sgt i32 %48, %shr19.i
  br i1 %cmp41.i, label %land.lhs.true40.i.if.end_crit_edge, label %lor.lhs.false43.i

land.lhs.true40.i.if.end_crit_edge:               ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false43.i:                                ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr19.i)
  %cmp45.i = icmp eq i32 %48, %shr19.i
  br i1 %cmp45.i, label %land.lhs.true47.i, label %lor.lhs.false43.i.do.end_crit_edge

lor.lhs.false43.i.do.end_crit_edge:               ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true47.i:                                ; preds = %lor.lhs.false43.i
  %49 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr17.i)
  %cmp48.i = icmp sgt i32 %50, %shr17.i
  br i1 %cmp48.i, label %land.lhs.true47.i.if.end_crit_edge, label %land.lhs.true54.i

land.lhs.true47.i.if.end_crit_edge:               ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true54.i:                                ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr17.i)
  %cmp56.i = icmp eq i32 %50, %shr17.i
  br i1 %cmp56.i, label %land.lhs.true58.i, label %land.lhs.true54.i.do.end_crit_edge

land.lhs.true54.i.do.end_crit_edge:               ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true58.i:                                ; preds = %land.lhs.true54.i
  %51 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %and14.i)
  %cmp59.not.i = icmp slt i32 %52, %and14.i
  br i1 %cmp59.not.i, label %land.lhs.true58.i.do.end_crit_edge, label %land.lhs.true58.i.if.end_crit_edge

land.lhs.true58.i.if.end_crit_edge:               ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true58.i.do.end_crit_edge:               ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %land.lhs.true58.i.do.end_crit_edge, %land.lhs.true54.i.do.end_crit_edge, %lor.lhs.false43.i.do.end_crit_edge, %lor.lhs.false36.i.do.end_crit_edge, %land.lhs.true29.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true58.i.if.end_crit_edge, %land.lhs.true47.i.if.end_crit_edge, %land.lhs.true40.i.if.end_crit_edge, %land.lhs.true33.i.if.end_crit_edge
  %53 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm_mday.i, align 4
  %shl = shl i32 %54, 24
  %and = and i32 %shl, 1056964608
  %55 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_hour.i, align 4
  %shl4 = shl i32 %56, 16
  %and5 = and i32 %shl4, 4128768
  %or6 = or i32 %and5, %and
  %57 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_min.i, align 4
  %shl7 = shl i32 %58, 8
  %and8 = and i32 %shl7, 32512
  %or9 = or i32 %or6, %and8
  %59 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %time, align 4
  %and11 = and i32 %60, 127
  %or12 = or i32 %or9, %and11
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %wpr.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %62, i32 0, i32 6
  %65 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %wpr.i, align 2
  %conv.i119 = zext i16 %66 to i32
  %add.ptr.i120 = getelementptr i8, ptr %64, i32 %conv.i119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 -905969664) #6, !srcloc !120
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %69 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %wpr.i, align 2
  %conv4.i121 = zext i16 %70 to i32
  %add.ptr5.i = getelementptr i8, ptr %68, i32 %conv4.i121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1392508928) #6, !srcloc !120
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %cr13 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 2
  %73 = ptrtoint ptr %cr13 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cr13, align 2
  %conv = zext i16 %74 to i32
  %add.ptr = getelementptr i8, ptr %72, i32 %conv
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %76 = and i32 %75, -65537
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %79 = ptrtoint ptr %cr13 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cr13, align 2
  %conv18 = zext i16 %80 to i32
  %add.ptr19 = getelementptr i8, ptr %78, i32 %conv18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %76) #6, !srcloc !120
  %call20 = tail call i64 @ktime_get() #6
  %add.i122 = add i64 %call20, 100000000
  %isr24 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 3
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %83 = ptrtoint ptr %isr24 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %isr24, align 2
  %conv25139 = zext i16 %84 to i32
  %add.ptr26140 = getelementptr i8, ptr %82, i32 %conv25139
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26140) #6, !srcloc !121
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %and29141 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29141)
  %tobool.not142 = icmp eq i32 %and29141, 0
  br i1 %tobool.not142, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call33 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i122)
  %cmp3.i = icmp sgt i64 %call33, %add.i122
  br i1 %cmp3.i, label %if.then37, label %cond.false

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %89 = ptrtoint ptr %isr24 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %isr24, align 2
  %conv41 = zext i16 %90 to i32
  %add.ptr42 = getelementptr i8, ptr %88, i32 %conv41
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #6, !srcloc !121
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 2147480) #6
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %96 = ptrtoint ptr %isr24 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %isr24, align 2
  %conv25 = zext i16 %97 to i32
  %add.ptr26 = getelementptr i8, ptr %95, i32 %conv25
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !121
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %and29 = and i32 %99, 1
  %tobool.not = icmp eq i32 %and29, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then37, %if.end.for.end_crit_edge
  %isr.0 = phi i32 [ %92, %if.then37 ], [ %86, %if.end.for.end_crit_edge ], [ %99, %cond.false.for.end_crit_edge ]
  %and55 = and i32 %isr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %cond = select i1 %tobool56.not, i32 -110, i32 0
  br i1 %tobool56.not, label %do.end61, label %if.end62

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #9
  br label %end

if.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %100 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %101 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i, align 4
  %alrmar64 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 5
  %103 = ptrtoint ptr %alrmar64 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %alrmar64, align 2
  %conv65 = zext i16 %104 to i32
  %add.ptr66 = getelementptr i8, ptr %102, i32 %conv65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %100) #6, !srcloc !120
  %105 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %alrm, align 4
  %107 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver_data.i, align 4
  %data.i125 = getelementptr inbounds %struct.stm32_rtc, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %data.i125 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i125, align 4
  %base.i126 = getelementptr inbounds %struct.stm32_rtc, ptr %108, i32 0, i32 1
  %111 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i126, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %110, i32 0, i32 2
  %113 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %cr3.i, align 2
  %conv.i127 = zext i16 %114 to i32
  %add.ptr.i128 = getelementptr i8, ptr %112, i32 %conv.i127
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #6, !srcloc !121
  %116 = ptrtoint ptr %data.i125 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i125, align 4
  %118 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i126, align 4
  %wpr.i.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %117, i32 0, i32 6
  %120 = ptrtoint ptr %wpr.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %wpr.i.i, align 2
  %conv.i.i = zext i16 %121 to i32
  %add.ptr.i.i = getelementptr i8, ptr %119, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -905969664) #6, !srcloc !120
  %122 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i126, align 4
  %124 = ptrtoint ptr %wpr.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %wpr.i.i, align 2
  %conv4.i.i = zext i16 %125 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %123, i32 %conv4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 1392508928) #6, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i129 = icmp eq i8 %106, 0
  %126 = and i32 %115, -1114113
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #6
  %masksel.i = select i1 %tobool.not.i129, i32 0, i32 4352
  %cr.0.i = or i32 %127, %masksel.i
  %events.i = getelementptr inbounds %struct.stm32_rtc_data, ptr %110, i32 0, i32 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %cr.0.i) #6
  %129 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i126, align 4
  %131 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %cr3.i, align 2
  %conv7.i = zext i16 %132 to i32
  %add.ptr8.i = getelementptr i8, ptr %130, i32 %conv7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %128) #6, !srcloc !120
  %133 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %events.i, align 4
  %135 = ptrtoint ptr %data.i125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i125, align 4
  %clear_events.i.i = getelementptr inbounds %struct.stm32_rtc_data, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %clear_events.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %clear_events.i.i, align 4
  tail call void %138(ptr noundef %108, i32 noundef %134) #6
  %139 = ptrtoint ptr %data.i125 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i125, align 4
  %141 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i126, align 4
  %wpr.i21.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %140, i32 0, i32 6
  %143 = ptrtoint ptr %wpr.i21.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %wpr.i21.i, align 2
  %conv.i22.i = zext i16 %144 to i32
  %add.ptr.i23.i = getelementptr i8, ptr %142, i32 %conv.i22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 -16777216) #6, !srcloc !120
  br label %end

end:                                              ; preds = %if.end62, %do.end61
  %145 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data, align 4
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %wpr.i132 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %146, i32 0, i32 6
  %149 = ptrtoint ptr %wpr.i132 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %wpr.i132, align 2
  %conv.i133 = zext i16 %150 to i32
  %add.ptr.i134 = getelementptr i8, ptr %148, i32 %conv.i133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 -16777216) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %cond, %end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %cr3 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cr3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cr3, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %wpr.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wpr.i, align 2
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -905969664) #6, !srcloc !120
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %wpr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wpr.i, align 2
  %conv4.i = zext i16 %18 to i32
  %add.ptr5.i = getelementptr i8, ptr %16, i32 %conv4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1392508928) #6, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %19 = and i32 %8, -1114113
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %masksel = select i1 %tobool.not, i32 0, i32 4352
  %cr.0 = or i32 %20, %masksel
  %events = getelementptr inbounds %struct.stm32_rtc_data, ptr %3, i32 0, i32 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %cr.0)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %24 = ptrtoint ptr %cr3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cr3, align 2
  %conv7 = zext i16 %25 to i32
  %add.ptr8 = getelementptr i8, ptr %23, i32 %conv7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %21) #6, !srcloc !120
  %26 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %events, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %clear_events.i = getelementptr inbounds %struct.stm32_rtc_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %clear_events.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clear_events.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef %27) #6
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %wpr.i21 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %wpr.i21 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %wpr.i21, align 2
  %conv.i22 = zext i16 %37 to i32
  %add.ptr.i23 = getelementptr i8, ptr %35, i32 %conv.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 -16777216) #6, !srcloc !120
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rtc_clear_events(ptr nocapture noundef readonly %rtc, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %isr = getelementptr inbounds %struct.stm32_rtc_registers, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %isr, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !121
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %neg = xor i32 %flags, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = ptrtoint ptr %isr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %isr, align 2
  %conv4 = zext i16 %12 to i32
  %add.ptr5 = getelementptr i8, ptr %10, i32 %conv4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #6, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32mp1_rtc_clear_events(ptr nocapture noundef readonly %rtc, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %regs.sroa.11.0.regs1.sroa_idx = getelementptr inbounds i8, ptr %1, i32 16
  %2 = ptrtoint ptr %regs.sroa.11.0.regs1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %regs.sroa.11.0.copyload = load i16, ptr %regs.sroa.11.0.regs1.sroa_idx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %flags)
  %base = getelementptr inbounds %struct.stm32_rtc, ptr %rtc, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %conv = zext i16 %regs.sroa.11.0.copyload to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %has_pclk = getelementptr inbounds %struct.stm32_rtc_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %has_pclk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_pclk, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pclk = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %device_may_wakeup.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then2

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq_alarm = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_alarm, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %device_may_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %has_pclk = getelementptr inbounds %struct.stm32_rtc_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %has_pclk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_pclk, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %pclk = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %isr2.i = getelementptr inbounds %struct.stm32_rtc_registers, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %isr2.i, align 2
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !121
  %15 = and i32 %14, -536870913
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %isr2.i, align 2
  %conv5.i = zext i16 %19 to i32
  %add.ptr6.i = getelementptr i8, ptr %17, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #6, !srcloc !120
  %call7.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call7.i, 100000000
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %isr2.i, align 2
  %conv1257.i = zext i16 %23 to i32
  %add.ptr1358.i = getelementptr i8, ptr %21, i32 %conv1257.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1358.i) #6, !srcloc !121
  %25 = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not60.i = icmp eq i32 %25, 0
  br i1 %tobool.not60.i, label %if.end4.land.lhs.true.i_crit_edge, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end4.land.lhs.true.i_crit_edge:                ; preds = %if.end4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end4.land.lhs.true.i_crit_edge
  %call18.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %isr2.i, align 2
  %conv12.i = zext i16 %30 to i32
  %add.ptr13.i = getelementptr i8, ptr %28, i32 %conv12.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #6, !srcloc !121
  %32 = and i32 %31, 536870912
  %tobool.not.i29 = icmp eq i32 %32, 0
  br i1 %tobool.not.i29, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.if.end13_crit_edge

cond.false.i.if.end13_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %isr2.i, align 2
  %conv25.i = zext i16 %36 to i32
  %add.ptr26.i = getelementptr i8, ptr %34, i32 %conv25.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #6, !srcloc !121
  %38 = and i32 %37, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool40.not.i = icmp eq i32 %38, 0
  br i1 %tobool40.not.i, label %if.then6, label %for.end.i.if.end13_crit_edge

for.end.i.if.end13_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %for.end.i
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %has_pclk8 = getelementptr inbounds %struct.stm32_rtc_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %has_pclk8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_pclk8, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool9.not = icmp eq i8 %42, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %if.then10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %pclk11 = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %pclk11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pclk11, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %cleanup

if.end13:                                         ; preds = %for.end.i.if.end13_crit_edge, %cond.false.i.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %45 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i30 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i30, label %if.end13.cleanup_crit_edge, label %device_may_wakeup.exit

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end13
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %46 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %47, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then15

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq_alarm = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_alarm, align 4
  %call.i31 = tail call i32 @irq_set_irq_wake(i32 noundef %49, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %device_may_wakeup.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then10, %if.then6.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i31, %if.then15 ], [ -110, %if.then10 ], [ -110, %if.then6.cleanup_crit_edge ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rtc_stm32__228_928_stm32_rtc_driver_init6, !1, !"__initcall__kmod_rtc_stm32__228_928_stm32_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-stm32.c", i32 928, i32 1}
!2 = !{ptr @__exitcall_stm32_rtc_driver_exit, !1, !"__exitcall_stm32_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias229, !4, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-stm32.c", i32 930, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-stm32.c", i32 931, i32 1}
!7 = !{ptr @__UNIQUE_ID_description231, !8, !"__UNIQUE_ID_description231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-stm32.c", i32 932, i32 1}
!9 = !{ptr @__UNIQUE_ID_file232, !10, !"__UNIQUE_ID_file232", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-stm32.c", i32 933, i32 1}
!11 = !{ptr @__UNIQUE_ID_license233, !10, !"__UNIQUE_ID_license233", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-stm32.c", i32 922, i32 11}
!14 = !{ptr @stm32_rtc_driver, !15, !"stm32_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-stm32.c", i32 918, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-stm32.c", i32 712, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-stm32.c", i32 714, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-stm32.c", i32 721, i32 4}
!28 = !{ptr @stm32_rtc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_rtc_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-stm32.c", i32 728, i32 4}
!32 = !{ptr @stm32_rtc_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_rtc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-stm32.c", i32 737, i32 40}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-stm32.c", i32 739, i32 4}
!38 = !{ptr @stm32_rtc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32_rtc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-stm32.c", i32 742, i32 42}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-stm32.c", i32 745, i32 3}
!44 = !{ptr @stm32_rtc_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @stm32_rtc_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-stm32.c", i32 794, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stm32_rtc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @stm32_rtc_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-stm32.c", i32 802, i32 3}
!53 = !{ptr @stm32_rtc_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stm32_rtc_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-stm32.c", i32 812, i32 3}
!57 = !{ptr @stm32_rtc_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @stm32_rtc_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-stm32.c", i32 822, i32 3}
!61 = !{ptr @stm32_rtc_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_rtc_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-stm32.c", i32 827, i32 3}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stm32_rtc_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @stm32_rtc_probe._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-stm32.c", i32 659, i32 3}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stm32_rtc_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stm32_rtc_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-stm32.c", i32 668, i32 3}
!77 = !{ptr @stm32_rtc_init._entry.42, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @stm32_rtc_init._entry_ptr.44, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @stm32_rtc_ops, !80, !"stm32_rtc_ops", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-stm32.c", i32 529, i32 35}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-stm32.c", i32 320, i32 3}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stm32_rtc_set_time._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stm32_rtc_set_time._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-stm32.c", i32 481, i32 3}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @stm32_rtc_set_alarm._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @stm32_rtc_set_alarm._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-stm32.c", i32 515, i32 3}
!93 = !{ptr @stm32_rtc_set_alarm._entry.49, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @stm32_rtc_set_alarm._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-stm32.c", i32 220, i32 3}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stm32_rtc_alarm_irq.__UNIQUE_ID_ddebug227, !96, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!100 = !{ptr @stm32_rtc_of_match, !101, !"stm32_rtc_of_match", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-stm32.c", i32 622, i32 34}
!102 = !{ptr @stm32_rtc_data, !103, !"stm32_rtc_data", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-stm32.c", i32 547, i32 36}
!104 = !{ptr @stm32h7_rtc_data, !105, !"stm32h7_rtc_data", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-stm32.c", i32 569, i32 36}
!106 = !{ptr @stm32mp1_data, !107, !"stm32mp1_data", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-stm32.c", i32 600, i32 36}
!108 = !{ptr @stm32_rtc_pm_ops, !109, !"stm32_rtc_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-stm32.c", i32 915, i32 8}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
!120 = !{i64 3100842}
!121 = !{i64 3101260}
!122 = !{i64 2148745490, i64 2148745495, i64 2148745508, i64 2148745552, i64 2148745586, i64 2148745607}
