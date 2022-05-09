; ModuleID = '/llk/IR_all_yes/drivers/rtc/class.c_pt.bc'
source_filename = "../drivers/rtc/class.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_rtc_allocate_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_rtc_allocate_device\09\09\09\09"
module asm "\09.long\09__crc_devm_rtc_allocate_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rtc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rtc_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rtc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_rtc_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_rtc_register_device\09\09\09\09"
module asm "\09.long\09__crc___devm_rtc_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_rtc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_rtc_register_device\22\09\09\09\09\09"
module asm "__kstrtabns___devm_rtc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_rtc_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_rtc_device_register\09\09\09\09"
module asm "\09.long\09__crc_devm_rtc_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rtc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rtc_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rtc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtc_hctosys_ret = dso_local global { i32, [28 x i8] } { i32 -19, [28 x i8] zeroinitializer }, align 32
@rtc_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtc%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_devm_rtc_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rtc_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rtc_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rtc_allocate_device to i32), ptr @__kstrtab_devm_rtc_allocate_device, ptr @__kstrtabns_devm_rtc_allocate_device }, section "___ksymtab_gpl+devm_rtc_allocate_device", align 4
@__devm_rtc_register_device.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__devm_rtc_register_device\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/rtc/class.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no ops set\0A\00", [20 x i8] zeroinitializer }, align 32
@__devm_rtc_register_device._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.6, ptr @.str.7 }, align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add char device %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__devm_rtc_register_device._entry_ptr = internal global ptr @__devm_rtc_register_device._entry, section ".printk_index", align 4
@__devm_rtc_register_device.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"char device (%d:%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__devm_rtc_register_device._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.11, ptr @.str.7 }, align 1
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__devm_rtc_register_device._entry_ptr.12 = internal global ptr @__devm_rtc_register_device._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtc0\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab___devm_rtc_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_rtc_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_rtc_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_rtc_register_device to i32), ptr @__kstrtab___devm_rtc_register_device, ptr @__kstrtabns___devm_rtc_register_device }, section "___ksymtab_gpl+__devm_rtc_register_device", align 4
@__kstrtab_devm_rtc_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rtc_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rtc_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rtc_device_register to i32), ptr @__kstrtab_devm_rtc_device_register, ptr @__kstrtabns_devm_rtc_device_register }, section "___ksymtab_gpl+devm_rtc_device_register", align 4
@__initcall__kmod_rtc_core__232_481_rtc_init4 = internal global ptr @rtc_init, section ".initcall4.init", align 4
@rtc_class = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@rtc_device_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 252, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"/aliases ID %d not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc_device_get_id\00", [46 x i8] zeroinitializer }, align 32
@rtc_device_get_id._entry_ptr = internal global ptr @rtc_device_get_id._entry, section ".printk_index", align 4
@rtc_allocate_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rtc->ops_lock\00", [17 x i8] zeroinitializer }, align 32
@rtc_allocate_device.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rtc->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@rtc_allocate_device.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rtc->irq_queue\00", [16 x i8] zeroinitializer }, align 32
@rtc_allocate_device.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&rtc->irqwork)\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"start-year\00", [21 x i8] zeroinitializer }, align 32
@__const.rtc_hctosys.tv64 = private unnamed_addr constant { i64, i32, [4 x i8] } { i64 0, i32 500000000, [4 x i8] zeroinitializer }, align 8
@rtc_hctosys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 61, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hctosys: unable to read the hardware clock\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_hctosys\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtc_hctosys._entry_ptr = internal global ptr @rtc_hctosys._entry, section ".printk_index", align 4
@rtc_hctosys._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 77, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setting system clock to %ptR UTC (%lld)\0A\00", [55 x i8] zeroinitializer }, align 32
@rtc_hctosys._entry_ptr.31 = internal global ptr @rtc_hctosys._entry.29, section ".printk_index", align 4
@rtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013rtc_core: couldn't create class\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_init\00", [23 x i8] zeroinitializer }, align 32
@rtc_init._entry_ptr = internal global ptr @rtc_init._entry, section ".printk_index", align 4
@rtc_class_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtc_suspend, ptr @rtc_resume, ptr @rtc_suspend, ptr @rtc_resume, ptr @rtc_suspend, ptr @rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtc_suspend.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:  fail to read rtc time\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtc_core: %s:  fail to read rtc time\0A\00", [58 x i8] zeroinitializer }, align 32
@old_system = internal global { %struct.timespec64, [16 x i8] } zeroinitializer, align 32
@old_rtc.0 = internal global { i64, [24 x i8] } zeroinitializer, align 32
@old_delta.0 = internal global { i64, [24 x i8] } zeroinitializer, align 32
@old_delta.1 = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtc_resume.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.35, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_resume\00", [21 x i8] zeroinitializer }, align 32
@rtc_resume.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:  time travel!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtc_core: %s:  time travel!\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"rtc_hctosys_ret\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 37, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"rtc_ida\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 368, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 386, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 412, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 415, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 421, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 425, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"rtc_class\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 24, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 245, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 252, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 218, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 219, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 220, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 224, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 23, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 275, i32 50 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 60, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 76, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 472, i32 14 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 474, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"rtc_class_dev_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 187, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 108, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"old_system\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 90, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"old_rtc.0\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"old_delta.0\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"old_delta.1\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 156, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [23 x i8] c"../drivers/rtc/class.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 164, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__devm_rtc_register_device._entry, ptr @__devm_rtc_register_device._entry.9, ptr @__devm_rtc_register_device._entry_ptr, ptr @__devm_rtc_register_device._entry_ptr.12, ptr @__initcall__kmod_rtc_core__232_481_rtc_init4, ptr @__ksymtab___devm_rtc_register_device, ptr @__ksymtab_devm_rtc_allocate_device, ptr @__ksymtab_devm_rtc_device_register, ptr @rtc_device_get_id._entry, ptr @rtc_device_get_id._entry_ptr, ptr @rtc_hctosys._entry, ptr @rtc_hctosys._entry.29, ptr @rtc_hctosys._entry_ptr, ptr @rtc_hctosys._entry_ptr.31, ptr @rtc_init._entry, ptr @rtc_init._entry_ptr, ptr @rtc_hctosys_ret, ptr @rtc_ida, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @rtc_class, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rtc_allocate_device.__key, ptr @.str.17, ptr @rtc_allocate_device.__key.18, ptr @.str.19, ptr @rtc_allocate_device.__key.20, ptr @.str.21, ptr @rtc_allocate_device.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @rtc_init.__key, ptr @.str.32, ptr @.str.33, ptr @rtc_class_dev_pm_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @old_system, ptr @old_rtc.0, ptr @old_delta.0, ptr @old_delta.1, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_hctosys_ret to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_device_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_allocate_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_allocate_device.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_allocate_device.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_allocate_device.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_hctosys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_hctosys._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_class_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_system to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_rtc.0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_delta.0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_delta.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_rtc_allocate_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.else.i:                                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.else.i.rtc_device_get_id.exit_crit_edge, label %land.lhs.true.i

