; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-s3c.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s3c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_rtc_data = type { i8, ptr, ptr, ptr }
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
%struct.s3c_rtc = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, %struct.spinlock, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_s3c__236_615_s3c_rtc_driver_init6 = internal global ptr @s3c_rtc_driver_init, section ".initcall6.init", align 4
@s3c_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c_rtc_probe, ptr @s3c_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c_rtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c_rtc_driver_exit = internal global ptr @s3c_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [43 x i8] c"rtc_s3c.description=Samsung S3C RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [44 x i8] c"rtc_s3c.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [33 x i8] c"rtc_s3c.file=drivers/rtc/rtc-s3c\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"rtc_s3c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [35 x i8] c"rtc_s3c.alias=platform:s3c2410-rtc\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c-rtc\00", [24 x i8] zeroinitializer }, align 32
@s3c_rtc_dt_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2416_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2443_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_rtc_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@s3c_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed getting s3c_rtc_data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/rtc/rtc-s3c.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry_ptr = internal global ptr @s3c_rtc_probe._entry, section ".printk_index", align 4
@s3c_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&info->alarm_lock\00", [46 x i8] zeroinitializer }, align 32
@s3c_rtc_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_s3c\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c2410_rtc: alarm irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find rtc clock\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry_ptr.12 = internal global ptr @s3c_rtc_probe._entry.10, section ".printk_index", align 4
@s3c_rtc_probe.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"probe deferred due to missing rtc clk\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_src\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to find rtc source clock\0A\00", [63 x i8] zeroinitializer }, align 32
@s3c_rtc_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c2410_rtc: RTCCON=%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c_rtcops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @s3c_rtc_gettime, ptr @s3c_rtc_settime, ptr @s3c_rtc_getalarm, ptr @s3c_rtc_setalarm, ptr null, ptr @s3c_rtc_setaie, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c2410-rtc alarm\00", [46 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ%d error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@s3c_rtc_probe._entry_ptr.20 = internal global ptr @s3c_rtc_probe._entry.18, section ".printk_index", align 4
@s3c_rtc_gettime.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_rtc_gettime\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read time %ptR\0A\00", [16 x i8] zeroinitializer }, align 32
@s3c_rtc_settime.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_rtc_settime\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set time %ptR\0A\00", [17 x i8] zeroinitializer }, align 32
@s3c_rtc_getalarm.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_rtc_getalarm\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read alarm %d, %ptR\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c_rtc_setalarm.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_rtc_setalarm\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c_rtc_setalarm: %d, %ptR\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c_rtc_setalarm.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting S3C2410_RTCALM to %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_rtc_setaie.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c_rtc_setaie\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: aie=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@s3c2410_rtc_data = internal constant { %struct.s3c_rtc_data, [16 x i8] } { %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, [16 x i8] zeroinitializer }, align 32
@s3c2416_rtc_data = internal constant { %struct.s3c_rtc_data, [16 x i8] } { %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, [16 x i8] zeroinitializer }, align 32
@s3c2443_rtc_data = internal constant { %struct.s3c_rtc_data, [16 x i8] } { %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, [16 x i8] zeroinitializer }, align 32
@s3c6410_rtc_data = internal constant { %struct.s3c_rtc_data, [16 x i8] } { %struct.s3c_rtc_data { i8 1, ptr @s3c6410_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c6410_rtc_disable }, [16 x i8] zeroinitializer }, align 32
@s3c24xx_rtc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 342, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtc disabled, re-enabling\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c24xx_rtc_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_rtc_enable._entry_ptr = internal global ptr @s3c24xx_rtc_enable._entry, section ".printk_index", align 4
@s3c24xx_rtc_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.3, i32 349, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"removing RTCCON_CNTSEL\0A\00", [40 x i8] zeroinitializer }, align 32
@s3c24xx_rtc_enable._entry_ptr.37 = internal global ptr @s3c24xx_rtc_enable._entry.35, section ".printk_index", align 4
@s3c24xx_rtc_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.3, i32 357, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"removing RTCCON_CLKRST\0A\00", [40 x i8] zeroinitializer }, align 32
@s3c24xx_rtc_enable._entry_ptr.40 = internal global ptr @s3c24xx_rtc_enable._entry.38, section ".printk_index", align 4
@s3c_rtc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable_irq_wake failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_rtc_suspend\00", [16 x i8] zeroinitializer }, align 32
@s3c_rtc_suspend._entry_ptr = internal global ptr @s3c_rtc_suspend._entry, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"s3c_rtc_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 606, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 610, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"s3c_rtc_dt_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 585, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"s3c_rtc_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 547, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 413, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 416, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 424, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 431, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 435, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 437, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 445, i32 48 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 448, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 464, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"s3c_rtcops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 327, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 484, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 486, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 204, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 213, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 249, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 282, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 316, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 102, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"s3c2410_rtc_data\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 560, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"s3c2416_rtc_data\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 566, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"s3c2443_rtc_data\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 572, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"s3c6410_rtc_data\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 578, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 342, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 349, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 357, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [25 x i8] c"../drivers/rtc/rtc-s3c.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 524, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_s3c_rtc_driver_exit, ptr @__initcall__kmod_rtc_s3c__236_615_s3c_rtc_driver_init6, ptr @s3c24xx_rtc_enable._entry, ptr @s3c24xx_rtc_enable._entry.35, ptr @s3c24xx_rtc_enable._entry.38, ptr @s3c24xx_rtc_enable._entry_ptr, ptr @s3c24xx_rtc_enable._entry_ptr.37, ptr @s3c24xx_rtc_enable._entry_ptr.40, ptr @s3c_rtc_driver_exit, ptr @s3c_rtc_probe._entry, ptr @s3c_rtc_probe._entry.10, ptr @s3c_rtc_probe._entry.18, ptr @s3c_rtc_probe._entry_ptr, ptr @s3c_rtc_probe._entry_ptr.12, ptr @s3c_rtc_probe._entry_ptr.20, ptr @s3c_rtc_suspend._entry, ptr @s3c_rtc_suspend._entry_ptr, ptr @s3c_rtc_driver, ptr @.str, ptr @s3c_rtc_dt_match, ptr @s3c_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s3c_rtc_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @s3c_rtcops, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @s3c2410_rtc_data, ptr @s3c2416_rtc_data, ptr @s3c2443_rtc_data, ptr @s3c6410_rtc_data, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_dt_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtcops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_rtc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2416_rtc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2443_rtc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6410_rtc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_rtc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_rtc_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_rtc_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %data = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %data, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %do.body10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %alarm_lock = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %alarm_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @s3c_rtc_probe.__key, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq_alarm = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call14, ptr %irq_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.body10.cleanup_crit_edge, label %do.body19

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_probe, %do.end30)) #7
          to label %if.then25 [label %do.end30], !srcloc !118

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_alarm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %5) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body19
  %call31 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call31, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %do.end30
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  %rtc_clk = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call39, ptr %rtc_clk, align 4
  %cmp.i253 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then42, label %if.end71

