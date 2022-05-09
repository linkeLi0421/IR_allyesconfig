; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-fsl-ftm-alarm.c_pt.bc'
source_filename = "../drivers/rtc/rtc-fsl-ftm-alarm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ftm_rtc = type { ptr, ptr, i8, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_fsl_ftm_alarm__227_335_ftm_alarm_init6 = internal global ptr @ftm_alarm_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description228 = internal constant [67 x i8] c"rtc_fsl_ftm_alarm.description=NXP/Freescale FlexTimer alarm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [53 x i8] c"rtc_fsl_ftm_alarm.author=Biwen Li <biwen.li@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [53 x i8] c"rtc_fsl_ftm_alarm.file=drivers/rtc/rtc-fsl-ftm-alarm\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [30 x i8] c"rtc_fsl_ftm_alarm.license=GPL\00", section ".modinfo", align 1
@ftm_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftm_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftm_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ftm-alarm\00", [22 x i8] zeroinitializer }, align 32
@ftm_rtc_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls208xa-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-ftm-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot alloc memory for rtc\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ftm_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/rtc/rtc-fsl-ftm-alarm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry_ptr = internal global ptr @ftm_rtc_probe._entry, section ".printk_index", align 4
@ftm_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot ioremap resource for rtc\0A\00", [63 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry_ptr.8 = internal global ptr @ftm_rtc_probe._entry.6, section ".printk_index", align 4
@ftm_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry_ptr.11 = internal global ptr @ftm_rtc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@ftm_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ftm_rtc_read_time, ptr null, ptr @ftm_rtc_read_alarm, ptr @ftm_rtc_set_alarm, ptr null, ptr @ftm_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable irq wake\0A\00", [37 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry_ptr.15 = internal global ptr @ftm_rtc_probe._entry.13, section ".printk_index", align 4
@ftm_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't register rtc device\0A\00", [37 x i8] zeroinitializer }, align 32
@ftm_rtc_probe._entry_ptr.18 = internal global ptr @ftm_rtc_probe._entry.16, section ".printk_index", align 4
@ftm_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Out of alarm range {0~262} seconds.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ftm_rtc_set_alarm\00", [46 x i8] zeroinitializer }, align 32
@ftm_rtc_set_alarm._entry_ptr = internal global ptr @ftm_rtc_set_alarm._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"ftm_rtc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 321, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 324, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"ftm_rtc_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 302, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 255, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 267, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 278, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 283, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"ftm_rtc_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 240, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 291, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 295, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [35 x i8] c"../drivers/rtc/rtc-fsl-ftm-alarm.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 219, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__initcall__kmod_rtc_fsl_ftm_alarm__227_335_ftm_alarm_init6, ptr @ftm_rtc_probe._entry, ptr @ftm_rtc_probe._entry.13, ptr @ftm_rtc_probe._entry.16, ptr @ftm_rtc_probe._entry.6, ptr @ftm_rtc_probe._entry.9, ptr @ftm_rtc_probe._entry_ptr, ptr @ftm_rtc_probe._entry_ptr.11, ptr @ftm_rtc_probe._entry_ptr.15, ptr @ftm_rtc_probe._entry_ptr.18, ptr @ftm_rtc_probe._entry_ptr.8, ptr @ftm_rtc_set_alarm._entry, ptr @ftm_rtc_set_alarm._entry_ptr, ptr @ftm_rtc_driver, ptr @.str, ptr @ftm_rtc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @ftm_rtc_ops, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_alarm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftm_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.ftm_rtc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %base, align 4
  %cmp.i96 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end26.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end26.dev_name.exit_crit_edge ]
  %call.i97 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @ftm_rtc_alarm_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp31 = icmp slt i32 %call.i97, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end37:                                         ; preds = %dev_name.exit
  %call.i98 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  %big_endian = getelementptr inbounds %struct.ftm_rtc, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %call.i98 to i8
  %11 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %big_endian, align 4
  %alarm_freq = getelementptr inbounds %struct.ftm_rtc, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %alarm_freq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 250, ptr %alarm_freq, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ftm_rtc_ops, ptr %ops, align 8
  %call42 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call44 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end37.if.end51_crit_edge, label %do.end49

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end37.if.end51_crit_edge
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call53 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %do.end58

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.end51.cleanup_crit_edge, %do.end35, %if.end23.cleanup_crit_edge, %do.end19, %if.then9, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %2, %if.then9 ], [ %6, %do.end19 ], [ %call.i97, %do.end35 ], [ %call53, %do.end58 ], [ %call24, %if.end23.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_rtc_alarm_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  %big_endian.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %dev, i32 0, i32 2
  %base1.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %dev, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %entry
  %timeout.0.i = phi i32 [ 100, %entry ], [ %dec.i, %while.cond.i.backedge ]
  %2 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i

if.else.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i

rtc_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %6, %if.then.i.i ], [ %7, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool1.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %ftm_irq_acknowledge.exit, label %while.body.i

while.body.i:                                     ; preds = %rtc_readl.exit.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %8 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i7.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6
  br i1 %tobool.not.i7.i, label %if.else.i10.i, label %if.then.i9.i

if.then.i9.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit12.i

if.else.i10.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit12.i

rtc_readl.exit12.i:                               ; preds = %if.else.i10.i, %if.then.i9.i
  %retval.0.i11.i = phi i32 [ %12, %if.then.i9.i ], [ %13, %if.else.i10.i ]
  %and3.i = and i32 %retval.0.i11.i, -129
  %14 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i14.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i14.i, label %if.else.i16.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %rtc_readl.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and3.i) #6, !srcloc !62
  br label %while.cond.i.backedge