if.else.i.rtc_device_get_id.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_device_get_id.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %of_node4.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node4.i, align 8
  %tobool5.not.i = icmp eq ptr %5, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.rtc_device_get_id.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

land.lhs.true.i.rtc_device_get_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_device_get_id.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %.sink.i = phi ptr [ %1, %entry.if.end10.i_crit_edge ], [ %5, %land.lhs.true.i.if.end10.i_crit_edge ]
  %call9.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %.sink.i, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp.i, label %if.then11.i, label %if.end10.i.rtc_device_get_id.exit_crit_edge

if.end10.i.rtc_device_get_id.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_device_get_id.exit

if.then11.i:                                      ; preds = %if.end10.i
  %call12.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @rtc_ida, i32 noundef %call9.i, i32 noundef %call9.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end.i, label %if.then11.i.if.end_crit_edge

if.then11.i.if.end_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call9.i) #10
  br label %rtc_device_get_id.exit

rtc_device_get_id.exit:                           ; preds = %do.end.i, %if.end10.i.rtc_device_get_id.exit_crit_edge, %land.lhs.true.i.rtc_device_get_id.exit_crit_edge, %if.else.i.rtc_device_get_id.exit_crit_edge
  %call19.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @rtc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp = icmp slt i32 %call19.i, 0
  br i1 %cmp, label %if.then, label %rtc_device_get_id.exit.if.end_crit_edge

rtc_device_get_id.exit.if.end_crit_edge:          ; preds = %rtc_device_get_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %rtc_device_get_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = inttoptr i32 %call19.i to ptr
  br label %cleanup