if.then42:                                        ; preds = %if.end37
  %cmp45.not = icmp eq ptr %call39, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.not, label %do.body51, label %do.end49

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.body51:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_probe, %cleanup)) #7
          to label %if.then65 [label %cleanup], !srcloc !118

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_probe.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end37
  %call.i254 = tail call i32 @clk_prepare(ptr noundef %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool.not.i = icmp eq i32 %call.i254, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end71
  %call1.i = tail call i32 @clk_enable(ptr noundef %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end76, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call39) #7
  br label %cleanup

if.end76:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool78.not = icmp eq i8 %13, 0
  br i1 %tobool78.not, label %if.end76.if.end95_crit_edge, label %if.then79

if.end76.if.end95_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then79:                                        ; preds = %if.end76
  %call81 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %rtc_src_clk = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %rtc_src_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call81, ptr %rtc_src_clk, align 4
  %cmp.i256 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call81 to i32
  %call88 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull @.str.15) #7
  br label %err_src_clk

if.end89:                                         ; preds = %if.then79
  %call91 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.if.end95_crit_edge, label %if.end89.err_src_clk_crit_edge

if.end89.err_src_clk_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_src_clk

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end95:                                         ; preds = %if.end89.if.end95_crit_edge, %if.end76.if.end95_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %disable = getelementptr inbounds %struct.s3c_rtc_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disable, align 4
  %tobool97.not = icmp eq ptr %19, null
  br i1 %tobool97.not, label %if.end95.if.end101_crit_edge, label %if.then98

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef nonnull %call.i) #7
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end95.if.end101_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %enable = getelementptr inbounds %struct.s3c_rtc_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable, align 4
  %tobool103.not = icmp eq ptr %23, null
  br i1 %tobool103.not, label %if.end101.do.body108_crit_edge, label %if.then104

if.end101.do.body108_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef nonnull %call.i) #7
  br label %do.body108

do.body108:                                       ; preds = %if.then104, %if.end101.do.body108_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_probe, %do.end130)) #7
          to label %if.then122 [label %do.end130], !srcloc !118

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 64
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !120
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %conv = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv) #7
  br label %do.end130

do.end130:                                        ; preds = %if.then122, %do.body108
  %call132 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %call134 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  %rtc = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call134, ptr %rtc, align 4
  %cmp.i257 = icmp ugt ptr %call134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then137, label %if.end140

if.then137:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call134 to i32
  br label %err_nortc

if.end140:                                        ; preds = %do.end130
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call134, i32 0, i32 3
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @s3c_rtcops, ptr %ops, align 8
  %31 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 946684800, ptr %range_min, align 8
  %34 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 4102444799, ptr %range_max, align 8
  %36 = load ptr, ptr %rtc, align 4
  %call145 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end140.err_nortc_crit_edge

if.end140.err_nortc_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_nortc

if.end148:                                        ; preds = %if.end140
  %37 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_alarm, align 4
  %call.i258 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @s3c_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool152.not = icmp eq i32 %call.i258, 0
  br i1 %tobool152.not, label %if.end159, label %do.end156

do.end156:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_alarm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %40, i32 noundef %call.i258) #10
  br label %err_nortc

if.end159:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_rtc_disable_clk(ptr noundef nonnull %call.i)
  br label %cleanup

err_nortc:                                        ; preds = %do.end156, %if.end140.err_nortc_crit_edge, %if.then137
  %ret.0 = phi i32 [ %29, %if.then137 ], [ %call145, %if.end140.err_nortc_crit_edge ], [ %call.i258, %do.end156 ]
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %disable161 = getelementptr inbounds %struct.s3c_rtc_data, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %disable161 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disable161, align 4
  %tobool162.not = icmp eq ptr %44, null
  br i1 %tobool162.not, label %err_nortc.if.end166_crit_edge, label %if.then163

