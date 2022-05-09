; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-twl.c_pt.bc'
source_filename = "../drivers/rtc/rtc-twl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.twl_rtc = type { ptr, ptr, ptr, i8, i8, i8, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_twl__227_654_twl4030rtc_driver_init6 = internal global ptr @twl4030rtc_driver_init, section ".initcall6.init", align 4
@twl4030rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl_rtc_probe, ptr @twl_rtc_remove, ptr @twl_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030rtc_driver_exit = internal global ptr @twl4030rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [54 x i8] c"rtc_twl.author=Texas Instruments, MontaVista Software\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [33 x i8] c"rtc_twl.file=drivers/rtc/rtc-twl\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"rtc_twl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl_rtc\00", [24 x i8] zeroinitializer }, align 32
@twl_rtc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no DT info\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/rtc/rtc-twl.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr = internal global ptr @twl_rtc_probe._entry, section ".printk_index", align 4
@twl4030_rtc_reg_map = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11", [46 x i8] zeroinitializer }, align 32
@twl6030_rtc_reg_map = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\00\01\02\03\04\05\06\08\09\0A\0B\0C\0D\10\11\12\13\14", [46 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TWL Class not supported.\0A\00", [38 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.8 = internal global ptr @twl_rtc_probe._entry.6, section ".printk_index", align 4
@twl_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 528, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power up reset detected.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.12 = internal global ptr @twl_rtc_probe._entry.9, section ".printk_index", align 4
@twl_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Pending Alarm interrupt detected.\0A\00", [61 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.15 = internal global ptr @twl_rtc_probe._entry.13, section ".printk_index", align 4
@twl_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enabling TWL-RTC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.19 = internal global ptr @twl_rtc_probe._entry.16, section ".printk_index", align 4
@twl_rtc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 554, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to disable interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.22 = internal global ptr @twl_rtc_probe._entry.20, section ".printk_index", align 4
@twl_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @twl_rtc_read_time, ptr @twl_rtc_set_time, ptr @twl_rtc_read_alarm, ptr @twl_rtc_set_alarm, ptr null, ptr @twl_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't register RTC device, err %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.25 = internal global ptr @twl_rtc_probe._entry.23, section ".printk_index", align 4
@twl_rtc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ is not free.\0A\00", [46 x i8] zeroinitializer }, align 32
@twl_rtc_probe._entry_ptr.28 = internal global ptr @twl_rtc_probe._entry.26, section ".printk_index", align 4
@twl_rtc_read_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtc_twl: Could not read TWL register %X - error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl_rtc_read_u8\00", [16 x i8] zeroinitializer }, align 32
@twl_rtc_read_u8._entry_ptr = internal global ptr @twl_rtc_read_u8._entry, section ".printk_index", align 4
@twl_rtc_write_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rtc_twl: Could not write TWL register %X - error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl_rtc_write_u8\00", [47 x i8] zeroinitializer }, align 32
@twl_rtc_write_u8._entry_ptr = internal global ptr @twl_rtc_write_u8._entry, section ".printk_index", align 4
@twl_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reading CTRL_REG, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl_rtc_read_time\00", [46 x i8] zeroinitializer }, align 32
@twl_rtc_read_time._entry_ptr = internal global ptr @twl_rtc_read_time._entry, section ".printk_index", align 4
@twl_rtc_read_time._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s clr GET_TIME, error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@twl_rtc_read_time._entry_ptr.37 = internal global ptr @twl_rtc_read_time._entry.35, section ".printk_index", align 4
@twl_rtc_read_time._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: writing CTRL_REG, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@twl_rtc_read_time._entry_ptr.40 = internal global ptr @twl_rtc_read_time._entry.38, section ".printk_index", align 4
@twl_rtc_read_time._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: reading data, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@twl_rtc_read_time._entry_ptr.43 = internal global ptr @twl_rtc_read_time._entry.41, section ".printk_index", align 4
@twl_rtc_read_time._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: restore CTRL_REG, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@twl_rtc_read_time._entry_ptr.46 = internal global ptr @twl_rtc_read_time._entry.44, section ".printk_index", align 4
@twl_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtc_set_time error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl_rtc_set_time\00", [47 x i8] zeroinitializer }, align 32
@twl_rtc_set_time._entry_ptr = internal global ptr @twl_rtc_set_time._entry, section ".printk_index", align 4
@twl_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtc_read_alarm error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl_rtc_read_alarm\00", [45 x i8] zeroinitializer }, align 32
@twl_rtc_read_alarm._entry_ptr = internal global ptr @twl_rtc_read_alarm._entry, section ".printk_index", align 4
@twl_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtc_set_alarm error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl_rtc_set_alarm\00", [46 x i8] zeroinitializer }, align 32
@twl_rtc_set_alarm._entry_ptr = internal global ptr @twl_rtc_set_alarm._entry, section ".printk_index", align 4
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"twl4030rtc_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 643, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 648, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"twl_rtc_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 637, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"twl_rtc_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 635, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 501, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"twl4030_rtc_reg_map\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 63, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"twl6030_rtc_reg_map\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 86, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 519, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 528, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 531, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 545, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 554, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"twl_rtc_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 482, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 568, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 578, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 164, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 177, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 268, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 278, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 294, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 302, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 310, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 354, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 378, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [25 x i8] c"../drivers/rtc/rtc-twl.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 419, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_twl4030rtc_driver_exit, ptr @__initcall__kmod_rtc_twl__227_654_twl4030rtc_driver_init6, ptr @twl4030rtc_driver_exit, ptr @twl_rtc_probe._entry, ptr @twl_rtc_probe._entry.13, ptr @twl_rtc_probe._entry.16, ptr @twl_rtc_probe._entry.20, ptr @twl_rtc_probe._entry.23, ptr @twl_rtc_probe._entry.26, ptr @twl_rtc_probe._entry.6, ptr @twl_rtc_probe._entry.9, ptr @twl_rtc_probe._entry_ptr, ptr @twl_rtc_probe._entry_ptr.12, ptr @twl_rtc_probe._entry_ptr.15, ptr @twl_rtc_probe._entry_ptr.19, ptr @twl_rtc_probe._entry_ptr.22, ptr @twl_rtc_probe._entry_ptr.25, ptr @twl_rtc_probe._entry_ptr.28, ptr @twl_rtc_probe._entry_ptr.8, ptr @twl_rtc_read_alarm._entry, ptr @twl_rtc_read_alarm._entry_ptr, ptr @twl_rtc_read_time._entry, ptr @twl_rtc_read_time._entry.35, ptr @twl_rtc_read_time._entry.38, ptr @twl_rtc_read_time._entry.41, ptr @twl_rtc_read_time._entry.44, ptr @twl_rtc_read_time._entry_ptr, ptr @twl_rtc_read_time._entry_ptr.37, ptr @twl_rtc_read_time._entry_ptr.40, ptr @twl_rtc_read_time._entry_ptr.43, ptr @twl_rtc_read_time._entry_ptr.46, ptr @twl_rtc_read_u8._entry, ptr @twl_rtc_read_u8._entry_ptr, ptr @twl_rtc_set_alarm._entry, ptr @twl_rtc_set_alarm._entry_ptr, ptr @twl_rtc_set_time._entry, ptr @twl_rtc_set_time._entry_ptr, ptr @twl_rtc_write_u8._entry, ptr @twl_rtc_write_u8._entry_ptr, ptr @twl4030rtc_driver, ptr @.str, ptr @twl_rtc_of_match, ptr @twl_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @twl4030_rtc_reg_map, ptr @twl6030_rtc_reg_map, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @twl_rtc_ops, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_rtc_reg_map to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_rtc_reg_map to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_write_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_time._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_time._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_time._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_time._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %rd_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rd_reg) #6
  %2 = ptrtoint ptr %rd_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rd_reg, align 1, !annotation !115
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call.i157 = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16432, i32 %call.i157)
  %cmp.i.not = icmp eq i32 %call.i157, 16432
  br i1 %cmp.i.not, label %if.end8.if.end23_crit_edge, label %if.else

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else:                                          ; preds = %if.end8
  %call.i158 = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24624, i32 %call.i158)
  %cmp.i159.not = icmp eq i32 %call.i158, 24624
  br i1 %cmp.i159.not, label %if.else.if.end23_crit_edge, label %do.end20

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %.sink = phi i32 [ 0, %if.end8.if.end23_crit_edge ], [ 1, %if.else.if.end23_crit_edge ]
  %twl6030_rtc_reg_map.sink = phi ptr [ @twl4030_rtc_reg_map, %if.end8.if.end23_crit_edge ], [ @twl6030_rtc_reg_map, %if.else.if.end23_crit_edge ]
  %class15 = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %class15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %class15, align 4
  %reg_map16 = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %reg_map16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %twl6030_rtc_reg_map.sink, ptr %reg_map16, align 4
  %reg_map.i = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 2
  %arrayidx.i = getelementptr i8, ptr %twl6030_rtc_reg_map.sink, i32 14
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %rd_reg, i8 noundef zeroext %6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i161 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i161, label %twl_rtc_read_u8.exit.thread, label %if.end27

