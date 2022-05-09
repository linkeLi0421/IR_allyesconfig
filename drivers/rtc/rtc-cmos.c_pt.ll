; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-cmos.c_pt.bc'
source_filename = "../drivers/rtc/rtc-cmos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmos_rtc = type { ptr, ptr, i32, ptr, i64, ptr, ptr, i8, i8, i8, i8, i8, %struct.rtc_wkalrm }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.cmos_rtc_board_info = type { ptr, ptr, i32, i32, i8, i8, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.cmos_read_alarm_callback_param = type { ptr, ptr, i8 }
%struct.cmos_set_alarm_callback_param = type { ptr, i8, i8, i8, i8, i8, ptr }

@__UNIQUE_ID_alias231 = internal constant [33 x i8] c"rtc_cmos.alias=platform:rtc_cmos\00", section ".modinfo", align 1
@__initcall__kmod_rtc_cmos__232_1541_cmos_init6 = internal global ptr @cmos_init, section ".initcall6.init", align 4
@platform_driver_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cmos_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @cmos_platform_remove, ptr @cmos_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_cmos_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmos_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cmos_exit = internal global ptr @cmos_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [31 x i8] c"rtc_cmos.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [53 x i8] c"rtc_cmos.description=Driver for PC-style 'CMOS' RTCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [35 x i8] c"rtc_cmos.file=drivers/rtc/rtc-cmos\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [21 x i8] c"rtc_cmos.license=GPL\00", section ".modinfo", align 1
@cmos_rtc = internal global { %struct.cmos_rtc, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctrl-reg\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"freq-reg\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmos_nvram\00", [21 x i8] zeroinitializer }, align 32
@__const.cmos_do_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @cmos_nvram_read, ptr @cmos_nvram_write, ptr null, i32 0, i32 1, i32 1, ptr @cmos_rtc, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_cmos\00", [23 x i8] zeroinitializer }, align 32
@cmos_do_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_cmos\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cmos_do_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/rtc/rtc-cmos.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i/o registers already in use\0A\00", [34 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 855, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"broken or not accessible\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry_ptr = internal global ptr @cmos_do_probe._entry, section ".printk_index", align 4
@rtc_lock = external dso_local global %struct.spinlock, align 4
@cmos_do_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 884, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"only 24-hr supported\0A\00", [42 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry_ptr.12 = internal global ptr @cmos_do_probe._entry.10, section ".printk_index", align 4
@cmos_do_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 901, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"hpet_register_irq_handler  failed in rtc_init().\00", [47 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry_ptr.15 = internal global ptr @cmos_do_probe._entry.13, section ".printk_index", align 4
@cmos_do_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.16, i8 0, i8 -29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ %d is already in use\0A\00", [38 x i8] zeroinitializer }, align 32
@cmos_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @cmos_read_time, ptr @cmos_set_time, ptr @cmos_read_alarm, ptr @cmos_set_alarm, ptr @cmos_procfs, ptr @cmos_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 938, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s%s, %d bytes nvram%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cmos_do_probe._entry_ptr.20 = internal global ptr @cmos_do_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no alarms\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alarms up to one year\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alarms up to one month\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alarms up to one day\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", y3k\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cmos_read_time._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cmos_read_time = private unnamed_addr constant [15 x i8] c"cmos_read_time\00", align 1
@cmos_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.cmos_read_time, ptr @.str.5, i32 236, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read current time\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cmos_read_time._entry_ptr = internal global ptr @cmos_read_time._entry, section ".printk_index", align 4
@cmos_validate_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 422, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Alarms can be up to one day in the future\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmos_validate_alarm\00", [44 x i8] zeroinitializer }, align 32
@cmos_validate_alarm._entry_ptr = internal global ptr @cmos_validate_alarm._entry, section ".printk_index", align 4
@cmos_validate_alarm._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 446, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Alarms can be up to one month in the future\0A\00", [51 x i8] zeroinitializer }, align 32
@cmos_validate_alarm._entry_ptr.35 = internal global ptr @cmos_validate_alarm._entry.33, section ".printk_index", align 4
@cmos_validate_alarm._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.5, i32 465, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Alarms can be up to one year in the future\0A\00", [52 x i8] zeroinitializer }, align 32
@cmos_validate_alarm._entry_ptr.38 = internal global ptr @cmos_validate_alarm._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"periodic_IRQ\09: %s\0Aupdate_IRQ\09: %s\0AHPET_emulated\09: %s\0ABCD\09\09: %s\0ADST_enable\09: %s\0Aperiodic_freq\09: %d\0Abatt_status\09: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"okay\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dead\00", [27 x i8] zeroinitializer }, align 32
@of_cmos_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mc146818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cmos_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cmos_suspend, ptr @cmos_resume, ptr @cmos_suspend, ptr @cmos_resume, ptr @cmos_suspend, ptr @cmos_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@cmos_suspend.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 1, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmos_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"suspend%s, ctrl %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c", alarm may wake\00", [47 x i8] zeroinitializer }, align 32
@cmos_resume.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmos_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resume, ctrl %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"platform_driver_registered\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"cmos_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1500, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"cmos_rtc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 697, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1440, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1444, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 763, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 97, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 790, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 855, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 884, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 900, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 911, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"cmos_rtc_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 623, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 931, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 236, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 421, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 445, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 464, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 599, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 607, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 607, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 614, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 614, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"of_cmos_match\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1424, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"cmos_pm_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1182, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1067, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [26 x i8] c"../drivers/rtc/rtc-cmos.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1177, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_cmos_exit, ptr @__initcall__kmod_rtc_cmos__232_1541_cmos_init6, ptr @cmos_do_probe._entry, ptr @cmos_do_probe._entry.10, ptr @cmos_do_probe._entry.13, ptr @cmos_do_probe._entry.17, ptr @cmos_do_probe._entry_ptr, ptr @cmos_do_probe._entry_ptr.12, ptr @cmos_do_probe._entry_ptr.15, ptr @cmos_do_probe._entry_ptr.20, ptr @cmos_exit, ptr @cmos_read_time._entry, ptr @cmos_read_time._entry_ptr, ptr @cmos_validate_alarm._entry, ptr @cmos_validate_alarm._entry.33, ptr @cmos_validate_alarm._entry.36, ptr @cmos_validate_alarm._entry_ptr, ptr @cmos_validate_alarm._entry_ptr.35, ptr @cmos_validate_alarm._entry_ptr.38, ptr @platform_driver_registered, ptr @cmos_platform_driver, ptr @cmos_rtc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @driver_name, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @cmos_rtc_ops, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @cmos_read_time._rs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @of_cmos_match, ptr @cmos_pm_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_driver_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_rtc to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_do_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_do_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_do_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_do_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_read_time._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_validate_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_validate_alarm._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_validate_alarm._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cmos_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @cmos_platform_driver, ptr noundef nonnull @cmos_platform_probe, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @platform_driver_registered, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 0, %if.then2 ], [ %call, %if.then.if.end3_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmos_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %.b1 = load i1, ptr @platform_driver_registered, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cmos_platform_driver) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_platform_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cmos_of_init(ptr noundef %pdev) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #7
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %0 = tail call i32 @llvm.smax.i32(i32 %call1, i32 -1)
  %call3 = tail call fastcc i32 @cmos_do_probe(ptr noundef %dev, ptr noundef %call, i32 noundef %0) #10
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmos_of_init(ptr nocapture noundef readonly %pdev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %conv) #7, !srcloc !118
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %call5 = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #7, !srcloc !118
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  %conv9 = trunc i32 %5 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %conv9) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmos_do_probe(ptr noundef %dev, ptr noundef readonly %ports, i32 noundef %rtc_irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #7
  %2 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.cmos_do_probe.nvmem_cfg, i32 88)
  %3 = load ptr, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup190_crit_edge

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup190

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %ports, null
  br i1 %tobool2.not, label %if.end.cleanup190_crit_edge, label %if.end4

if.end.cleanup190_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup190

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ports, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %ports, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call6 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef nonnull @driver_name, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmos_do_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cmos_do_probe, %cleanup190)) #7
          to label %if.then14 [label %cleanup190], !srcloc !119

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmos_do_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  br label %cleanup190