err_nortc.if.end166_crit_edge:                    ; preds = %err_nortc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then163:                                       ; preds = %err_nortc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %44(ptr noundef nonnull %call.i) #7
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %err_nortc.if.end166_crit_edge
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool169.not = icmp eq i8 %48, 0
  br i1 %tobool169.not, label %if.end166.err_src_clk_crit_edge, label %if.then170

if.end166.err_src_clk_crit_edge:                  ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_src_clk

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk171 = getelementptr inbounds %struct.s3c_rtc, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %rtc_src_clk171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtc_src_clk171, align 4
  tail call void @clk_disable(ptr noundef %50) #7
  tail call void @clk_unprepare(ptr noundef %50) #7
  br label %err_src_clk

err_src_clk:                                      ; preds = %if.then170, %if.end166.err_src_clk_crit_edge, %if.end89.err_src_clk_crit_edge, %if.then84
  %ret.1 = phi i32 [ %call88, %if.then84 ], [ %call91, %if.end89.err_src_clk_crit_edge ], [ %ret.0, %if.then170 ], [ %ret.0, %if.end166.err_src_clk_crit_edge ]
  %51 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_disable(ptr noundef %52) #7
  tail call void @clk_unprepare(ptr noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %err_src_clk, %if.end159, %if.then3.i, %if.end71.cleanup_crit_edge, %if.then65, %do.body51, %do.end49, %if.then34, %do.body10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then34 ], [ %ret.1, %err_src_clk ], [ 0, %if.end159 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %do.body10.cleanup_crit_edge ], [ -517, %if.then65 ], [ %9, %do.end49 ], [ -517, %do.body51 ], [ %call1.i, %if.then3.i ], [ %call.i254, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @s3c_rtc_setaie(ptr noundef %3, i32 noundef 0)
  %data = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rtc_src_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_src_clk, align 4
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rtc_clk = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_unprepare(ptr noundef %11) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_alarmirq(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.s3c_rtc, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq_handler = getelementptr inbounds %struct.s3c_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_handler, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %id, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_rtc_disable_clk(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %rtc_src_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_src_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rtc_clk = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_gettime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_clk.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_clk.i.i, align 4
  %call.i.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.s3c_rtc_enable_clk.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.s3c_rtc_enable_clk.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_enable_clk.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %rtc_src_clk.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rtc_src_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_src_clk.i.i, align 4
  %call3.i.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.s3c_rtc_enable_clk.exit.i_crit_edge, label %if.then5.i.i

if.then2.i.i.s3c_rtc_enable_clk.exit.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_enable_clk.exit.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  br label %cleanup

s3c_rtc_enable_clk.exit.i:                        ; preds = %if.then2.i.i.s3c_rtc_enable_clk.exit.i_crit_edge, %if.end.i.i.s3c_rtc_enable_clk.exit.i_crit_edge
  %base.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 2
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.peel.i = getelementptr i8, ptr %13, i32 116
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %conv.peel.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.peel.i, ptr %tm_min.i, align 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr6.peel.i = getelementptr i8, ptr %17, i32 120
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv10.peel.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10.peel.i, ptr %tm_hour.i, align 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr14.peel.i = getelementptr i8, ptr %21, i32 124
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %conv18.peel.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv18.peel.i, ptr %tm_mday.i, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr22.peel.i = getelementptr i8, ptr %25, i32 132
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %conv26.peel.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv26.peel.i, ptr %tm_mon.i, align 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr30.peel.i = getelementptr i8, ptr %29, i32 136
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %conv34.peel.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv34.peel.i, ptr %tm_year.i, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr38.peel.i = getelementptr i8, ptr %33, i32 112
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38.peel.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %conv42.peel.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv42.peel.i, ptr %tm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.peel.not.i = icmp eq i8 %34, 0
  br i1 %cmp.peel.not.i, label %if.end47.loopexit.i, label %s3c_rtc_enable_clk.exit.i.if.end47.i_crit_edge

s3c_rtc_enable_clk.exit.i.if.end47.i_crit_edge:   ; preds = %s3c_rtc_enable_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.end47.loopexit.i:                              ; preds = %s3c_rtc_enable_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 116
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %conv.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %tm_min.i, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %41, i32 120
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv10.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv10.i, ptr %tm_hour.i, align 4
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %45, i32 124
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %conv18.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv18.i, ptr %tm_mday.i, align 4
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %49, i32 132
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %conv26.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv26.i, ptr %tm_mon.i, align 4
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %53, i32 136
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %conv34.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv34.i, ptr %tm_year.i, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %57, i32 112
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %conv42.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv42.i, ptr %tm, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.loopexit.i, %s3c_rtc_enable_clk.exit.i.if.end47.i_crit_edge
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i182.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i182.i, label %if.end47.i.s3c_rtc_disable_clk.exit.i_crit_edge, label %if.then.i.i

if.end47.i.s3c_rtc_disable_clk.exit.i_crit_edge:  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_disable_clk.exit.i

if.then.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i183.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %rtc_src_clk.i183.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rtc_src_clk.i183.i, align 4
  tail call void @clk_disable(ptr noundef %65) #7
  br label %s3c_rtc_disable_clk.exit.i

s3c_rtc_disable_clk.exit.i:                       ; preds = %if.then.i.i, %if.end47.i.s3c_rtc_disable_clk.exit.i_crit_edge
  %66 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rtc_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %67) #7
  %68 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm, align 4
  %conv49.i = trunc i32 %69 to i8
  %call54.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv49.i) #11
  %70 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call54.i, ptr %tm, align 4
  %71 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tm_min.i, align 4
  %conv57.i = trunc i32 %72 to i8
  %call68.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv57.i) #11
  %73 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call68.i, ptr %tm_min.i, align 4
  %74 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm_hour.i, align 4
  %conv73.i = trunc i32 %75 to i8
  %call84.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv73.i) #11
  %76 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call84.i, ptr %tm_hour.i, align 4
  %77 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tm_mday.i, align 4
  %conv89.i = trunc i32 %78 to i8
  %call100.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv89.i) #11
  %79 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call100.i, ptr %tm_mday.i, align 4
  %80 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tm_mon.i, align 4
  %conv105.i = trunc i32 %81 to i8
  %call116.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv105.i) #11
  %82 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call116.i, ptr %tm_mon.i, align 4
  %83 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tm_year.i, align 4
  %conv121.i = trunc i32 %84 to i8
  %call132.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv121.i) #11
  %add = add i32 %call132.i, 100
  %85 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add, ptr %tm_year.i, align 4
  %sub = add i32 %call116.i, -1
  %86 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub, ptr %tm_mon.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_gettime.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_gettime, %cleanup)) #7
          to label %if.then7 [label %cleanup], !srcloc !118

