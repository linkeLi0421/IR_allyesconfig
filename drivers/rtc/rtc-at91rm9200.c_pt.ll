; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-at91rm9200.c_pt.bc'
source_filename = "../drivers/rtc/rtc-at91rm9200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at91_rtc_config = type { i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@sclk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_rtc_at91rm9200__404_649_at91_rtc_driver_init6 = internal global ptr @at91_rtc_driver_init, section ".initcall6.init", align 4
@at91_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr @at91_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_rtc_driver_exit = internal global ptr @at91_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author405 = internal constant [35 x i8] c"rtc_at91rm9200.author=Rick Bronson\00", section ".modinfo", align 1
@__UNIQUE_ID_description406 = internal constant [59 x i8] c"rtc_at91rm9200.description=RTC driver for Atmel AT91RM9200\00", section ".modinfo", align 1
@__UNIQUE_ID_file407 = internal constant [47 x i8] c"rtc_at91rm9200.file=drivers/rtc/rtc-at91rm9200\00", section ".modinfo", align 1
@__UNIQUE_ID_license408 = internal constant [27 x i8] c"rtc_at91rm9200.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias409 = internal constant [39 x i8] c"rtc_at91rm9200.alias=platform:at91_rtc\00", section ".modinfo", align 1
@at91_rtc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@at91_rtc_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@at91_rtc_shadow_imr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_rtc_lock\00", [18 x i8] zeroinitializer }, align 32
@at91_rtc_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@at91_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no mmio resource defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_rtc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/rtc/rtc-at91rm9200.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr = internal global ptr @at91_rtc_probe._entry, section ".printk_index", align 4
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@at91_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to map registers, aborting.\0A\00", [60 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.8 = internal global ptr @at91_rtc_probe._entry.6, section ".printk_index", align 4
@at91_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not enable slow clock\0A\00", [35 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.11 = internal global ptr @at91_rtc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_rtc\00", [23 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ %d already in use.\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.15 = internal global ptr @at91_rtc_probe._entry.13, section ".printk_index", align 4
@sama5d4_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr null, ptr @at91_rtc_alarm_irq_enable, ptr @at91_rtc_readoffset, ptr @at91_rtc_setoffset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@at91_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr null, ptr @at91_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AT91 Real Time Clock driver.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.19 = internal global ptr @at91_rtc_probe._entry.16, section ".printk_index", align 4
@suspended_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@at91_rtc_upd_rdy = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @at91_rtc_upd_rdy, i64 48), ptr getelementptr (i8, ptr @at91_rtc_upd_rdy, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@at91_rtc_updated = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @at91_rtc_updated, i64 48), ptr getelementptr (i8, ptr @at91_rtc_updated, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@suspended = internal global { i1, [31 x i8] } zeroinitializer, align 32
@at91_rtc_interrupt.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtc_at91rm9200\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_rtc_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): num=%ld, events=0x%02lx\0A\00", [33 x i8] zeroinitializer }, align 32
@cached_events = internal global { i32, [28 x i8] } zeroinitializer, align 32
@at91_rtc_imr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"suspended_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(at91_rtc_upd_rdy).wait.lock\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(at91_rtc_updated).wait.lock\00", [35 x i8] zeroinitializer }, align 32
@at91_rtc_readtime.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_rtc_readtime\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(): %ptR\0A\00", [20 x i8] zeroinitializer }, align 32
@at91_rtc_settime.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.3, ptr @.str.27, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_rtc_settime\00", [47 x i8] zeroinitializer }, align 32
@at91_rtc_readalarm.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_rtc_readalarm\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): %ptR %sabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@at91_rtc_setalarm.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_rtc_setalarm\00", [46 x i8] zeroinitializer }, align 32
@at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at91_rtc_alarm_irq_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): cmd=%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@at91_rtc_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@at91_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at91rm9200_config = internal constant { %struct.at91_rtc_config, [30 x i8] } zeroinitializer, align 32
@at91sam9x5_config = internal constant { %struct.at91_rtc_config, [30 x i8] } { %struct.at91_rtc_config { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@sama5d4_config = internal constant { %struct.at91_rtc_config, [30 x i8] } { %struct.at91_rtc_config { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 108, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"at91_rtc_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 639, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"at91_rtc_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"at91_rtc_regs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 100, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"at91_rtc_shadow_imr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 103, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 102, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"at91_rtc_config\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 97, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 482, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 101, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 493, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 508, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 522, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 524, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"sama5d4_rtc_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 457, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"at91_rtc_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 449, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 550, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"suspended_lock\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"at91_rtc_upd_rdy\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"at91_rtc_updated\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 401, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"cached_events\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 106, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"at91_rtc_imr\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 107, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 105, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 99, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 98, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 198, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 210, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 257, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 286, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 293, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"at91_rtc_dt_ids\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 427, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"at91_rtc_pm_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 637, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"at91rm9200_config\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 416, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"at91sam9x5_config\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 419, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"sama5d4_config\00", align 1
@___asan_gen_.191 = private constant [32 x i8] c"../drivers/rtc/rtc-at91rm9200.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 423, i32 37 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias409, ptr @__UNIQUE_ID_author405, ptr @__UNIQUE_ID_description406, ptr @__UNIQUE_ID_file407, ptr @__UNIQUE_ID_license408, ptr @__exitcall_at91_rtc_driver_exit, ptr @__initcall__kmod_rtc_at91rm9200__404_649_at91_rtc_driver_init6, ptr @at91_rtc_driver_exit, ptr @at91_rtc_probe._entry, ptr @at91_rtc_probe._entry.13, ptr @at91_rtc_probe._entry.16, ptr @at91_rtc_probe._entry.6, ptr @at91_rtc_probe._entry.9, ptr @at91_rtc_probe._entry_ptr, ptr @at91_rtc_probe._entry_ptr.11, ptr @at91_rtc_probe._entry_ptr.15, ptr @at91_rtc_probe._entry_ptr.19, ptr @at91_rtc_probe._entry_ptr.8, ptr @at91_rtc_remove, ptr @sclk, ptr @at91_rtc_driver, ptr @at91_rtc_lock, ptr @at91_rtc_regs, ptr @at91_rtc_shadow_imr, ptr @.str, ptr @at91_rtc_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @irq, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @sama5d4_rtc_ops, ptr @at91_rtc_ops, ptr @.str.17, ptr @.str.18, ptr @suspended_lock, ptr @at91_rtc_upd_rdy, ptr @at91_rtc_updated, ptr @suspended, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @cached_events, ptr @at91_rtc_imr, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @at91_rtc_dt_ids, ptr @at91_rtc_pm_ops, ptr @at91rm9200_config, ptr @at91sam9x5_config, ptr @sama5d4_config], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_shadow_imr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspended_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_upd_rdy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_updated to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspended to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_events to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_imr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_remove(ptr nocapture noundef readnone %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @at91_rtc_write_idr(i32 noundef 31)
  %0 = load ptr, ptr @sclk, align 4
  tail call void @clk_disable(ptr noundef %0) #7
  tail call void @clk_unprepare(ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_write_idr(i32 noundef %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %1 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !117
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !118
  %neg = xor i32 %mask, -1
  %4 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and = and i32 %4, %neg
  store i32 %and, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_rtc_driver, ptr noundef nonnull @at91_rtc_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  store ptr %call, ptr @at91_rtc_config, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  store i32 %call6, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %1, i32 noundef %add.i) #7
  store ptr %call11, ptr @at91_rtc_regs, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call20 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %driver_data.i.i, align 4
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  store ptr %call26, ptr @sclk, align 4
  %cmp.i99 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call.i = tail call i32 @clk_prepare(ptr noundef %call26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.do.end36_crit_edge

if.end30.do.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call26) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then3.i, %if.end30.do.end36_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end30.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %7 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !117
  %8 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr39 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !118
  %10 = and i32 %9, -16777217
  %11 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr41 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %10) #7, !srcloc !117
  tail call fastcc void @at91_rtc_write_idr(i32 noundef 31)
  %12 = load i32, ptr @irq, align 4
  %call.i100 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @at91_rtc_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef nonnull @.str.12, ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool44.not = icmp eq i32 %call.i100, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %13) #10
  br label %err_clk

if.end50:                                         ; preds = %if.end38
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %14 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %15 = load ptr, ptr @at91_rtc_config, align 4
  %has_correction = getelementptr inbounds %struct.at91_rtc_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %has_correction to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_correction, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool57.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool57.not, ptr @at91_rtc_ops, ptr @sama5d4_rtc_ops
  %18 = getelementptr inbounds %struct.rtc_device, ptr %call20, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select, ptr %18, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call20, i32 0, i32 22
  %20 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -2208988800, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call20, i32 0, i32 23
  %21 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4102444799, ptr %range_max, align 8
  %call61 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end56.err_clk_crit_edge

if.end56.err_clk_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @at91_rtc_write_ier(i32 noundef 4)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

err_clk:                                          ; preds = %if.end56.err_clk_crit_edge, %do.end48
  %ret.0 = phi i32 [ %call.i100, %do.end48 ], [ %call61, %if.end56.err_clk_crit_edge ]
  %22 = load ptr, ptr @sclk, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  tail call void @clk_unprepare(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end64, %do.end36, %if.then28, %if.then22, %do.end16, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then22 ], [ %6, %if.then28 ], [ %retval.0.i.ph, %do.end36 ], [ %ret.0, %err_clk ], [ 0, %if.end64 ], [ -12, %do.end16 ], [ -6, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @suspended_lock) #7
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !118
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @at91_rtc_config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body1.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %8 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  br label %at91_rtc_read_imr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !118
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  br label %at91_rtc_read_imr.exit

at91_rtc_read_imr.exit:                           ; preds = %if.else.i, %do.body1.i
  %mask.0.i = phi i32 [ %8, %do.body1.i ], [ %11, %if.else.i ]
  %and = and i32 %mask.0.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %at91_rtc_read_imr.exit.if.end28_crit_edge, label %if.then

at91_rtc_read_imr.exit.if.end28_crit_edge:        ; preds = %at91_rtc_read_imr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %at91_rtc_read_imr.exit
  %and3 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 160
  %and6 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then8

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull @at91_rtc_upd_rdy) #7
  %call2.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %12 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i40 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 67108864) #7, !srcloc !117
  %13 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !118
  %15 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i = and i32 %15, -5
  store i32 %and.i, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i39) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge
  %and10 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull @at91_rtc_updated) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #7, !srcloc !117
  %.b38 = load i1, ptr @suspended, align 1
  br i1 %.b38, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef %spec.select) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_interrupt.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_interrupt, %if.end28)) #7
          to label %if.then23 [label %if.end28], !srcloc !120

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_interrupt.__UNIQUE_ID_ddebug403, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %spec.select) #7
  br label %if.end28

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @cached_events, align 4
  %or26 = or i32 %18, %spec.select
  store i32 %or26, ptr @cached_events, align 4
  %19 = load i32, ptr @at91_rtc_imr, align 4
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i42 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %20) #7, !srcloc !117
  %22 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i43 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i43) #7, !srcloc !118
  %neg.i = xor i32 %19, -1
  %24 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i44 = and i32 %24, %neg.i
  store i32 %and.i44, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i41) #7
  tail call void @pm_system_wakeup() #7
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23, %if.then16, %at91_rtc_read_imr.exit.if.end28_crit_edge
  %ret.0 = phi i32 [ 0, %at91_rtc_read_imr.exit.if.end28_crit_edge ], [ 1, %if.then23 ], [ 1, %if.else ], [ 1, %if.then16 ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @suspended_lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_write_ier(i32 noundef %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %0 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or = or i32 %0, %mask
  store i32 %or, ptr @at91_rtc_shadow_imr, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_readtime(ptr noundef %dev, ptr noundef %tm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91_rtc_decodetime(i32 noundef 8, i32 noundef 12, ptr noundef %tm)
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %0 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %2 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %call = tail call i32 @rtc_year_days(i32 noundef %1, i32 noundef %3, i32 noundef %5) #7
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %6 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %tm_yday, align 4
  %7 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_year, align 4
  %sub = add i32 %8, -1900
  store i32 %sub, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_readtime.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_readtime, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_readtime.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %tm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_settime(ptr noundef %dev, ptr noundef %tm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_settime.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_settime, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_settime.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %tm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @wait_for_completion(ptr noundef nonnull @at91_rtc_upd_rdy) #7
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !118
  %2 = or i32 %1, 50331648
  %3 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #7, !srcloc !117
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %4 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr @at91_rtc_shadow_imr, align 4
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  tail call void @wait_for_completion(ptr noundef nonnull @at91_rtc_updated) #7
  %call2.i715 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %6 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i716 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i716, i32 16777216) #7, !srcloc !117
  %7 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !118
  %9 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i = and i32 %9, -2
  store i32 %and.i, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i715) #7
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #11
  %12 = and i8 %call60, 127
  %and65 = zext i8 %12 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call128 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #11
  %conv129 = zext i8 %call128 to i32
  %shl132 = shl nuw nsw i32 %conv129, 8
  %and133 = and i32 %shl132, 32512
  %or134 = or i32 %and133, %and65
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call197 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %conv198 = zext i8 %call197 to i32
  %shl201 = shl nuw nsw i32 %conv198, 16
  %and202 = and i32 %shl201, 4128768
  %or203 = or i32 %or134, %and202
  %17 = tail call i32 @llvm.bswap.i32(i32 %or203)
  %18 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr204 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %17) #7, !srcloc !117
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %19 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %21 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mon, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %23 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_wday, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday, align 4
  %call603 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #11
  %conv604 = zext i8 %call603 to i32
  %add467 = add i32 %24, 1
  %call534 = tail call zeroext i8 @_bin2bcd(i32 noundef %add467) #11
  %conv535 = zext i8 %call534 to i32
  %add386 = add i32 %22, 1
  %call453 = tail call zeroext i8 @_bin2bcd(i32 noundef %add386) #11
  %conv454 = zext i8 %call453 to i32
  %rem305 = srem i32 %20, 100
  %call372 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem305) #11
  %conv373 = zext i8 %call372 to i32
  %add212 = add i32 %20, 1900
  %div213 = sdiv i32 %add212, 100
  %call291 = tail call zeroext i8 @_bin2bcd(i32 noundef %div213) #11
  %27 = and i8 %call291, 127
  %and296 = zext i8 %27 to i32
  %shl376 = shl nuw nsw i32 %conv373, 8
  %or378 = or i32 %shl376, %and296
  %shl457 = shl nuw nsw i32 %conv454, 16
  %and458 = and i32 %shl457, 2031616
  %or459 = or i32 %or378, %and458
  %shl538 = shl nuw nsw i32 %conv535, 21
  %and539 = and i32 %shl538, 14680064
  %or540 = or i32 %or459, %and539
  %shl607 = shl nuw i32 %conv604, 24
  %and608 = and i32 %shl607, 1056964608
  %or609 = or i32 %or540, %and608
  %28 = tail call i32 @llvm.bswap.i32(i32 %or609)
  %29 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr610 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr610, i32 %28) #7, !srcloc !117
  %30 = load ptr, ptr @at91_rtc_regs, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !118
  %32 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr615 = getelementptr i8, ptr %32, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr615, i32 67108864) #7, !srcloc !117
  %33 = and i32 %31, -50331649
  %34 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #7, !srcloc !117
  %call2.i717 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %35 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or.i718 = or i32 %35, 4
  store i32 %or.i718, ptr @at91_rtc_shadow_imr, align 4
  %36 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i719 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i719, i32 67108864) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i717) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_readalarm(ptr noundef %dev, ptr noundef %alrm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  tail call fastcc void @at91_rtc_decodetime(i32 noundef 16, i32 noundef 20, ptr noundef %time)
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tm_year, align 4
  %1 = load ptr, ptr @at91_rtc_config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body1.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %4 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  br label %at91_rtc_read_imr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !118
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  br label %at91_rtc_read_imr.exit

at91_rtc_read_imr.exit:                           ; preds = %if.else.i, %do.body1.i
  %mask.0.i = phi i32 [ %4, %do.body1.i ], [ %7, %if.else.i ]
  %8 = trunc i32 %mask.0.i to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %alrm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_readalarm.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_readalarm, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !120

if.then:                                          ; preds = %at91_rtc_read_imr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_readalarm.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, ptr noundef %time, ptr noundef nonnull %cond9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %at91_rtc_read_imr.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_setalarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #1 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %tm, ptr %time, i32 36)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %1 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !117
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !118
  %4 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i = and i32 %4, -3
  store i32 %and.i, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  %call57 = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #11
  %and62 = zext i8 %call57 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min, align 4
  %call137 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #11
  %conv138 = zext i8 %call137 to i32
  %shl141 = shl nuw nsw i32 %conv138, 8
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_hour, align 4
  %call217 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  %conv218 = zext i8 %call217 to i32
  %shl221 = shl nuw nsw i32 %conv218, 16
  %and222 = and i32 %shl221, 4128768
  %or = or i32 %shl141, %and62
  %or223 = or i32 %or, %and222
  %or226 = or i32 %or223, 8421504
  %11 = tail call i32 @llvm.bswap.i32(i32 %or226)
  %12 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !117
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mon, align 4
  %add235 = add i32 %14, 1
  %call313 = tail call zeroext i8 @_bin2bcd(i32 noundef %add235) #11
  %conv314 = zext i8 %call313 to i32
  %shl317 = shl nuw nsw i32 %conv314, 16
  %and318 = and i32 %shl317, 2031616
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %call393 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %conv394 = zext i8 %call393 to i32
  %shl397 = shl nuw i32 %conv394, 24
  %and398 = and i32 %shl397, 1056964608
  %or399 = or i32 %and318, %and398
  %or401 = or i32 %or399, -2139095040
  %17 = tail call i32 @llvm.bswap.i32(i32 %or401)
  %18 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr402 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr402, i32 %17) #7, !srcloc !117
  %19 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool403.not = icmp eq i8 %20, 0
  br i1 %tobool403.not, label %entry.do.body407_crit_edge, label %if.then404