twl_rtc_read_u8.exit.thread:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 14, i32 noundef %call.i.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %7 = ptrtoint ptr %rd_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rd_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool28.not = icmp sgt i8 %8, -1
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %do.end32

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end27.if.end34_crit_edge
  %9 = ptrtoint ptr %rd_reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rd_reg, align 1
  %11 = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool37.not = icmp eq i8 %11, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %do.end41

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end34.if.end43_crit_edge
  %12 = ptrtoint ptr %rd_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rd_reg, align 1
  %14 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i163 = getelementptr i8, ptr %15, i32 14
  %16 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i163, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %18 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %13, ptr %val.addr.i.i, align 1
  %call.i.i164 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %17, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %cmp.i165 = icmp slt i32 %call.i.i164, 0
  br i1 %cmp.i165, label %twl_rtc_write_u8.exit.thread, label %if.end48

twl_rtc_write_u8.exit.thread:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 14, i32 noundef %call.i.i164) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %class49 = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %class49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %class49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp50 = icmp eq i32 %20, 1
  br i1 %cmp50, label %if.then52, label %if.end48.do.end58_crit_edge

if.end48.do.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 24, i8 noundef zeroext 3) #6
  %call54 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 24, i8 noundef zeroext 6) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %if.end48.do.end58_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %call60 = call fastcc i32 @twl_rtc_write_u8(ptr noundef nonnull %call.i, i8 noundef zeroext 1, i8 noundef zeroext 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end58.cleanup_crit_edge, label %if.end64

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %do.end58
  %call65 = call fastcc i32 @twl_rtc_write_u8(ptr noundef nonnull %call.i, i8 noundef zeroext 0, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end64.if.end73_crit_edge

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %if.end73

if.end73:                                         ; preds = %do.end71, %if.end64.if.end73_crit_edge
  %rtc_irq_bits = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 3
  %call74 = call fastcc i32 @twl_rtc_read_u8(ptr noundef nonnull %call.i, ptr noundef %rtc_irq_bits, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %if.end78

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call80 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %call82 = call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %23, ptr noundef nonnull @twl_rtc_ops, ptr noundef null) #6
  %rtc = getelementptr inbounds %struct.twl_rtc, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call82, ptr %rtc, align 4
  %cmp.i168 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end88, label %if.end94

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %25) #9
  %26 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end94:                                         ; preds = %if.end78
  %init_name.i = getelementptr inbounds %struct.device, ptr %call82, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end94.dev_name.exit_crit_edge

if.end94.dev_name.exit_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call82, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end94.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end94.dev_name.exit_crit_edge ]
  %call99 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef null, ptr noundef nonnull @twl_rtc_interrupt, i32 noundef 8193, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %do.end105, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end105:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %dev_name.exit.cleanup_crit_edge, %do.end88, %if.end73.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %twl_rtc_write_u8.exit.thread, %twl_rtc_read_u8.exit.thread, %do.end20, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %28, %do.end88 ], [ %call99, %do.end105 ], [ -22, %do.end20 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call60, %do.end58.cleanup_crit_edge ], [ %call74, %if.end73.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %call.i.i, %twl_rtc_read_u8.exit.thread ], [ %call.i.i164, %twl_rtc_write_u8.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rd_reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %val.addr.i.i.i7 = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rtc_irq_bits.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtc_irq_bits.i, align 4
  %and18.i = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i)
  %tobool.not.i = icmp eq i8 %and18.i, 0
  br i1 %tobool.not.i, label %entry.mask_rtc_irq_bit.exit_crit_edge, label %if.end.i