if.then7:                                         ; preds = %s3c_rtc_disable_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_gettime.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %tm) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %s3c_rtc_disable_clk.exit.i, %if.then5.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call3.i.i, %if.then5.i.i ], [ %call.i.i, %entry.cleanup_crit_edge ], [ 0, %s3c_rtc_disable_clk.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_settime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %rtc_tm.sroa.0.0.copyload = load i32, ptr %tm, align 4
  %rtc_tm.sroa.5.0.tm.sroa_idx = getelementptr inbounds i8, ptr %tm, i32 4
  %3 = ptrtoint ptr %rtc_tm.sroa.5.0.tm.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %rtc_tm.sroa.5.0.copyload = load i32, ptr %rtc_tm.sroa.5.0.tm.sroa_idx, align 4
  %rtc_tm.sroa.6.0.tm.sroa_idx = getelementptr inbounds i8, ptr %tm, i32 8
  %4 = ptrtoint ptr %rtc_tm.sroa.6.0.tm.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %rtc_tm.sroa.6.0.copyload = load i32, ptr %rtc_tm.sroa.6.0.tm.sroa_idx, align 4
  %rtc_tm.sroa.7.0.tm.sroa_idx = getelementptr inbounds i8, ptr %tm, i32 12
  %5 = ptrtoint ptr %rtc_tm.sroa.7.0.tm.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %rtc_tm.sroa.7.0.copyload = load i32, ptr %rtc_tm.sroa.7.0.tm.sroa_idx, align 4
  %rtc_tm.sroa.8.0.tm.sroa_idx = getelementptr inbounds i8, ptr %tm, i32 16
  %6 = ptrtoint ptr %rtc_tm.sroa.8.0.tm.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %rtc_tm.sroa.8.0.copyload = load i32, ptr %rtc_tm.sroa.8.0.tm.sroa_idx, align 4
  %rtc_tm.sroa.11.0.tm.sroa_idx = getelementptr inbounds i8, ptr %tm, i32 20
  %7 = ptrtoint ptr %rtc_tm.sroa.11.0.tm.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %rtc_tm.sroa.11.0.copyload = load i32, ptr %rtc_tm.sroa.11.0.tm.sroa_idx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_settime.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_settime, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_settime.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %tm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub = add i32 %rtc_tm.sroa.11.0.copyload, -100
  %add = add i32 %rtc_tm.sroa.8.0.copyload, 1
  %rtc_clk.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_clk.i.i, align 4
  %call.i.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.s3c_rtc_write_time.exit_crit_edge

do.end.s3c_rtc_write_time.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_write_time.exit

if.end.i.i:                                       ; preds = %do.end
  %data.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.then2.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %rtc_src_clk.i.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %rtc_src_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc_src_clk.i.i, align 4
  %call3.i.i = tail call i32 @clk_enable(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.do.body.i_crit_edge, label %if.then2.i.i.cleanup.sink.split.i_crit_edge

if.then2.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then2.i.i.do.body.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %call4.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rtc_tm.sroa.0.0.copyload) #11
  %base.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %call4.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %call20.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rtc_tm.sroa.5.0.copyload) #11
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %19, i32 116
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i, i8 %call20.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %call40.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rtc_tm.sroa.6.0.copyload) #11
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %21, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46.i, i8 %call40.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %call60.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rtc_tm.sroa.7.0.copyload) #11
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %23, i32 124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66.i, i8 %call60.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %call80.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add) #11
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr86.i = getelementptr i8, ptr %25, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86.i, i8 %call80.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %call100.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %27, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr106.i, i8 %call100.i) #7, !srcloc !130
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i139.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i139.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i140.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %rtc_src_clk.i140.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtc_src_clk.i140.i, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i, %do.body.i.cleanup.sink.split.i_crit_edge, %if.then2.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call3.i.i, %if.then2.i.i.cleanup.sink.split.i_crit_edge ], [ 0, %do.body.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.then.i.i ]
  %34 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %s3c_rtc_write_time.exit