if.end:                                           ; preds = %rtc_device_get_id.exit.if.end_crit_edge, %if.then11.i.if.end_crit_edge
  %id.1.i40 = phi i32 [ %call19.i, %rtc_device_get_id.exit.if.end_crit_edge ], [ %call12.i, %if.then11.i.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1664) #11
  %tobool.not.i35 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i35, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ida_free(ptr noundef nonnull @rtc_ida, i32 noundef %id.1.i40) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #7
  %set_offset_nsec.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %set_offset_nsec.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1005000000, ptr %set_offset_nsec.i, align 4
  %irq_freq.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %irq_freq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %irq_freq.i, align 4
  %max_user_freq.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %max_user_freq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %max_user_freq.i, align 8
  %11 = load ptr, ptr @rtc_class, align 4
  %class.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 33
  %12 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %class.i, align 4
  %call2.i = tail call ptr @rtc_get_dev_attribute_groups() #7
  %groups.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 34
  %13 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %groups.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %14 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rtc_device_release, ptr %release.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %ops_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @rtc_allocate_device.__key) #7
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @rtc_allocate_device.__key.18, i16 noundef signext 3) #7
  %irq_queue.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @rtc_allocate_device.__key.20) #7
  %timerqueue.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 13
  %15 = ptrtoint ptr %timerqueue.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %timerqueue.i, align 4
  %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 13, i32 0, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i.i, align 8
  %irqwork.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %irqwork.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %irqwork.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %irqwork.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @rtc_allocate_device.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry16.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry16.i, ptr %entry16.i, align 8
  %prev.i.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 18, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry16.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rtc_timer_do_work, ptr %func.i, align 8
  %aie_timer.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 14
  tail call void @rtc_timer_init(ptr noundef %aie_timer.i, ptr noundef nonnull @rtc_aie_update_irq, ptr noundef nonnull %call7.i.i.i) #7
  %uie_rtctimer.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @rtc_timer_init(ptr noundef %uie_rtctimer.i, ptr noundef nonnull @rtc_uie_update_irq, ptr noundef nonnull %call7.i.i.i) #7
  %pie_timer.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @hrtimer_init(ptr noundef %pie_timer.i, i32 noundef 1, i32 noundef 1) #7
  %function.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 16, i32 2
  %21 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rtc_pie_update_irq, ptr %function.i, align 8
  %pie_enabled.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %pie_enabled.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pie_enabled.i, align 8
  %features.i = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 0, ptr noundef %features.i) #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %features.i) #7
  %id6 = getelementptr inbounds %struct.rtc_device, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %id.1.i40, ptr %id6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %parent, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str, i32 noundef %id.1.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %25 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_rtc_release_device, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i36 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i36, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #7
  %26 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %if.then11, %if.then3, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %25, %if.then11 ], [ %26, %if.then16 ], [ inttoptr (i32 -12 to ptr), %if.then3 ], [ %call7.i.i.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_rtc_release_device(ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %res) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__devm_rtc_register_device(ptr noundef %owner, ptr noundef %rtc) #0 align 64 {
entry:
  %tm.i = alloca %struct.rtc_time, align 4
  %tv64.i = alloca %struct.timespec64, align 8
  %start_year.i = alloca i32, align 4
  %alrm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alrm) #7
  %0 = call ptr @memset(ptr %alrm, i32 255, i32 40)
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__devm_rtc_register_device.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__devm_rtc_register_device, %cleanup)) #7
          to label %if.then5 [label %cleanup], !srcloc !106

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__devm_rtc_register_device.__UNIQUE_ID_ddebug230, ptr noundef %rtc, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %set_alarm = getelementptr inbounds %struct.rtc_class_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %set_alarm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_alarm, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 19
  %5 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uie_unsupported, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %features13 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %features13) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %set_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_offset, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %features19 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 5, ptr noundef %features19) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %owner22 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 1
  %11 = ptrtoint ptr %owner22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %owner, ptr %owner22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_year.i) #7
  %12 = ptrtoint ptr %start_year.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %start_year.i, align 4, !annotation !107
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %13 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range_min.i, align 8
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %15 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %range_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp.i = icmp eq i64 %14, %16
  br i1 %cmp.i, label %if.end21.rtc_device_get_offset.exit_crit_edge, label %if.end.i

if.end21.rtc_device_get_offset.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_device_get_offset.exit

if.end.i:                                         ; preds = %if.end21
  %parent.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef nonnull %start_year.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %start_year.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_year.i, align 4
  %call2.i = call i64 @mktime64(i32 noundef %20, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %start_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %21 = ptrtoint ptr %start_secs.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call2.i, ptr %start_secs.i, align 8
  %set_start_time.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 26
  %22 = ptrtoint ptr %set_start_time.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %set_start_time.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %set_start_time4.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 26
  %23 = ptrtoint ptr %set_start_time4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %set_start_time4.i, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %if.end3.i.rtc_device_get_offset.exit_crit_edge, label %if.end7.i

if.end3.i.rtc_device_get_offset.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_device_get_offset.exit

if.end7.i:                                        ; preds = %if.end3.i
  %25 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %range_max.i, align 8
  %27 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %range_min.i, align 8
  %sub.i = sub i64 %26, %28
  %start_secs10.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %29 = ptrtoint ptr %start_secs10.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start_secs10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %26)
  %cmp12.i = icmp ugt i64 %30, %26
  %sub15.i = add i64 %30, %sub.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub15.i, i64 %28)
  %cmp17.i = icmp slt i64 %sub15.i, %28
  %or.cond.i = select i1 %cmp12.i, i1 true, i1 %cmp17.i
  br i1 %or.cond.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub21.i = sub i64 %30, %28
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end7.i
  %add.i = add i64 %sub.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %28)
  %cmp24.i = icmp sgt i64 %30, %28
  br i1 %cmp24.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else27.i

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %28)
  %cmp30.i = icmp slt i64 %30, %28
  %sub32.i = xor i64 %sub.i, -1
  %spec.select.i = select i1 %cmp30.i, i64 %sub32.i, i64 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else27.i, %if.else.i.cleanup.sink.split.i_crit_edge, %if.then18.i
  %sub21.sink.i = phi i64 [ %sub21.i, %if.then18.i ], [ %add.i, %if.else.i.cleanup.sink.split.i_crit_edge ], [ %spec.select.i, %if.else27.i ]
  %offset_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 25
  %31 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub21.sink.i, ptr %offset_secs.i, align 8
  br label %rtc_device_get_offset.exit

