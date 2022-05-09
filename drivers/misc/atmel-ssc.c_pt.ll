; ModuleID = '/llk/IR_all_yes/drivers/misc/atmel-ssc.c_pt.bc'
source_filename = "../drivers/misc/atmel-ssc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssc_request\22, \22a\22\09"
module asm "\09.weak\09__crc_ssc_request\09\09\09\09"
module asm "\09.long\09__crc_ssc_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22ssc_request\22\09\09\09\09\09"
module asm "__kstrtabns_ssc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssc_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ssc_free\09\09\09\09"
module asm "\09.long\09__crc_ssc_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ssc_free\22\09\09\09\09\09"
module asm "__kstrtabns_ssc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atmel_ssc_platform_data = type { i32, i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@user_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @user_lock, i64 52), ptr getelementptr (i8, ptr @user_lock, i64 52) }, ptr @user_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ssc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ssc_list, ptr @ssc_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssc\00", [28 x i8] zeroinitializer }, align 32
@ssc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ssc: ssc%d platform device is missing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssc_request\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/misc/atmel-ssc.c\00", [39 x i8] zeroinitializer }, align 32
@ssc_request._entry_ptr = internal global ptr @ssc_request._entry, section ".printk_index", align 4
@ssc_request.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_ssc\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"module busy\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_ssc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_ssc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssc_request to i32), ptr @__kstrtab_ssc_request, ptr @__kstrtabns_ssc_request }, section "___ksymtab+ssc_request", align 4
@ssc_free.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc_free\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device already free\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ssc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ssc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssc_free to i32), ptr @__kstrtab_ssc_free, ptr @__kstrtabns_ssc_free }, section "___ksymtab+ssc_free", align 4
@__initcall__kmod_atmel_ssc__188_277_ssc_driver_init6 = internal global ptr @ssc_driver_init, section ".initcall6.init", align 4
@ssc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssc_probe, ptr @ssc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ssc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @atmel_ssc_devtypes, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ssc_driver_exit = internal global ptr @ssc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [62 x i8] c"atmel_ssc.author=Hans-Christian Egtvedt <hcegtvedt@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [58 x i8] c"atmel_ssc.description=SSC driver for Atmel AVR32 and AT91\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [38 x i8] c"atmel_ssc.file=drivers/misc/atmel-ssc\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [22 x i8] c"atmel_ssc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [29 x i8] c"atmel_ssc.alias=platform:ssc\00", section ".modinfo", align 1
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"user_lock\00", [22 x i8] zeroinitializer }, align 32
@atmel_ssc_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ssc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@atmel_ssc_devtypes = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91rm9200_ssc\00\00\00\00\00\00", i32 ptrtoint (ptr @at91rm9200_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9rl_ssc\00\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9rl_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9g45_ssc\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g45_config to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ssc_probe.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,clk-from-rk-pin\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@ssc_probe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.3, ptr @.str.14, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no pclk clock defined\0A\00", [41 x i8] zeroinitializer }, align 32
@ssc_probe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@ssc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 247, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Atmel SSC device at 0x%p (irq %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssc_probe._entry_ptr = internal global ptr @ssc_probe._entry, section ".printk_index", align 4
@ssc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.3, i32 250, ptr @.str.21, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to auto-setup ssc for audio\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ssc_probe._entry_ptr.22 = internal global ptr @ssc_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@at91rm9200_config = internal global { %struct.atmel_ssc_platform_data, [24 x i8] } zeroinitializer, align 32
@at91sam9rl_config = internal global { %struct.atmel_ssc_platform_data, [24 x i8] } { %struct.atmel_ssc_platform_data { i32 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@at91sam9g45_config = internal global { %struct.atmel_ssc_platform_data, [24 x i8] } { %struct.atmel_ssc_platform_data { i32 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"user_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"ssc_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 24, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 34, i32 48 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 48, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 54, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 75, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"ssc_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 268, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 23, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"atmel_ssc_dt_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 115, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"atmel_ssc_devtypes\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 99, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 198, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 212, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 222, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 224, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 236, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 246, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 250, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 156, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"at91rm9200_config\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 84, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"at91sam9rl_config\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 89, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"at91sam9g45_config\00", align 1
@___asan_gen_.121 = private constant [28 x i8] c"../drivers/misc/atmel-ssc.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 94, i32 39 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_ssc_driver_exit, ptr @__initcall__kmod_atmel_ssc__188_277_ssc_driver_init6, ptr @__ksymtab_ssc_free, ptr @__ksymtab_ssc_request, ptr @ssc_driver_exit, ptr @ssc_probe._entry, ptr @ssc_probe._entry.19, ptr @ssc_probe._entry_ptr, ptr @ssc_probe._entry_ptr.22, ptr @ssc_request._entry, ptr @ssc_request._entry_ptr, ptr @user_lock, ptr @ssc_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ssc_driver, ptr @.str.8, ptr @.str.9, ptr @atmel_ssc_dt_ids, ptr @atmel_ssc_devtypes, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @at91rm9200_config, ptr @at91sam9rl_config, ptr @at91sam9g45_config], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_devtypes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ssc_request(i32 noundef %ssc_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @user_lock, i32 noundef 0) #4
  %ssc.066 = load ptr, ptr @ssc_list, align 4
  %cmp.not67 = icmp eq ptr %ssc.066, @ssc_list
  br i1 %cmp.not67, label %entry.if.then18.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then18.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ssc.068 = phi ptr [ %ssc.0, %for.inc.for.body_crit_edge ], [ %ssc.066, %entry.for.body_crit_edge ]
  %pdev = getelementptr inbounds %struct.ssc_device, ptr %ssc.068, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %3, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %ssc_num)
  %cmp4 = icmp eq i32 %call, %ssc_num
  br i1 %cmp4, label %if.then5, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.le79 = getelementptr inbounds %struct.ssc_device, ptr %ssc.068, i32 0, i32 3
  %4 = ptrtoint ptr %pdev.le79 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.le79, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ssc_num, ptr %id, align 4
  br label %if.end22

if.else:                                          ; preds = %for.body
  %id8 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ssc_num)
  %cmp9 = icmp eq i32 %8, %ssc_num
  br i1 %cmp9, label %if.end22.loopexit, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %9 = ptrtoint ptr %ssc.068 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ssc.0 = load ptr, ptr %ssc.068, align 4
  %cmp.not = icmp eq ptr %ssc.0, @ssc_list
  br i1 %cmp.not, label %for.inc.if.then18.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.then18.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.critedge

if.then18.critedge:                               ; preds = %for.inc.if.then18.critedge_crit_edge, %entry.if.then18.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %ssc_num) #7
  br label %cleanup

if.end22.loopexit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.le = getelementptr inbounds %struct.ssc_device, ptr %ssc.068, i32 0, i32 3
  br label %if.end22

if.end22:                                         ; preds = %if.end22.loopexit, %if.then5
  %pdev74 = phi ptr [ %pdev.le, %if.end22.loopexit ], [ %pdev.le79, %if.then5 ]
  %user = getelementptr inbounds %struct.ssc_device, ptr %ssc.068, i32 0, i32 6
  %10 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.end39, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssc_request.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssc_request, %if.then32)) #4
          to label %cleanup [label %if.then32], !srcloc !86

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %pdev74 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev74, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssc_request.__UNIQUE_ID_ddebug183, ptr noundef %dev34, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %user, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %ssc.068, i32 0, i32 5
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call41 = tail call i32 @clk_prepare(ptr noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then32, %if.then24, %if.then18.critedge
  %retval.0 = phi ptr [ %ssc.068, %if.end39 ], [ inttoptr (i32 -19 to ptr), %if.then18.critedge ], [ inttoptr (i32 -16 to ptr), %if.then24 ], [ inttoptr (i32 -16 to ptr), %if.then32 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssc_free(ptr nocapture noundef %ssc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @user_lock, i32 noundef 0) #4
  %user = getelementptr inbounds %struct.ssc_device, ptr %ssc, i32 0, i32 6
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %user, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %ssc, i32 0, i32 5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %4) #4
  br label %if.end9

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssc_free.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssc_free, %if.then5)) #4
          to label %if.end9.critedge [label %if.then5], !srcloc !86

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.ssc_device, ptr %ssc, i32 0, i32 3
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssc_free.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  br label %if.end9