if.end16:                                         ; preds = %if.end4
  store i32 %rtc_irq, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 2), align 8
  store ptr %call6, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 3), align 4
  %end = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call6, align 4
  %add = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp = icmp ugt i32 %9, %add
  %spec.select = select i1 %cmp, i32 256, i32 128
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %if.end16.if.end67_crit_edge, label %if.then21

if.end16.if.end67_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then21:                                        ; preds = %if.end16
  %flags22 = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags22, align 4
  %address_space27 = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %address_space27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address_space27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  %address_space.1 = select i1 %tobool28.not, i32 %spec.select, i32 %15
  %rtc_day_alarm = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %rtc_day_alarm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rtc_day_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %18 = icmp sgt i8 %17, 0
  br i1 %18, label %if.then37, label %if.then21.if.end39_crit_edge

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  store i8 %17, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 9), align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then21.if.end39_crit_edge
  %rtc_mon_alarm = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %rtc_mon_alarm to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rtc_mon_alarm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %21 = icmp sgt i8 %20, 0
  br i1 %21, label %if.then47, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  store i8 %20, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 10), align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end39.if.end49_crit_edge
  %rtc_century = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %rtc_century to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rtc_century, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp sgt i8 %23, 0
  br i1 %24, label %if.then57, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  store i8 %23, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 11), align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end49.if.end59_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %tobool60.not = icmp eq ptr %26, null
  br i1 %tobool60.not, label %if.end59.if.end67_crit_edge, label %land.lhs.true61

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.lhs.true61:                                  ; preds = %if.end59
  %wake_off = getelementptr inbounds %struct.cmos_rtc_board_info, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %wake_off to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wake_off, align 4
  %tobool62.not = icmp eq ptr %28, null
  br i1 %tobool62.not, label %land.lhs.true61.if.end67_crit_edge, label %if.then63

land.lhs.true61.if.end67_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %26, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 5), align 8
  %29 = ptrtoint ptr %wake_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wake_off, align 4
  store ptr %30, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 6), align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true61.if.end67_crit_edge, %if.end59.if.end67_crit_edge, %if.end16.if.end67_crit_edge
  %address_space.2 = phi i32 [ %address_space.1, %if.then63 ], [ %address_space.1, %land.lhs.true61.if.end67_crit_edge ], [ %address_space.1, %if.end59.if.end67_crit_edge ], [ %spec.select, %if.end16.if.end67_crit_edge ]
  %flags.1 = phi i32 [ %13, %if.then63 ], [ %13, %land.lhs.true61.if.end67_crit_edge ], [ %13, %if.end59.if.end67_crit_edge ], [ 0, %if.end16.if.end67_crit_edge ]
  store ptr %dev, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 1), align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cmos_rtc, ptr %driver_data.i, align 4
  %call68 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  store ptr %call68, ptr @cmos_rtc, align 8
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %do.body73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call68 to i32
  br label %cleanup0

do.body73:                                        ; preds = %if.end67
  %init_name.i = getelementptr inbounds %struct.device, ptr %call68, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body73.dev_name.exit_crit_edge

do.body73.dev_name.exit_crit_edge:                ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call68, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body73.dev_name.exit_crit_edge
  %retval.0.i251 = phi ptr [ %36, %if.end.i ], [ %34, %do.body73.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 2
  %37 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i251, ptr %name, align 4
  %call78 = tail call zeroext i1 @mc146818_does_rtc_work() #7
  br i1 %call78, label %if.end83, label %do.end82

do.end82:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup1

if.end83:                                         ; preds = %dev_name.exit
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  %and = and i32 %flags.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.then85, label %if.end83.if.end92_crit_edge

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load ptr, ptr @cmos_rtc, align 8
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %irq_freq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1024, ptr %irq_freq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 38) #7, !srcloc !118
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %if.end83.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rtc_irq)
  %cmp93 = icmp sgt i32 %rtc_irq, 0
  br i1 %cmp93, label %if.then95, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cmos_irq_disable(ptr noundef nonnull @cmos_rtc, i8 noundef zeroext 112)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92.if.end96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool104.not = icmp eq i8 %41, 0
  %or.cond247 = select i1 %cmp93, i1 %tobool104.not, i1 false
  br i1 %or.cond247, label %do.end108, label %if.end109

do.end108:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup1

if.end109:                                        ; preds = %if.end96
  %42 = load ptr, ptr @cmos_rtc, align 8
  br i1 %cmp93, label %if.then117, label %if.else155

if.then117:                                       ; preds = %if.end109
  %init_name.i252 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i252 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i252, align 8
  %tobool.not.i253 = icmp eq ptr %44, null
  br i1 %tobool.not.i253, label %if.end.i254, label %if.then117.dev_name.exit256_crit_edge

if.then117.dev_name.exit256_crit_edge:            ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit256

if.end.i254:                                      ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %dev_name.exit256

dev_name.exit256:                                 ; preds = %if.end.i254, %if.then117.dev_name.exit256_crit_edge
  %retval.0.i255 = phi ptr [ %46, %if.end.i254 ], [ %44, %if.then117.dev_name.exit256_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %rtc_irq, ptr noundef nonnull @cmos_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i255, ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp133 = icmp slt i32 %call.i, 0
  br i1 %cmp133, label %do.body136, label %dev_name.exit256.if.end156_crit_edge

dev_name.exit256.if.end156_crit_edge:             ; preds = %dev_name.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

do.body136:                                       ; preds = %dev_name.exit256
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmos_do_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cmos_do_probe, %cleanup1)) #7
          to label %if.then150 [label %cleanup1], !srcloc !119

if.then150:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmos_do_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %rtc_irq) #7
  br label %cleanup1

if.else155:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %features = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #7
  br label %if.end156

if.end156:                                        ; preds = %if.else155, %dev_name.exit256.if.end156_crit_edge
  %47 = load ptr, ptr @cmos_rtc, align 8
  %ops = getelementptr inbounds %struct.rtc_device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @cmos_rtc_ops, ptr %ops, align 8
  %call157 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %cleanup2

if.end160:                                        ; preds = %if.end156
  %49 = load ptr, ptr @cmos_rtc, align 8
  %set_offset_nsec = getelementptr inbounds %struct.rtc_device, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %set_offset_nsec to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 500000000, ptr %set_offset_nsec, align 4
  %sub = add i32 %address_space.2, -14
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %51 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %size, align 4
  %call161 = call i32 @devm_rtc_nvmem_register(ptr noundef %49, ptr noundef nonnull %nvmem_cfg) #7
  br i1 %cmp93, label %cond.false, label %if.end160.cond.end174_crit_edge

if.end160.cond.end174_crit_edge:                  ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end174

cond.false:                                       ; preds = %if.end160
  %52 = load i8, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 10), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool168.not = icmp eq i8 %52, 0
  br i1 %tobool168.not, label %cond.false170, label %cond.false.cond.end174_crit_edge