if.else.i16.i:                                    ; preds = %rtc_readl.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #6, !srcloc !62
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.else.i16.i, %do.body.i.i
  br label %while.cond.i

ftm_irq_acknowledge.exit:                         ; preds = %rtc_readl.exit.i
  %21 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i5 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base1.i.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6
  br i1 %tobool.not.i.i5, label %if.else.i.i8, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %ftm_irq_acknowledge.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i11

if.else.i.i8:                                     ; preds = %ftm_irq_acknowledge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i11

rtc_readl.exit.i11:                               ; preds = %if.else.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %25, %if.then.i.i7 ], [ %26, %if.else.i.i8 ]
  %and.i10 = and i32 %retval.0.i.i9, -65
  %27 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i4.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i4.i, label %if.else.i6.i, label %do.body.i.i12

do.body.i.i12:                                    ; preds = %rtc_readl.exit.i11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %and.i10) #6, !srcloc !62
  br label %ftm_irq_disable.exit

if.else.i6.i:                                     ; preds = %rtc_readl.exit.i11
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %33) #6, !srcloc !62
  br label %ftm_irq_disable.exit

ftm_irq_disable.exit:                             ; preds = %if.else.i6.i, %do.body.i.i12
  tail call fastcc void @ftm_clean_alarm(ptr noundef %dev)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftm_clean_alarm(ptr nocapture noundef readonly %rtc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %rtc, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  %base1.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %rtc, i32 0, i32 1
  %2 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i

rtc_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %4, %if.then.i.i ], [ %5, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -32
  %6 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i4.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i4.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and.i) #6, !srcloc !62
  br label %ftm_counter_disable.exit

if.else.i6.i:                                     ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #6, !srcloc !62
  br label %ftm_counter_disable.exit

ftm_counter_disable.exit:                         ; preds = %if.else.i6.i, %do.body.i.i
  %13 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %ftm_counter_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !62
  br label %rtc_writel.exit

if.else.i:                                        ; preds = %ftm_counter_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base1.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !62
  br label %rtc_writel.exit

rtc_writel.exit:                                  ; preds = %if.else.i, %do.body.i
  %19 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i5 = icmp eq i8 %20, 0
  br i1 %tobool.not.i5, label %if.else.i11, label %do.body.i8