if.end9.critedge:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssc_probe.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssc_probe, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !86

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssc_probe.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.11) #4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %pdev8 = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev8, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  %call.i141 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_ssc_dt_ids, ptr noundef nonnull %2) #4
  %cmp.i = icmp eq ptr %call.i141, null
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i141, i32 0, i32 3
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  br label %atmel_ssc_get_driver_data.exit

if.end4.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data.i, align 4
  %9 = inttoptr i32 %8 to ptr
  br label %atmel_ssc_get_driver_data.exit

atmel_ssc_get_driver_data.exit:                   ; preds = %if.end4.i, %if.end.i
  %retval.1.i = phi ptr [ %9, %if.end4.i ], [ %4, %if.end.i ]
  %tobool10.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool10.not, label %atmel_ssc_get_driver_data.exit.cleanup_crit_edge, label %if.end12

atmel_ssc_get_driver_data.exit.cleanup_crit_edge: ; preds = %atmel_ssc_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %atmel_ssc_get_driver_data.exit
  %pdata = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.1.i, ptr %pdata, align 4
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call.i142 = tail call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.12, ptr noundef null) #4
  %tobool.i = icmp ne ptr %call.i142, null
  %clk_from_rk_pin = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 8
  %frombool19 = zext i1 %tobool.i to i8
  %13 = ptrtoint ptr %clk_from_rk_pin to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool19, ptr %clk_from_rk_pin, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call21) #4
  %regs24 = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regs24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %regs24, align 4
  %cmp.i143 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call21, align 4
  %phybase = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phybase, align 4
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %clk, align 4
  %cmp.i144 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.body36, label %if.end53

