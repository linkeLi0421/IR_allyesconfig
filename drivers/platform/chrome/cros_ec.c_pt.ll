; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cros_ec_irq_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_irq_thread\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_irq_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_irq_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_irq_thread\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_irq_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cros_ec_register\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_register\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_register\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cros_ec_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_unregister\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cros_ec_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_suspend\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cros_ec_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_resume\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cros_ec_platform = type { ptr, i16 }
%struct.atomic_t = type { i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.anon.88 = type { %struct.cros_ec_command, %union.anon.89 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%union.anon.89 = type { %struct.ec_response_host_sleep_event_v1 }
%struct.ec_response_host_sleep_event_v1 = type { %union.anon.92 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__kstrtab_cros_ec_irq_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_irq_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_irq_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_irq_thread to i32), ptr @__kstrtab_cros_ec_irq_thread, ptr @__kstrtabns_cros_ec_irq_thread }, section "___ksymtab+cros_ec_irq_thread", align 4
@cros_ec_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&ec_dev->event_notifier)->rwsem\00", [62 x i8] zeroinitializer }, align 32
@cros_ec_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ec_dev->lock\00", [18 x i8] zeroinitializer }, align 32
@cros_ec_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 205, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot identify the EC: error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros_ec_register\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/platform/chrome/cros_ec.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr = internal global ptr @cros_ec_register._entry, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chromeos-ec\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request IRQ %d: %d\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr.11 = internal global ptr @cros_ec_register._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-dev\00", [20 x i8] zeroinitializer }, align 32
@ec_p = internal global { %struct.cros_ec_platform, [24 x i8] } { %struct.cros_ec_platform { ptr @.str.22, i16 0 }, [24 x i8] zeroinitializer }, align 32
@cros_ec_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 228, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to create CrOS EC platform device\0A\00", [54 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr.15 = internal global ptr @cros_ec_register._entry.13, section ".printk_index", align 4
@pd_p = internal global { %struct.cros_ec_platform, [24 x i8] } { %struct.cros_ec_platform { ptr @.str.32, i16 16384 }, [24 x i8] zeroinitializer }, align 32
@cros_ec_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to create CrOS PD platform device\0A\00", [54 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr.18 = internal global ptr @cros_ec_register._entry.16, section ".printk_index", align 4
@cros_ec_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register sub-devices\0A\00", [32 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr.21 = internal global ptr @cros_ec_register._entry.19, section ".printk_index", align 4
@cros_ec_register.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.4, ptr @.str.5, ptr @.str.23, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_ec\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d clearing sleep event to ec\00", [60 x i8] zeroinitializer }, align 32
@cros_ec_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 284, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chrome EC device registered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_register._entry_ptr.27 = internal global ptr @cros_ec_register._entry.24, section ".printk_index", align 4
@__kstrtab_cros_ec_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_register to i32), ptr @__kstrtab_cros_ec_register, ptr @__kstrtabns_cros_ec_register }, section "___ksymtab+cros_ec_register", align 4
@__kstrtab_cros_ec_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_unregister to i32), ptr @__kstrtab_cros_ec_unregister, ptr @__kstrtabns_cros_ec_unregister }, section "___ksymtab+cros_ec_unregister", align 4
@cros_ec_suspend.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros_ec_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error %d sending suspend event to ec\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_cros_ec_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_suspend to i32), ptr @__kstrtab_cros_ec_suspend, ptr @__kstrtabns_cros_ec_suspend }, section "___ksymtab+cros_ec_suspend", align 4
@cros_ec_resume.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cros_ec_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d sending resume event to ec\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_cros_ec_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_resume to i32), ptr @__kstrtab_cros_ec_resume, ptr @__kstrtabns_cros_ec_resume }, section "___ksymtab+cros_ec_resume", align 4
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"cros_ec.file=drivers/platform/chrome/cros_ec\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"cros_ec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [44 x i8] c"cros_ec.description=ChromeOS EC core driver\00", section ".modinfo", align 1
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_pd\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 187, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 201, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 205, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 214, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 216, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 223, i32 58 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"ec_p\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 25, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 227, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"pd_p\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 30, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 246, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 258, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 269, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 284, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 336, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 380, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [37 x i8] c"../drivers/platform/chrome/cros_ec.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 31, i32 13 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_cros_ec_irq_thread, ptr @__ksymtab_cros_ec_register, ptr @__ksymtab_cros_ec_resume, ptr @__ksymtab_cros_ec_suspend, ptr @__ksymtab_cros_ec_unregister, ptr @cros_ec_register._entry, ptr @cros_ec_register._entry.13, ptr @cros_ec_register._entry.16, ptr @cros_ec_register._entry.19, ptr @cros_ec_register._entry.24, ptr @cros_ec_register._entry.9, ptr @cros_ec_register._entry_ptr, ptr @cros_ec_register._entry_ptr.11, ptr @cros_ec_register._entry_ptr.15, ptr @cros_ec_register._entry_ptr.18, ptr @cros_ec_register._entry_ptr.21, ptr @cros_ec_register._entry_ptr.27, ptr @cros_ec_register.__key, ptr @.str, ptr @cros_ec_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @ec_p, ptr @.str.14, ptr @pd_p, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_irq_thread(i32 %irq, ptr noundef %data) #0 align 64 {
entry:
  %wake_event.i = alloca i8, align 1
  %ec_has_more_events.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %data, i32 0, i32 1
  %event_notifier.i = getelementptr inbounds %struct.cros_ec_device, ptr %data, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %cros_ec_handle_event.exit.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake_event.i) #4
  %0 = ptrtoint ptr %wake_event.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wake_event.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_has_more_events.i) #4
  %1 = ptrtoint ptr %ec_has_more_events.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ec_has_more_events.i, align 1, !annotation !84
  %call.i = call i32 @cros_ec_get_next_event(ptr noundef %data, ptr noundef nonnull %wake_event.i, ptr noundef nonnull %ec_has_more_events.i) #4
  %2 = ptrtoint ptr %wake_event.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wake_event.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %land.lhs.true.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end.i_crit_edge, label %device_may_wakeup.exit.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