entry.do.body407_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body407

if.then404:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr405 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr405, i32 33554432) #7, !srcloc !117
  %call2.i479 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %22 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or.i = or i32 %22, 2
  store i32 %or.i, ptr @at91_rtc_shadow_imr, align 4
  %23 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i480 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i480, i32 33554432) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i479) #7
  br label %do.body407

do.body407:                                       ; preds = %if.then404, %entry.do.body407_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_setalarm.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_setalarm, %do.end417)) #7
          to label %if.then414 [label %do.end417], !srcloc !120

if.then414:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_setalarm.__UNIQUE_ID_ddebug391, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, ptr noundef nonnull %tm) #7
  br label %do.end417

do.end417:                                        ; preds = %if.then414, %do.body407
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_alarm_irq_enable, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug392, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %enabled) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool4.not = icmp eq i32 %enabled, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !117
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %1 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or.i = or i32 %1, 2
  store i32 %or.i, ptr @at91_rtc_shadow_imr, align 4
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !117
  br label %if.end6

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %3 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 33554432) #7, !srcloc !117
  %4 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !118
  %6 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i = and i32 %6, -3
  store i32 %and.i, ptr @at91_rtc_shadow_imr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %call2.i8.sink = phi i32 [ %call2.i8, %if.else ], [ %call2.i, %if.then5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i8.sink) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_readoffset(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !118
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw nsw i32 %shr, 1
  %and14 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %sub = xor i32 %shr, -1
  %spec.select = select i1 %tobool15.not, i32 %sub, i32 %inc
  %and18 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %mul = mul nsw i32 %spec.select, 20
  %val.1 = select i1 %tobool19.not, i32 %mul, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1)
  %cmp23 = icmp sgt i32 %val.1, 0
  %add.pn.in.v = select i1 %cmp23, i32 2, i32 -2
  %add.pn.in = sdiv i32 %val.1, %add.pn.in.v
  %add.pn = add nsw i32 %add.pn.in, 3906000
  %cond = sdiv i32 %add.pn, %val.1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ %cond, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %offset, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_setoffset(ptr nocapture noundef readnone %dev, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -1953001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3906001, i32 %0)
  %1 = icmp ult i32 %0, -3906001
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !118
  %4 = and i32 %3, -285147137
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp4 = icmp sgt i32 %offset, 0
  %or = or i32 %5, 16
  %mr.0 = select i1 %cmp4, i32 %or, i32 %5
  %6 = tail call i32 @llvm.abs.i32(i32 %offset, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 764, i32 %6)
  %cmp7 = icmp ult i32 %6, 764
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #7, !srcloc !117
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 29208, i32 %6)
  %cmp12 = icmp ult i32 %6, 29208
  br i1 %cmp12, label %cond.end, label %cond.end42