cond.false.cond.end174_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end174

cond.false170:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i8, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 9), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool172.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool172.not, ptr @.str.24, ptr @.str.23
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false170, %cond.false.cond.end174_crit_edge, %if.end160.cond.end174_crit_edge
  %cond175 = phi ptr [ @.str.21, %if.end160.cond.end174_crit_edge ], [ %cond, %cond.false170 ], [ @.str.22, %cond.false.cond.end174_crit_edge ]
  %54 = load i8, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool177.not = icmp eq i8 %54, 0
  %cond178 = select i1 %tobool177.not, ptr @.str.26, ptr @.str.25
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond175, ptr noundef nonnull %cond178, i32 noundef %56, ptr noundef nonnull @.str.26) #11
  br label %cleanup190

cleanup2:                                         ; preds = %if.end156
  br i1 %cmp93, label %if.then185, label %cleanup2.cleanup1_crit_edge

cleanup2.cleanup1_crit_edge:                      ; preds = %cleanup2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1

if.then185:                                       ; preds = %cleanup2
  call void @__sanitizer_cov_trace_pc() #9
  %57 = load ptr, ptr @cmos_rtc, align 8
  %call186 = tail call ptr @free_irq(i32 noundef %rtc_irq, ptr noundef %57) #7
  br label %cleanup1

cleanup1:                                         ; preds = %if.then185, %cleanup2.cleanup1_crit_edge, %if.then150, %do.body136, %do.end108, %do.end82
  %retval1.1 = phi i32 [ %call157, %if.then185 ], [ %call157, %cleanup2.cleanup1_crit_edge ], [ -6, %do.end108 ], [ -6, %do.end82 ], [ %call.i, %if.then150 ], [ %call.i, %do.body136 ]
  store ptr null, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 1), align 4
  br label %cleanup0

cleanup0:                                         ; preds = %cleanup1, %if.then70
  %retval1.2 = phi i32 [ %32, %if.then70 ], [ %retval1.1, %cleanup1 ]
  %58 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call6, align 4
  %60 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end, align 4
  %sub.i258 = sub i32 1, %59
  %add.i259 = add i32 %sub.i258, %61
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %59, i32 noundef %add.i259) #7
  br label %cleanup190

cleanup190:                                       ; preds = %cleanup0, %cond.end174, %if.then14, %do.body, %if.end.cleanup190_crit_edge, %entry.cleanup190_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %cleanup0 ], [ 0, %cond.end174 ], [ -16, %entry.cleanup190_crit_edge ], [ -19, %if.end.cleanup190_crit_edge ], [ -16, %if.then14 ], [ -16, %do.body ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_nvram_read(ptr nocapture noundef readnone %priv, i32 noundef %off, ptr nocapture noundef writeonly %val, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not13 = icmp eq i32 %count, 0
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %add = add i32 %off, 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %off.addr.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %add, %for.body.preheader ]
  %buf.015 = phi ptr [ %buf.1, %for.inc.for.body_crit_edge ], [ %val, %for.body.preheader ]
  %count.addr.014 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %count, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %off.addr.017)
  %cmp = icmp ult i32 %off.addr.017, 128
  %conv = trunc i32 %off.addr.017 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %conv) #7, !srcloc !118
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874254 to ptr), i8 %conv) #7, !srcloc !118
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874253 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %storemerge = phi i8 [ %1, %if.else ], [ %0, %if.then ]
  %buf.1 = getelementptr i8, ptr %buf.015, i32 1
  %2 = ptrtoint ptr %buf.015 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %storemerge, ptr %buf.015, align 1
  %dec = add i32 %count.addr.014, -1
  %inc = add i32 %off.addr.017, 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_nvram_write(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr nocapture noundef readonly %val, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not33 = icmp eq i32 %count, 0
  br i1 %tobool.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %off, 14
  %day_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %priv, i32 0, i32 9
  %mon_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %priv, i32 0, i32 10
  %century = getelementptr inbounds %struct.cmos_rtc, ptr %priv, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buf.037 = phi ptr [ %val, %for.body.lr.ph ], [ %buf.1, %for.inc.for.body_crit_edge ]
  %count.addr.036 = phi i32 [ %count, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %off.addr.034 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %day_alrm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %day_alrm, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %off.addr.034, i32 %conv)
  %cmp = icmp eq i32 %off.addr.034, %conv
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %2 = ptrtoint ptr %mon_alrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mon_alrm, align 1
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %off.addr.034, i32 %conv3)
  %cmp4 = icmp eq i32 %off.addr.034, %conv3
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false6

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %century to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %century, align 4
  %conv7 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %off.addr.034, i32 %conv7)
  %cmp8 = icmp eq i32 %off.addr.034, %conv7
  br i1 %cmp8, label %lor.lhs.false6.for.inc_crit_edge, label %if.else

lor.lhs.false6.for.inc_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %off.addr.034)
  %cmp10 = icmp ult i32 %off.addr.034, 128
  br i1 %cmp10, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = trunc i32 %off.addr.034 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %conv13) #7, !srcloc !118
  %6 = ptrtoint ptr %buf.037 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.037, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %7) #7, !srcloc !118
  br label %for.inc

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %buf.037 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.037, align 1
  %conv17 = trunc i32 %off.addr.034 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874254 to ptr), i8 %conv17) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874253 to ptr), i8 %9) #7, !srcloc !118
  br label %for.inc

for.inc:                                          ; preds = %if.else15, %if.then12, %lor.lhs.false6.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %buf.1 = getelementptr i8, ptr %buf.037, i32 1
  %dec = add i32 %count.addr.036, -1
  %inc = add i32 %off.addr.034, 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mc146818_does_rtc_work() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmos_irq_disable(ptr nocapture noundef readonly %cmos, i8 noundef zeroext %mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %neg = xor i8 %mask, -1
  %and = and i8 %0, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %and) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %2 = and i8 %and, 112
  %3 = or i8 %2, -128
  %and312.i = and i8 %1, %3
  %conv.i.i = zext i8 %and312.i to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool6.not13.i = icmp eq i32 %and2.i.i, 0
  %tobool6.not.i = or i1 %tobool.not.i.i, %tobool6.not13.i
  br i1 %tobool6.not.i, label %entry.cmos_checkintr.exit_crit_edge, label %if.then7.i

entry.cmos_checkintr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_checkintr.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %cmos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmos, align 8
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef %conv.i.i) #7
  br label %cmos_checkintr.exit

cmos_checkintr.exit:                              ; preds = %if.then7.i, %entry.cmos_checkintr.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_interrupt(i32 noundef %irq, ptr noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @rtc_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %2 = load i8, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 8), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  %.pn.in.in = select i1 %tobool4.not, i8 %1, i8 %2
  %.pn.in = and i8 %.pn.in.in, 112
  %.pn = or i8 %.pn.in, -128
  %irqstat.1 = and i8 %.pn, %0
  %conv18 = zext i8 %irqstat.1 to i32
  %and19 = and i32 %conv18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %entry.if.end35_crit_edge, label %if.then21

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i8 %2, -33
  store i8 %3, ptr getelementptr inbounds (%struct.cmos_rtc, ptr @cmos_rtc, i32 0, i32 8), align 1
  %4 = and i8 %1, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %4) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  br label %if.end35