device_may_wakeup.exit.i:                         ; preds = %land.lhs.true.i
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %8, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.if.end.i_crit_edge, label %if.then.i

device_may_wakeup.exit.i.if.end.i_crit_edge:      ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %device_may_wakeup.exit.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.cros_ec_handle_event.exit_crit_edge

if.end.i.cros_ec_handle_event.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cros_ec_handle_event.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = call i32 @blocking_notifier_call_chain(ptr noundef %event_notifier.i, i32 noundef 0, ptr noundef %data) #4
  br label %cros_ec_handle_event.exit

cros_ec_handle_event.exit:                        ; preds = %if.then3.i, %if.end.i.cros_ec_handle_event.exit_crit_edge
  %9 = ptrtoint ptr %ec_has_more_events.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ec_has_more_events.i, align 1, !range !85
  %tobool6.i.not = icmp eq i8 %10, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_has_more_events.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake_event.i) #4
  br i1 %tobool6.i.not, label %do.end, label %cros_ec_handle_event.exit.do.body_crit_edge

cros_ec_handle_event.exit.do.body_crit_edge:      ; preds = %cros_ec_handle_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %cros_ec_handle_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_register(ptr noundef %ec_dev) #0 align 64 {
entry:
  %wake_event.i.i = alloca i8, align 1
  %ec_has_more_events.i.i = alloca i8, align 1
  %buf.i = alloca %struct.anon.88, align 4
  %pdevinfo.i.i165 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 22
  tail call void @__init_rwsem(ptr noundef %event_notifier, ptr noundef nonnull @.str, ptr noundef nonnull @cros_ec_register.__key) #4
  %head = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %head, align 8
  %max_request = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 5
  %3 = ptrtoint ptr %max_request to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %max_request, align 4
  %max_response = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 6
  %4 = ptrtoint ptr %max_response to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 12, ptr %max_response, align 2
  %max_passthru = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 7
  %5 = ptrtoint ptr %max_passthru to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %max_passthru, align 8
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 13
  %6 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %din_size, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %7, i32 noundef 3520) #4
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %8 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %din, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dout_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 14
  %9 = ptrtoint ptr %dout_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dout_size, align 8
  %call.i164 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %10, i32 noundef 3520) #4
  %dout = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 12
  %11 = ptrtoint ptr %dout to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i164, ptr %dout, align 8
  %tobool9.not = icmp eq ptr %call.i164, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.body12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cros_ec_register.__key.1) #4
  %call15 = tail call i32 @cros_ec_query_all(ptr noundef %ec_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %call15) #7
  br label %cleanup