cond.end:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nuw nsw i32 %6, 20
  %div103 = mul nuw nsw i32 %6, 10
  %add = add nuw nsw i32 %div103, 3906000
  %div20104 = udiv i32 %add, %mul
  br label %do.end68

cond.end42:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %div35105107 = lshr i32 %6, 1
  %add36 = add nuw nsw i32 %div35105107, 3906000
  %div37106 = udiv i32 %add36, %6
  %or44 = or i32 %mr.0, 32768
  br label %do.end68

do.end68:                                         ; preds = %cond.end42, %cond.end
  %mr.1 = phi i32 [ %mr.0, %cond.end ], [ %or44, %cond.end42 ]
  %corr.0 = phi i32 [ %div20104, %cond.end ], [ %div37106, %cond.end42 ]
  %8 = tail call i32 @llvm.smin.i32(i32 %corr.0, i32 128)
  %sub54 = shl nuw nsw i32 %8, 8
  %shl = add nuw nsw i32 %sub54, 32512
  %and71 = and i32 %shl, 32512
  %or72 = or i32 %and71, %mr.1
  %9 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %10 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr73 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %9) #7, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %do.end68 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_decodetime(i32 noundef %timereg, i32 noundef %calreg, ptr nocapture noundef writeonly %tm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %timereg
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !118
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %2, i32 %calreg
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !118
  %4 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 %timereg
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !118
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %lor.rhs, label %do.body.do.body.backedge_crit_edge

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.body
  %6 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 %calreg
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !118
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp13.not = icmp eq i32 %3, %7
  br i1 %cmp13.not, label %do.end28, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.body.do.body.backedge_crit_edge
  br label %do.body