rtc_device_get_offset.exit:                       ; preds = %cleanup.sink.split.i, %if.end3.i.rtc_device_get_offset.exit_crit_edge, %if.end21.rtc_device_get_offset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_year.i) #7
  %call23 = call i32 @__rtc_read_alarm(ptr noundef %rtc, ptr noundef nonnull %alrm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %rtc_device_get_offset.exit.if.end29_crit_edge

rtc_device_get_offset.exit.if.end29_crit_edge:    ; preds = %rtc_device_get_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %rtc_device_get_offset.exit
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call25 = call i32 @rtc_valid_tm(ptr noundef %time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 @rtc_initialize_alarm(ptr noundef %rtc, ptr noundef nonnull %alrm) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true.if.end29_crit_edge, %rtc_device_get_offset.exit.if.end29_crit_edge
  call void @rtc_dev_prepare(ptr noundef %rtc) #7
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 5
  %call31 = call i32 @cdev_device_add(ptr noundef %char_dev, ptr noundef %rtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body39, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %devt = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 29
  %34 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devt, align 8
  %shr = lshr i32 %35, 20
  %id = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 2
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.5, i32 noundef %shr, i32 noundef %37) #10
  br label %if.end63

do.body39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__devm_rtc_register_device.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__devm_rtc_register_device, %if.end63)) #7
          to label %if.then53 [label %if.end63], !srcloc !106

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %parent55 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %38 = ptrtoint ptr %parent55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent55, align 8
  %devt57 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 29
  %40 = ptrtoint ptr %devt57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devt57, align 8
  %shr58 = lshr i32 %41, 20
  %id59 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 2
  %42 = ptrtoint ptr %id59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__devm_rtc_register_device.__UNIQUE_ID_ddebug231, ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef %shr58, i32 noundef %43) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %do.body39, %if.then33
  call void @rtc_proc_add_device(ptr noundef %rtc) #7
  %parent68 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %44 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent68, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i113 = icmp eq ptr %47, null
  br i1 %tobool.not.i113, label %if.end.i114, label %if.end63.dev_name.exit_crit_edge

if.end63.dev_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i114:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rtc, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i114, %if.end63.dev_name.exit_crit_edge
  %retval.0.i115 = phi ptr [ %49, %if.end.i114 ], [ %47, %if.end63.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i115) #10
  %50 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i117 = icmp eq ptr %51, null
  br i1 %tobool.not.i117, label %if.end.i118, label %dev_name.exit.dev_name.exit120_crit_edge

dev_name.exit.dev_name.exit120_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit120

if.end.i118:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rtc, align 4
  br label %dev_name.exit120

dev_name.exit120:                                 ; preds = %if.end.i118, %dev_name.exit.dev_name.exit120_crit_edge
  %retval.0.i119 = phi ptr [ %53, %if.end.i118 ], [ %51, %dev_name.exit.dev_name.exit120_crit_edge ]
  %call73 = call i32 @strcmp(ptr noundef %retval.0.i119, ptr noundef nonnull dereferenceable(5) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %dev_name.exit120.if.end76_crit_edge

dev_name.exit120.if.end76_crit_edge:              ; preds = %dev_name.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then75:                                        ; preds = %dev_name.exit120
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm.i) #7
  %54 = call ptr @memset(ptr %tm.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv64.i) #7
  %55 = call ptr @memcpy(ptr %tv64.i, ptr @__const.rtc_hctosys.tv64, i32 16)
  %call.i = call i32 @rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %tm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i121 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i121, label %if.end.i124, label %do.end.i

do.end.i:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent68, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.26) #10
  br label %rtc_hctosys.exit