if.end21:                                         ; preds = %do.body12
  %irq = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 10
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then22, label %if.end21.if.end32_crit_edge

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then22:                                        ; preds = %if.end21
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %13, ptr noundef nonnull @cros_ec_irq_handler, ptr noundef nonnull @cros_ec_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.8, ptr noundef %ec_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end32_crit_edge, label %do.end29

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %call24) #7
  br label %cleanup

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #4
  %18 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 48)
  %20 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fwnode.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %18, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.12, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ec_p, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #4
  %ec = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 29
  %31 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %ec, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.14) #7
  %34 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ec, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %37 = ptrtoint ptr %max_passthru to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_passthru, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool46.not = icmp eq i16 %38, 0
  br i1 %tobool46.not, label %if.end44.if.end61_crit_edge, label %if.then47

if.end44.if.end61_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then47:                                        ; preds = %if.end44
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i165) #4
  %41 = getelementptr inbounds i8, ptr %pdevinfo.i.i165, i32 8
  %42 = call ptr @memset(ptr %41, i32 255, i32 48)
  %43 = ptrtoint ptr %pdevinfo.i.i165 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %pdevinfo.i.i165, align 8
  %fwnode.i.i166 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 1
  %44 = ptrtoint ptr %fwnode.i.i166 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %fwnode.i.i166, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %41, align 8
  %name2.i.i167 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 3
  %46 = ptrtoint ptr %name2.i.i167 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.12, ptr %name2.i.i167, align 4
  %id3.i.i168 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 4
  %47 = ptrtoint ptr %id3.i.i168 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -2, ptr %id3.i.i168, align 8
  %res4.i.i169 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 5
  %48 = ptrtoint ptr %res4.i.i169 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %res4.i.i169, align 4
  %num_res.i.i170 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 6
  %49 = ptrtoint ptr %num_res.i.i170 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %num_res.i.i170, align 8
  %data5.i.i171 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 7
  %50 = ptrtoint ptr %data5.i.i171 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pd_p, ptr %data5.i.i171, align 4
  %size_data.i.i172 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 8
  %51 = ptrtoint ptr %size_data.i.i172 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %size_data.i.i172, align 8
  %dma_mask.i.i173 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 9
  %52 = ptrtoint ptr %dma_mask.i.i173 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %dma_mask.i.i173, align 8
  %properties.i.i174 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i165, i32 0, i32 10
  %53 = ptrtoint ptr %properties.i.i174 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %properties.i.i174, align 8
  %call.i.i175 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i165) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i165) #4
  %pd = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 30
  %54 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i175, ptr %pd, align 8
  %cmp.i176 = icmp ugt ptr %call.i.i175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end55, label %if.then47.if.end61_crit_edge