if.end35:                                         ; preds = %if.then21, %entry.if.end35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rtc_lock) #7
  %and.i = and i32 %conv18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv18, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool37.not50 = icmp eq i32 %and2.i, 0
  %tobool37.not = or i1 %tobool.not.i, %tobool37.not50
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtc_update_irq(ptr noundef %p, i32 noundef 1, i32 noundef %conv18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then38 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_read_time(ptr noundef %dev, ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @mc146818_get_time(ptr noundef %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @cmos_read_time._rs, ptr noundef nonnull @__func__.cmos_read_time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call1, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_set_time(ptr nocapture noundef readnone %dev, ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mc146818_set_time(ptr noundef %t) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %t) #3 align 64 {
entry:
  %p = alloca %struct.cmos_read_alarm_callback_param, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p) #7
  %2 = getelementptr inbounds i8, ptr %p, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %p, align 4
  %time = getelementptr inbounds %struct.cmos_read_alarm_callback_param, ptr %p, i32 0, i32 1
  %time2 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %time2, ptr %time, align 4
  %rtc_control = getelementptr inbounds %struct.cmos_read_alarm_callback_param, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %rtc_control to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rtc_control, align 4
  %irq = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @mc146818_avoid_UIP(ptr noundef nonnull @cmos_read_alarm_callback, ptr noundef nonnull %p) #7
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %time2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %10)
  %cmp9 = icmp ult i32 %10, 96
  br i1 %cmp9, label %cond.false, label %if.end5.if.end28_crit_edge

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = trunc i32 %10 to i8
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %conv14) #12
  br label %if.end28

if.end28:                                         ; preds = %cond.false, %if.end5.if.end28_crit_edge
  %storemerge = phi i32 [ %call23, %cond.false ], [ -1, %if.end5.if.end28_crit_edge ]
  %11 = ptrtoint ptr %time2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %time2, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %13)
  %cmp30 = icmp ult i32 %13, 96
  br i1 %cmp30, label %cond.false45, label %if.end28.if.end57_crit_edge

if.end28.if.end57_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

cond.false45:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %conv35 = trunc i32 %13 to i8
  %call49 = call i32 @_bcd2bin(i8 noundef zeroext %conv35) #12
  br label %if.end57

if.end57:                                         ; preds = %cond.false45, %if.end28.if.end57_crit_edge
  %storemerge203 = phi i32 [ %call49, %cond.false45 ], [ -1, %if.end28.if.end57_crit_edge ]
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge203, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %16)
  %cmp59 = icmp ult i32 %16, 36
  br i1 %cmp59, label %cond.false74, label %if.end57.if.end86_crit_edge

if.end57.if.end86_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

cond.false74:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %conv64 = trunc i32 %16 to i8
  %call78 = call i32 @_bcd2bin(i8 noundef zeroext %conv64) #12
  br label %if.end86

if.end86:                                         ; preds = %cond.false74, %if.end57.if.end86_crit_edge
  %storemerge204 = phi i32 [ %call78, %cond.false74 ], [ -1, %if.end57.if.end86_crit_edge ]
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge204, ptr %tm_hour, align 4
  %day_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %day_alrm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %day_alrm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool87.not = icmp eq i8 %19, 0
  br i1 %tobool87.not, label %if.end86.if.end151_crit_edge, label %if.then88

if.end86.if.end151_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then88:                                        ; preds = %if.end86
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %21)
  %cmp90 = icmp ult i32 %21, 50
  br i1 %cmp90, label %cond.false105, label %if.then88.if.end117_crit_edge

if.then88.if.end117_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

cond.false105:                                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %conv95 = trunc i32 %21 to i8
  %call109 = call i32 @_bcd2bin(i8 noundef zeroext %conv95) #12
  br label %if.end117

if.end117:                                        ; preds = %cond.false105, %if.then88.if.end117_crit_edge
  %storemerge205 = phi i32 [ %call109, %cond.false105 ], [ -1, %if.then88.if.end117_crit_edge ]
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge205, ptr %tm_mday, align 4
  %mon_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %mon_alrm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mon_alrm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool118.not = icmp eq i8 %24, 0
  br i1 %tobool118.not, label %if.end117.if.end151_crit_edge, label %if.then119

if.end117.if.end151_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then119:                                       ; preds = %if.end117
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %26)
  %cmp121 = icmp ult i32 %26, 19
  br i1 %cmp121, label %cond.end141, label %if.then119.if.end151.sink.split_crit_edge

if.then119.if.end151.sink.split_crit_edge:        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151.sink.split

cond.end141:                                      ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %conv126 = trunc i32 %26 to i8
  %call140 = call i32 @_bcd2bin(i8 noundef zeroext %conv126) #12
  %sub = add i32 %call140, -1
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %cond.end141, %if.then119.if.end151.sink.split_crit_edge
  %sub.sink = phi i32 [ %sub, %cond.end141 ], [ -1, %if.then119.if.end151.sink.split_crit_edge ]
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.sink, ptr %tm_mon, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.end117.if.end151_crit_edge, %if.end86.if.end151_crit_edge
  %28 = ptrtoint ptr %rtc_control to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rtc_control, align 4
  %30 = lshr i8 %29, 5
  %.lobit = and i8 %30, 1
  %31 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.lobit, ptr %t, align 4
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %32 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end151 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_set_alarm(ptr noundef %dev, ptr noundef %t) #3 align 64 {
entry:
  %now.i = alloca %struct.rtc_time, align 4
  %max_date.i = alloca %struct.rtc_time, align 4
  %max_date41.i = alloca %struct.rtc_time, align 4
  %p = alloca %struct.cmos_set_alarm_callback_param, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #7
  %2 = getelementptr inbounds i8, ptr %p, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %p, align 4
  %mon = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 1
  %mday = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 2
  %hrs = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 3
  %min = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 4
  %sec = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 5
  %t2 = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %mon to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mon, align 4
  %6 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %t, ptr %t2, align 4
  %irq = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now.i) #7
  %9 = call ptr @memset(ptr %now.i, i32 255, i32 36)
  %call1.i.i = call i32 @mc146818_get_time(ptr noundef nonnull %now.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.cmos_read_time.exit.i_crit_edge

if.end.cmos_read_time.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.body.i.i:                                      ; preds = %if.end
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @cmos_read_time._rs, ptr noundef nonnull @__func__.cmos_read_time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cmos_read_time.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.cmos_read_time.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %cmos_read_time.exit.i

cmos_read_time.exit.i:                            ; preds = %do.end.i.i, %do.body.i.i.cmos_read_time.exit.i_crit_edge, %if.end.cmos_read_time.exit.i_crit_edge
  %day_alrm.i = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %day_alrm.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %day_alrm.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cmos_read_time.exit.i
  %call2.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now.i) #7
  %add.i = add i64 %call2.i, 86399
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %call3.i = call i64 @rtc_tm_to_time64(ptr noundef %time.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i)
  %cmp.i = icmp sgt i64 %call3.i, %add.i
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end6_crit_edge

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %cmos_validate_alarm.exit.thread

if.else.i:                                        ; preds = %cmos_read_time.exit.i
  %mon_alrm.i = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %mon_alrm.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mon_alrm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else40.i

if.then7.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %max_date.i) #7
  %14 = call ptr @memcpy(ptr %max_date.i, ptr %now.i, i32 36)
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %max_date.i, i32 0, i32 4
  %15 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp10.i = icmp eq i32 %16, 11
  br i1 %cmp10.i, label %if.then11.i, label %if.then7.i.if.end17.i_crit_edge