if.end.i124:                                      ; preds = %if.then75
  %call1.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm.i) #7
  %58 = ptrtoint ptr %tv64.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call1.i, ptr %tv64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call1.i)
  %cmp.i123 = icmp sgt i64 %call1.i, 2147483647
  br i1 %cmp.i123, label %if.end.i124.rtc_hctosys.exit_crit_edge, label %if.end4.i

if.end.i124.rtc_hctosys.exit_crit_edge:           ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_hctosys.exit

if.end4.i:                                        ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 @do_settimeofday64(ptr noundef nonnull %tv64.i) #7
  %59 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent68, align 8
  %61 = ptrtoint ptr %tv64.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tv64.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.30, ptr noundef nonnull %tm.i, i64 noundef %62) #10
  br label %rtc_hctosys.exit

rtc_hctosys.exit:                                 ; preds = %if.end4.i, %if.end.i124.rtc_hctosys.exit_crit_edge, %do.end.i
  %err.0.i = phi i32 [ %call.i, %do.end.i ], [ %call5.i, %if.end4.i ], [ -34, %if.end.i124.rtc_hctosys.exit_crit_edge ]
  store i32 %err.0.i, ptr @rtc_hctosys_ret, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv64.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  br label %if.end76

if.end76:                                         ; preds = %rtc_hctosys.exit, %dev_name.exit120.if.end76_crit_edge
  %63 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent68, align 8
  %call.i125 = call i32 @devm_add_action(ptr noundef %64, ptr noundef nonnull @devm_rtc_unregister_device, ptr noundef %rtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.end76.cleanup_crit_edge, label %if.then.i

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end76
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #7
  call void @rtc_proc_del_device(ptr noundef %rtc) #7
  %flags.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 6
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i128 = icmp eq i32 %67, 0
  br i1 %tobool.not.i128, label %if.then.i129, label %if.then.i.devm_rtc_unregister_device.exit_crit_edge

if.then.i.devm_rtc_unregister_device.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_rtc_unregister_device.exit

if.then.i129:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @cdev_device_del(ptr noundef %char_dev, ptr noundef %rtc) #7
  br label %devm_rtc_unregister_device.exit

devm_rtc_unregister_device.exit:                  ; preds = %if.then.i129, %if.then.i.devm_rtc_unregister_device.exit_crit_edge
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ops, align 8
  call void @mutex_unlock(ptr noundef %ops_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %devm_rtc_unregister_device.exit, %if.end76.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %if.end76.cleanup_crit_edge ], [ %call.i125, %devm_rtc_unregister_device.exit ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alrm) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_initialize_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_dev_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_proc_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_rtc_unregister_device(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %data, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  tail call void @rtc_proc_del_device(ptr noundef %data) #7
  %flags = getelementptr inbounds %struct.rtc_device, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %data, i32 0, i32 5
  tail call void @cdev_device_del(ptr noundef %char_dev, ptr noundef %data) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.rtc_device, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ops, align 8
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_rtc_device_register(ptr noundef %dev, ptr nocapture readnone %name, ptr noundef %ops, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops2 = getelementptr inbounds %struct.rtc_device, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %ops2, align 8
  %call3 = tail call i32 @__devm_rtc_register_device(ptr noundef %owner, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %1 = inttoptr i32 %call3 to ptr
  %spec.select = select i1 %tobool.not, ptr %call, ptr %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @rtc_init.__key) #7
  store ptr %call, ptr @rtc_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  %0 = load ptr, ptr @rtc_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pm = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rtc_class_dev_pm_ops, ptr %pm, align 4
  tail call void @rtc_dev_init() #10
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_get_dev_attribute_groups() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @rtc_ida, i32 noundef %1) #7
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %ops_lock) #7
  tail call void @kfree(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_do_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_aie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_uie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_pie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_settimeofday64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_proc_del_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @rtc_dev_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %tmp20 = alloca %struct.timespec64, align 8
  %tmp21 = alloca %struct.timespec64, align 8
  %tmp26 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call = tail call zeroext i1 @timekeeping_rtc_skipsuspend() #7
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i50 = phi ptr [ %4, %if.end.i ], [ %2, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 @strcmp(ptr noundef %retval.0.i50, ptr noundef nonnull dereferenceable(5) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %dev_name.exit
  %call6 = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef nonnull %tm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtc_suspend.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtc_suspend, %cleanup)) #7
          to label %if.then14 [label %cleanup], !srcloc !106

if.then14:                                        ; preds = %do.body
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i52 = icmp eq ptr %6, null
  br i1 %tobool.not.i52, label %if.end.i53, label %if.then14.dev_name.exit55_crit_edge

if.then14.dev_name.exit55_crit_edge:              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit55

if.end.i53:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit55

dev_name.exit55:                                  ; preds = %if.end.i53, %if.then14.dev_name.exit55_crit_edge
  %retval.0.i54 = phi ptr [ %8, %if.end.i53 ], [ %6, %if.then14.dev_name.exit55_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtc_suspend.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i54) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  call void @ktime_get_real_ts64(ptr noundef nonnull @old_system) #7
  %call19 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #7
  store i64 %call19, ptr @old_rtc.0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp20) #7
  %.unpack = load i64, ptr @old_system, align 8
  %.unpack43 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  %9 = call ptr @memset(ptr %tmp20, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %call19
  %conv.i = ashr i64 %.unpack43, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp20, i64 noundef %sub.i, i64 noundef %conv.i) #7
  %10 = ptrtoint ptr %tmp20 to i32
  call void @__asan_load8_noabort(i32 %10)
  %delta.sroa.0.0.copyload37 = load i64, ptr %tmp20, align 8
  %delta.sroa.6.0.tmp20.sroa_idx = getelementptr inbounds i8, ptr %tmp20, i32 8
  %11 = ptrtoint ptr %delta.sroa.6.0.tmp20.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %11)
  %delta.sroa.6.0.copyload39 = load i64, ptr %delta.sroa.6.0.tmp20.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp20) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp21) #7
  %.unpack46 = load i64, ptr @old_delta.0, align 8
  %.unpack47 = load i64, ptr @old_delta.1, align 8
  %lhs.sroa.2.8.extract.shift.i56 = lshr i64 %delta.sroa.6.0.copyload39, 32
  %lhs.sroa.2.8.extract.trunc.i57 = trunc i64 %lhs.sroa.2.8.extract.shift.i56 to i32
  %rhs.sroa.2.8.extract.shift.i58 = lshr i64 %.unpack47, 32
  %rhs.sroa.2.8.extract.trunc.i59 = trunc i64 %rhs.sroa.2.8.extract.shift.i58 to i32
  %12 = call ptr @memset(ptr %tmp21, i32 255, i32 16)
  %sub.i60 = sub i64 %delta.sroa.0.0.copyload37, %.unpack46
  %sub3.i61 = sub i32 %lhs.sroa.2.8.extract.trunc.i57, %rhs.sroa.2.8.extract.trunc.i59
  %conv.i62 = sext i32 %sub3.i61 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp21, i64 noundef %sub.i60, i64 noundef %conv.i62) #7
  %13 = ptrtoint ptr %tmp21 to i32
  call void @__asan_load8_noabort(i32 %13)
  %delta_delta.sroa.0.0.copyload33 = load i64, ptr %tmp21, align 8
  %delta_delta.sroa.7.0.tmp21.sroa_idx = getelementptr inbounds i8, ptr %tmp21, i32 8
  %14 = ptrtoint ptr %delta_delta.sroa.7.0.tmp21.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %delta_delta.sroa.7.0.copyload34 = load i64, ptr %delta_delta.sroa.7.0.tmp21.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp21) #7
  %15 = add i64 %delta_delta.sroa.0.0.copyload33, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %15)
  %16 = icmp ult i64 %15, -4
  br i1 %16, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  store i64 %delta.sroa.0.0.copyload37, ptr @old_delta.0, align 8
  store i64 %delta.sroa.6.0.copyload39, ptr @old_delta.1, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp26) #7
  %.unpack48 = load i64, ptr @old_system, align 8
  %.unpack49 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  %lhs.sroa.2.8.extract.shift.i63 = lshr i64 %.unpack49, 32
  %lhs.sroa.2.8.extract.trunc.i64 = trunc i64 %lhs.sroa.2.8.extract.shift.i63 to i32
  %rhs.sroa.2.8.extract.shift.i65 = lshr i64 %delta_delta.sroa.7.0.copyload34, 32
  %rhs.sroa.2.8.extract.trunc.i66 = trunc i64 %rhs.sroa.2.8.extract.shift.i65 to i32
  %17 = call ptr @memset(ptr %tmp26, i32 255, i32 16)
  %sub.i67 = sub i64 %.unpack48, %delta_delta.sroa.0.0.copyload33
  %sub3.i68 = sub i32 %lhs.sroa.2.8.extract.trunc.i64, %rhs.sroa.2.8.extract.trunc.i66
  %conv.i69 = sext i32 %sub3.i68 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp26, i64 noundef %sub.i67, i64 noundef %conv.i69) #7
  %18 = call ptr @memcpy(ptr @old_system, ptr %tmp26, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %dev_name.exit55, %do.body, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_resume(ptr noundef %dev) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %new_system = alloca %struct.timespec64, align 8
  %sleep_time = alloca %struct.timespec64, align 8
  %tmp44 = alloca %struct.timespec64, align 8
  %tmp45 = alloca %struct.timespec64, align 8
  %agg.tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_system) #7
  %1 = call ptr @memset(ptr %new_system, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sleep_time) #7
  %call = tail call zeroext i1 @timekeeping_rtc_skipresume() #7
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 -19, ptr @rtc_hctosys_ret, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i82 = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 @strcmp(ptr noundef %retval.0.i82, ptr noundef nonnull dereferenceable(5) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %dev_name.exit
  call void @ktime_get_real_ts64(ptr noundef nonnull %new_system) #7
  %call6 = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef nonnull %tm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtc_resume.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtc_resume, %cleanup)) #7
          to label %if.then14 [label %cleanup], !srcloc !106