entry.mask_rtc_irq_bit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.end.i:                                         ; preds = %entry
  %and5.i = and i8 %3, -9
  %reg_map.i.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 15
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %8 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and5.i, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl_rtc_write_u8.exit.thread.i, label %twl_rtc_write_u8.exit.i

twl_rtc_write_u8.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i) #9
  br label %mask_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then8.i, label %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.then8.i:                                       ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and5.i, ptr %rtc_irq_bits.i, align 4
  br label %mask_rtc_irq_bit.exit

mask_rtc_irq_bit.exit:                            ; preds = %if.then8.i, %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i, %entry.mask_rtc_irq_bit.exit_crit_edge
  %10 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rtc_irq_bits.i, align 4
  %and18.i9 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i9)
  %tobool.not.i10 = icmp eq i8 %and18.i9, 0
  br i1 %tobool.not.i10, label %mask_rtc_irq_bit.exit.mask_rtc_irq_bit.exit23_crit_edge, label %if.end.i16

mask_rtc_irq_bit.exit.mask_rtc_irq_bit.exit23_crit_edge: ; preds = %mask_rtc_irq_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit23

if.end.i16:                                       ; preds = %mask_rtc_irq_bit.exit
  %and5.i11 = and i8 %11, -5
  %reg_map.i.i12 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg_map.i.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map.i.i12, align 4
  %arrayidx.i.i13 = getelementptr i8, ptr %13, i32 15
  %14 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i7) #6
  %16 = ptrtoint ptr %val.addr.i.i.i7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and5.i11, ptr %val.addr.i.i.i7, align 1
  %call.i.i.i14 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i7, i8 noundef zeroext %15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %cmp.i.i15 = icmp slt i32 %call.i.i.i14, 0
  br i1 %cmp.i.i15, label %twl_rtc_write_u8.exit.thread.i18, label %twl_rtc_write_u8.exit.i20

twl_rtc_write_u8.exit.thread.i18:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i14) #9
  br label %mask_rtc_irq_bit.exit23

twl_rtc_write_u8.exit.i20:                        ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %cmp.i19 = icmp eq i32 %call.i.i.i14, 0
  br i1 %cmp.i19, label %if.then8.i21, label %twl_rtc_write_u8.exit.i20.mask_rtc_irq_bit.exit23_crit_edge

twl_rtc_write_u8.exit.i20.mask_rtc_irq_bit.exit23_crit_edge: ; preds = %twl_rtc_write_u8.exit.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit23