do.body.i8:                                       ; preds = %rtc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -1) #6, !srcloc !62
  br label %rtc_writel.exit12

if.else.i11:                                      ; preds = %rtc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base1.i.i, align 4
  %add.ptr2.i10 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 -1) #6, !srcloc !62
  br label %rtc_writel.exit12

rtc_writel.exit12:                                ; preds = %if.else.i11, %do.body.i8
  %25 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i14 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i14, label %if.else.i.i17, label %do.body.i.i15

do.body.i.i15:                                    ; preds = %rtc_writel.exit12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !62
  br label %ftm_reset_counter.exit

if.else.i.i17:                                    ; preds = %rtc_writel.exit12
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base1.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #6, !srcloc !62
  br label %ftm_reset_counter.exit

ftm_reset_counter.exit:                           ; preds = %if.else.i.i17, %do.body.i.i15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_rtc_read_time(ptr nocapture noundef readnone %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #6
  tail call void @rtc_time64_to_tm(i64 noundef %call, ptr noundef %tm) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ftm_rtc_read_alarm(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %alm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  tail call fastcc void @ftm_clean_alarm(ptr noundef %1)
  %call2 = tail call i64 @ktime_get_real_seconds() #6
  %sub = sub i64 %call1, %call2
  %alarm_freq = getelementptr inbounds %struct.ftm_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %alarm_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_freq, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %mul)
  %cmp = icmp ugt i64 %mul, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %big_endian.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %base1.i.i = getelementptr inbounds %struct.ftm_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base1.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i

rtc_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %8, %if.then.i.i ], [ %9, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -65
  %10 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i4.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i4.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %and.i) #6, !srcloc !62
  br label %ftm_irq_disable.exit

if.else.i6.i:                                     ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #6, !srcloc !62
  br label %ftm_irq_disable.exit

ftm_irq_disable.exit:                             ; preds = %if.else.i6.i, %do.body.i.i
  %17 = trunc i64 %mul to i32
  %conv6 = add nsw i32 %17, -1
  %18 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %ftm_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv6) #6, !srcloc !62
  br label %rtc_writel.exit

if.else.i:                                        ; preds = %ftm_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base1.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %24) #6, !srcloc !62
  br label %rtc_writel.exit

rtc_writel.exit:                                  ; preds = %if.else.i, %do.body.i
  %25 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i16 = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base1.i.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6
  br i1 %tobool.not.i.i16, label %if.else.i.i19, label %if.then.i.i18

if.then.i.i18:                                    ; preds = %rtc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i22

if.else.i.i19:                                    ; preds = %rtc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i22

rtc_readl.exit.i22:                               ; preds = %if.else.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %29, %if.then.i.i18 ], [ %30, %if.else.i.i19 ]
  %and.i21 = and i32 %retval.0.i.i20, -32
  %or.i = or i32 %and.i21, 23
  %31 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i5.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i5.i, label %if.else.i7.i, label %do.body.i.i23

do.body.i.i23:                                    ; preds = %rtc_readl.exit.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %or.i) #6, !srcloc !62
  br label %ftm_counter_enable.exit

if.else.i7.i:                                     ; preds = %rtc_readl.exit.i22
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %37) #6, !srcloc !62
  br label %ftm_counter_enable.exit

ftm_counter_enable.exit:                          ; preds = %if.else.i7.i, %do.body.i.i23
  %38 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i25 = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base1.i.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6
  br i1 %tobool.not.i.i25, label %if.else.i.i28, label %if.then.i.i27

if.then.i.i27:                                    ; preds = %ftm_counter_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i32

if.else.i.i28:                                    ; preds = %ftm_counter_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i32

rtc_readl.exit.i32:                               ; preds = %if.else.i.i28, %if.then.i.i27
  %retval.0.i.i29 = phi i32 [ %42, %if.then.i.i27 ], [ %43, %if.else.i.i28 ]
  %or.i30 = or i32 %retval.0.i.i29, 64
  %44 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %big_endian.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i4.i31 = icmp eq i8 %45, 0
  br i1 %tobool.not.i4.i31, label %if.else.i6.i34, label %do.body.i.i33