if.then14:                                        ; preds = %do.body
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i84 = icmp eq ptr %7, null
  br i1 %tobool.not.i84, label %if.end.i85, label %if.then14.dev_name.exit87_crit_edge

if.then14.dev_name.exit87_crit_edge:              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit87

if.end.i85:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit87

dev_name.exit87:                                  ; preds = %if.end.i85, %if.then14.dev_name.exit87_crit_edge
  %retval.0.i86 = phi ptr [ %9, %if.end.i85 ], [ %7, %if.then14.dev_name.exit87_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtc_resume.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i86) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %call19 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #7
  %10 = load i64, ptr @old_rtc.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %10)
  %cmp21 = icmp slt i64 %call19, %10
  br i1 %cmp21, label %do.body23, label %if.end43

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtc_resume.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtc_resume, %cleanup)) #7
          to label %if.then37 [label %cleanup], !srcloc !106

if.then37:                                        ; preds = %do.body23
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i89 = icmp eq ptr %12, null
  br i1 %tobool.not.i89, label %if.end.i90, label %if.then37.dev_name.exit92_crit_edge

if.then37.dev_name.exit92_crit_edge:              ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit92

if.end.i90:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit92

dev_name.exit92:                                  ; preds = %if.end.i90, %if.then37.dev_name.exit92_crit_edge
  %retval.0.i91 = phi ptr [ %14, %if.end.i90 ], [ %12, %if.then37.dev_name.exit92_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtc_resume.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i91) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp44) #7
  %15 = call ptr @memset(ptr %tmp44, i32 255, i32 16)
  %sub.i = sub i64 %call19, %10
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp44, i64 noundef %sub.i, i64 noundef 0) #7
  %16 = call ptr @memcpy(ptr %sleep_time, ptr %tmp44, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp44) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp45) #7
  %17 = ptrtoint ptr %new_system to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.0.load68 = load i64, ptr %new_system, align 8
  %.fca.1.gep70 = getelementptr inbounds [2 x i64], ptr %new_system, i32 0, i32 1
  %18 = ptrtoint ptr %.fca.1.gep70 to i32
  call void @__asan_load8_noabort(i32 %18)
  %.fca.1.load71 = load i64, ptr %.fca.1.gep70, align 8
  %.unpack77 = load i64, ptr @old_system, align 8
  %.unpack78 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load71, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i93 = lshr i64 %.unpack78, 32
  %rhs.sroa.2.8.extract.trunc.i94 = trunc i64 %rhs.sroa.2.8.extract.shift.i93 to i32
  %19 = call ptr @memset(ptr %agg.tmp, i32 255, i32 16)
  %sub.i95 = sub i64 %.fca.0.load68, %.unpack77
  %sub3.i96 = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i94
  %conv.i97 = sext i32 %sub3.i96 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp, i64 noundef %sub.i95, i64 noundef %conv.i97) #7
  %20 = ptrtoint ptr %sleep_time to i32
  call void @__asan_load8_noabort(i32 %20)
  %.fca.0.load56 = load i64, ptr %sleep_time, align 8
  %.fca.1.gep58 = getelementptr inbounds [2 x i64], ptr %sleep_time, i32 0, i32 1
  %21 = ptrtoint ptr %.fca.1.gep58 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.1.load59 = load i64, ptr %.fca.1.gep58, align 8
  %22 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %agg.tmp, i32 0, i32 1
  %23 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %23)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %lhs.sroa.2.8.extract.shift.i98 = lshr i64 %.fca.1.load59, 32
  %lhs.sroa.2.8.extract.trunc.i99 = trunc i64 %lhs.sroa.2.8.extract.shift.i98 to i32
  %rhs.sroa.2.8.extract.shift.i100 = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i101 = trunc i64 %rhs.sroa.2.8.extract.shift.i100 to i32
  %24 = call ptr @memset(ptr %tmp45, i32 255, i32 16)
  %sub.i102 = sub i64 %.fca.0.load56, %.fca.0.load
  %sub3.i103 = sub i32 %lhs.sroa.2.8.extract.trunc.i99, %rhs.sroa.2.8.extract.trunc.i101
  %conv.i104 = sext i32 %sub3.i103 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp45, i64 noundef %sub.i102, i64 noundef %conv.i104) #7
  %25 = call ptr @memcpy(ptr %sleep_time, ptr %tmp45, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp45) #7
  %26 = ptrtoint ptr %sleep_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sleep_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp47 = icmp sgt i64 %27, -1
  br i1 %cmp47, label %if.then48, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @timekeeping_inject_sleeptime64(ptr noundef nonnull %sleep_time) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end43.if.end49_crit_edge
  store i32 0, ptr @rtc_hctosys_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %dev_name.exit92, %do.body23, %dev_name.exit87, %do.body, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sleep_time) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_system) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timekeeping_rtc_skipsuspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timekeeping_rtc_skipresume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_inject_sleeptime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @rtc_hctosys_ret, !1, !"rtc_hctosys_ret", i1 false, i1 false}