if.then8.i21:                                     ; preds = %twl_rtc_write_u8.exit.i20
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and5.i11, ptr %rtc_irq_bits.i, align 4
  br label %mask_rtc_irq_bit.exit23

mask_rtc_irq_bit.exit23:                          ; preds = %if.then8.i21, %twl_rtc_write_u8.exit.i20.mask_rtc_irq_bit.exit23_crit_edge, %twl_rtc_write_u8.exit.thread.i18, %mask_rtc_irq_bit.exit.mask_rtc_irq_bit.exit23_crit_edge
  %class = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %mask_rtc_irq_bit.exit23.if.end_crit_edge

mask_rtc_irq_bit.exit23.if.end_crit_edge:         ; preds = %mask_rtc_irq_bit.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %mask_rtc_irq_bit.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @twl6030_interrupt_mask(i8 noundef zeroext 24, i8 noundef zeroext 3) #6
  %call4 = call i32 @twl6030_interrupt_mask(i8 noundef zeroext 24, i8 noundef zeroext 6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %mask_rtc_irq_bit.exit23.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl_rtc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rtc_irq_bits.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtc_irq_bits.i, align 4
  %and18.i = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i)
  %tobool.not.i = icmp eq i8 %and18.i, 0
  br i1 %tobool.not.i, label %entry.mask_rtc_irq_bit.exit_crit_edge, label %if.end.i

entry.mask_rtc_irq_bit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.end.i:                                         ; preds = %entry
  %and5.i = and i8 %3, -5
  %reg_map.i.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 15
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %8 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and5.i, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %7, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl_rtc_write_u8.exit.thread.i, label %twl_rtc_write_u8.exit.i

twl_rtc_write_u8.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i) #9
  br label %mask_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then8.i, label %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.then8.i:                                       ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and5.i, ptr %rtc_irq_bits.i, align 4
  br label %mask_rtc_irq_bit.exit

mask_rtc_irq_bit.exit:                            ; preds = %if.then8.i, %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i, %entry.mask_rtc_irq_bit.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_rtc_read_u8(ptr nocapture noundef readonly %twl_rtc, ptr noundef %data, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_map = getelementptr inbounds %struct.twl_rtc, ptr %twl_rtc, i32 0, i32 2
  %0 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_map, align 4
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr i8, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %call.i = tail call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef %data, i8 noundef zeroext %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %idxprom, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_rtc_write_u8(ptr nocapture noundef readonly %twl_rtc, i8 noundef zeroext %data, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_map = getelementptr inbounds %struct.twl_rtc, ptr %twl_rtc, i32 0, i32 2
  %0 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_map, align 4
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr i8, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %4 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %idxprom, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %rd_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rd_reg) #6
  %0 = ptrtoint ptr %rd_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rd_reg, align 1, !annotation !115
  %reg_map.i = getelementptr inbounds %struct.twl_rtc, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %2, i32 14
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %rd_reg, i8 noundef zeroext %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %twl_rtc_read_u8.exit.thread, label %twl_rtc_read_u8.exit

twl_rtc_read_u8.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 14, i32 noundef %call.i.i) #9
  br label %out

twl_rtc_read_u8.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %twl_rtc_read_u8.exit.out_crit_edge

twl_rtc_read_u8.exit.out_crit_edge:               ; preds = %twl_rtc_read_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %twl_rtc_read_u8.exit
  %5 = ptrtoint ptr %rd_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rd_reg, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %. = select i1 %tobool1.not, i32 192, i32 160
  %8 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i21 = getelementptr i8, ptr %9, i32 14
  %10 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %12 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %val.addr.i.i, align 1
  %call.i.i22 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %11, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %twl_rtc_write_u8.exit.thread, label %twl_rtc_write_u8.exit

twl_rtc_write_u8.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 14, i32 noundef %call.i.i22) #9
  br label %out

twl_rtc_write_u8.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool5.not = icmp eq i32 %call.i.i22, 0
  br i1 %tobool5.not, label %if.end7, label %twl_rtc_write_u8.exit.out_crit_edge

twl_rtc_write_u8.exit.out_crit_edge:              ; preds = %twl_rtc_write_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %twl_rtc_write_u8.exit
  %class = getelementptr inbounds %struct.twl_rtc, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then9, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 18, ptr noundef nonnull %rd_reg, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %rtc = getelementptr inbounds %struct.twl_rtc, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %16, i32 noundef 1, i32 noundef %.) #6
  br label %out