if.then7.i.if.end17.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %max_date.i, i32 0, i32 5
  %18 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.then7.i.if.end17.i_crit_edge
  %.sink.i = phi i32 [ %19, %if.then11.i ], [ %16, %if.then7.i.if.end17.i_crit_edge ]
  %tm_mon.sink.i = phi ptr [ %tm_year.i, %if.then11.i ], [ %tm_mon.i, %if.then7.i.if.end17.i_crit_edge ]
  %add16.i = add i32 %.sink.i, 1
  %20 = ptrtoint ptr %tm_mon.sink.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add16.i, ptr %tm_mon.sink.i, align 4
  %21 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mon.i, align 4
  %tm_year19.i = getelementptr inbounds %struct.rtc_time, ptr %max_date.i, i32 0, i32 5
  %23 = ptrtoint ptr %tm_year19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_year19.i, align 4
  %call20.i = call i32 @rtc_month_days(i32 noundef %22, i32 noundef %24) #7
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %max_date.i, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call20.i)
  %cmp21.i = icmp sgt i32 %26, %call20.i
  br i1 %cmp21.i, label %if.then22.i, label %if.end17.i.if.end24.i_crit_edge

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call20.i, ptr %tm_mday.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end24.i_crit_edge
  %call25.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %max_date.i) #7
  %sub.i = add i64 %call25.i, -1
  %time26.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %call27.i = call i64 @rtc_tm_to_time64(ptr noundef %time26.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i, i64 %sub.i)
  %cmp28.i = icmp sgt i64 %call27.i, %sub.i
  br i1 %cmp28.i, label %do.end32.i, label %if.end72.critedge91.i

do.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %max_date.i) #7
  br label %cmos_validate_alarm.exit.thread

if.else40.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %max_date41.i) #7
  %28 = call ptr @memcpy(ptr %max_date41.i, ptr %now.i, i32 36)
  %tm_year45.i = getelementptr inbounds %struct.rtc_time, ptr %max_date41.i, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year45.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_year45.i, align 4
  %add46.i = add i32 %30, 1
  store i32 %add46.i, ptr %tm_year45.i, align 4
  %tm_mon47.i = getelementptr inbounds %struct.rtc_time, ptr %max_date41.i, i32 0, i32 4
  %31 = ptrtoint ptr %tm_mon47.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mon47.i, align 4
  %call49.i = call i32 @rtc_month_days(i32 noundef %32, i32 noundef %add46.i) #7
  %tm_mday50.i = getelementptr inbounds %struct.rtc_time, ptr %max_date41.i, i32 0, i32 3
  %33 = ptrtoint ptr %tm_mday50.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_mday50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call49.i)
  %cmp51.i = icmp sgt i32 %34, %call49.i
  br i1 %cmp51.i, label %if.then52.i, label %if.else40.i.if.end54.i_crit_edge

if.else40.i.if.end54.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then52.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %tm_mday50.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call49.i, ptr %tm_mday50.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.else40.i.if.end54.i_crit_edge
  %call55.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %max_date41.i) #7
  %sub56.i = add i64 %call55.i, -1
  %time57.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %call58.i = call i64 @rtc_tm_to_time64(ptr noundef %time57.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call58.i, i64 %sub56.i)
  %cmp59.i = icmp sgt i64 %call58.i, %sub56.i
  br i1 %cmp59.i, label %do.end63.i, label %if.end72.critedge93.i

do.end63.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %max_date41.i) #7
  br label %cmos_validate_alarm.exit.thread

if.end72.critedge91.i:                            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %max_date.i) #7
  br label %if.end6

if.end72.critedge93.i:                            ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %max_date41.i) #7
  br label %if.end6

cmos_validate_alarm.exit.thread:                  ; preds = %do.end63.i, %do.end32.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end72.critedge93.i, %if.end72.critedge91.i, %if.then.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mon, align 4
  %38 = trunc i32 %37 to i8
  %conv = add i8 %38, 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mday, align 4
  %conv9 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %mday to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv9, ptr %mday, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_hour, align 4
  %conv12 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %hrs to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv12, ptr %hrs, align 2
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_min, align 4
  %conv15 = trunc i32 %46 to i8
  %47 = ptrtoint ptr %min to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv15, ptr %min, align 1
  %48 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %time, align 4
  %conv18 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv18, ptr %sec, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv)
  %cmp25 = icmp ult i8 %conv, 13
  br i1 %cmp25, label %cond.false, label %if.end6.cond.end39_crit_edge

if.end6.cond.end39_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end39

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = zext i8 %conv to i32
  %call36 = call zeroext i8 @_bin2bcd(i32 noundef %conv24) #12
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false, %if.end6.cond.end39_crit_edge
  %cond40 = phi i8 [ %call36, %cond.false ], [ -1, %if.end6.cond.end39_crit_edge ]
  %52 = ptrtoint ptr %mon to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %cond40, ptr %mon, align 4
  %53 = ptrtoint ptr %mday to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mday, align 1
  %55 = add i8 %54, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %55)
  %56 = icmp ult i8 %55, 31
  br i1 %56, label %cond.false62, label %cond.end39.cond.end70_crit_edge

cond.end39.cond.end70_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end70

cond.false62:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv44 = zext i8 %54 to i32
  %call65 = call zeroext i8 @_bin2bcd(i32 noundef %conv44) #12
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false62, %cond.end39.cond.end70_crit_edge
  %cond71 = phi i8 [ %call65, %cond.false62 ], [ -1, %cond.end39.cond.end70_crit_edge ]
  %57 = ptrtoint ptr %mday to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %cond71, ptr %mday, align 1
  %58 = ptrtoint ptr %hrs to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hrs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %59)
  %cmp76 = icmp ult i8 %59, 24
  br i1 %cmp76, label %cond.false89, label %cond.end70.cond.end97_crit_edge

cond.end70.cond.end97_crit_edge:                  ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end97

cond.false89:                                     ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #9
  %conv75 = zext i8 %59 to i32
  %call92 = call zeroext i8 @_bin2bcd(i32 noundef %conv75) #12
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false89, %cond.end70.cond.end97_crit_edge
  %cond98 = phi i8 [ %call92, %cond.false89 ], [ -1, %cond.end70.cond.end97_crit_edge ]
  %60 = ptrtoint ptr %hrs to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %cond98, ptr %hrs, align 2
  %61 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %62)
  %cmp103 = icmp ult i8 %62, 60
  br i1 %cmp103, label %cond.false116, label %cond.end97.cond.end124_crit_edge

cond.end97.cond.end124_crit_edge:                 ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end124

cond.false116:                                    ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #9
  %conv102 = zext i8 %62 to i32
  %call119 = call zeroext i8 @_bin2bcd(i32 noundef %conv102) #12
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false116, %cond.end97.cond.end124_crit_edge
  %cond125 = phi i8 [ %call119, %cond.false116 ], [ -1, %cond.end97.cond.end124_crit_edge ]
  %63 = ptrtoint ptr %min to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %cond125, ptr %min, align 1
  %64 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %65)
  %cmp130 = icmp ult i8 %65, 60
  br i1 %cmp130, label %cond.false143, label %cond.end124.cond.end151_crit_edge

cond.end124.cond.end151_crit_edge:                ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end151

cond.false143:                                    ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #9
  %conv129 = zext i8 %65 to i32
  %call146 = call zeroext i8 @_bin2bcd(i32 noundef %conv129) #12
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false143, %cond.end124.cond.end151_crit_edge
  %cond152 = phi i8 [ %call146, %cond.false143 ], [ -1, %cond.end124.cond.end151_crit_edge ]
  %66 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %cond152, ptr %sec, align 4
  %call156 = call zeroext i1 @mc146818_avoid_UIP(ptr noundef nonnull @cmos_set_alarm_callback, ptr noundef nonnull %p) #7
  br i1 %call156, label %if.end158, label %cond.end151.cleanup_crit_edge