if.then47.if.end61_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.17) #7
  %57 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ec, align 4
  call void @platform_device_unregister(ptr noundef %58) #4
  %59 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pd, align 8
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.then47.if.end61_crit_edge, %if.end44.if.end61_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  %tobool62.not = icmp eq ptr %63, null
  br i1 %tobool62.not, label %if.end61.if.end73_crit_edge, label %if.then63

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then63:                                        ; preds = %if.end61
  %call64 = call i32 @devm_of_platform_populate(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.if.end73_crit_edge, label %if.then66

if.then63.if.end73_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  %pd67 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 30
  %64 = ptrtoint ptr %pd67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pd67, align 8
  call void @platform_device_unregister(ptr noundef %65) #4
  %66 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ec, align 4
  call void @platform_device_unregister(ptr noundef %67) #4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end73:                                         ; preds = %if.then63.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #4
  %68 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %69 = call ptr @memset(ptr %buf.i, i32 0, i32 24)
  %host_sleep_v1.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 21
  %70 = ptrtoint ptr %host_sleep_v1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %host_sleep_v1.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %68, align 4
  %73 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %buf.i, align 4
  br label %cros_ec_sleep_event.exit

if.else.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %68, align 4
  br label %cros_ec_sleep_event.exit

cros_ec_sleep_event.exit:                         ; preds = %if.else.i, %if.then.i
  %75 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 169, ptr %75, align 4
  %call.i177 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %ec_dev, ptr noundef nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp75 = icmp slt i32 %call.i177, 0
  br i1 %cmp75, label %do.body77, label %cros_ec_sleep_event.exit.if.end87_crit_edge

cros_ec_sleep_event.exit.if.end87_crit_edge:      ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

do.body77:                                        ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_register.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_register, %if.then82)) #4
          to label %if.end87 [label %if.then82], !srcloc !86

if.then82:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_register.__UNIQUE_ID_ddebug288, ptr noundef %78, ptr noundef nonnull @.str.23, i32 noundef %call.i177) #4
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %do.body77, %cros_ec_sleep_event.exit.if.end87_crit_edge
  %mkbp_event_supported = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 20
  %79 = ptrtoint ptr %mkbp_event_supported to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mkbp_event_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool88.not = icmp eq i8 %80, 0
  br i1 %tobool88.not, label %if.end87.do.end99_crit_edge, label %if.then89

if.end87.do.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end99

if.then89:                                        ; preds = %if.end87
  %notifier_ready = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 28
  %81 = ptrtoint ptr %notifier_ready to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @cros_ec_ready_event, ptr %notifier_ready, align 8
  %call92 = call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier_ready) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then89.do.end99_crit_edge, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then89.do.end99_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end99

do.end99:                                         ; preds = %if.then89.do.end99_crit_edge, %if.end87.do.end99_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.25) #7
  %82 = ptrtoint ptr %mkbp_event_supported to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mkbp_event_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool101.not = icmp eq i8 %83, 0
  br i1 %tobool101.not, label %do.end99.cleanup_crit_edge, label %do.end99.do.body.i_crit_edge

do.end99.do.body.i_crit_edge:                     ; preds = %do.end99
  br label %do.body.i

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i:                                        ; preds = %cros_ec_handle_event.exit.i.do.body.i_crit_edge, %do.end99.do.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake_event.i.i) #4
  %84 = ptrtoint ptr %wake_event.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %wake_event.i.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_has_more_events.i.i) #4
  %85 = ptrtoint ptr %ec_has_more_events.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %ec_has_more_events.i.i, align 1, !annotation !84
  %call.i.i178 = call i32 @cros_ec_get_next_event(ptr noundef %ec_dev, ptr noundef nonnull %wake_event.i.i, ptr noundef nonnull %ec_has_more_events.i.i) #4
  %86 = ptrtoint ptr %wake_event.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %wake_event.i.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i, label %do.body.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  %88 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev1, align 4
  %can_wakeup.i.i.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 12, i32 1
  %90 = ptrtoint ptr %can_wakeup.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i.i.i = load i16, ptr %can_wakeup.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i16 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %device_may_wakeup.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