s3c_rtc_write_time.exit:                          ; preds = %cleanup.sink.split.i, %do.end.s3c_rtc_write_time.exit_crit_edge
  %retval.0.i8 = phi i32 [ %call.i.i, %do.end.s3c_rtc_write_time.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_getalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %rtc_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %rtc_src_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rtc_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_src_clk.i, align 4
  %call3.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end_crit_edge, label %if.then5.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  br label %cleanup

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 84
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %time, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %17, i32 88
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %conv11 = zext i8 %18 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %tm_min, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %21, i32 92
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %conv19 = zext i8 %22 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv19, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %25, i32 100
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv27 = zext i8 %26 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv27, ptr %tm_mon, align 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 96
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %conv35 = zext i8 %30 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv35, ptr %tm_mday, align 4
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %33, i32 104
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr39) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv43 = zext i8 %34 to i32
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv43, ptr %tm_year, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %37, i32 80
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %conv51 = zext i8 %38 to i32
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i237 = icmp eq i8 %42, 0
  br i1 %tobool.not.i237, label %if.end.s3c_rtc_disable_clk.exit_crit_edge, label %if.then.i

if.end.s3c_rtc_disable_clk.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_disable_clk.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i238 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %rtc_src_clk.i238 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc_src_clk.i238, align 4
  tail call void @clk_disable(ptr noundef %44) #7
  br label %s3c_rtc_disable_clk.exit

s3c_rtc_disable_clk.exit:                         ; preds = %if.then.i, %if.end.s3c_rtc_disable_clk.exit_crit_edge
  %45 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %46) #7
  %and = lshr i8 %38, 6
  %and.lobit = and i8 %and, 1
  %47 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %and.lobit, ptr %alrm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_getalarm.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_getalarm, %do.end)) #7
          to label %if.then60 [label %do.end], !srcloc !118

if.then60:                                        ; preds = %s3c_rtc_disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_getalarm.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv51, ptr noundef %time) #7
  br label %do.end

do.end:                                           ; preds = %if.then60, %s3c_rtc_disable_clk.exit
  %and62 = and i32 %conv51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end.if.end75_crit_edge, label %cond.end

do.end.if.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

cond.end:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %time, align 4
  %conv66 = trunc i32 %49 to i8
  %call72 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66) #11
  %50 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call72, ptr %time, align 4
  br label %if.end75

if.end75:                                         ; preds = %cond.end, %do.end.if.end75_crit_edge
  %and76 = and i32 %conv51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end95_crit_edge, label %cond.end92

if.end75.if.end95_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

cond.end92:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_min, align 4
  %conv80 = trunc i32 %52 to i8
  %call91 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv80) #11
  %53 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call91, ptr %tm_min, align 4
  br label %if.end95

if.end95:                                         ; preds = %cond.end92, %if.end75.if.end95_crit_edge
  %and96 = and i32 %conv51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end115_crit_edge, label %cond.end112

if.end95.if.end115_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

cond.end112:                                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_hour, align 4
  %conv100 = trunc i32 %55 to i8
  %call111 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv100) #11
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call111, ptr %tm_hour, align 4
  br label %if.end115

if.end115:                                        ; preds = %cond.end112, %if.end95.if.end115_crit_edge
  %and116 = and i32 %conv51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end135_crit_edge, label %cond.end132

if.end115.if.end135_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

cond.end132:                                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_mday, align 4
  %conv120 = trunc i32 %58 to i8
  %call131 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv120) #11
  %59 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call131, ptr %tm_mday, align 4
  br label %if.end135

if.end135:                                        ; preds = %cond.end132, %if.end115.if.end135_crit_edge
  %and136 = and i32 %conv51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end156_crit_edge, label %cond.end152

if.end135.if.end156_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

cond.end152:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_mon, align 4
  %conv140 = trunc i32 %61 to i8
  %call151 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv140) #11
  %sub = add i32 %call151, -1
  %62 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub, ptr %tm_mon, align 4
  br label %if.end156

if.end156:                                        ; preds = %cond.end152, %if.end135.if.end156_crit_edge
  %and157 = and i32 %conv51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.cleanup_crit_edge, label %cond.end173

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end173:                                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tm_year, align 4
  %conv161 = trunc i32 %64 to i8
  %call172 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv161) #11
  %65 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call172, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end173, %if.end156.cleanup_crit_edge, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end173 ], [ 0, %if.end156.cleanup_crit_edge ], [ %call3.i, %if.then5.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_setalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_setalarm.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_setalarm, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alrm, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_setalarm.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv, ptr noundef %time) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rtc_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %data.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8_crit_edge, label %if.then2.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2.i:                                       ; preds = %if.end.i
  %rtc_src_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rtc_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_src_clk.i, align 4
  %call3.i = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end8_crit_edge, label %if.then2.i.cleanup.sink.split_crit_edge

if.then2.i.cleanup.sink.split_crit_edge:          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then2.i.if.end8_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 80
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %15 = and i8 %14, 64
  %and = zext i8 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 0) #7, !srcloc !130
  %18 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %19)
  %20 = icmp ult i32 %19, 60
  br i1 %20, label %if.then22, label %if.end8.if.end36_crit_edge

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %time, align 4
  %call31 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #11
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %call31) #7, !srcloc !130
  br label %if.end36

if.end36:                                         ; preds = %if.then22, %if.end8.if.end36_crit_edge
  %alrm_en.0 = phi i32 [ %or, %if.then22 ], [ %and, %if.end8.if.end36_crit_edge ]
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %26)
  %27 = icmp ult i32 %26, 60
  br i1 %27, label %if.then43, label %if.end36.if.end66_crit_edge