cond.end151.cleanup_crit_edge:                    ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end158:                                        ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = call i64 @rtc_tm_to_time64(ptr noundef %time) #7
  %alarm_expires = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %alarm_expires to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call160, ptr %alarm_expires, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %cond.end151.cleanup_crit_edge, %cmos_validate_alarm.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end158 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %cond.end151.cleanup_crit_edge ], [ -22, %cmos_validate_alarm.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_procfs(ptr nocapture noundef readonly %dev, ptr noundef %seq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 13) #7, !srcloc !118
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.41, ptr @.str.40
  %and5 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.41, ptr @.str.40
  %and12 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.40, ptr @.str.41
  %and16 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.41, ptr @.str.40
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %irq_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool21.not = icmp sgt i8 %3, -1
  %cond22 = select i1 %tobool21.not, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, ptr noundef nonnull %cond7, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond14, ptr noundef nonnull %cond18, i32 noundef %7, ptr noundef nonnull %cond22) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cmos_irq_enable(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cmos_irq_disable(ptr noundef %1, i8 noundef zeroext 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc146818_get_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc146818_set_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mc146818_avoid_UIP(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmos_read_alarm_callback(i8 noundef zeroext %seconds, ptr nocapture noundef %param_in) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %time1 = getelementptr inbounds %struct.cmos_read_alarm_callback_param, ptr %param_in, i32 0, i32 1
  %0 = ptrtoint ptr %time1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %time1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 1) #7, !srcloc !118
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 3) #7, !srcloc !118
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %conv4 = zext i8 %4 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4, ptr %tm_min, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 5) #7, !srcloc !118
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %conv7 = zext i8 %6 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %tm_hour, align 4
  %8 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param_in, align 4
  %day_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %day_alrm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %day_alrm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %11) #7, !srcloc !118
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %13 = and i8 %12, 63
  %and = zext i8 %13 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool14.not, i32 -1, i32 %and
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %tm_mday, align 4
  %15 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %param_in, align 4
  %mon_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %mon_alrm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mon_alrm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %if.then.if.end31_crit_edge, label %if.then19

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %18) #7, !srcloc !118
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %conv24 = zext i8 %19 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  %spec.store.select = select i1 %tobool26.not, i32 -1, i32 %conv24
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %tm_mon, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %rtc_control = getelementptr inbounds %struct.cmos_read_alarm_callback_param, ptr %param_in, i32 0, i32 2
  %22 = ptrtoint ptr %rtc_control to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rtc_control, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmos_set_alarm_callback(i8 noundef zeroext %seconds, ptr nocapture noundef readonly %param_in) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_in, align 4
  tail call fastcc void @cmos_irq_disable(ptr noundef %1, i8 noundef zeroext 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 5) #7, !srcloc !118
  %hrs = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 3
  %2 = ptrtoint ptr %hrs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hrs, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %3) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 3) #7, !srcloc !118
  %min = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 4
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %5) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 1) #7, !srcloc !118
  %sec = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 5
  %6 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %7) #7, !srcloc !118
  %8 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param_in, align 4
  %day_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %day_alrm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %day_alrm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %11) #7, !srcloc !118
  %mday = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 2
  %12 = ptrtoint ptr %mday to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mday, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %13) #7, !srcloc !118
  %14 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %param_in, align 4
  %mon_alrm = getelementptr inbounds %struct.cmos_rtc, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %mon_alrm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mon_alrm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.then.if.end9_crit_edge, label %if.then6

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 %17) #7, !srcloc !118
  %mon = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 1
  %18 = ptrtoint ptr %mon to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mon, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %19) #7, !srcloc !118
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %t20 = getelementptr inbounds %struct.cmos_set_alarm_callback_param, ptr %param_in, i32 0, i32 6
  %20 = ptrtoint ptr %t20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t20, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %tobool21.not, label %if.end9.if.end24_crit_edge, label %if.then22

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %param_in, align 4
  tail call fastcc void @cmos_irq_enable(ptr noundef %25)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end9.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmos_irq_enable(ptr nocapture noundef readonly %cmos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %2 = and i8 %0, 112
  %3 = or i8 %2, -128
  %and312.i = and i8 %1, %3
  %conv.i.i = zext i8 %and312.i to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool6.not13.i = icmp eq i32 %and2.i.i, 0
  %tobool6.not.i = or i1 %tobool.not.i.i, %tobool6.not13.i
  br i1 %tobool6.not.i, label %entry.cmos_checkintr.exit_crit_edge, label %if.then7.i

entry.cmos_checkintr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_checkintr.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %cmos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmos, align 8
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef %conv.i.i) #7
  br label %cmos_checkintr.exit

cmos_checkintr.exit:                              ; preds = %if.then7.i, %entry.cmos_checkintr.exit_crit_edge
  %6 = or i8 %0, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %6) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %8 = and i8 %6, 112
  %9 = or i8 %8, -128
  %and312.i1 = and i8 %7, %9
  %conv.i.i2 = zext i8 %and312.i1 to i32
  %and.i.i3 = and i32 %conv.i.i2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i4 = icmp eq i32 %and.i.i3, 0
  %and2.i.i5 = and i32 %conv.i.i2, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i5)
  %tobool6.not13.i6 = icmp eq i32 %and2.i.i5, 0
  %tobool6.not.i7 = or i1 %tobool.not.i.i4, %tobool6.not13.i6
  br i1 %tobool6.not.i7, label %cmos_checkintr.exit.cmos_checkintr.exit9_crit_edge, label %if.then7.i8

cmos_checkintr.exit.cmos_checkintr.exit9_crit_edge: ; preds = %cmos_checkintr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_checkintr.exit9

if.then7.i8:                                      ; preds = %cmos_checkintr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cmos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmos, align 8
  tail call void @rtc_update_irq(ptr noundef %11, i32 noundef 1, i32 noundef %conv.i.i2) #7
  br label %cmos_checkintr.exit9

cmos_checkintr.exit9:                             ; preds = %if.then7.i8, %cmos_checkintr.exit.cmos_checkintr.exit9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_platform_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq.i = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.cmos_do_shutdown.exit.i_crit_edge

entry.cmos_do_shutdown.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_do_shutdown.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cmos_irq_disable(ptr noundef nonnull @cmos_rtc, i8 noundef zeroext 112) #7
  br label %cmos_do_shutdown.exit.i

cmos_do_shutdown.exit.i:                          ; preds = %if.then.i.i, %entry.cmos_do_shutdown.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %cmos_do_shutdown.exit.i.cmos_do_remove.exit_crit_edge

cmos_do_shutdown.exit.i.cmos_do_remove.exit_crit_edge: ; preds = %cmos_do_shutdown.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_do_remove.exit

if.then.i:                                        ; preds = %cmos_do_shutdown.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call3.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #7
  br label %cmos_do_remove.exit

cmos_do_remove.exit:                              ; preds = %if.then.i, %cmos_do_shutdown.exit.i.cmos_do_remove.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  %iomem.i = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %12
  %add.i.i = add i32 %sub.i.i, %14
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %12, i32 noundef %add.i.i) #7
  %15 = ptrtoint ptr %iomem.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %iomem.i, align 4
  %dev11.i = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dev11.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmos_platform_shutdown(ptr noundef %pdev) #3 align 64 {