do.body36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssc_probe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssc_probe, %if.then48)) #4
          to label %cleanup [label %if.then48], !srcloc !86

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssc_probe.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.14) #4
  br label %cleanup

if.end53:                                         ; preds = %if.end30
  %call.i145 = tail call i32 @clk_prepare(ptr noundef %call32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end.i147, label %if.end53.clk_prepare_enable.exit_crit_edge

if.end53.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i147:                                      ; preds = %if.end53
  %call1.i = tail call i32 @clk_enable(ptr noundef %call32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i147.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i147.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call32) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i147.clk_prepare_enable.exit_crit_edge, %if.end53.clk_prepare_enable.exit_crit_edge
  %20 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs24, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #4, !srcloc !87
  %add.ptr58 = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #4, !srcloc !88
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #4
  tail call void @clk_unprepare(ptr noundef %24) #4
  %call61 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.ssc_device, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call61, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool63.not = icmp eq i32 %call61, 0
  br i1 %tobool63.not, label %do.body65, label %if.end82

do.body65:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssc_probe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssc_probe, %if.then77)) #4
          to label %cleanup [label %if.then77], !srcloc !86

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssc_probe.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.15) #4
  br label %cleanup

if.end82:                                         ; preds = %clk_prepare_enable.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @user_lock, i32 noundef 0) #4
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ssc_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %26, ptr noundef nonnull @ssc_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end82.list_add_tail.exit_crit_edge

if.end82.list_add_tail.exit_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call.i, ptr getelementptr inbounds (%struct.list_head, ptr @ssc_list, i32 0, i32 1), align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ssc_list, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end82.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs24, align 4
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %32, i32 noundef %34) #7
  %call89 = tail call fastcc i32 @ssc_sound_dai_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end94

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end94:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %list_add_tail.exit.cleanup_crit_edge, %if.then77, %do.body65, %if.then48, %do.body36, %if.then27, %atmel_ssc_get_driver_data.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %15, %if.then27 ], [ -12, %if.then5 ], [ -19, %atmel_ssc_get_driver_data.exit.cleanup_crit_edge ], [ -6, %if.then48 ], [ -6, %if.then77 ], [ 0, %do.end94 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ -12, %do.body ], [ -6, %do.body36 ], [ -6, %do.body65 ], [ -19, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sound_dai.i = getelementptr inbounds %struct.ssc_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sound_dai.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sound_dai.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ssc_sound_dai_remove.exit_crit_edge, label %if.end.i

entry.ssc_sound_dai_remove.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssc_sound_dai_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i = getelementptr inbounds %struct.ssc_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str) #4
  tail call void @atmel_ssc_put_audio(i32 noundef %call.i) #4
  br label %ssc_sound_dai_remove.exit

ssc_sound_dai_remove.exit:                        ; preds = %if.end.i, %entry.ssc_sound_dai_remove.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @user_lock, i32 noundef 0) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %ssc_sound_dai_remove.exit.list_del.exit_crit_edge