out:                                              ; preds = %if.end14, %if.then9.out_crit_edge, %twl_rtc_write_u8.exit.out_crit_edge, %twl_rtc_write_u8.exit.thread, %twl_rtc_read_u8.exit.out_crit_edge, %twl_rtc_read_u8.exit.thread
  %ret.0 = phi i32 [ 0, %twl_rtc_read_u8.exit.out_crit_edge ], [ 0, %twl_rtc_write_u8.exit.out_crit_edge ], [ 0, %if.then9.out_crit_edge ], [ 1, %if.end14 ], [ 0, %twl_rtc_read_u8.exit.thread ], [ 0, %twl_rtc_write_u8.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rd_reg) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_rev() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %val.addr.i.i192 = alloca i8, align 1
  %val.addr.i.i184 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %rtc_data = alloca [6 x i8], align 1
  %save_control = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rtc_data) #6
  %2 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 5
  %7 = call ptr @memset(ptr %rtc_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %save_control) #6
  %8 = ptrtoint ptr %save_control to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %save_control, align 1, !annotation !115
  %reg_map.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 13
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %save_control, i8 noundef zeroext %12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 13, i32 noundef %call.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %15 = ptrtoint ptr %save_control to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %save_control, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then3.if.end17_crit_edge, label %if.then4

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then4:                                         ; preds = %if.then3
  %and6 = and i8 %16, -65
  %18 = ptrtoint ptr %save_control to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and6, ptr %save_control, align 1
  %19 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i179 = getelementptr i8, ptr %20, i32 13
  %21 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i179, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %23 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %and6, ptr %val.addr.i.i, align 1
  %call.i.i180 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %22, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %cmp.i181 = icmp slt i32 %call.i.i180, 0
  br i1 %cmp.i181, label %do.end14, label %if.then4.if.end17_crit_edge

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 13, i32 noundef %call.i.i180) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %call.i.i180) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then4.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %24 = ptrtoint ptr %save_control to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %save_control, align 1
  %26 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp21 = icmp eq i32 %27, 1
  %spec.select.v = select i1 %cmp21, i8 -64, i8 64
  %spec.select = or i8 %spec.select.v, %25
  %28 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i186 = getelementptr i8, ptr %29, i32 13
  %30 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i186, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i184) #6
  %32 = ptrtoint ptr %val.addr.i.i184 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select, ptr %val.addr.i.i184, align 1
  %call.i.i187 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i184, i8 noundef zeroext %31, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i184) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %cmp.i188 = icmp slt i32 %call.i.i187, 0
  br i1 %cmp.i188, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 13, i32 noundef %call.i.i187) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, i32 noundef %call.i.i187) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end17
  %33 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_map.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %call36 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %rtc_data, i8 noundef zeroext %36, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef %call36) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %37 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp45 = icmp eq i32 %38, 1
  br i1 %cmp45, label %if.then47, label %if.end43.cond.end_crit_edge

if.end43.cond.end_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then47:                                        ; preds = %if.end43
  %39 = ptrtoint ptr %save_control to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %save_control, align 1
  %41 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i194 = getelementptr i8, ptr %42, i32 13
  %43 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i194, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i192) #6
  %45 = ptrtoint ptr %val.addr.i.i192 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %40, ptr %val.addr.i.i192, align 1
  %call.i.i195 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i192, i8 noundef zeroext %44, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %cmp.i196 = icmp slt i32 %call.i.i195, 0
  br i1 %cmp.i196, label %do.end54, label %if.then47.cond.end_crit_edge

if.then47.cond.end_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

do.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 13, i32 noundef %call.i.i195) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, i32 noundef %call.i.i195) #9
  br label %cleanup

cond.end:                                         ; preds = %if.then47.cond.end_crit_edge, %if.end43.cond.end_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end43.cond.end_crit_edge ], [ %call.i.i195, %if.then47.cond.end_crit_edge ]
  %46 = ptrtoint ptr %rtc_data to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rtc_data, align 1
  %call64 = call i32 @_bcd2bin(i8 noundef zeroext %47) #10
  %48 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call64, ptr %tm, align 4
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  %call77 = call i32 @_bcd2bin(i8 noundef zeroext %50) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %51 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call77, ptr %tm_min, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 1
  %call92 = call i32 @_bcd2bin(i8 noundef zeroext %53) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %54 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call92, ptr %tm_hour, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %4, align 1
  %call107 = call i32 @_bcd2bin(i8 noundef zeroext %56) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %57 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call107, ptr %tm_mday, align 4
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %5, align 1
  %call122 = call i32 @_bcd2bin(i8 noundef zeroext %59) #10
  %sub = add i32 %call122, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %60 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %tm_mon, align 4
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %6, align 1
  %call137 = call i32 @_bcd2bin(i8 noundef zeroext %62) #10
  %add140 = add i32 %call137, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %63 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add140, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end54, %do.end42, %do.end34, %do.end14, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i180, %do.end14 ], [ %call.i.i187, %do.end34 ], [ %call36, %do.end42 ], [ %call.i.i195, %do.end54 ], [ %ret.0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %save_control) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rtc_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %val.addr.i.i149 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %save_control = alloca i8, align 1
  %rtc_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %save_control) #6
  %2 = ptrtoint ptr %save_control to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %save_control, align 1, !annotation !115
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rtc_data) #6
  %3 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 5
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %10 = ptrtoint ptr %rtc_data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call4, ptr %rtc_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17, ptr %3, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call33, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call49, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mon, align 4
  %add55 = add i32 %21, 1
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %add55) #10
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call69, ptr %6, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %23 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_year, align 4
  %sub = add i32 %24, -100
  %call88 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call88, ptr %7, align 1
  %reg_map.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 13
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %save_control, i8 noundef zeroext %29, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %twl_rtc_read_u8.exit.thread, label %if.end