!1 = !{!"../drivers/rtc/class.c", i32 37, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/rtc/class.c", i32 368, i32 32}
!4 = !{ptr @__ksymtab_devm_rtc_allocate_device, !5, !"__ksymtab_devm_rtc_allocate_device", i1 false, i1 false}
!5 = !{!"../drivers/rtc/class.c", i32 378, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/rtc/class.c", i32 386, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__devm_rtc_register_device.__UNIQUE_ID_ddebug230, !7, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/class.c", i32 412, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__devm_rtc_register_device._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @__devm_rtc_register_device._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/class.c", i32 415, i32 3}
!20 = !{ptr @__devm_rtc_register_device.__UNIQUE_ID_ddebug231, !19, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/class.c", i32 421, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__devm_rtc_register_device._entry.9, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @__devm_rtc_register_device._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/class.c", i32 425, i32 35}
!28 = !{ptr @__ksymtab___devm_rtc_register_device, !29, !"__ksymtab___devm_rtc_register_device", i1 false, i1 false}
!29 = !{!"../drivers/rtc/class.c", i32 432, i32 1}
!30 = !{ptr @__ksymtab_devm_rtc_device_register, !31, !"__ksymtab_devm_rtc_device_register", i1 false, i1 false}
!31 = !{!"../drivers/rtc/class.c", i32 468, i32 1}
!32 = !{ptr @__initcall__kmod_rtc_core__232_481_rtc_init4, !33, !"__initcall__kmod_rtc_core__232_481_rtc_init4", i1 false, i1 false}
!33 = !{!"../drivers/rtc/class.c", i32 481, i32 1}
!34 = !{ptr @rtc_class, !35, !"rtc_class", i1 false, i1 false}
!35 = !{!"../drivers/rtc/class.c", i32 24, i32 15}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/class.c", i32 245, i32 41}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/class.c", i32 252, i32 4}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rtc_device_get_id._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtc_device_get_id._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @rtc_allocate_device.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/rtc/class.c", i32 218, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtc_allocate_device.__key.18, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/rtc/class.c", i32 219, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rtc_allocate_device.__key.20, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/rtc/class.c", i32 220, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rtc_allocate_device.__key.22, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/rtc/class.c", i32 224, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/class.c", i32 23, i32 8}
!57 = !{ptr @rtc_ida, !56, !"rtc_ida", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/class.c", i32 275, i32 50}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/class.c", i32 60, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rtc_hctosys._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @rtc_hctosys._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/class.c", i32 76, i32 2}
!68 = !{ptr @rtc_hctosys._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rtc_hctosys._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rtc_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/rtc/class.c", i32 472, i32 14}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/class.c", i32 474, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rtc_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtc_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rtc_class_dev_pm_ops, !78, !"rtc_class_dev_pm_ops", i1 false, i1 false}
!78 = !{!"../drivers/rtc/class.c", i32 187, i32 8}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/class.c", i32 108, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rtc_suspend.__UNIQUE_ID_ddebug227, !80, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!83 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @old_system, !85, !"old_system", i1 false, i1 false}
!85 = !{!"../drivers/rtc/class.c", i32 90, i32 35}
!86 = distinct !{null, !87, !"old_rtc", i1 false, i1 false}
!87 = !{!"../drivers/rtc/class.c", i32 90, i32 26}
!88 = distinct !{null, !89, !"old_delta", i1 false, i1 false}
!89 = !{!"../drivers/rtc/class.c", i32 90, i32 47}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rtc/class.c", i32 156, i32 3}
!92 = !{ptr @rtc_resume.__UNIQUE_ID_ddebug228, !91, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rtc/class.c", i32 164, i32 3}
!95 = !{ptr @rtc_resume.__UNIQUE_ID_ddebug229, !94, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!96 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148964368, i64 2148964373, i64 2148964386, i64 2148964430, i64 2148964464, i64 2148964485}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