ssc_sound_dai_remove.exit.list_del.exit_crit_edge: ; preds = %ssc_sound_dai_remove.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ssc_sound_dai_remove.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ssc_sound_dai_remove.exit.list_del.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @user_lock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssc_sound_dai_probe(ptr nocapture noundef %ssc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ssc_device, ptr %ssc, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %sound_dai = getelementptr inbounds %struct.ssc_device, ptr %ssc, i32 0, i32 9
  %4 = ptrtoint ptr %sound_dai to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sound_dai, align 1
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_alias_get_id(ptr noundef %3, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @atmel_ssc_set_audio(i32 noundef %call1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %frombool = zext i1 %tobool.not to i8
  %5 = ptrtoint ptr %sound_dai to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %sound_dai, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_ssc_set_audio(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_ssc_put_audio(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !48, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/atmel-ssc.c", i32 34, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/atmel-ssc.c", i32 48, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ssc_request._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ssc_request._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/atmel-ssc.c", i32 54, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ssc_request.__UNIQUE_ID_ddebug183, !9, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!12 = !{ptr @__ksymtab_ssc_request, !13, !"__ksymtab_ssc_request", i1 false, i1 false}
!13 = !{!"../drivers/misc/atmel-ssc.c", i32 64, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/atmel-ssc.c", i32 75, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ssc_free.__UNIQUE_ID_ddebug184, !15, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!18 = !{ptr @__ksymtab_ssc_free, !19, !"__ksymtab_ssc_free", i1 false, i1 false}
!19 = !{!"../drivers/misc/atmel-ssc.c", i32 82, i32 1}
!20 = !{ptr @__initcall__kmod_atmel_ssc__188_277_ssc_driver_init6, !21, !"__initcall__kmod_atmel_ssc__188_277_ssc_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/misc/atmel-ssc.c", i32 277, i32 1}
!22 = !{ptr @__exitcall_ssc_driver_exit, !21, !"__exitcall_ssc_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author189, !24, !"__UNIQUE_ID_author189", i1 false, i1 false}
!24 = !{!"../drivers/misc/atmel-ssc.c", i32 279, i32 1}
!25 = !{ptr @__UNIQUE_ID_description190, !26, !"__UNIQUE_ID_description190", i1 false, i1 false}
!26 = !{!"../drivers/misc/atmel-ssc.c", i32 280, i32 1}
!27 = !{ptr @__UNIQUE_ID_file191, !28, !"__UNIQUE_ID_file191", i1 false, i1 false}
!28 = !{!"../drivers/misc/atmel-ssc.c", i32 281, i32 1}
!29 = !{ptr @__UNIQUE_ID_license192, !28, !"__UNIQUE_ID_license192", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias193, !31, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!31 = !{!"../drivers/misc/atmel-ssc.c", i32 282, i32 1}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/atmel-ssc.c", i32 23, i32 8}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @user_lock, !33, !"user_lock", i1 false, i1 false}
!36 = !{ptr @ssc_list, !37, !"ssc_list", i1 false, i1 false}
!37 = !{!"../drivers/misc/atmel-ssc.c", i32 24, i32 8}
!38 = !{ptr @ssc_driver, !39, !"ssc_driver", i1 false, i1 false}
!39 = !{!"../drivers/misc/atmel-ssc.c", i32 268, i32 31}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/atmel-ssc.c", i32 198, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ssc_probe.__UNIQUE_ID_ddebug185, !41, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/atmel-ssc.c", i32 212, i32 30}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/atmel-ssc.c", i32 222, i32 38}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/atmel-ssc.c", i32 224, i32 3}
!50 = !{ptr @ssc_probe.__UNIQUE_ID_ddebug186, !49, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/atmel-ssc.c", i32 236, i32 3}
!53 = !{ptr @ssc_probe.__UNIQUE_ID_ddebug187, !52, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/atmel-ssc.c", i32 246, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ssc_probe._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @ssc_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/atmel-ssc.c", i32 250, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ssc_probe._entry.19, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ssc_probe._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/atmel-ssc.c", i32 156, i32 33}
!67 = !{ptr @atmel_ssc_dt_ids, !68, !"atmel_ssc_dt_ids", i1 false, i1 false}
!68 = !{!"../drivers/misc/atmel-ssc.c", i32 115, i32 34}
!69 = !{ptr @at91rm9200_config, !70, !"at91rm9200_config", i1 false, i1 false}
!70 = !{!"../drivers/misc/atmel-ssc.c", i32 84, i32 39}
!71 = !{ptr @at91sam9rl_config, !72, !"at91sam9rl_config", i1 false, i1 false}
!72 = !{!"../drivers/misc/atmel-ssc.c", i32 89, i32 39}
!73 = !{ptr @at91sam9g45_config, !74, !"at91sam9g45_config", i1 false, i1 false}
!74 = !{!"../drivers/misc/atmel-ssc.c", i32 94, i32 39}
!75 = !{ptr @atmel_ssc_devtypes, !76, !"atmel_ssc_devtypes", i1 false, i1 false}
!76 = !{!"../drivers/misc/atmel-ssc.c", i32 99, i32 40}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148294072, i64 2148294077, i64 2148294090, i64 2148294134, i64 2148294168, i64 2148294189}
!87 = !{i64 4819948}
!88 = !{i64 4820366}
!89 = !{i8 0, i8 2}