twl_rtc_read_u8.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 13, i32 noundef %call.i.i) #9
  br label %out

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %save_control to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %save_control, align 1
  %32 = and i8 %31, -2
  store i8 %32, ptr %save_control, align 1
  %33 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i144 = getelementptr i8, ptr %34, i32 13
  %35 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i144, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %37 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %32, ptr %val.addr.i.i, align 1
  %call.i.i145 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %cmp.i146 = icmp slt i32 %call.i.i145, 0
  br i1 %cmp.i146, label %twl_rtc_write_u8.exit.thread, label %if.end102

twl_rtc_write_u8.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 13, i32 noundef %call.i.i145) #9
  br label %out

if.end102:                                        ; preds = %if.end
  %38 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_map.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %call104 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %rtc_data, i8 noundef zeroext %41, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end, label %if.end108

do.end:                                           ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call104) #9
  br label %out

if.end108:                                        ; preds = %if.end102
  %42 = ptrtoint ptr %save_control to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %save_control, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %save_control, align 1
  %45 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_map.i, align 4
  %arrayidx.i151 = getelementptr i8, ptr %46, i32 13
  %47 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i151, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i149) #6
  %49 = ptrtoint ptr %val.addr.i.i149 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %44, ptr %val.addr.i.i149, align 1
  %call.i.i152 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i149, i8 noundef zeroext %48, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i149) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152)
  %cmp.i153 = icmp slt i32 %call.i.i152, 0
  br i1 %cmp.i153, label %do.end.i155, label %if.end108.out_crit_edge

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end.i155:                                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 13, i32 noundef %call.i.i152) #9
  br label %out

out:                                              ; preds = %do.end.i155, %if.end108.out_crit_edge, %do.end, %twl_rtc_write_u8.exit.thread, %twl_rtc_read_u8.exit.thread
  %ret.0 = phi i32 [ %call104, %do.end ], [ %call.i.i, %twl_rtc_read_u8.exit.thread ], [ %call.i.i145, %twl_rtc_write_u8.exit.thread ], [ %call.i.i152, %if.end108.out_crit_edge ], [ %call.i.i152, %do.end.i155 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rtc_data) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %save_control) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alm) #2 align 64 {
entry:
  %rtc_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rtc_data) #6
  %reg_map = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %rtc_data, i32 255, i32 6)
  %3 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_map, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %call1 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %rtc_data, i8 noundef zeroext %6, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call1) #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %7 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 5
  %8 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 4
  %9 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 2
  %11 = getelementptr inbounds [6 x i8], ptr %rtc_data, i32 0, i32 1
  %12 = ptrtoint ptr %rtc_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rtc_data, align 1
  %call7 = call i32 @_bcd2bin(i8 noundef zeroext %13) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %14 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %time, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %11, align 1
  %call20 = call i32 @_bcd2bin(i8 noundef zeroext %16) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20, ptr %tm_min, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %10, align 1
  %call36 = call i32 @_bcd2bin(i8 noundef zeroext %19) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call36, ptr %tm_hour, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %9, align 1
  %call52 = call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call52, ptr %tm_mday, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 1
  %call68 = call i32 @_bcd2bin(i8 noundef zeroext %25) #10
  %sub = add i32 %call68, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %call84 = call i32 @_bcd2bin(i8 noundef zeroext %28) #10
  %add87 = add i32 %call84, 100
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add87, ptr %tm_year, align 4
  %rtc_irq_bits = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %rtc_irq_bits to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rtc_irq_bits, align 4
  %32 = and i8 %31, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.then91

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then91:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %alm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %cond.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rtc_data) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alm) #2 align 64 {
entry:
  %alarm_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alarm_data) #6
  %call1 = tail call i32 @twl_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 5
  %3 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %alarm_data, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %7 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time, align 4
  %call8 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #10
  %9 = ptrtoint ptr %alarm_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call8, ptr %alarm_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %call25 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call25, ptr %6, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %call45 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call45, ptr %5, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %call65 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call65, ptr %4, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %add72 = add i32 %20, 1
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %add72) #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call89, ptr %3, align 1
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_year, align 4
  %sub = add i32 %23, -100
  %call112 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call112, ptr %2, align 1
  %reg_map = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_map, align 4
  %arrayidx118 = getelementptr i8, ptr %26, i32 7
  %27 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx118, align 1
  %call119 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %alarm_data, i8 noundef zeroext %28, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call119) #9
  br label %out

if.end122:                                        ; preds = %cond.end
  %29 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool123.not = icmp eq i8 %30, 0
  br i1 %tobool123.not, label %if.end122.out_crit_edge, label %if.then124

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call i32 @twl_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef 1)
  br label %out