do.end28:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %1)
  %9 = trunc i32 %8 to i8
  %conv = and i8 %9, 127
  %call30 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv) #11
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call30, ptr %tm, align 4
  %and47 = lshr i32 %8, 8
  %11 = trunc i32 %and47 to i8
  %conv49 = and i8 %11, 127
  %call50 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv49) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call50, ptr %tm_min, align 4
  %and67 = lshr i32 %8, 16
  %13 = trunc i32 %and67 to i8
  %conv69 = and i8 %13, 63
  %call70 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv69) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call70, ptr %tm_hour, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %3)
  %16 = trunc i32 %15 to i8
  %conv72 = and i8 %16, 127
  %call79 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv72) #11
  %mul80 = mul i32 %call79, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %and97 = lshr i32 %15, 8
  %conv99 = trunc i32 %and97 to i8
  %call100 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv99) #11
  %add102 = add i32 %mul80, %call100
  %17 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add102, ptr %tm_year, align 4
  %and119 = lshr i32 %15, 21
  %18 = trunc i32 %and119 to i8
  %conv121 = and i8 %18, 7
  %call122 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv121) #11
  %sub = add i32 %call122, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %19 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %tm_wday, align 4
  %and139 = lshr i32 %15, 16
  %20 = trunc i32 %and139 to i8
  %conv141 = and i8 %20, 31
  %call142 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv141) #11
  %sub143 = add i32 %call142, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %21 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub143, ptr %tm_mon, align 4
  %and160 = lshr i32 %15, 24
  %22 = trunc i32 %and160 to i8
  %conv162 = and i8 %22, 63
  %call163 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv162) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call163, ptr %tm_mday, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_rtc_shutdown(ptr nocapture noundef readnone %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 520093696) #7, !srcloc !117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !117
  %1 = load ptr, ptr @at91_rtc_config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body1.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %4 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  br label %at91_rtc_read_imr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !118
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  br label %at91_rtc_read_imr.exit