do.body.i.i33:                                    ; preds = %rtc_readl.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %or.i30) #6, !srcloc !62
  br label %cleanup

if.else.i6.i34:                                   ; preds = %rtc_readl.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %50) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %if.else.i6.i34, %do.body.i.i33, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ 0, %do.body.i.i33 ], [ 0, %if.else.i6.i34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %big_endian.i.i2 = getelementptr inbounds %struct.ftm_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %big_endian.i.i2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i.i2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i3 = icmp eq i8 %3, 0
  %base1.i.i4 = getelementptr inbounds %struct.ftm_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i.i4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i

rtc_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %6, %if.then.i.i ], [ %7, %if.else.i.i ]
  %or.i = or i32 %retval.0.i.i, 64
  %8 = ptrtoint ptr %big_endian.i.i2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i.i2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i4.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i4.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i.i4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or.i) #6, !srcloc !62
  br label %if.end

if.else.i6.i:                                     ; preds = %rtc_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %base1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1.i.i4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #6, !srcloc !62
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.else.i.i6, label %if.then.i.i5

if.then.i.i5:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %rtc_readl.exit.i9

if.else.i.i6:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  br label %rtc_readl.exit.i9

rtc_readl.exit.i9:                                ; preds = %if.else.i.i6, %if.then.i.i5
  %retval.0.i.i7 = phi i32 [ %6, %if.then.i.i5 ], [ %15, %if.else.i.i6 ]
  %and.i = and i32 %retval.0.i.i7, -65
  %16 = ptrtoint ptr %big_endian.i.i2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i.i2, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i4.i8 = icmp eq i8 %17, 0
  br i1 %tobool.not.i4.i8, label %if.else.i6.i11, label %do.body.i.i10

do.body.i.i10:                                    ; preds = %rtc_readl.exit.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base1.i.i4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %and.i) #6, !srcloc !62
  br label %if.end

if.else.i6.i11:                                   ; preds = %rtc_readl.exit.i9
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %base1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base1.i.i4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %22) #6, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.else.i6.i11, %do.body.i.i10, %if.else.i6.i, %do.body.i.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_rtc_fsl_ftm_alarm__227_335_ftm_alarm_init6, !1, !"__initcall__kmod_rtc_fsl_ftm_alarm__227_335_ftm_alarm_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 335, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 337, i32 1}
!4 = !{ptr @__UNIQUE_ID_author229, !5, !"__UNIQUE_ID_author229", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 338, i32 1}
!6 = !{ptr @__UNIQUE_ID_file230, !7, !"__UNIQUE_ID_file230", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 339, i32 1}
!8 = !{ptr @__UNIQUE_ID_license231, !7, !"__UNIQUE_ID_license231", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 324, i32 11}
!11 = !{ptr @ftm_rtc_driver, !12, !"ftm_rtc_driver", i1 false, i1 false}
!12 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 321, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 255, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ftm_rtc_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ftm_rtc_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 267, i32 3}
!23 = !{ptr @ftm_rtc_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ftm_rtc_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 278, i32 3}
!27 = !{ptr @ftm_rtc_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ftm_rtc_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 283, i32 41}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 291, i32 3}
!33 = !{ptr @ftm_rtc_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ftm_rtc_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 295, i32 3}
!37 = !{ptr @ftm_rtc_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ftm_rtc_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ftm_rtc_ops, !40, !"ftm_rtc_ops", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 240, i32 35}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 219, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ftm_rtc_set_alarm._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ftm_rtc_set_alarm._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ftm_rtc_match, !47, !"ftm_rtc_match", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-fsl-ftm-alarm.c", i32 302, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i8 0, i8 2}
!59 = !{i64 2154462431}
!60 = !{i64 2152405933}
!61 = !{i64 2154462848}
!62 = !{i64 4865166}
!63 = !{i64 2152407288}