out:                                              ; preds = %if.then124, %if.end122.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call119, %do.end ], [ %call125, %if.then124 ], [ 0, %if.end122.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alarm_data) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  %val.addr.i.i.i24 = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %rtc_irq_bits.i25 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_irq_bits.i25 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtc_irq_bits.i25, align 4
  %and18.i = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i)
  %tobool.not.i26 = icmp eq i8 %and18.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i26, label %if.end.i, label %if.then.set_rtc_irq_bit.exit_crit_edge

if.then.set_rtc_irq_bit.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rtc_irq_bit.exit

if.end.i:                                         ; preds = %if.then
  %or22.i = and i8 %3, -12
  %4 = or i8 %or22.i, 8
  %reg_map.i.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 15
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %4, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl_rtc_write_u8.exit.thread.i, label %twl_rtc_write_u8.exit.i

twl_rtc_write_u8.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i) #9
  br label %set_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then10.i, label %twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rtc_irq_bit.exit

if.then10.i:                                      ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rtc_irq_bits.i25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %rtc_irq_bits.i25, align 4
  br label %set_rtc_irq_bit.exit

set_rtc_irq_bit.exit:                             ; preds = %if.then10.i, %twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i, %if.then.set_rtc_irq_bit.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.set_rtc_irq_bit.exit_crit_edge ], [ 0, %if.then10.i ], [ %call.i.i.i, %twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge ], [ %call.i.i.i, %twl_rtc_write_u8.exit.thread.i ]
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true, label %set_rtc_irq_bit.exit.if.end15_crit_edge

set_rtc_irq_bit.exit.if.end15_crit_edge:          ; preds = %set_rtc_irq_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %set_rtc_irq_bit.exit
  %wake_enabled = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wake_enabled, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #6
  %14 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %wake_enabled, align 1
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i26, label %if.else.mask_rtc_irq_bit.exit_crit_edge, label %if.end.i31

if.else.mask_rtc_irq_bit.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.end.i31:                                       ; preds = %if.else
  %and5.i = and i8 %3, -9
  %reg_map.i.i27 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %reg_map.i.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_map.i.i27, align 4
  %arrayidx.i.i28 = getelementptr i8, ptr %16, i32 15
  %17 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i24) #6
  %19 = ptrtoint ptr %val.addr.i.i.i24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and5.i, ptr %val.addr.i.i.i24, align 1
  %call.i.i.i29 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i24, i8 noundef zeroext %18, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i.i29, 0
  br i1 %cmp.i.i30, label %twl_rtc_write_u8.exit.thread.i33, label %twl_rtc_write_u8.exit.i35

twl_rtc_write_u8.exit.thread.i33:                 ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i29) #9
  br label %mask_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i35:                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %cmp.i34 = icmp eq i32 %call.i.i.i29, 0
  br i1 %cmp.i34, label %if.then8.i, label %twl_rtc_write_u8.exit.i35.mask_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i35.mask_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.then8.i:                                       ; preds = %twl_rtc_write_u8.exit.i35
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %rtc_irq_bits.i25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and5.i, ptr %rtc_irq_bits.i25, align 4
  br label %mask_rtc_irq_bit.exit

mask_rtc_irq_bit.exit:                            ; preds = %if.then8.i, %twl_rtc_write_u8.exit.i35.mask_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i33, %if.else.mask_rtc_irq_bit.exit_crit_edge
  %retval.0.i36 = phi i32 [ 0, %if.else.mask_rtc_irq_bit.exit_crit_edge ], [ 0, %if.then8.i ], [ %call.i.i.i29, %twl_rtc_write_u8.exit.i35.mask_rtc_irq_bit.exit_crit_edge ], [ %call.i.i.i29, %twl_rtc_write_u8.exit.thread.i33 ]
  %wake_enabled9 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %wake_enabled9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wake_enabled9, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %mask_rtc_irq_bit.exit.if.end15_crit_edge, label %if.then11

mask_rtc_irq_bit.exit.if.end15_crit_edge:         ; preds = %mask_rtc_irq_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %mask_rtc_irq_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i37 = call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 0) #6
  %23 = ptrtoint ptr %wake_enabled9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %wake_enabled9, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %mask_rtc_irq_bit.exit.if.end15_crit_edge, %if.then5, %land.lhs.true.if.end15_crit_edge, %set_rtc_irq_bit.exit.if.end15_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %land.lhs.true.if.end15_crit_edge ], [ %retval.0.i, %if.then5 ], [ %retval.0.i, %set_rtc_irq_bit.exit.if.end15_crit_edge ], [ %retval.0.i36, %if.then11 ], [ %retval.0.i36, %mask_rtc_irq_bit.exit.if.end15_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_irq_bits = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_irq_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtc_irq_bits, align 4
  %irqstat = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irqstat to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %irqstat, align 2
  %and18.i = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i)
  %tobool.not.i = icmp eq i8 %and18.i, 0
  br i1 %tobool.not.i, label %entry.mask_rtc_irq_bit.exit_crit_edge, label %if.end.i

entry.mask_rtc_irq_bit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.end.i:                                         ; preds = %entry
  %and5.i = and i8 %3, -5
  %reg_map.i.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 15
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and5.i, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %8, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl_rtc_write_u8.exit.thread.i, label %twl_rtc_write_u8.exit.i