entry:
  %now.i = alloca %struct.rtc_time, align 4
  %alarm.i = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @cmos_suspend(ptr noundef %dev1) #7
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now.i) #7
  %5 = call ptr @memset(ptr %now.i, i32 255, i32 36)
  %alarm_expires.i = getelementptr inbounds %struct.cmos_rtc, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %alarm_expires.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %alarm_expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %if.then.cmos_aie_poweroff.exit.thread_crit_edge, label %if.end.i

if.then.cmos_aie_poweroff.exit.thread_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_aie_poweroff.exit.thread

if.end.i:                                         ; preds = %if.then
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cmos_aie_poweroff.exit.thread_crit_edge

if.end.i.cmos_aie_poweroff.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_aie_poweroff.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @mc146818_get_time(ptr noundef nonnull %now.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end5.i.cmos_read_time.exit.i_crit_edge

if.end5.i.cmos_read_time.exit.i_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.body.i.i:                                      ; preds = %if.end5.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @cmos_read_time._rs, ptr noundef nonnull @__func__.cmos_read_time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cmos_read_time.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.cmos_read_time.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #11
  br label %cmos_read_time.exit.i

cmos_read_time.exit.i:                            ; preds = %do.end.i.i, %do.body.i.i.cmos_read_time.exit.i_crit_edge, %if.end5.i.cmos_read_time.exit.i_crit_edge
  %call7.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now.i) #7
  %10 = ptrtoint ptr %alarm_expires.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %alarm_expires.i, align 8
  %add.i = add i64 %call7.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add.i)
  %cmp.i = icmp eq i64 %11, %add.i
  br i1 %cmp.i, label %cmos_aie_poweroff.exit, label %if.else.i

if.else.i:                                        ; preds = %cmos_read_time.exit.i
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add.i)
  %cmp14.i = icmp sgt i64 %11, %add.i
  br i1 %cmp14.i, label %if.else.i.cmos_aie_poweroff.exit.thread_crit_edge, label %cmos_aie_poweroff.exit.thread17

if.else.i.cmos_aie_poweroff.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_aie_poweroff.exit.thread

cmos_aie_poweroff.exit.thread17:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  br label %if.end6

cmos_aie_poweroff.exit.thread:                    ; preds = %if.else.i.cmos_aie_poweroff.exit.thread_crit_edge, %if.end.i.cmos_aie_poweroff.exit.thread_crit_edge, %if.then.cmos_aie_poweroff.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  br label %cleanup7

cmos_aie_poweroff.exit:                           ; preds = %cmos_read_time.exit.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alarm.i) #7
  %12 = call ptr @memset(ptr %alarm.i, i32 255, i32 40)
  %sub.i = add i64 %call7.i, -1
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm.i, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %sub.i, ptr noundef %time.i) #7
  %13 = ptrtoint ptr %alarm.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %alarm.i, align 4
  %call11.i = call i32 @cmos_set_alarm(ptr noundef %dev1, ptr noundef nonnull %alarm.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp4 = icmp slt i32 %call11.i, 0
  br i1 %cmp4, label %cmos_aie_poweroff.exit.cleanup7_crit_edge, label %cmos_aie_poweroff.exit.if.end6_crit_edge

cmos_aie_poweroff.exit.if.end6_crit_edge:         ; preds = %cmos_aie_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

cmos_aie_poweroff.exit.cleanup7_crit_edge:        ; preds = %cmos_aie_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

if.end6:                                          ; preds = %cmos_aie_poweroff.exit.if.end6_crit_edge, %cmos_aie_poweroff.exit.thread17, %entry.if.end6_crit_edge
  %irq = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 8
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i13 = icmp sgt i32 %15, 0
  br i1 %cmp.i13, label %if.then.i, label %if.end6.cmos_do_shutdown.exit_crit_edge

if.end6.cmos_do_shutdown.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_do_shutdown.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cmos_irq_disable(ptr noundef nonnull @cmos_rtc, i8 noundef zeroext 112) #7
  br label %cmos_do_shutdown.exit

cmos_do_shutdown.exit:                            ; preds = %if.then.i, %if.end6.cmos_do_shutdown.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  br label %cleanup7

cleanup7:                                         ; preds = %cmos_do_shutdown.exit, %cmos_aie_poweroff.exit.cleanup7_crit_edge, %cmos_aie_poweroff.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %suspend_ctrl = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %suspend_ctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %suspend_ctrl, align 1
  %4 = and i8 %2, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.device_may_wakeup.exit.thread_crit_edge, label %device_may_wakeup.exit

if.then.device_may_wakeup.exit.thread_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool2.i.not, i8 -113, i8 -81
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit.thread:                    ; preds = %device_may_wakeup.exit, %if.then.device_may_wakeup.exit.thread_crit_edge
  %8 = phi i8 [ -113, %if.then.device_may_wakeup.exit.thread_crit_edge ], [ %spec.select, %device_may_wakeup.exit ]
  %and7 = and i8 %8, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %and7) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %10 = and i8 %and7, 32
  %11 = or i8 %10, -128
  %and312.i = and i8 %9, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %and312.i)
  %.not = icmp eq i8 %and312.i, -96
  br i1 %.not, label %if.then7.i, label %device_may_wakeup.exit.thread.if.end15_crit_edge

device_may_wakeup.exit.thread.if.end15_crit_edge: ; preds = %device_may_wakeup.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7.i:                                       ; preds = %device_may_wakeup.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then7.i, %device_may_wakeup.exit.thread.if.end15_crit_edge, %entry.if.end15_crit_edge
  %tmp.0 = phi i8 [ %2, %entry.if.end15_crit_edge ], [ %and7, %device_may_wakeup.exit.thread.if.end15_crit_edge ], [ %and7, %if.then7.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  %conv16 = zext i8 %tmp.0 to i32
  %and17 = and i32 %conv16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end28_crit_edge, label %land.lhs.true

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end15
  %enabled_wake = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %enabled_wake to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled_wake, align 8
  %wake_on = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %wake_on to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wake_on, align 8
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %dev) #7
  br label %if.end28

if.else25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 1) #7
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then23, %if.end15.if.end28_crit_edge
  %saved_wkalrm = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 12
  %19 = call ptr @memset(ptr %saved_wkalrm, i32 0, i32 40)
  %call30 = tail call i32 @cmos_read_alarm(ptr noundef %dev, ptr noundef %saved_wkalrm)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmos_suspend.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cmos_suspend, %do.end)) #7
          to label %if.then37 [label %do.end], !srcloc !119

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool18.not, ptr @.str.26, ptr @.str.46
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmos_suspend.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond, i32 noundef %conv16) #7
  br label %do.end

do.end:                                           ; preds = %if.then37, %if.end28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmos_resume(ptr noundef %dev) #3 align 64 {
entry:
  %current_alarm.i = alloca %struct.rtc_wkalrm, align 4
  %now.i = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled_wake = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enabled_wake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled_wake, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %wake_off = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %wake_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wake_off, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %dev) #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %8 = ptrtoint ptr %enabled_wake to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled_wake, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %current_alarm.i) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now.i) #7
  %11 = call ptr @memset(ptr %now.i, i32 255, i32 36)
  %suspend_ctrl.i = getelementptr inbounds %struct.cmos_rtc, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %suspend_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspend_ctrl.i, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end8.cmos_check_wkalrm.exit_crit_edge, label %if.end.i

if.end8.cmos_check_wkalrm.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_check_wkalrm.exit