if.end36.if.end66_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %or44 = or i32 %alrm_en.0, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min, align 4
  %call59 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #11
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %call59) #7, !srcloc !130
  br label %if.end66

if.end66:                                         ; preds = %if.then43, %if.end36.if.end66_crit_edge
  %alrm_en.1 = phi i32 [ %or44, %if.then43 ], [ %alrm_en.0, %if.end36.if.end66_crit_edge ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %34 = icmp ult i32 %33, 24
  br i1 %34, label %if.then73, label %if.end66.if.end96_crit_edge

if.end66.if.end96_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %or74 = or i32 %alrm_en.1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_hour, align 4
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #11
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr95 = getelementptr i8, ptr %38, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 %call89) #7, !srcloc !130
  br label %if.end96

if.end96:                                         ; preds = %if.then73, %if.end66.if.end96_crit_edge
  %alrm_en.2 = phi i32 [ %or74, %if.then73 ], [ %alrm_en.1, %if.end66.if.end96_crit_edge ]
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %40)
  %41 = icmp ult i32 %40, 12
  br i1 %41, label %if.then103, label %if.end96.if.end130_crit_edge

if.end96.if.end130_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %or104 = or i32 %alrm_en.2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mon, align 4
  %add109 = add i32 %43, 1
  %call123 = tail call zeroext i8 @_bin2bcd(i32 noundef %add109) #11
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr129 = getelementptr i8, ptr %45, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr129, i8 %call123) #7, !srcloc !130
  br label %if.end130

if.end130:                                        ; preds = %if.then103, %if.end96.if.end130_crit_edge
  %alrm_en.3 = phi i32 [ %or104, %if.then103 ], [ %alrm_en.2, %if.end96.if.end130_crit_edge ]
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_mday, align 4
  %48 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %48)
  %49 = icmp ult i32 %48, 31
  br i1 %49, label %if.then137, label %if.end130.do.body161_crit_edge

if.end130.do.body161_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body161

if.then137:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %or138 = or i32 %alrm_en.3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_mday, align 4
  %call153 = tail call zeroext i8 @_bin2bcd(i32 noundef %51) #11
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr159 = getelementptr i8, ptr %53, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159, i8 %call153) #7, !srcloc !130
  br label %do.body161

do.body161:                                       ; preds = %if.then137, %if.end130.do.body161_crit_edge
  %alrm_en.4 = phi i32 [ %or138, %if.then137 ], [ %alrm_en.3, %if.end130.do.body161_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_setalarm.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_setalarm, %do.body179)) #7
          to label %if.then175 [label %do.body179], !srcloc !118

if.then175:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_setalarm.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %alrm_en.4) #7
  br label %do.body179

do.body179:                                       ; preds = %if.then175, %do.body161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %conv182 = trunc i32 %alrm_en.4 to i8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr184 = getelementptr i8, ptr %55, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr184, i8 %conv182) #7, !srcloc !130
  %56 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %alrm, align 4
  %conv186 = zext i8 %57 to i32
  %call187 = tail call i32 @s3c_rtc_setaie(ptr noundef %dev, i32 noundef %conv186)
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i255 = icmp eq i8 %61, 0
  br i1 %tobool.not.i255, label %do.body179.cleanup.sink.split_crit_edge, label %if.then.i

do.body179.cleanup.sink.split_crit_edge:          ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i256 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %rtc_src_clk.i256 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rtc_src_clk.i256, align 4
  tail call void @clk_disable(ptr noundef %63) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %do.body179.cleanup.sink.split_crit_edge, %if.then2.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3.i, %if.then2.i.cleanup.sink.split_crit_edge ], [ 0, %do.body179.cleanup.sink.split_crit_edge ], [ 0, %if.then.i ]
  %64 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %65) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_setaie(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_rtc_setaie.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c_rtc_setaie, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_rtc_setaie.__UNIQUE_ID_ddebug227, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %enabled) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rtc_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %data.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %if.then2.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2.i:                                       ; preds = %if.end.i
  %rtc_src_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rtc_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_src_clk.i, align 4
  %call3.i = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end10_crit_edge, label %if.then2.i.cleanup.sink.split_crit_edge

if.then2.i.cleanup.sink.split_crit_edge:          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then2.i.if.end10_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 80
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %15 = and i8 %14, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool14 = icmp ne i32 %enabled, 0
  %masksel = select i1 %tobool14, i8 64, i8 0
  %spec.select = or i8 %15, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %spec.select) #7, !srcloc !130
  %alarm_lock = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 8
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alarm_lock) #7
  %alarm_enabled = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alarm_enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  %brmerge = or i1 %tobool14, %tobool33.not
  br i1 %brmerge, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end10
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i73 = icmp eq i8 %23, 0
  br i1 %tobool.not.i73, label %if.then36.if.end44.sink.split_crit_edge, label %if.then.i