device_may_wakeup.exit.i.i:                       ; preds = %land.lhs.true.i.i
  %wakeup.i.i.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 12, i32 6
  %91 = ptrtoint ptr %wakeup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wakeup.i.i.i, align 8
  %tobool2.i.not.i.i = icmp eq ptr %92, null
  br i1 %tobool2.i.not.i.i, label %device_may_wakeup.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

device_may_wakeup.exit.i.i.if.end.i.i_crit_edge:  ; preds = %device_may_wakeup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %device_may_wakeup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @pm_wakeup_dev_event(ptr noundef %89, i32 noundef 0, i1 noundef zeroext false) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %device_may_wakeup.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp.i.i = icmp sgt i32 %call.i.i178, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.cros_ec_handle_event.exit.i_crit_edge

if.end.i.i.cros_ec_handle_event.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cros_ec_handle_event.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i = call i32 @blocking_notifier_call_chain(ptr noundef %event_notifier, i32 noundef 0, ptr noundef %ec_dev) #4
  br label %cros_ec_handle_event.exit.i

cros_ec_handle_event.exit.i:                      ; preds = %if.then3.i.i, %if.end.i.i.cros_ec_handle_event.exit.i_crit_edge
  %93 = ptrtoint ptr %ec_has_more_events.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ec_has_more_events.i.i, align 1, !range !85
  %tobool6.i.not.i = icmp eq i8 %94, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_has_more_events.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake_event.i.i) #4
  br i1 %tobool6.i.not.i, label %cros_ec_handle_event.exit.i.cleanup_crit_edge, label %cros_ec_handle_event.exit.i.do.body.i_crit_edge

cros_ec_handle_event.exit.i.do.body.i_crit_edge:  ; preds = %cros_ec_handle_event.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

cros_ec_handle_event.exit.i.cleanup_crit_edge:    ; preds = %cros_ec_handle_event.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %cros_ec_handle_event.exit.i.cleanup_crit_edge, %do.end99.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.then66, %do.end55, %do.end40, %do.end29, %do.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end20 ], [ %call24, %do.end29 ], [ %36, %do.end40 ], [ %61, %do.end55 ], [ %call64, %if.then66 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call92, %if.then89.cleanup_crit_edge ], [ 0, %do.end99.cleanup_crit_edge ], [ 0, %cros_ec_handle_event.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_query_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_irq_handler(i32 noundef %irq, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #4
  %last_event_time = getelementptr inbounds %struct.cros_ec_device, ptr %data, i32 0, i32 27
  %0 = ptrtoint ptr %last_event_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i.i.i, ptr %last_event_time, align 8
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_ready_event(ptr noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -304
  %call = tail call i32 @cros_ec_get_host_event(ptr noundef %add.ptr) #4
  %0 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr i8, ptr %nb, i32 -240
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %call1 = tail call i32 @cros_ec_query_all(ptr noundef %add.ptr) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_unregister(ptr nocapture noundef readonly %ec_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 30
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ec = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 29
  %2 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_suspend(ptr noundef %ec_dev) #0 align 64 {
entry:
  %buf.i = alloca %struct.anon.88, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #4
  %2 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.anon.88, ptr %buf.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %buf.i, i32 0, i32 24)
  %host_sleep_v1.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 21
  %5 = ptrtoint ptr %host_sleep_v1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %host_sleep_v1.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %3, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %2, align 4
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %buf.i, align 4
  br label %cros_ec_sleep_event.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %2, align 4
  br label %cros_ec_sleep_event.exit

cros_ec_sleep_event.exit:                         ; preds = %if.else.i, %if.then.i
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 169, ptr %11, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %ec_dev, ptr noundef nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %cros_ec_sleep_event.exit.if.end7_crit_edge

cros_ec_sleep_event.exit.if.end7_crit_edge:       ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.body:                                          ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_suspend.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_suspend, %if.then5)) #4
          to label %if.end7 [label %if.then5], !srcloc !86

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_suspend.__UNIQUE_ID_ddebug289, ptr noundef %14, ptr noundef nonnull @.str.29, i32 noundef %call.i) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %cros_ec_sleep_event.exit.if.end7_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i29 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i29, label %if.end7.if.end15_crit_edge, label %device_may_wakeup.exit

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