twl_rtc_write_u8.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i) #9
  br label %mask_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then8.i, label %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mask_rtc_irq_bit.exit

if.then8.i:                                       ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rtc_irq_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and5.i, ptr %rtc_irq_bits, align 4
  br label %mask_rtc_irq_bit.exit

mask_rtc_irq_bit.exit:                            ; preds = %if.then8.i, %twl_rtc_write_u8.exit.i.mask_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i, %entry.mask_rtc_irq_bit.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irqstat = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irqstat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irqstat, align 2
  %rtc_irq_bits.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtc_irq_bits.i, align 4
  %and21.i = and i8 %5, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and21.i)
  %tobool.not.i = icmp eq i8 %and21.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.set_rtc_irq_bit.exit_crit_edge

entry.set_rtc_irq_bit.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rtc_irq_bit.exit

if.end.i:                                         ; preds = %entry
  %or22.i = or i8 %5, %3
  %6 = and i8 %or22.i, -4
  %reg_map.i.i = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %8, i32 15
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %11 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %10, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl_rtc_write_u8.exit.thread.i, label %twl_rtc_write_u8.exit.i

twl_rtc_write_u8.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 15, i32 noundef %call.i.i.i) #9
  br label %set_rtc_irq_bit.exit

twl_rtc_write_u8.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then10.i, label %twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge

twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge: ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_rtc_irq_bit.exit

if.then10.i:                                      ; preds = %twl_rtc_write_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %rtc_irq_bits.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %6, ptr %rtc_irq_bits.i, align 4
  br label %set_rtc_irq_bit.exit

set_rtc_irq_bit.exit:                             ; preds = %if.then10.i, %twl_rtc_write_u8.exit.i.set_rtc_irq_bit.exit_crit_edge, %twl_rtc_write_u8.exit.thread.i, %entry.set_rtc_irq_bit.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_rtc_twl__227_654_twl4030rtc_driver_init6, !1, !"__initcall__kmod_rtc_twl__227_654_twl4030rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-twl.c", i32 654, i32 1}
!2 = !{ptr @__exitcall_twl4030rtc_driver_exit, !1, !"__exitcall_twl4030rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-twl.c", i32 656, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-twl.c", i32 657, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-twl.c", i32 648, i32 12}
!10 = !{ptr @twl4030rtc_driver, !11, !"twl4030rtc_driver", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-twl.c", i32 643, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-twl.c", i32 501, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @twl_rtc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @twl_rtc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-twl.c", i32 519, i32 3}
!22 = !{ptr @twl_rtc_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @twl_rtc_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-twl.c", i32 528, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @twl_rtc_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @twl_rtc_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-twl.c", i32 531, i32 3}
!31 = !{ptr @twl_rtc_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @twl_rtc_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-twl.c", i32 545, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @twl_rtc_probe._entry.16, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @twl_rtc_probe._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-twl.c", i32 554, i32 3}
!40 = !{ptr @twl_rtc_probe._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @twl_rtc_probe._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-twl.c", i32 568, i32 3}
!44 = !{ptr @twl_rtc_probe._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @twl_rtc_probe._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-twl.c", i32 578, i32 3}
!48 = !{ptr @twl_rtc_probe._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @twl_rtc_probe._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @twl4030_rtc_reg_map, !51, !"twl4030_rtc_reg_map", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-twl.c", i32 63, i32 17}
!52 = !{ptr @twl6030_rtc_reg_map, !53, !"twl6030_rtc_reg_map", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-twl.c", i32 86, i32 17}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-twl.c", i32 164, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @twl_rtc_read_u8._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @twl_rtc_read_u8._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-twl.c", i32 177, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @twl_rtc_write_u8._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @twl_rtc_write_u8._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @twl_rtc_ops, !65, !"twl_rtc_ops", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-twl.c", i32 482, i32 35}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-twl.c", i32 268, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @twl_rtc_read_time._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @twl_rtc_read_time._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-twl.c", i32 278, i32 5}
!73 = !{ptr @twl_rtc_read_time._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @twl_rtc_read_time._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-twl.c", i32 294, i32 3}
!77 = !{ptr @twl_rtc_read_time._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @twl_rtc_read_time._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-twl.c", i32 302, i32 3}
!81 = !{ptr @twl_rtc_read_time._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @twl_rtc_read_time._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-twl.c", i32 310, i32 4}
!85 = !{ptr @twl_rtc_read_time._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @twl_rtc_read_time._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-twl.c", i32 354, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @twl_rtc_set_time._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @twl_rtc_set_time._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-twl.c", i32 378, i32 3}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @twl_rtc_read_alarm._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @twl_rtc_read_alarm._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-twl.c", i32 419, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @twl_rtc_set_alarm._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @twl_rtc_set_alarm._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @twl_rtc_of_match, !103, !"twl_rtc_of_match", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-twl.c", i32 637, i32 34}
!104 = !{ptr @twl_rtc_pm_ops, !105, !"twl_rtc_pm_ops", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-twl.c", i32 635, i32 8}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{i8 0, i8 2}