if.then36.if.end44.sink.split_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i74 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %rtc_src_clk.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc_src_clk.i74, align 4
  tail call void @clk_disable(ptr noundef %25) #7
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.end10
  %brmerge70.demorgan = and i1 %tobool14, %tobool33.not
  br i1 %brmerge70.demorgan, label %if.then41, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.else
  %26 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc_clk.i, align 4
  %call.i78 = tail call i32 @clk_enable(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end.i82, label %if.then41.if.end44_crit_edge

if.then41.if.end44_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end.i82:                                       ; preds = %if.then41
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i81 = icmp eq i8 %31, 0
  br i1 %tobool1.not.i81, label %if.end.i82.if.end44_crit_edge, label %if.then2.i86

if.end.i82.if.end44_crit_edge:                    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then2.i86:                                     ; preds = %if.end.i82
  %rtc_src_clk.i83 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %rtc_src_clk.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtc_src_clk.i83, align 4
  %call3.i84 = tail call i32 @clk_enable(ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i84)
  %tobool4.not.i85 = icmp eq i32 %call3.i84, 0
  br i1 %tobool4.not.i85, label %if.then2.i86.if.end44_crit_edge, label %if.then2.i86.if.end44.sink.split_crit_edge

if.then2.i86.if.end44.sink.split_crit_edge:       ; preds = %if.then2.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.then2.i86.if.end44_crit_edge:                  ; preds = %if.then2.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.then2.i86.if.end44.sink.split_crit_edge, %if.then.i, %if.then36.if.end44.sink.split_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.then36.if.end44.sink.split_crit_edge ], [ 0, %if.then.i ], [ %call3.i84, %if.then2.i86.if.end44.sink.split_crit_edge ]
  %34 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.then2.i86.if.end44_crit_edge, %if.end.i82.if.end44_crit_edge, %if.then41.if.end44_crit_edge, %if.else.if.end44_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end44_crit_edge ], [ %call.i78, %if.then41.if.end44_crit_edge ], [ 0, %if.then2.i86.if.end44_crit_edge ], [ 0, %if.end.i82.if.end44_crit_edge ], [ %ret.0.ph, %if.end44.sink.split ]
  %frombool47 = zext i1 %tobool14 to i8
  %36 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool47, ptr %alarm_enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alarm_lock, i32 noundef %call28) #7
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i91 = icmp eq i8 %40, 0
  br i1 %tobool.not.i91, label %if.end44.cleanup.sink.split_crit_edge, label %if.then.i93

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i93:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i92 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %rtc_src_clk.i92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtc_src_clk.i92, align 4
  tail call void @clk_disable(ptr noundef %42) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i93, %if.end44.cleanup.sink.split_crit_edge, %if.then2.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3.i, %if.then2.i.cleanup.sink.split_crit_edge ], [ %ret.0, %if.end44.cleanup.sink.split_crit_edge ], [ %ret.0, %if.then.i93 ]
  %43 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %44) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_irq(ptr nocapture noundef readonly %info, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_enable(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !120
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.32) #10
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 64
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %9 = or i16 %8, 256
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 %9) #7, !srcloc !156
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and18 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %do.end22

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.36) #10
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %17 = and i16 %16, -1025
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 %17) #7, !srcloc !156
  br label %if.end39

if.end39:                                         ; preds = %do.end22, %if.end.if.end39_crit_edge
  %and40 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end62_crit_edge, label %do.end45

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.39) #10
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %23, i32 64
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr50) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %25 = and i16 %24, -2049
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr61, i16 %25) #7, !srcloc !156
  br label %if.end62

if.end62:                                         ; preds = %do.end45, %if.end39.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_disable(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %3 = and i16 %2, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %3) #7, !srcloc !156
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 68
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %9 = and i8 %8, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %9) #7, !srcloc !130
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c6410_rtc_irq(ptr nocapture noundef readonly %info, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %mask to i8
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c6410_rtc_disable(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3c_rtc, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %3 = and i16 %2, -258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %3) #7, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %rtc_src_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rtc_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_src_clk.i, align 4
  %call3.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end_crit_edge, label %if.then5.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  br label %cleanup

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %disable = getelementptr inbounds %struct.s3c_rtc_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i25 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i25, label %if.end6.cleanup_crit_edge, label %device_may_wakeup.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %17 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %18, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %land.lhs.true

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wake_en = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %wake_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wake_en, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  %irq_alarm = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_alarm, align 4
  %call.i26 = tail call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp = icmp eq i32 %call.i26, 0
  br i1 %cmp, label %if.then11, label %do.end

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %wake_en to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %wake_en, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %land.lhs.true.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ %call3.i, %if.then5.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %enable = getelementptr inbounds %struct.s3c_rtc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.s3c_rtc_disable_clk.exit_crit_edge, label %if.then.i

if.end.s3c_rtc_disable_clk.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_rtc_disable_clk.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rtc_src_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rtc_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_src_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  br label %s3c_rtc_disable_clk.exit

s3c_rtc_disable_clk.exit:                         ; preds = %if.then.i, %if.end.s3c_rtc_disable_clk.exit_crit_edge
  %rtc_clk.i = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i16 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i16, label %s3c_rtc_disable_clk.exit.if.end8_crit_edge, label %device_may_wakeup.exit

s3c_rtc_disable_clk.exit.if.end8_crit_edge:       ; preds = %s3c_rtc_disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

device_may_wakeup.exit:                           ; preds = %s3c_rtc_disable_clk.exit
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %15 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %16, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end8_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end8_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wake_en = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %wake_en to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wake_en, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %irq_alarm = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_alarm, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 0) #7
  %21 = ptrtoint ptr %wake_en to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %wake_en, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %device_may_wakeup.exit.if.end8_crit_edge, %s3c_rtc_disable_clk.exit.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42, !44, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_rtc_s3c__236_615_s3c_rtc_driver_init6, !1, !"__initcall__kmod_rtc_s3c__236_615_s3c_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-s3c.c", i32 615, i32 1}