device_may_wakeup.exit:                           ; preds = %if.end7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %16 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %17, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end15_crit_edge, label %if.then9

device_may_wakeup.exit.if.end15_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then9:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 10
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 8
  %call.i30 = call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool11.not = icmp eq i32 %call.i30, 0
  %wake_enabled = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 15
  %frombool14 = zext i1 %tobool11.not to i8
  %20 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool14, ptr %wake_enabled, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %device_may_wakeup.exit.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %irq16 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 10
  %21 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq16, align 8
  call void @disable_irq(i32 noundef %22) #4
  %wake_enabled17 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 15
  %23 = ptrtoint ptr %wake_enabled17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wake_enabled17, align 4, !range !85
  %was_wake_device = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 2
  %25 = ptrtoint ptr %was_wake_device to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %was_wake_device, align 8
  %suspended = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 16
  %26 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %suspended, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_resume(ptr noundef %ec_dev) #0 align 64 {
entry:
  %buf.i = alloca %struct.anon.88, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 16
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %suspended, align 1
  %irq = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 10
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %2) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #4
  %3 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.88, ptr %buf.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %buf.i, i32 0, i32 24)
  %host_sleep_v1.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 21
  %6 = ptrtoint ptr %host_sleep_v1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_sleep_v1.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %4, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 3
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %3, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %9, align 4
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %buf.i, align 4
  br label %cros_ec_sleep_event.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %3, align 4
  br label %cros_ec_sleep_event.exit

cros_ec_sleep_event.exit:                         ; preds = %if.else.i, %if.then.i
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 169, ptr %14, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %ec_dev, ptr noundef nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %cros_ec_sleep_event.exit.if.end5_crit_edge

cros_ec_sleep_event.exit.if.end5_crit_edge:       ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

do.body:                                          ; preds = %cros_ec_sleep_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_resume.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_resume, %if.then4)) #4
          to label %if.end5 [label %if.then4], !srcloc !86

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_resume.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.31, i32 noundef %call.i) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %cros_ec_sleep_event.exit.if.end5_crit_edge
  %wake_enabled = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 15
  %18 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wake_enabled, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not = icmp eq i8 %19, 0
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 8
  %call.i20 = call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 0) #4
  %22 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %wake_enabled, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %mkbp_event_supported.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 20
  %23 = ptrtoint ptr %mkbp_event_supported.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mkbp_event_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not6.i = icmp eq i8 %24, 0
  br i1 %tobool.not6.i, label %if.end11.cros_ec_report_events_during_suspend.exit_crit_edge, label %land.rhs.lr.ph.i