at91_rtc_read_imr.exit:                           ; preds = %if.else.i, %do.body1.i
  %mask.0.i = phi i32 [ %4, %do.body1.i ], [ %7, %if.else.i ]
  %and = and i32 %mask.0.i, 6
  store i32 %and, ptr @at91_rtc_imr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %at91_rtc_read_imr.exit.if.end9_crit_edge, label %if.then

at91_rtc_read_imr.exit.if.end9_crit_edge:         ; preds = %at91_rtc_read_imr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %at91_rtc_read_imr.exit
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i10 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i10, label %if.then.if.else_crit_edge, label %device_may_wakeup.exit

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then2

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then2:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @suspended_lock) #7
  store i1 true, ptr @suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @suspended_lock, i32 noundef %call6) #7
  br label %if.end9

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.then.if.else_crit_edge
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %12 = shl nuw nsw i32 %and, 24
  %13 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %12) #7, !srcloc !117
  %14 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !118
  %neg.i = xor i32 %and, -1
  %16 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %and.i = and i32 %16, %neg.i
  store i32 %and.i, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i11) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2, %at91_rtc_read_imr.exit.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load i32, ptr @at91_rtc_imr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end11_crit_edge, label %device_may_wakeup.exit

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end11_crit_edge, label %if.then2

device_may_wakeup.exit.if.end11_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then2:                                         ; preds = %device_may_wakeup.exit
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @suspended_lock) #7
  %6 = load i32, ptr @cached_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.then2.if.end_crit_edge, label %if.then9

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef %6) #7
  store i32 0, ptr @cached_events, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then2.if.end_crit_edge
  store i1 false, ptr @suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @suspended_lock, i32 noundef %call5) #7
  %7 = load i32, ptr @irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %device_may_wakeup.exit.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %8 = load i32, ptr @at91_rtc_imr, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #7
  %9 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %or.i = or i32 %9, %8
  store i32 %or.i, ptr @at91_rtc_shadow_imr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %11 = load ptr, ptr @at91_rtc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %call2.i) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_rtc_at91rm9200__404_649_at91_rtc_driver_init6, !1, !"__initcall__kmod_rtc_at91rm9200__404_649_at91_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 649, i32 1}