!2 = !{ptr @__exitcall_s3c_rtc_driver_exit, !1, !"__exitcall_s3c_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-s3c.c", i32 617, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-s3c.c", i32 618, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-s3c.c", i32 619, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-s3c.c", i32 620, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-s3c.c", i32 610, i32 11}
!14 = !{ptr @s3c_rtc_driver, !15, !"s3c_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-s3c.c", i32 606, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-s3c.c", i32 413, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @s3c_rtc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-s3c.c", i32 416, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-s3c.c", i32 424, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug233, !28, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-s3c.c", i32 431, i32 43}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-s3c.c", i32 435, i32 4}
!35 = !{ptr @s3c_rtc_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @s3c_rtc_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-s3c.c", i32 437, i32 4}
!39 = !{ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug234, !38, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-s3c.c", i32 445, i32 48}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-s3c.c", i32 448, i32 10}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-s3c.c", i32 464, i32 2}
!46 = !{ptr @s3c_rtc_probe.__UNIQUE_ID_ddebug235, !45, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-s3c.c", i32 484, i32 14}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-s3c.c", i32 486, i32 3}
!51 = !{ptr @s3c_rtc_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s3c_rtc_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @s3c_rtcops, !54, !"s3c_rtcops", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-s3c.c", i32 327, i32 35}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-s3c.c", i32 204, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @s3c_rtc_gettime.__UNIQUE_ID_ddebug228, !56, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-s3c.c", i32 213, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @s3c_rtc_settime.__UNIQUE_ID_ddebug229, !60, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-s3c.c", i32 249, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @s3c_rtc_getalarm.__UNIQUE_ID_ddebug230, !64, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-s3c.c", i32 282, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @s3c_rtc_setalarm.__UNIQUE_ID_ddebug231, !68, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-s3c.c", i32 316, i32 2}
!73 = !{ptr @s3c_rtc_setalarm.__UNIQUE_ID_ddebug232, !72, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-s3c.c", i32 102, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @s3c_rtc_setaie.__UNIQUE_ID_ddebug227, !75, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!78 = !{ptr @s3c_rtc_dt_match, !79, !"s3c_rtc_dt_match", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-s3c.c", i32 585, i32 49}
!80 = !{ptr @s3c2410_rtc_data, !81, !"s3c2410_rtc_data", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-s3c.c", i32 560, i32 34}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-s3c.c", i32 342, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @s3c24xx_rtc_enable._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @s3c24xx_rtc_enable._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-s3c.c", i32 349, i32 3}
!90 = !{ptr @s3c24xx_rtc_enable._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @s3c24xx_rtc_enable._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-s3c.c", i32 357, i32 3}
!94 = !{ptr @s3c24xx_rtc_enable._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @s3c24xx_rtc_enable._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @s3c2416_rtc_data, !97, !"s3c2416_rtc_data", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-s3c.c", i32 566, i32 34}
!98 = !{ptr @s3c2443_rtc_data, !99, !"s3c2443_rtc_data", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-s3c.c", i32 572, i32 34}
!100 = !{ptr @s3c6410_rtc_data, !101, !"s3c6410_rtc_data", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-s3c.c", i32 578, i32 34}
!102 = !{ptr @s3c_rtc_pm_ops, !103, !"s3c_rtc_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-s3c.c", i32 547, i32 8}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-s3c.c", i32 524, i32 4}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @s3c_rtc_suspend._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @s3c_rtc_suspend._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148966317, i64 2148966322, i64 2148966335, i64 2148966379, i64 2148966413, i64 2148966434}
!119 = !{i8 0, i8 2}
!120 = !{i64 5619372}
!121 = !{i64 2154044246}
!122 = !{i64 5619990}
!123 = !{i64 2153992199}
!124 = !{i64 2153992469}
!125 = !{i64 2153992739}
!126 = !{i64 2153993009}
!127 = !{i64 2153993279}
!128 = !{i64 2153993549}
!129 = !{i64 2153995084}
!130 = !{i64 5619595}
!131 = !{i64 2153995803}
!132 = !{i64 2153996531}
!133 = !{i64 2153997263}
!134 = !{i64 2153997986}
!135 = !{i64 2153998714}
!136 = !{i64 2154003516}
!137 = !{i64 2154003786}
!138 = !{i64 2154004056}
!139 = !{i64 2154004326}
!140 = !{i64 2154004596}
!141 = !{i64 2154004866}
!142 = !{i64 2154005136}
!143 = !{i64 2154011203}
!144 = !{i64 2154011461}
!145 = !{i64 2154012064}
!146 = !{i64 2154012792}
!147 = !{i64 2154013529}
!148 = !{i64 2154014297}
!149 = !{i64 2154015050}
!150 = !{i64 2154017830}
!151 = !{i64 2153991240}
!152 = !{i64 2153991506}
!153 = !{i64 2154018423}
!154 = !{i64 2154020581}
!155 = !{i64 2154020849}
!156 = !{i64 5619172}
!157 = !{i64 2154023192}
!158 = !{i64 2154023462}
!159 = !{i64 2154025811}
!160 = !{i64 2154026081}
!161 = !{i64 2154026831}
!162 = !{i64 2154027088}
!163 = !{i64 2154027537}
!164 = !{i64 2154027794}
!165 = !{i64 2154052270}
!166 = !{i64 2154028383}
!167 = !{i64 2154028649}