if.end11.cros_ec_report_events_during_suspend.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cros_ec_report_events_during_suspend.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end11
  %event_notifier.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 22
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %call.i21 = call i32 @cros_ec_get_next_event(ptr noundef %ec_dev, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp sgt i32 %call.i21, 0
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.cros_ec_report_events_during_suspend.exit_crit_edge

land.rhs.i.cros_ec_report_events_during_suspend.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cros_ec_report_events_during_suspend.exit

while.body.i:                                     ; preds = %land.rhs.i
  %call2.i = call i32 @blocking_notifier_call_chain(ptr noundef %event_notifier.i, i32 noundef 1, ptr noundef %ec_dev) #4
  %25 = ptrtoint ptr %mkbp_event_supported.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mkbp_event_supported.i, align 4
  %tobool.not.i22 = icmp eq i8 %26, 0
  br i1 %tobool.not.i22, label %while.body.i.cros_ec_report_events_during_suspend.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

while.body.i.cros_ec_report_events_during_suspend.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cros_ec_report_events_during_suspend.exit

cros_ec_report_events_during_suspend.exit:        ; preds = %while.body.i.cros_ec_report_events_during_suspend.exit_crit_edge, %land.rhs.i.cros_ec_report_events_during_suspend.exit_crit_edge, %if.end11.cros_ec_report_events_during_suspend.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_next_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__ksymtab_cros_ec_irq_thread, !1, !"__ksymtab_cros_ec_irq_thread", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec.c", i32 102, i32 1}
!2 = !{ptr @cros_ec_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/platform/chrome/cros_ec.c", i32 187, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cros_ec_register.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/platform/chrome/cros_ec.c", i32 201, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec.c", i32 205, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cros_ec_register._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @cros_ec_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec.c", i32 214, i32 7}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/platform/chrome/cros_ec.c", i32 216, i32 4}
!20 = !{ptr @cros_ec_register._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_register._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec.c", i32 223, i32 58}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/chrome/cros_ec.c", i32 227, i32 3}
!26 = !{ptr @cros_ec_register._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cros_ec_register._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_ec.c", i32 246, i32 4}
!30 = !{ptr @cros_ec_register._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cros_ec_register._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/platform/chrome/cros_ec.c", i32 258, i32 4}
!34 = !{ptr @cros_ec_register._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cros_ec_register._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_ec.c", i32 269, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cros_ec_register.__UNIQUE_ID_ddebug288, !37, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_ec.c", i32 284, i32 2}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cros_ec_register._entry.24, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cros_ec_register._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_cros_ec_register, !46, !"__ksymtab_cros_ec_register", i1 false, i1 false}
!46 = !{!"../drivers/platform/chrome/cros_ec.c", i32 295, i32 1}
!47 = !{ptr @__ksymtab_cros_ec_unregister, !48, !"__ksymtab_cros_ec_unregister", i1 false, i1 false}
!48 = !{!"../drivers/platform/chrome/cros_ec.c", i32 313, i32 1}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/platform/chrome/cros_ec.c", i32 336, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cros_ec_suspend.__UNIQUE_ID_ddebug289, !50, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!53 = !{ptr @__ksymtab_cros_ec_suspend, !54, !"__ksymtab_cros_ec_suspend", i1 false, i1 false}
!54 = !{!"../drivers/platform/chrome/cros_ec.c", i32 348, i32 1}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/platform/chrome/cros_ec.c", i32 380, i32 3}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cros_ec_resume.__UNIQUE_ID_ddebug290, !56, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!59 = !{ptr @__ksymtab_cros_ec_resume, !60, !"__ksymtab_cros_ec_resume", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec.c", i32 396, i32 1}
!61 = !{ptr @__UNIQUE_ID_file291, !62, !"__UNIQUE_ID_file291", i1 false, i1 false}
!62 = !{!"../drivers/platform/chrome/cros_ec.c", i32 400, i32 1}
!63 = !{ptr @__UNIQUE_ID_license292, !62, !"__UNIQUE_ID_license292", i1 false, i1 false}
!64 = !{ptr @__UNIQUE_ID_description293, !65, !"__UNIQUE_ID_description293", i1 false, i1 false}
!65 = !{!"../drivers/platform/chrome/cros_ec.c", i32 401, i32 1}
!66 = !{ptr @ec_p, !67, !"ec_p", i1 false, i1 false}
!67 = !{!"../drivers/platform/chrome/cros_ec.c", i32 25, i32 32}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/platform/chrome/cros_ec.c", i32 31, i32 13}
!70 = !{ptr @pd_p, !71, !"pd_p", i1 false, i1 false}
!71 = !{!"../drivers/platform/chrome/cros_ec.c", i32 30, i32 32}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/platform/chrome/cros_ec.c", i32 145, i32 3}
!74 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148289990, i64 2148289995, i64 2148290008, i64 2148290052, i64 2148290086, i64 2148290107}