if.end.i:                                         ; preds = %if.end8
  %call1.i.i = call i32 @mc146818_get_time(ptr noundef nonnull %now.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.cmos_read_time.exit.i_crit_edge

if.end.i.cmos_read_time.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @cmos_read_time._rs, ptr noundef nonnull @__func__.cmos_read_time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cmos_read_time.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.cmos_read_time.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_read_time.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %cmos_read_time.exit.i

cmos_read_time.exit.i:                            ; preds = %do.end.i.i, %do.body.i.i.cmos_read_time.exit.i_crit_edge, %if.end.i.cmos_read_time.exit.i_crit_edge
  %call2.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now.i) #7
  %15 = call ptr @memset(ptr %current_alarm.i, i32 0, i32 40)
  %call17.i = call i32 @cmos_read_alarm(ptr noundef %dev, ptr noundef nonnull %current_alarm.i) #7
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %current_alarm.i, i32 0, i32 2
  %call18.i = call i64 @rtc_tm_to_time64(ptr noundef %time.i) #7
  %saved_wkalrm.i = getelementptr inbounds %struct.cmos_rtc, ptr %10, i32 0, i32 12
  %time19.i = getelementptr inbounds %struct.cmos_rtc, ptr %10, i32 0, i32 12, i32 2
  %call20.i = call i64 @rtc_tm_to_time64(ptr noundef %time19.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %call20.i)
  %cmp21.not.i = icmp eq i64 %call18.i, %call20.i
  br i1 %cmp21.not.i, label %lor.lhs.false.i, label %cmos_read_time.exit.i.if.then29.i_crit_edge

cmos_read_time.exit.i.if.then29.i_crit_edge:      ; preds = %cmos_read_time.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %cmos_read_time.exit.i
  %16 = ptrtoint ptr %saved_wkalrm.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %saved_wkalrm.i, align 8
  %18 = ptrtoint ptr %current_alarm.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %current_alarm.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp27.not.i = icmp eq i8 %17, %19
  br i1 %cmp27.not.i, label %lor.lhs.false.i.cmos_check_wkalrm.exit_crit_edge, label %lor.lhs.false.i.if.then29.i_crit_edge

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

lor.lhs.false.i.cmos_check_wkalrm.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmos_check_wkalrm.exit

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %cmos_read_time.exit.i.if.then29.i_crit_edge
  %call31.i = call i32 @cmos_set_alarm(ptr noundef %dev, ptr noundef %saved_wkalrm.i) #7
  br label %cmos_check_wkalrm.exit

cmos_check_wkalrm.exit:                           ; preds = %if.then29.i, %lor.lhs.false.i.cmos_check_wkalrm.exit_crit_edge, %if.end8.cmos_check_wkalrm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %current_alarm.i) #7
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rtc_lock) #7
  %suspend_ctrl = getelementptr inbounds %struct.cmos_rtc, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %suspend_ctrl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %suspend_ctrl, align 1
  store i8 0, ptr %suspend_ctrl, align 1
  %22 = and i8 %21, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not = icmp eq i8 %22, 0
  br i1 %tobool11.not, label %cmos_check_wkalrm.exit.if.end54_crit_edge, label %if.then12

cmos_check_wkalrm.exit.if.end54_crit_edge:        ; preds = %cmos_check_wkalrm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then12:                                        ; preds = %cmos_check_wkalrm.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %21) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #7, !srcloc !118
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #7, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  br label %if.end54

if.end54:                                         ; preds = %if.then12, %cmos_check_wkalrm.exit.if.end54_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @rtc_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmos_resume.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cmos_resume, %do.end66)) #7
          to label %if.then62 [label %do.end66], !srcloc !119

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %conv63 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmos_resume.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %conv63) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %if.end54
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__UNIQUE_ID_alias231, !1, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-cmos.c", i32 1498, i32 1}
!2 = !{ptr @__initcall__kmod_rtc_cmos__232_1541_cmos_init6, !3, !"__initcall__kmod_rtc_cmos__232_1541_cmos_init6", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-cmos.c", i32 1541, i32 1}
!4 = !{ptr @__exitcall_cmos_exit, !5, !"__exitcall_cmos_exit", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-cmos.c", i32 1552, i32 1}
!6 = !{ptr @__UNIQUE_ID_author233, !7, !"__UNIQUE_ID_author233", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-cmos.c", i32 1555, i32 1}
!8 = !{ptr @__UNIQUE_ID_description234, !9, !"__UNIQUE_ID_description234", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-cmos.c", i32 1556, i32 1}
!10 = !{ptr @__UNIQUE_ID_file235, !11, !"__UNIQUE_ID_file235", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-cmos.c", i32 1557, i32 1}
!12 = !{ptr @__UNIQUE_ID_license236, !11, !"__UNIQUE_ID_license236", i1 false, i1 false}
!13 = distinct !{null, !14, !"platform_driver_registered", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-cmos.c", i32 1513, i32 13}
!15 = !{ptr @cmos_rtc, !16, !"cmos_rtc", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-cmos.c", i32 697, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-cmos.c", i32 1440, i32 30}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-cmos.c", i32 1444, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-cmos.c", i32 763, i32 11}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-cmos.c", i32 790, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cmos_do_probe.__UNIQUE_ID_ddebug227, !24, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-cmos.c", i32 855, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cmos_do_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @cmos_do_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-cmos.c", i32 884, i32 3}
!37 = !{ptr @cmos_do_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cmos_do_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-cmos.c", i32 900, i32 5}
!41 = !{ptr @cmos_do_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cmos_do_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-cmos.c", i32 911, i32 4}
!45 = !{ptr @cmos_do_probe.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-cmos.c", i32 931, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cmos_do_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cmos_do_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @driver_name, !59, !"driver_name", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-cmos.c", i32 97, i32 19}
!60 = !{ptr @cmos_rtc_ops, !61, !"cmos_rtc_ops", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-cmos.c", i32 623, i32 35}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-cmos.c", i32 236, i32 3}
!64 = !{ptr @cmos_read_time._rs, !63, !"_rs", i1 false, i1 false}
!65 = !{ptr @__func__.cmos_read_time, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cmos_read_time._entry, !63, !"_entry", i1 false, i1 false}
!69 = !{ptr @cmos_read_time._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-cmos.c", i32 421, i32 4}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cmos_validate_alarm._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cmos_validate_alarm._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-cmos.c", i32 445, i32 4}
!77 = !{ptr @cmos_validate_alarm._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cmos_validate_alarm._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-cmos.c", i32 464, i32 4}
!81 = !{ptr @cmos_validate_alarm._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cmos_validate_alarm._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-cmos.c", i32 599, i32 6}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-cmos.c", i32 607, i32 32}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-cmos.c", i32 607, i32 40}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-cmos.c", i32 614, i32 26}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-cmos.c", i32 614, i32 35}
!93 = !{ptr @cmos_platform_driver, !94, !"cmos_platform_driver", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-cmos.c", i32 1500, i32 31}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-cmos.c", i32 1067, i32 2}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cmos_suspend.__UNIQUE_ID_ddebug229, !96, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!99 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @of_cmos_match, !101, !"of_cmos_match", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-cmos.c", i32 1424, i32 34}
!102 = !{ptr @cmos_pm_ops, !103, !"cmos_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-cmos.c", i32 1182, i32 8}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-cmos.c", i32 1177, i32 2}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cmos_resume.__UNIQUE_ID_ddebug230, !105, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2152188885}
!118 = !{i64 4652829}
!119 = !{i64 2148728649, i64 2148728654, i64 2148728667, i64 2148728711, i64 2148728745, i64 2148728766}
!120 = !{i64 4653224}
!121 = !{i64 2152186900}
!122 = !{i64 2153997834}
!123 = !{i64 2153998234}
!124 = !{i64 2153998587}