!2 = !{ptr @__exitcall_at91_rtc_driver_exit, !1, !"__exitcall_at91_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author405, !4, !"__UNIQUE_ID_author405", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 651, i32 1}
!5 = !{ptr @__UNIQUE_ID_description406, !6, !"__UNIQUE_ID_description406", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 652, i32 1}
!7 = !{ptr @__UNIQUE_ID_file407, !8, !"__UNIQUE_ID_file407", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 653, i32 1}
!9 = !{ptr @__UNIQUE_ID_license408, !8, !"__UNIQUE_ID_license408", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias409, !11, !"__UNIQUE_ID_alias409", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 654, i32 1}
!12 = !{ptr @sclk, !13, !"sclk", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 108, i32 20}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 102, i32 8}
!16 = !{ptr @at91_rtc_lock, !15, !"at91_rtc_lock", i1 false, i1 false}
!17 = !{ptr @at91_rtc_regs, !18, !"at91_rtc_regs", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 100, i32 22}
!19 = !{ptr @at91_rtc_shadow_imr, !20, !"at91_rtc_shadow_imr", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 103, i32 12}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 482, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @at91_rtc_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @at91_rtc_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 493, i32 3}
!31 = !{ptr @at91_rtc_probe._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @at91_rtc_probe._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 508, i32 3}
!35 = !{ptr @at91_rtc_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @at91_rtc_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 522, i32 11}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 524, i32 3}
!41 = !{ptr @at91_rtc_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @at91_rtc_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 550, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @at91_rtc_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @at91_rtc_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @at91_rtc_config, !49, !"at91_rtc_config", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 97, i32 38}
!50 = !{ptr @irq, !51, !"irq", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 101, i32 12}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 401, i32 4}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @at91_rtc_interrupt.__UNIQUE_ID_ddebug403, !53, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 105, i32 8}
!59 = !{ptr @suspended_lock, !58, !"suspended_lock", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 99, i32 8}
!62 = !{ptr @at91_rtc_upd_rdy, !61, !"at91_rtc_upd_rdy", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 98, i32 8}
!65 = !{ptr @at91_rtc_updated, !64, !"at91_rtc_updated", i1 false, i1 false}
!66 = distinct !{null, !67, !"suspended", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 104, i32 13}
!68 = !{ptr @cached_events, !69, !"cached_events", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 106, i32 22}
!70 = !{ptr @at91_rtc_imr, !71, !"at91_rtc_imr", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 107, i32 12}
!72 = !{ptr @sama5d4_rtc_ops, !73, !"sama5d4_rtc_ops", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 457, i32 35}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 198, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @at91_rtc_readtime.__UNIQUE_ID_ddebug323, !75, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 210, i32 2}
!80 = !{ptr @at91_rtc_settime.__UNIQUE_ID_ddebug324, !79, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 257, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @at91_rtc_readalarm.__UNIQUE_ID_ddebug365, !82, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!85 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 286, i32 2}
!89 = !{ptr @at91_rtc_setalarm.__UNIQUE_ID_ddebug391, !88, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 293, i32 2}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug392, !91, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!94 = !{ptr @at91_rtc_ops, !95, !"at91_rtc_ops", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 449, i32 35}
!96 = !{ptr @at91_rtc_driver, !97, !"at91_rtc_driver", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 639, i32 31}
!98 = !{ptr @at91_rtc_dt_ids, !99, !"at91_rtc_dt_ids", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 427, i32 34}
!100 = !{ptr @at91rm9200_config, !101, !"at91rm9200_config", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 416, i32 37}
!102 = !{ptr @at91sam9x5_config, !103, !"at91sam9x5_config", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 419, i32 37}
!104 = !{ptr @sama5d4_config, !105, !"sama5d4_config", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 423, i32 37}
!106 = !{ptr @at91_rtc_pm_ops, !107, !"at91_rtc_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-at91rm9200.c", i32 637, i32 8}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 4277065}
!118 = !{i64 4277483}
!119 = !{i8 0, i8 2}
!120 = !{i64 2148769352, i64 2148769357, i64 2148769370, i64 2148769414, i64 2148769448, i64 2148769469}
