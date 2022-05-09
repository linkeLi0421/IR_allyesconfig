; ModuleID = '/llk/IR_all_yes/arch/arm/mach-at91/pm.c_pt.bc'
source_filename = "../arch/arm/mach-at91/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+at91_suspend_entering_slow_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_at91_suspend_entering_slow_clock\09\09\09\09"
module asm "\09.long\09__crc_at91_suspend_entering_slow_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_at91_suspend_entering_slow_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22at91_suspend_entering_slow_clock\22\09\09\09\09\09"
module asm "__kstrtabns_at91_suspend_entering_slow_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.at91_soc_pm = type { ptr, ptr, ptr, ptr, %struct.at91_pm_data, %struct.at91_pm_sfrbu_regs, ptr }
%struct.at91_pm_data = type { ptr, [2 x ptr], ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.at91_pm_sfrbu_regs = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
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
%struct.ramc_info = type { ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_info = type { i32, i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wakeup_source_info = type { i32, i32, i8 }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.at91_pm_bu = type { i32, i32, i32, i32, [9 x i32] }

@soc_pm = internal global { %struct.at91_soc_pm, [40 x i8] } { %struct.at91_soc_pm { ptr null, ptr null, ptr null, ptr null, %struct.at91_pm_data { ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0 }, %struct.at91_pm_sfrbu_regs zeroinitializer, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_at91_suspend_entering_slow_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_at91_suspend_entering_slow_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_at91_suspend_entering_slow_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @at91_suspend_entering_slow_clock to i32), ptr @__kstrtab_at91_suspend_entering_slow_clock, ptr @__kstrtabns_at91_suspend_entering_slow_clock }, section "___ksymtab+at91_suspend_entering_slow_clock", align 4
@sama5_pm_init.modes = internal constant [3 x i32] [i32 0, i32 1, i32 2], section ".init.rodata", align 4
@sama5d2_pm_init.modes = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], section ".init.rodata", align 4
@sama5d2_pm_init.iomaps = internal constant [5 x i32] [i32 0, i32 0, i32 0, i32 1, i32 3], section ".init.rodata", align 4
@sama5d2_ws_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ws_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 36) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@sama7_pm_init.modes = internal constant [4 x i32] [i32 0, i32 1, i32 3, i32 4], section ".init.rodata", align 4
@sama7_pm_init.iomaps = internal constant [5 x i32] [i32 0, i32 2, i32 0, i32 3, i32 3], section ".init.rodata", align 4
@sama7g5_ws_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-rtt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ws_info, i64 48) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@__setup_str_at91_pm_modes_select = internal constant [15 x i8] c"atmel.pm_modes\00", section ".init.rodata", align 1
@__setup_at91_pm_modes_select = internal global %struct.obs_kernel_param { ptr @__setup_str_at91_pm_modes_select, ptr @at91_pm_modes_select, i32 1 }, section ".init.setup", align 4
@at91_pm_modes_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014AT91: PM: %s mode not supported! Using %s.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at91_pm_modes_validate\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch/arm/mach-at91/pm.c\00", [40 x i8] zeroinitializer }, align 32
@at91_pm_modes_validate._entry_ptr = internal global ptr @at91_pm_modes_validate._entry, section ".printk_index", align 4
@pm_modes = internal constant [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.5 }, %struct.match_token { i32 1, ptr @.str.6 }, %struct.match_token { i32 2, ptr @.str.7 }, %struct.match_token { i32 3, ptr @.str.8 }, %struct.match_token { i32 4, ptr @.str.9 }, %struct.match_token { i32 -1, ptr null }], section ".init.rodata", align 4
@at91_pm_modes_validate._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@at91_pm_modes_validate._entry_ptr.4 = internal global ptr @at91_pm_modes_validate._entry.3, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulp0\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulp0-fast\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulp1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"backup\00", [25 x i8] zeroinitializer }, align 32
@ramc_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-sdramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ramc_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-sdramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ddramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-ddramc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ramc_infos, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-uddrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@at91_dt_ramc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unable to map ramc[%d] cpu registers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at91_dt_ramc\00", [19 x i8] zeroinitializer }, align 32
@at91_dt_ramc._entry_ptr = internal global ptr @at91_dt_ramc._entry, section ".printk_index", align 4
@at91_dt_ramc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013unable to find compatible ram controller node in dtb\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_dt_ramc._entry_ptr.14 = internal global ptr @at91_dt_ramc._entry.12, section ".printk_index", align 4
@ramc_phy_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-ddr3phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@at91_dt_ramc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unable to map ramc phy cpu registers\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_dt_ramc._entry_ptr.17 = internal global ptr @at91_dt_ramc._entry.15, section ".printk_index", align 4
@at91_dt_ramc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013DDR PHY is mandatory!\0A\00", [39 x i8] zeroinitializer }, align 32
@at91_dt_ramc._entry_ptr.20 = internal global ptr @at91_dt_ramc._entry.18, section ".printk_index", align 4
@at91_dt_ramc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014ramc no standby function available\0A\00", [58 x i8] zeroinitializer }, align 32
@at91_dt_ramc._entry_ptr.23 = internal global ptr @at91_dt_ramc._entry.21, section ".printk_index", align 4
@at91_cpuidle_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.24, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@ramc_infos = internal constant [4 x %struct.ramc_info] [%struct.ramc_info { ptr @at91rm9200_standby, i32 0 }, %struct.ramc_info { ptr @at91sam9_sdram_standby, i32 1 }, %struct.ramc_info { ptr @at91_ddr_standby, i32 2 }, %struct.ramc_info { ptr @sama5d3_ddr_standby, i32 2 }], section ".init.rodata", align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpuidle-at91\00", [19 x i8] zeroinitializer }, align 32
@atmel_pmc_ids = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmc_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pmc_infos, i64 60) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@at91_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013AT91: PM not supported, PMC not found\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at91_pm_init\00", [19 x i8] zeroinitializer }, align 32
@at91_pm_init._entry_ptr = internal global ptr @at91_pm_init._entry, section ".printk_index", align 4
@at91_suspend_sram_fn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@at91_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @at91_pm_valid_state, ptr @at91_pm_begin, ptr null, ptr null, ptr @at91_pm_enter, ptr null, ptr null, ptr null, ptr @at91_pm_end, ptr null }, [56 x i8] zeroinitializer }, align 32
@at91_pm_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016AT91: PM: standby: %s, suspend: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@at91_pm_init._entry_ptr.29 = internal global ptr @at91_pm_init._entry.27, section ".printk_index", align 4
@at91_pm_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016AT91: PM not supported, due to no SRAM allocated\0A\00", [44 x i8] zeroinitializer }, align 32
@at91_pm_init._entry_ptr.32 = internal global ptr @at91_pm_init._entry.30, section ".printk_index", align 4
@pmc_infos = internal constant [6 x %struct.pmc_info] [%struct.pmc_info { i32 18, i32 48, i32 1 }, %struct.pmc_info { i32 192, i32 48, i32 1 }, %struct.pmc_info { i32 64, i32 48, i32 1 }, %struct.pmc_info { i32 0, i32 48, i32 1 }, %struct.pmc_info { i32 192, i32 40, i32 2 }, %struct.pmc_info { i32 0, i32 40, i32 2 }], section ".init.rodata", align 4
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmio-sram\00", [22 x i8] zeroinitializer }, align 32
@at91_pm_sram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to find sram device!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_pm_sram_init\00", [46 x i8] zeroinitializer }, align 32
@at91_pm_sram_init._entry_ptr = internal global ptr @at91_pm_sram_init._entry, section ".printk_index", align 4
@at91_pm_sram_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: sram pool unavailable!\0A\00", [34 x i8] zeroinitializer }, align 32
@at91_pm_sram_init._entry_ptr.38 = internal global ptr @at91_pm_sram_init._entry.36, section ".printk_index", align 4
@at91_pm_suspend_in_sram_sz = external dso_local local_unnamed_addr global i32, align 4
@at91_pm_sram_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: unable to alloc sram!\0A\00", [35 x i8] zeroinitializer }, align 32
@at91_pm_sram_init._entry_ptr.41 = internal global ptr @at91_pm_sram_init._entry.39, section ".printk_index", align 4
@at91_pm_sram_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014SRAM: Could not map\0A\00", [41 x i8] zeroinitializer }, align 32
@at91_pm_sram_init._entry_ptr.44 = internal global ptr @at91_pm_sram_init._entry.42, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@at91_pm_config_ws._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013AT91: PM: no ULP1 wakeup sources found!\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_pm_config_ws\00", [46 x i8] zeroinitializer }, align 32
@at91_pm_config_ws._entry_ptr = internal global ptr @at91_pm_config_ws._entry, section ".printk_index", align 4
@at91_pm_enter.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_pm_enter\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AT91: PM - bogus suspend state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@at91_pm_verify_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013AT91: PM - Suspend-to-RAM with USB still active\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_pm_verify_clocks\00", [42 x i8] zeroinitializer }, align 32
@at91_pm_verify_clocks._entry_ptr = internal global ptr @at91_pm_verify_clocks._entry, section ".printk_index", align 4
@at91_pm_verify_clocks._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013AT91: PM - Suspend-to-RAM with PCK%d src %d\0A\00", [49 x i8] zeroinitializer }, align 32
@at91_pm_verify_clocks._entry_ptr.54 = internal global ptr @at91_pm_verify_clocks._entry.52, section ".printk_index", align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@atmel_shdwc_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@at91_pm_modes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: failed to find shdwc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_pm_modes_init\00", [45 x i8] zeroinitializer }, align 32
@at91_pm_modes_init._entry_ptr = internal global ptr @at91_pm_modes_init._entry, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,sama5d2-sfrbu\00", [44 x i8] zeroinitializer }, align 32
@at91_pm_modes_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: failed to find sfrbu!\0A\00", [35 x i8] zeroinitializer }, align 32
@at91_pm_modes_init._entry_ptr.60 = internal global ptr @at91_pm_modes_init._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,sama5d2-securam\00", [42 x i8] zeroinitializer }, align 32
@at91_pm_backup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: failed to find securam device!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at91_pm_backup_init\00", [44 x i8] zeroinitializer }, align 32
@at91_pm_backup_init._entry_ptr = internal global ptr @at91_pm_backup_init._entry, section ".printk_index", align 4
@at91_pm_backup_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: securam pool unavailable!\0A\00", [63 x i8] zeroinitializer }, align 32
@at91_pm_backup_init._entry_ptr.66 = internal global ptr @at91_pm_backup_init._entry.64, section ".printk_index", align 4
@at91_pm_backup_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: unable to alloc securam!\0A\00", [32 x i8] zeroinitializer }, align 32
@at91_pm_backup_init._entry_ptr.69 = internal global ptr @at91_pm_backup_init._entry.67, section ".printk_index", align 4
@canary = internal global { i32, [28 x i8] } { i32 -1515870811, [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ws_info = internal constant { [6 x %struct.wakeup_source_info], [56 x i8] } { [6 x %struct.wakeup_source_info] [%struct.wakeup_source_info { i32 1024, i32 0, i8 1 }, %struct.wakeup_source_info { i32 131072, i32 131072, i8 0 }, %struct.wakeup_source_info { i32 262144, i32 0, i8 0 }, %struct.wakeup_source_info { i32 524288, i32 0, i8 0 }, %struct.wakeup_source_info { i32 65536, i32 0, i8 0 }, %struct.wakeup_source_info { i32 16777216, i32 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@switch.table.at91_pm_valid_state = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"soc_pm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 95, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"sama5d2_ws_ids\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 147, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"sama7g5_ws_ids\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 170, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1027, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1039, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 103, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 104, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 105, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 106, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 107, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 646, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 663, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 672, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 680, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 686, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"at91_cpuidle_device\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 486, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 487, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1059, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"at91_suspend_sram_fn\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 347, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"at91_pm_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 479, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1075, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1079, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 724, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 733, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 739, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 745, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 753, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 232, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 459, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 311, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 323, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [16 x i8] c"atmel_shdwc_ids\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 859, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 883, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 903, i32 44 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 905, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 815, i32 43 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 822, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 828, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 834, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"canary\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 130, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 786, i32 35 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 789, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 792, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant [8 x i8] c"ws_info\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 138, i32 40 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [27 x i8] c"../arch/arm/mach-at91/pm.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1253, i32 19 }
@___asan_gen_.306 = private unnamed_addr constant [33 x i8] c"switch.table.at91_pm_valid_state\00", align 1
@llvm.compiler.used = appending global [102 x ptr] [ptr @__ksymtab_at91_suspend_entering_slow_clock, ptr @__setup_at91_pm_modes_select, ptr @at91_dt_ramc._entry, ptr @at91_dt_ramc._entry.12, ptr @at91_dt_ramc._entry.15, ptr @at91_dt_ramc._entry.18, ptr @at91_dt_ramc._entry.21, ptr @at91_dt_ramc._entry_ptr, ptr @at91_dt_ramc._entry_ptr.14, ptr @at91_dt_ramc._entry_ptr.17, ptr @at91_dt_ramc._entry_ptr.20, ptr @at91_dt_ramc._entry_ptr.23, ptr @at91_pm_backup_init._entry, ptr @at91_pm_backup_init._entry.64, ptr @at91_pm_backup_init._entry.67, ptr @at91_pm_backup_init._entry_ptr, ptr @at91_pm_backup_init._entry_ptr.66, ptr @at91_pm_backup_init._entry_ptr.69, ptr @at91_pm_config_ws._entry, ptr @at91_pm_config_ws._entry_ptr, ptr @at91_pm_init._entry, ptr @at91_pm_init._entry.27, ptr @at91_pm_init._entry.30, ptr @at91_pm_init._entry_ptr, ptr @at91_pm_init._entry_ptr.29, ptr @at91_pm_init._entry_ptr.32, ptr @at91_pm_modes_init._entry, ptr @at91_pm_modes_init._entry.58, ptr @at91_pm_modes_init._entry_ptr, ptr @at91_pm_modes_init._entry_ptr.60, ptr @at91_pm_modes_validate._entry, ptr @at91_pm_modes_validate._entry.3, ptr @at91_pm_modes_validate._entry_ptr, ptr @at91_pm_modes_validate._entry_ptr.4, ptr @at91_pm_sram_init._entry, ptr @at91_pm_sram_init._entry.36, ptr @at91_pm_sram_init._entry.39, ptr @at91_pm_sram_init._entry.42, ptr @at91_pm_sram_init._entry_ptr, ptr @at91_pm_sram_init._entry_ptr.38, ptr @at91_pm_sram_init._entry_ptr.41, ptr @at91_pm_sram_init._entry_ptr.44, ptr @at91_pm_verify_clocks._entry, ptr @at91_pm_verify_clocks._entry.52, ptr @at91_pm_verify_clocks._entry_ptr, ptr @at91_pm_verify_clocks._entry_ptr.54, ptr @soc_pm, ptr @sama5d2_ws_ids, ptr @sama7g5_ws_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @at91_cpuidle_device, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @at91_suspend_sram_fn, ptr @at91_pm_ops, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @atmel_shdwc_ids, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @canary, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @ws_info, ptr @.str.73, ptr @switch.table.at91_pm_valid_state], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_pm to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_ws_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_ws_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_modes_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_modes_validate._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_ramc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_ramc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_ramc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_ramc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_ramc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_cpuidle_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_suspend_sram_fn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_sram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_sram_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_sram_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_sram_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_config_ws._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_verify_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_verify_clocks._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_shdwc_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_modes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_modes_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_backup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_backup_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pm_backup_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canary to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.at91_pm_valid_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @at91_suspend_entering_slow_clock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @at91rm9200_pm_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sam9x60_pm_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @at91sam9_pm_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sama5_pm_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama5_pm_init.modes, i32 noundef 3) #14
  %call = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @at91_pm_init() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_pm_modes_validate(ptr nocapture noundef readonly %modes, i32 noundef %len) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp63 = icmp sgt i32 %len, 0
  br i1 %cmp63, label %entry.for.body_crit_edge, label %entry.if.then20_crit_edge

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %conv67 = phi i32 [ %conv, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.066 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %standby.065 = phi i8 [ %standby.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %suspend.064 = phi i8 [ %suspend.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %standby.065)
  %tobool.not = icmp eq i8 %standby.065, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %suspend.064)
  %tobool4.not = icmp eq i8 %suspend.064, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %modes, i32 %conv67
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp5 = icmp eq i32 %1, %2
  %or.cond57 = select i1 %cmp5, i1 %tobool.not, i1 false
  br i1 %or.cond57, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp13 = icmp eq i32 %1, %3
  %4 = select i1 %cmp13, i1 %tobool4.not, i1 false
  %spec.select = select i1 %4, i8 1, i8 %suspend.064
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end.for.inc_crit_edge
  %suspend.1 = phi i8 [ %suspend.064, %if.end.for.inc_crit_edge ], [ %spec.select, %if.end10 ]
  %standby.1 = phi i8 [ 1, %if.end.for.inc_crit_edge ], [ %standby.065, %if.end10 ]
  %inc = add i8 %i.066, 1
  %conv = zext i8 %inc to i32
  %cmp = icmp slt i32 %conv, %len
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %standby.1)
  %tobool19.not = icmp eq i8 %standby.1, 0
  br i1 %tobool19.not, label %for.end.if.then20_crit_edge, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.end.if.then20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %for.end.if.then20_crit_edge, %entry.if.then20_crit_edge
  %suspend.0.lcssa73 = phi i8 [ %suspend.1, %for.end.if.then20_crit_edge ], [ 0, %entry.if.then20_crit_edge ]
  %5 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp eq i32 %5, 0
  %. = zext i1 %cmp21 to i32
  %6 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %pattern = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %6, i32 1
  %7 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pattern, align 4
  %pattern27 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %., i32 1
  %9 = ptrtoint ptr %pattern27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pattern27, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef %10) #15
  store i32 %., ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %for.end.if.end28_crit_edge
  %suspend.0.lcssa72 = phi i8 [ %suspend.0.lcssa73, %if.then20 ], [ %suspend.1, %for.end.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %suspend.0.lcssa72)
  %tobool29.not = icmp eq i8 %suspend.0.lcssa72, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp31 = icmp ne i32 %11, 1
  %.58 = zext i1 %cmp31 to i32
  %12 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %pattern41 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %12, i32 1
  %13 = ptrtoint ptr %pattern41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pattern41, align 4
  %pattern43 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %.58, i32 1
  %15 = ptrtoint ptr %pattern43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pattern43, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, ptr noundef %16) #15
  store i32 %.58, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then30, %if.end28.if.end45_crit_edge, %for.body.if.end45_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_dt_ramc(i1 noundef zeroext %phy_mandatory) unnamed_addr #3 section ".init.text" align 64 {
entry:
  %of_id = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_id) #11
  %0 = ptrtoint ptr %of_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_id, align 4, !annotation !186
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ramc_ids, ptr noundef nonnull %of_id) #11
  %tobool.not82 = icmp eq ptr %call, null
  br i1 %tobool.not82, label %entry.unmap_ramc.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.unmap_ramc.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ramc.thread

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %np.085 = phi ptr [ %call11, %if.end10.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %idx.084 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %standby.083 = phi ptr [ %standby.2, %if.end10.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %call1 = call ptr @of_iomap(ptr noundef nonnull %np.085, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 %idx.084
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %idx.084) #15
  call void @of_node_put(ptr noundef nonnull %np.085) #11
  br label %unmap_ramc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %of_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_id, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %standby.083, null
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.if.end9_crit_edge
  %standby.1 = phi ptr [ %standby.083, %if.then6.if.end9_crit_edge ], [ %7, %if.then8 ]
  %memctrl = getelementptr inbounds %struct.ramc_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %memctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %memctrl, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 4), align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end.if.end10_crit_edge
  %standby.2 = phi ptr [ %standby.1, %if.end9 ], [ %standby.083, %if.end.if.end10_crit_edge ]
  %inc = add i32 %idx.084, 1
  %call11 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.085, ptr noundef nonnull @ramc_ids, ptr noundef nonnull %of_id) #11
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.end, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool12.not = icmp eq i32 %inc, 0
  br i1 %tobool12.not, label %for.end.unmap_ramc.thread_crit_edge, label %if.end19

for.end.unmap_ramc.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ramc.thread

unmap_ramc.thread:                                ; preds = %for.end.unmap_ramc.thread_crit_edge, %entry.unmap_ramc.thread_crit_edge
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %call20 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ramc_phy_ids, ptr noundef nonnull %of_id) #11
  %tobool22.not87 = icmp eq ptr %call20, null
  br i1 %tobool22.not87, label %if.end19.for.end35_crit_edge, label %if.end19.for.body23_crit_edge

if.end19.for.body23_crit_edge:                    ; preds = %if.end19
  br label %for.body23

if.end19.for.end35_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.body23:                                       ; preds = %for.inc33.for.body23_crit_edge, %if.end19.for.body23_crit_edge
  %np.188 = phi ptr [ %call34, %for.inc33.for.body23_crit_edge ], [ %call20, %if.end19.for.body23_crit_edge ]
  %call24 = call ptr @of_iomap(ptr noundef nonnull %np.188, i32 noundef 0) #11
  store ptr %call24, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %for.inc33

do.end29:                                         ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  call void @of_node_put(ptr noundef nonnull %np.188) #11
  br label %unmap_ramc

for.inc33:                                        ; preds = %for.body23
  %call34 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.188, ptr noundef nonnull @ramc_phy_ids, ptr noundef nonnull %of_id) #11
  %tobool22.not = icmp eq ptr %call34, null
  br i1 %tobool22.not, label %for.inc33.for.end35_crit_edge, label %for.inc33.for.body23_crit_edge

for.inc33.for.body23_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %if.end19.for.end35_crit_edge
  br i1 %phy_mandatory, label %land.lhs.true, label %for.end35.if.end44_crit_edge

for.end35.if.end44_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true:                                    ; preds = %for.end35
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %tobool37.not = icmp eq ptr %10, null
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %unmap_ramc

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %for.end35.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %standby.2, null
  br i1 %tobool45.not, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %standby.2, ptr getelementptr inbounds (%struct.platform_device, ptr @at91_cpuidle_device, i32 0, i32 3, i32 7), align 8
  br label %cleanup

unmap_ramc:                                       ; preds = %do.end41, %do.end29, %do.end
  %idx.080 = phi i32 [ %idx.084, %do.end ], [ %inc, %do.end29 ], [ %inc, %do.end41 ]
  %ret.0 = phi i32 [ -12, %do.end ], [ -12, %do.end29 ], [ -19, %do.end41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.080)
  %tobool53.not89 = icmp eq i32 %idx.080, 0
  br i1 %tobool53.not89, label %unmap_ramc.cleanup_crit_edge, label %unmap_ramc.while.body_crit_edge

unmap_ramc.while.body_crit_edge:                  ; preds = %unmap_ramc
  br label %while.body

unmap_ramc.cleanup_crit_edge:                     ; preds = %unmap_ramc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %unmap_ramc.while.body_crit_edge
  %idx.190 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %idx.080, %unmap_ramc.while.body_crit_edge ]
  %dec = add i32 %idx.190, -1
  %arrayidx54 = getelementptr %struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 %dec
  %11 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx54, align 4
  call void @iounmap(ptr noundef %12) #11
  %tobool53.not = icmp eq i32 %dec, 0
  br i1 %tobool53.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %unmap_ramc.cleanup_crit_edge, %if.end52, %do.end49, %unmap_ramc.thread
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 0, %do.end49 ], [ %ret.0, %unmap_ramc.cleanup_crit_edge ], [ -19, %unmap_ramc.thread ], [ %ret.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_id) #11
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_pm_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %of_id = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_id) #11
  %0 = ptrtoint ptr %of_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_id, align 4, !annotation !186
  %1 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @at91_cpuidle_device, i32 0, i32 3, i32 7), align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @at91_cpuidle_device) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @atmel_pmc_ids, ptr noundef nonnull %of_id) #11
  %call2 = call ptr @of_iomap(ptr noundef %call1, i32 noundef 0) #11
  store ptr %call2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  call void @of_node_put(ptr noundef %call1) #11
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %of_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_id, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 3), align 4
  %mckr = getelementptr inbounds %struct.pmc_info, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %mckr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mckr, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 10), align 4
  %version = getelementptr inbounds %struct.pmc_info, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 11), align 4
  call fastcc void @at91_pm_sram_init() #14
  %13 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.end21, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void @suspend_set_ops(ptr noundef nonnull @at91_pm_ops) #11
  %14 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %pattern = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %14, i32 1
  %15 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pattern, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %pattern17 = getelementptr [6 x %struct.match_token], ptr @pm_modes, i32 0, i32 %17, i32 1
  %18 = ptrtoint ptr %pattern17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pattern17, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %16, ptr noundef %19) #15
  br label %cleanup

do.end21:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then11, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_id) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sama5d2_pm_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama5d2_pm_init.modes, i32 noundef 5) #14
  tail call fastcc void @at91_pm_modes_init(ptr noundef nonnull @sama5d2_pm_init.iomaps) #14
  %call = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @at91_pm_init() #14
  store ptr @sama5d2_ws_ids, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  store ptr @at91_sama5d2_config_shdwc_ws, ptr @soc_pm, align 4
  store ptr @at91_sama5d2_config_pmc_ws, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  store i32 1272056832, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  store i32 2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  store i32 8, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_pm_modes_init(ptr nocapture noundef readonly %maps) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @at91_pm_backup_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp2 = icmp eq i32 %1, 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %2 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx = getelementptr i32, ptr %maps, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end5.if.then10_crit_edge

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx7 = getelementptr i32, ptr %maps, i32 %5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %and8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @atmel_shdwc_ids, ptr noundef null) #11
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end, label %if.else30

do.end:                                           ; preds = %if.then10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #15
  %arrayidx15 = getelementptr i32, ptr %maps, i32 1
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %9, 1
  %10 = xor i32 %and16, 1
  %11 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx20 = getelementptr i32, ptr %maps, i32 %11
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  %and21 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end.if.end24_crit_edge, label %if.then23

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %10, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end.if.end24_crit_edge
  %14 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx25 = getelementptr i32, ptr %maps, i32 %14
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end33_crit_edge, label %if.then28

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %10, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %if.end33

if.else30:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #11
  store ptr %call31, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #11
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then28, %if.end24.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge
  %17 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx34 = getelementptr i32, ptr %maps, i32 %17
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end33.if.then41_crit_edge

if.end33.if.then41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

lor.lhs.false37:                                  ; preds = %if.end33
  %20 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx38 = getelementptr i32, ptr %maps, i32 %20
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false37.if.end71_crit_edge, label %lor.lhs.false37.if.then41_crit_edge

lor.lhs.false37.if.then41_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

lor.lhs.false37.if.end71_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then41:                                        ; preds = %lor.lhs.false37.if.then41_crit_edge, %if.end33.if.then41_crit_edge
  %call42 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57) #11
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.else68

do.end47:                                         ; preds = %if.then41
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.56) #15
  %arrayidx50 = getelementptr i32, ptr %maps, i32 1
  %23 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.end47.if.end57_crit_edge, label %lor.lhs.false53

do.end47.if.end57_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

lor.lhs.false53:                                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  %25 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %tobool54.not = icmp ne ptr %25, null
  %spec.select = zext i1 %tobool54.not to i32
  br label %if.end57

if.end57:                                         ; preds = %lor.lhs.false53, %do.end47.if.end57_crit_edge
  %mode.1 = phi i32 [ 1, %do.end47.if.end57_crit_edge ], [ %spec.select, %lor.lhs.false53 ]
  %26 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx58 = getelementptr i32, ptr %maps, i32 %26
  %27 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx58, align 4
  %and59 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end62_crit_edge, label %if.then61

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %mode.1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end57.if.end62_crit_edge
  %29 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx63 = getelementptr i32, ptr %maps, i32 %29
  %30 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx63, align 4
  %and64 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end71_crit_edge, label %if.then66

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %mode.1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %if.end71

if.else68:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = tail call ptr @of_iomap(ptr noundef nonnull %call42, i32 noundef 0) #11
  store ptr %call69, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  tail call void @of_node_put(ptr noundef nonnull %call42) #11
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then66, %if.end62.if.end71_crit_edge, %lor.lhs.false37.if.end71_crit_edge
  %32 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %tobool72.not = icmp eq ptr %32, null
  br i1 %tobool72.not, label %if.end71.if.end81_crit_edge, label %land.lhs.true

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end71
  %33 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx73 = getelementptr i32, ptr %maps, i32 %33
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx73, align 4
  %and74 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

lor.lhs.false76:                                  ; preds = %land.lhs.true
  %36 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx77 = getelementptr i32, ptr %maps, i32 %36
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx77, align 4
  %and78 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %lor.lhs.false76.if.end81_crit_edge

lor.lhs.false76.if.end81_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then80:                                        ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %32) #11
  store ptr null, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %lor.lhs.false76.if.end81_crit_edge, %land.lhs.true.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %39 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %tobool82.not = icmp eq ptr %39, null
  br i1 %tobool82.not, label %if.end81.if.end92_crit_edge, label %land.lhs.true83

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

land.lhs.true83:                                  ; preds = %if.end81
  %40 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  %arrayidx84 = getelementptr i32, ptr %maps, i32 %40
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx84, align 4
  %and85 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %land.lhs.true83.if.end92_crit_edge

land.lhs.true83.if.end92_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

lor.lhs.false87:                                  ; preds = %land.lhs.true83
  %43 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  %arrayidx88 = getelementptr i32, ptr %maps, i32 %43
  %44 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx88, align 4
  %and89 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then91, label %lor.lhs.false87.if.end92_crit_edge

lor.lhs.false87.if.end92_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then91:                                        ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %39) #11
  store ptr null, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %lor.lhs.false87.if.end92_crit_edge, %land.lhs.true83.if.end92_crit_edge, %if.end81.if.end92_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_sama5d2_config_shdwc_ws(ptr noundef %shdwc, ptr nocapture noundef %mode, ptr nocapture noundef %polarity) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shdwc, i32 12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  %and = and i32 %1, 1023
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %or = or i32 %3, %and
  store i32 %or, ptr %mode, align 4
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 1023
  %4 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity, align 4
  %or3 = or i32 %5, %and2
  store i32 %or3, ptr %polarity, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_sama5d2_config_pmc_ws(ptr noundef %pmc, i32 noundef %mode, i32 noundef %polarity) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %add.ptr = getelementptr i8, ptr %pmc, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %1 = tail call i32 @llvm.bswap.i32(i32 %polarity)
  %add.ptr3 = getelementptr i8, ptr %pmc, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %1) #11, !srcloc !190
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sama7_pm_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91_pm_modes_validate(ptr noundef nonnull @sama7_pm_init.modes, i32 noundef 4) #14
  %call = tail call fastcc i32 @at91_dt_ramc(i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @at91_pm_modes_init(ptr noundef nonnull @sama7_pm_init.iomaps) #14
  tail call fastcc void @at91_pm_init() #14
  store ptr @sama7g5_ws_ids, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  store ptr @at91_sam9x60_config_pmc_ws, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  store i32 1272056832, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  store i32 1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  store i32 2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  store i32 4, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_sam9x60_config_pmc_ws(ptr noundef %pmc, i32 noundef %mode, i32 noundef %polarity) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %add.ptr = getelementptr i8, ptr %pmc, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !190
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pm_modes_select(ptr noundef %str) #3 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #11
  %tobool.not = icmp eq ptr %str, null
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.73) #11
  %call1 = call i32 @match_token(ptr noundef %call, ptr noundef nonnull @pm_modes, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %str.addr, align 4
  %call5 = call i32 @match_token(ptr noundef %3, ptr noundef nonnull @pm_modes, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %call1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  store i32 %call5, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91rm9200_standby() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  tail call void asm sideeffect "b    1f\0A\09.align    5\0A\091:  mcr    p15, 0, $0, c7, c10, 4\0A\09    str    $2, [$1, $3]\0A\09    mcr    p15, 0, $0, c7, c0, 4\0A\09", "r,r,r,r"(i32 0, ptr %0, i32 1, i32 156) #11, !srcloc !193
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9_sdram_standby() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %and = and i32 %1, -4
  %or = or i32 %and, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lpr1.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %saved_lpr1.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !187
  %and3 = and i32 %3, -4
  %or4 = or i32 %and3, 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or4) #11, !srcloc !190
  %5 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr8 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %lpr1.0) #11, !srcloc !190
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_do_idle, align 4
  %call11 = tail call i32 %13() #11
  %14 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #11, !srcloc !190
  %15 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %saved_lpr1.0) #11, !srcloc !190
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_ddr_standby() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and1 = and i32 %1, -8
  %or = or i32 %and1, 6
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr2 = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #11, !srcloc !190
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %add.ptr4 = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !187
  %and6 = and i32 %4, -4
  %or7 = or i32 %and6, 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !187
  %and10 = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 3
  br i1 %cmp11, label %if.then12, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %and13 = and i32 %6, -8
  %or14 = or i32 %and13, 6
  %7 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %or14) #11, !srcloc !190
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %lpr1.0 = phi i32 [ %or7, %if.then12 ], [ %or7, %if.then3.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %saved_mdr1.0 = phi i32 [ %6, %if.then12 ], [ %6, %if.then3.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %saved_lpr1.0 = phi i32 [ %4, %if.then12 ], [ %4, %if.then3.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %8 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr18 = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !187
  %and20 = and i32 %9, -4
  %or21 = or i32 %and20, 1
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr22 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %or21) #11, !srcloc !190
  %11 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.end17.if.end26_crit_edge, label %if.then24

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %lpr1.0) #11, !srcloc !190
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17.if.end26_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_do_idle, align 4
  %call28 = tail call i32 %19() #11
  %20 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %1) #11, !srcloc !190
  %21 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %9) #11, !srcloc !190
  %22 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %tobool31.not = icmp eq ptr %22, null
  br i1 %tobool31.not, label %if.end26.if.end35_crit_edge, label %if.then32

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %23 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr33 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %saved_mdr1.0) #11, !srcloc !190
  %24 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1, i32 1), align 4
  %add.ptr34 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %saved_lpr1.0) #11, !srcloc !190
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end26.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sama5d3_ddr_standby() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %and = and i32 %1, -4
  %or = or i32 %and, 2
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %or) #11, !srcloc !190
  %3 = tail call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %10() #11
  %11 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 1), align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %1) #11, !srcloc !190
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_pm_sram_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33) #11
  %tobool.not75 = icmp eq ptr %call, null
  br i1 %tobool.not75, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %node.076 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %node.076) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.inc, label %if.end7

for.inc:                                          ; preds = %for.body
  %call3 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %node.076, ptr noundef null, ptr noundef nonnull @.str.33) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end7:                                          ; preds = %for.body
  tail call void @of_node_put(ptr noundef nonnull %node.076) #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  %call8 = tail call ptr @gen_pool_get(ptr noundef %dev, ptr noundef null) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #15
  br label %out_put_device

if.end16:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @at91_pm_suspend_in_sram_sz to i32))
  %0 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call8, i32 0, i32 3
  %1 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call8, i32 0, i32 4
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call8, i32 noundef %0, ptr noundef %2, ptr noundef %4, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35) #15
  br label %out_put_device

if.end25:                                         ; preds = %if.end16
  %call26 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %call8, i32 noundef %call.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @at91_pm_suspend_in_sram_sz to i32))
  %5 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %call27 = tail call ptr @__arm_ioremap_exec(i32 noundef %call26, i32 noundef %5, i1 noundef zeroext false) #11
  store ptr %call27, ptr @at91_suspend_sram_fn, align 4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  br label %out_put_device

if.end35:                                         ; preds = %if.end25
  %6 = tail call i32 asm "", "=r,0"(ptr nonnull @at91_pm_suspend_in_sram) #16, !srcloc !194
  %7 = ptrtoint ptr %call27 to i32
  %and = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp ne i32 %and, 0
  %and39 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40 = icmp ne i32 %and39, 0
  %8 = select i1 %tobool37.not, i1 true, i1 %tobool40
  br i1 %8, label %do.body44, label %do.end52, !prof !195

do.body44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-at91/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #11, !srcloc !196
  unreachable

do.end52:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %and53 = and i32 %6, -2
  %9 = inttoptr i32 %and53 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @at91_pm_suspend_in_sram_sz to i32))
  %10 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %11 = call ptr @memcpy(ptr %call27, ptr %9, i32 %10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %13 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %add = add i32 %13, %7
  tail call void %12(i32 noundef %7, i32 noundef %add) #11
  %14 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %15 = ptrtoint ptr %14 to i32
  %and54 = and i32 %6, 1
  %or = or i32 %and54, %15
  %16 = tail call ptr asm "", "=r,0"(i32 %or) #16, !srcloc !197
  store ptr %16, ptr @at91_suspend_sram_fn, align 4
  br label %cleanup

out_put_device:                                   ; preds = %do.end32, %do.end22, %do.end13
  tail call void @put_device(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put_device, %do.end52, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pm_suspend_in_sram(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_pm_valid_state(i32 noundef %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %0 = icmp ult i32 %state, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.at91_pm_valid_state, i32 0, i32 %state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pm_begin(i32 noundef %state) #4 align 64 {
entry:
  %match.i = alloca ptr, align 4
  %mode.i = alloca i32, align 4
  %polarity.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %sw.epilog.thread [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 -1, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %polarity.i) #11
  br label %at91_pm_config_ws.exit.thread13

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %.in = phi ptr [ getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), %sw.bb1 ], [ getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %.in, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #11
  %3 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #11
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %polarity.i) #11
  %5 = ptrtoint ptr %polarity.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 3
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.at91_pm_config_ws.exit.thread13_crit_edge

sw.epilog.at91_pm_config_ws.exit.thread13_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit.thread13

if.end.i:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i.at91_pm_config_ws.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.at91_pm_config_ws.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.at91_pm_config_ws.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.at91_pm_config_ws.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %8 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.at91_pm_config_ws.exit.thread_crit_edge, label %if.end5.i

lor.lhs.false2.i.at91_pm_config_ws.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit.thread

if.end5.i:                                        ; preds = %lor.lhs.false2.i
  %9 = load ptr, ptr @soc_pm, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then10.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %9(ptr noundef nonnull %7, ptr noundef nonnull %mode.i, ptr noundef nonnull %polarity.i) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end5.i.if.end11.i_crit_edge
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %add.ptr12.i = getelementptr i8, ptr %10, i32 4
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !187
  %12 = call i32 @llvm.bswap.i32(i32 %11) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  %13 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %call15.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %13, ptr noundef nonnull %match.i) #11
  %tobool16.not67.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not67.i, label %if.end11.i.for.end.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  br label %for.body.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.i.for.body.i_crit_edge
  %np.068.i = phi ptr [ %call35.i, %for.inc.i.for.body.i_crit_edge ], [ %call15.i, %if.end11.i.for.body.i_crit_edge ]
  %call17.i = call ptr @of_find_device_by_node(ptr noundef nonnull %np.068.i) #11
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end20.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call17.i, i32 0, i32 3
  %can_wakeup.i.i = getelementptr inbounds %struct.platform_device, ptr %call17.i, i32 0, i32 3, i32 12, i32 1
  %14 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end20.i.put_device.i_crit_edge, label %device_may_wakeup.exit.i

if.end20.i.put_device.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_device.i

device_may_wakeup.exit.i:                         ; preds = %if.end20.i
  %wakeup.i.i = getelementptr inbounds %struct.platform_device, ptr %call17.i, i32 0, i32 3, i32 12, i32 6
  %15 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %16, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.put_device.i_crit_edge, label %if.then22.i

device_may_wakeup.exit.i.put_device.i_crit_edge:  ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_device.i

if.then22.i:                                      ; preds = %device_may_wakeup.exit.i
  %17 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %match.i, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %shdwc_mr_bit.i = getelementptr inbounds %struct.wakeup_source_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %shdwc_mr_bit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shdwc_mr_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not.i = icmp ne i32 %22, 0
  %and.i = and i32 %22, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %tobool25.not.i, i1 false
  br i1 %or.cond.i, label %if.then22.i.put_device.i_crit_edge, label %if.end27.i

if.then22.i.put_device.i_crit_edge:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_device.i

if.end27.i:                                       ; preds = %if.then22.i
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 4
  %or.i = or i32 %26, %24
  store i32 %or.i, ptr %mode.i, align 4
  %set_polarity.i = getelementptr inbounds %struct.wakeup_source_info, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %set_polarity.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %set_polarity.i, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not.i = icmp eq i8 %28, 0
  br i1 %tobool28.not.i, label %if.end27.i.put_device.i_crit_edge, label %if.then29.i

if.end27.i.put_device.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_device.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  %31 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %polarity.i, align 4
  %or31.i = or i32 %32, %30
  store i32 %or31.i, ptr %polarity.i, align 4
  br label %put_device.i

put_device.i:                                     ; preds = %if.then29.i, %if.end27.i.put_device.i_crit_edge, %if.then22.i.put_device.i_crit_edge, %device_may_wakeup.exit.i.put_device.i_crit_edge, %if.end20.i.put_device.i_crit_edge
  call void @put_device(ptr noundef %dev.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %put_device.i, %for.body.i.for.inc.i_crit_edge
  %33 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %call35.i = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.068.i, ptr noundef %33, ptr noundef nonnull %match.i) #11
  %tobool16.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool16.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool36.not.i = icmp eq i32 %35, 0
  br i1 %tobool36.not.i, label %do.end44.i, label %if.then37.i

if.then37.i:                                      ; preds = %for.end.i
  %36 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 1), align 4
  %tobool38.not.i = icmp eq ptr %36, null
  br i1 %tobool38.not.i, label %at91_pm_config_ws.exit.thread16, label %if.then39.i

at91_pm_config_ws.exit.thread16:                  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %polarity.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #11
  br label %if.end

if.then39.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %38 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %polarity.i, align 4
  %call40.i = call i32 %36(ptr noundef %37, i32 noundef %35, i32 noundef %39) #11
  br label %at91_pm_config_ws.exit

do.end44.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  br label %at91_pm_config_ws.exit

at91_pm_config_ws.exit.thread:                    ; preds = %lor.lhs.false2.i.at91_pm_config_ws.exit.thread_crit_edge, %lor.lhs.false.i.at91_pm_config_ws.exit.thread_crit_edge, %if.end.i.at91_pm_config_ws.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %polarity.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #11
  br label %cleanup

at91_pm_config_ws.exit.thread13:                  ; preds = %sw.epilog.at91_pm_config_ws.exit.thread13_crit_edge, %sw.epilog.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %polarity.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #11
  br label %if.end

at91_pm_config_ws.exit:                           ; preds = %do.end44.i, %if.then39.i
  %40 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool48.not.i.not = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %polarity.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #11
  br i1 %tobool48.not.i.not, label %at91_pm_config_ws.exit.cleanup_crit_edge, label %at91_pm_config_ws.exit.if.end_crit_edge

at91_pm_config_ws.exit.if.end_crit_edge:          ; preds = %at91_pm_config_ws.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

at91_pm_config_ws.exit.cleanup_crit_edge:         ; preds = %at91_pm_config_ws.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %at91_pm_config_ws.exit.if.end_crit_edge, %at91_pm_config_ws.exit.thread13, %at91_pm_config_ws.exit.thread16
  %41 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp = icmp eq i32 %41, 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %42, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool3.not = icmp eq ptr %42, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else.cleanup_crit_edge, %if.then2, %at91_pm_config_ws.exit.cleanup_crit_edge, %at91_pm_config_ws.exit.thread
  %retval.0 = phi i32 [ -1, %at91_pm_config_ws.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then2 ], [ -1, %at91_pm_config_ws.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pm_enter(i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @at91_pinctrl_gpio_suspend() #11
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %state, label %do.body [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge19
    i32 0, label %sw.bb1
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge19
  %1 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %sw.bb.at91_suspend_finish.exit.i_crit_edge, label %land.lhs.true

sw.bb.at91_suspend_finish.exit.i_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_suspend_finish.exit.i

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !187
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  %5 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 3), align 4
  %and.i = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %for.body.preheader.i, label %do.end.i

for.body.preheader.i:                             ; preds = %land.lhs.true
  %and5.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end8.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %error

if.end8.i:                                        ; preds = %for.body.preheader.i
  %6 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr11.i = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !187
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %and15.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %cmp16.not.i = icmp eq i32 %and15.i, 0
  br i1 %cmp16.not.i, label %if.end8.i.for.inc.i_crit_edge, label %if.end8.i.cleanup.i_crit_edge

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end8.3.i.cleanup.i_crit_edge, %if.end8.2.i.cleanup.i_crit_edge, %if.end8.1.i.cleanup.i_crit_edge, %if.end8.i.cleanup.i_crit_edge
  %i.034.lcssa.i = phi i32 [ 0, %if.end8.i.cleanup.i_crit_edge ], [ 1, %if.end8.1.i.cleanup.i_crit_edge ], [ 2, %if.end8.2.i.cleanup.i_crit_edge ], [ 3, %if.end8.3.i.cleanup.i_crit_edge ]
  %and15.lcssa.i = phi i32 [ %and15.i, %if.end8.i.cleanup.i_crit_edge ], [ %and15.1.i, %if.end8.1.i.cleanup.i_crit_edge ], [ %and15.2.i, %if.end8.2.i.cleanup.i_crit_edge ], [ %and15.3.i, %if.end8.3.i.cleanup.i_crit_edge ]
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %i.034.lcssa.i, i32 noundef %and15.lcssa.i) #15
  br label %error

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %and5.1.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1.i)
  %cmp6.1.i = icmp eq i32 %and5.1.i, 0
  br i1 %cmp6.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end8.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end8.1.i:                                      ; preds = %for.inc.i
  %9 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr11.1.i = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.1.i) #11, !srcloc !187
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %and15.1.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.1.i)
  %cmp16.not.1.i = icmp eq i32 %and15.1.i, 0
  br i1 %cmp16.not.1.i, label %if.end8.1.i.for.inc.1.i_crit_edge, label %if.end8.1.i.cleanup.i_crit_edge

if.end8.1.i.cleanup.i_crit_edge:                  ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end8.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and5.2.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2.i)
  %cmp6.2.i = icmp eq i32 %and5.2.i, 0
  br i1 %cmp6.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end8.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end8.2.i:                                      ; preds = %for.inc.1.i
  %12 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr11.2.i = getelementptr i8, ptr %12, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.2.i) #11, !srcloc !187
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %and15.2.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.2.i)
  %cmp16.not.2.i = icmp eq i32 %and15.2.i, 0
  br i1 %cmp16.not.2.i, label %if.end8.2.i.for.inc.2.i_crit_edge, label %if.end8.2.i.cleanup.i_crit_edge

if.end8.2.i.cleanup.i_crit_edge:                  ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end8.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %and5.3.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3.i)
  %cmp6.3.i = icmp eq i32 %and5.3.i, 0
  br i1 %cmp6.3.i, label %for.inc.2.i.if.end_crit_edge, label %if.end8.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.3.i:                                      ; preds = %for.inc.2.i
  %15 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr11.3.i = getelementptr i8, ptr %15, i32 76
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.3.i) #11, !srcloc !187
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %and15.3.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.3.i)
  %cmp16.not.3.i = icmp eq i32 %and15.3.i, 0
  br i1 %cmp16.not.3.i, label %if.end8.3.i.if.end_crit_edge, label %if.end8.3.i.cleanup.i_crit_edge

if.end8.3.i.cleanup.i_crit_edge:                  ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.3.i.if.end_crit_edge:                     ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end8.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge
  %.pr = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.at91_suspend_finish.exit.i_crit_edge

if.end.at91_suspend_finish.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_suspend_finish.exit.i

if.then.i:                                        ; preds = %if.end
  %18 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, label %if.end.i.i

if.then.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_switch_ba_to_vbat.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #11, !srcloc !187
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  %21 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %and.i.i = and i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_switch_ba_to_vbat.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %22 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 3), align 4
  %neg.i.i = xor i32 %22, -1
  %and5.i.i = and i32 %20, %neg.i.i
  %23 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5), align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 1), align 4
  %or.i.i = or i32 %and5.i.i, %23
  %or6.i.i = or i32 %or.i.i, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i) #11
  %26 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #11, !srcloc !190
  %27 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !187
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  %30 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %and1430.i.i = and i32 %30, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1430.i.i)
  %tobool15.not31.i.i = icmp eq i32 %and1430.i.i, 0
  br i1 %tobool15.not31.i.i, label %if.end4.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, label %if.end4.i.i.while.body.i.i_crit_edge

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  br label %while.body.i.i

if.end4.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_switch_ba_to_vbat.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end4.i.i.while.body.i.i_crit_edge
  %31 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 7), align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !187
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  %34 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 5, i32 0, i32 2), align 4
  %and14.i.i = and i32 %34, %33
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %while.body.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_switch_ba_to_vbat.exit.i

at91_pm_switch_ba_to_vbat.exit.i:                 ; preds = %while.body.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, %if.end4.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, %if.end.i.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge, %if.then.i.at91_pm_switch_ba_to_vbat.exit.i_crit_edge
  %call.i = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @at91_suspend_finish) #11
  %35 = tail call i32 asm "", "=r,0"(ptr nonnull @at91_pm_suspend_in_sram) #16, !srcloc !206
  %36 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %37 = ptrtoint ptr %36 to i32
  %and.i13 = and i32 %37, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i = icmp ne i32 %and.i13, 0
  %and2.i = and i32 %35, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.i = icmp ne i32 %and2.i, 0
  %38 = select i1 %tobool.not.i, i1 true, i1 %tobool3.i
  br i1 %38, label %do.body7.i, label %do.end12.i, !prof !195

do.body7.i:                                       ; preds = %at91_pm_switch_ba_to_vbat.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-at91/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.end12.i:                                       ; preds = %at91_pm_switch_ba_to_vbat.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %and13.i = and i32 %35, -2
  %39 = inttoptr i32 %and13.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @at91_pm_suspend_in_sram_sz to i32))
  %40 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %41 = call ptr @memcpy(ptr %36, ptr %39, i32 %40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %43 = load i32, ptr @at91_pm_suspend_in_sram_sz, align 4
  %add.i = add i32 %43, %37
  tail call void %42(i32 noundef %37, i32 noundef %add.i) #11
  %44 = load ptr, ptr @at91_suspend_sram_fn, align 4
  %45 = ptrtoint ptr %44 to i32
  %and14.i = and i32 %35, 1
  %or.i = or i32 %and14.i, %45
  %46 = tail call ptr asm "", "=r,0"(i32 %or.i) #16, !srcloc !208
  store ptr %46, ptr @at91_suspend_sram_fn, align 4
  br label %if.end16.i

at91_suspend_finish.exit.i:                       ; preds = %if.end.at91_suspend_finish.exit.i_crit_edge, %sw.bb.at91_suspend_finish.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %47() #11
  tail call void @outer_disable() #11
  %48 = load ptr, ptr @at91_suspend_sram_fn, align 4
  tail call void %48(ptr noundef getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4)) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %at91_suspend_finish.exit.i, %do.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %tobool.not.i3.i = icmp eq ptr %49, null
  br i1 %tobool.not.i3.i, label %if.end16.i.error_crit_edge, label %if.then.i.i

if.end16.i.error_crit_edge:                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %49() #11
  br label %error

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %50 = tail call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i14 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i14 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %57() #11
  br label %error

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pm_enter.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pm_enter, %error)) #11
          to label %if.then9 [label %error], !srcloc !209

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_pm_enter.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.49, i32 noundef %state) #11
  br label %error

error:                                            ; preds = %if.then9, %do.body, %sw.bb1, %if.then.i.i, %if.end16.i.error_crit_edge, %cleanup.i, %do.end.i
  tail call void @at91_pinctrl_gpio_resume() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_pm_end() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.at91_pm_config_ws.exit_crit_edge

entry.at91_pm_config_ws.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit

if.end.i:                                         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.at91_pm_config_ws.exit_crit_edge, label %lor.lhs.false.i

if.end.i.at91_pm_config_ws.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 6), align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.at91_pm_config_ws.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.at91_pm_config_ws.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %3 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 2), align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.at91_pm_config_ws.exit_crit_edge, label %if.end5.i

lor.lhs.false2.i.at91_pm_config_ws.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_pm_config_ws.exit

if.end5.i:                                        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !190
  br label %at91_pm_config_ws.exit

at91_pm_config_ws.exit:                           ; preds = %if.end5.i, %lor.lhs.false2.i.at91_pm_config_ws.exit_crit_edge, %lor.lhs.false.i.at91_pm_config_ws.exit_crit_edge, %if.end.i.at91_pm_config_ws.exit_crit_edge, %entry.at91_pm_config_ws.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pinctrl_gpio_suspend() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_pinctrl_gpio_resume() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_suspend_finish(i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %for.body.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx = getelementptr %struct.at91_pm_bu, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %arrayidx, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.1 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.1, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.1 = getelementptr %struct.at91_pm_bu, ptr %10, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %arrayidx.1, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.2 = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.2, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.2 = getelementptr %struct.at91_pm_bu, ptr %15, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %arrayidx.2, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.3 = getelementptr i32, ptr %17, i32 3
  %18 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.3, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.3 = getelementptr %struct.at91_pm_bu, ptr %20, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %arrayidx.3, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.4 = getelementptr i32, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.4, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.4 = getelementptr %struct.at91_pm_bu, ptr %25, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %arrayidx.4, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.5 = getelementptr i32, ptr %27, i32 5
  %28 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.5, align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.5 = getelementptr %struct.at91_pm_bu, ptr %30, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %arrayidx.5, align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.6 = getelementptr i32, ptr %32, i32 6
  %33 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.6, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.6 = getelementptr %struct.at91_pm_bu, ptr %35, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %arrayidx.6, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %add.ptr.7 = getelementptr i32, ptr %37, i32 7
  %38 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.7, align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %arrayidx.7 = getelementptr %struct.at91_pm_bu, ptr %40, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %arrayidx.7, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %42() #11
  tail call void @outer_disable() #11
  %43 = load ptr, ptr @at91_suspend_sram_fn, align 4
  tail call void %43(ptr noundef getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4)) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_pm_backup_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %located = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %located) #11
  %0 = ptrtoint ptr %located to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %located, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %at91_is_pm_mode_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

at91_is_pm_mode_active.exit:                      ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp1.i = icmp eq i32 %2, 4
  br i1 %cmp1.i, label %at91_is_pm_mode_active.exit.if.end_crit_edge, label %at91_is_pm_mode_active.exit.cleanup_crit_edge

at91_is_pm_mode_active.exit.cleanup_crit_edge:    ; preds = %at91_is_pm_mode_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

at91_is_pm_mode_active.exit.if.end_crit_edge:     ; preds = %at91_is_pm_mode_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %at91_is_pm_mode_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call1) #11
  tail call void @of_node_put(ptr noundef nonnull %call1) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3
  %call9 = tail call ptr @gen_pool_get(ptr noundef %dev, ptr noundef null) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.securam_fail.sink.split_crit_edge, label %if.end17

if.end8.securam_fail.sink.split_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %securam_fail.sink.split

if.end17:                                         ; preds = %if.end8
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call9, i32 0, i32 3
  %3 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call9, i32 0, i32 4
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call9, i32 noundef 52, ptr noundef %4, ptr noundef %6, ptr noundef null) #11
  %7 = inttoptr i32 %call.i.i to ptr
  store ptr %7, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %if.end17.securam_fail.sink.split_crit_edge, label %if.end26

if.end17.securam_fail.sink.split_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %securam_fail.sink.split

if.end26:                                         ; preds = %if.end17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %call28 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @canary to i32)) #11
  %9 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %canary = getelementptr inbounds %struct.at91_pm_bu, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %canary to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call28, ptr %canary, align 4
  %call32 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @cpu_resume to i32)) #11
  %11 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %resume = getelementptr inbounds %struct.at91_pm_bu, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call32, ptr %resume, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end26.cleanup_crit_edge, label %if.then34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.end26
  %call35 = call i32 @of_scan_flat_dt(ptr noundef nonnull @at91_pm_backup_scan_memcs, ptr noundef nonnull %located) #11
  %14 = ptrtoint ptr %located to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %located, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool36.not = icmp eq i32 %15, 0
  br i1 %tobool36.not, label %if.then34.securam_fail_crit_edge, label %if.end38

if.then34.securam_fail_crit_edge:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %securam_fail

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 4, i32 2), align 4
  %add.ptr = getelementptr i8, ptr %16, i32 392
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  %19 = load ptr, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 3), align 4
  %ddr_phy_calibration = getelementptr inbounds %struct.at91_pm_bu, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ddr_phy_calibration to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %ddr_phy_calibration, align 4
  br label %cleanup

securam_fail.sink.split:                          ; preds = %if.end17.securam_fail.sink.split_crit_edge, %if.end8.securam_fail.sink.split_crit_edge
  %.str.68.sink = phi ptr [ @.str.65, %if.end8.securam_fail.sink.split_crit_edge ], [ @.str.68, %if.end17.securam_fail.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -19, %if.end8.securam_fail.sink.split_crit_edge ], [ -12, %if.end17.securam_fail.sink.split_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.68.sink, ptr noundef nonnull @.str.63) #15
  br label %securam_fail

securam_fail:                                     ; preds = %securam_fail.sink.split, %if.then34.securam_fail_crit_edge
  %ret.0 = phi i32 [ -19, %if.then34.securam_fail_crit_edge ], [ %ret.0.ph, %securam_fail.sink.split ]
  call void @put_device(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %securam_fail, %if.end38, %if.end26.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %at91_is_pm_mode_active.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %securam_fail ], [ -19, %do.end ], [ 0, %at91_is_pm_mode_active.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end38 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %located) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pm_backup_scan_memcs(i32 noundef %node, ptr nocapture noundef readnone %uname, i32 noundef %depth, ptr nocapture noundef %data) #3 section ".init.text" align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #11
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !186
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.70, ptr noundef null) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @strcmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(7) @.str.71) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.72, ptr noundef nonnull %size) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call6, align 4
  %5 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #16, !srcloc !212
  %6 = inttoptr i32 %5 to ptr
  store ptr %6, ptr getelementptr inbounds (%struct.at91_soc_pm, ptr @soc_pm, i32 0, i32 6), align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174}
!llvm.named.register.sp = !{!176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__ksymtab_at91_suspend_entering_slow_clock, !1, !"__ksymtab_at91_suspend_entering_slow_clock", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-at91/pm.c", i32 345, i32 1}
!2 = distinct !{null, !3, !"modes", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-at91/pm.c", i32 1112, i32 19}
!4 = distinct !{null, !5, !"iomaps", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-at91/pm.c", i32 1115, i32 19}
!6 = !{ptr @sama5_pm_init.modes, !7, !"modes", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-at91/pm.c", i32 1159, i32 19}
!8 = !{ptr @sama5d2_pm_init.modes, !9, !"modes", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-at91/pm.c", i32 1177, i32 19}
!10 = !{ptr @sama5d2_pm_init.iomaps, !11, !"iomaps", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-at91/pm.c", i32 1181, i32 19}
!12 = !{ptr @sama7_pm_init.modes, !13, !"modes", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-at91/pm.c", i32 1211, i32 19}
!14 = !{ptr @sama7_pm_init.iomaps, !15, !"iomaps", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-at91/pm.c", i32 1214, i32 19}
!16 = !{ptr @__setup_at91_pm_modes_select, !17, !"__setup_at91_pm_modes_select", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-at91/pm.c", i32 1267, i32 1}
!18 = !{ptr @soc_pm, !19, !"soc_pm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-at91/pm.c", i32 95, i32 27}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-at91/pm.c", i32 1027, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @at91_pm_modes_validate._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @at91_pm_modes_validate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @at91_pm_modes_validate._entry.3, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-at91/pm.c", i32 1039, i32 3}
!28 = !{ptr @at91_pm_modes_validate._entry_ptr.4, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-at91/pm.c", i32 103, i32 21}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-at91/pm.c", i32 104, i32 19}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-at91/pm.c", i32 105, i32 26}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-at91/pm.c", i32 106, i32 19}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-at91/pm.c", i32 107, i32 20}
!39 = !{ptr @pm_modes, !40, !"pm_modes", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-at91/pm.c", i32 102, i32 28}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-at91/pm.c", i32 646, i32 4}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @at91_dt_ramc._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @at91_dt_ramc._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-at91/pm.c", i32 663, i32 3}
!48 = !{ptr @at91_dt_ramc._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @at91_dt_ramc._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-at91/pm.c", i32 672, i32 4}
!52 = !{ptr @at91_dt_ramc._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @at91_dt_ramc._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-at91/pm.c", i32 680, i32 3}
!56 = !{ptr @at91_dt_ramc._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @at91_dt_ramc._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-at91/pm.c", i32 686, i32 3}
!60 = !{ptr @at91_dt_ramc._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @at91_dt_ramc._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ramc_ids, !63, !"ramc_ids", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-at91/pm.c", i32 620, i32 34}
!64 = !{ptr @ramc_infos, !65, !"ramc_infos", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-at91/pm.c", i32 613, i32 31}
!66 = !{ptr @ramc_phy_ids, !67, !"ramc_phy_ids", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-at91/pm.c", i32 629, i32 34}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-at91/pm.c", i32 487, i32 10}
!70 = !{ptr @at91_cpuidle_device, !71, !"at91_cpuidle_device", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-at91/pm.c", i32 486, i32 31}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-at91/pm.c", i32 1059, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @at91_pm_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @at91_pm_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-at91/pm.c", i32 1075, i32 3}
!79 = !{ptr @at91_pm_init._entry.27, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @at91_pm_init._entry_ptr.29, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-at91/pm.c", i32 1079, i32 3}
!83 = !{ptr @at91_pm_init._entry.30, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @at91_pm_init._entry_ptr.32, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @atmel_pmc_ids, !86, !"atmel_pmc_ids", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-at91/pm.c", i32 984, i32 34}
!87 = !{ptr @pmc_infos, !88, !"pmc_infos", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-at91/pm.c", i32 951, i32 30}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-at91/pm.c", i32 724, i32 2}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-at91/pm.c", i32 733, i32 3}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @at91_pm_sram_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @at91_pm_sram_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-at91/pm.c", i32 739, i32 3}
!98 = !{ptr @at91_pm_sram_init._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @at91_pm_sram_init._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-at91/pm.c", i32 745, i32 3}
!102 = !{ptr @at91_pm_sram_init._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @at91_pm_sram_init._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-at91/pm.c", i32 753, i32 3}
!106 = !{ptr @at91_pm_sram_init._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @at91_pm_sram_init._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @at91_suspend_sram_fn, !109, !"at91_suspend_sram_fn", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-at91/pm.c", i32 347, i32 15}
!110 = !{ptr @at91_pm_ops, !111, !"at91_pm_ops", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-at91/pm.c", i32 479, i32 42}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-at91/pm.c", i32 232, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @at91_pm_config_ws._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @at91_pm_config_ws._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../arch/arm/mach-at91/pm.c", i32 459, i32 3}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @at91_pm_enter.__UNIQUE_ID_ddebug288, !118, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-at91/pm.c", i32 311, i32 3}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @at91_pm_verify_clocks._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @at91_pm_verify_clocks._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-at91/pm.c", i32 323, i32 4}
!129 = !{ptr @at91_pm_verify_clocks._entry.52, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @at91_pm_verify_clocks._entry_ptr.54, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../arch/arm/mach-at91/pm.c", i32 883, i32 4}
!133 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @at91_pm_modes_init._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @at91_pm_modes_init._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-at91/pm.c", i32 903, i32 44}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-at91/pm.c", i32 905, i32 4}
!140 = !{ptr @at91_pm_modes_init._entry.58, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @at91_pm_modes_init._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-at91/pm.c", i32 815, i32 43}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-at91/pm.c", i32 822, i32 3}
!146 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @at91_pm_backup_init._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @at91_pm_backup_init._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../arch/arm/mach-at91/pm.c", i32 828, i32 3}
!151 = !{ptr @at91_pm_backup_init._entry.64, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @at91_pm_backup_init._entry_ptr.66, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../arch/arm/mach-at91/pm.c", i32 834, i32 3}
!155 = !{ptr @at91_pm_backup_init._entry.67, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @at91_pm_backup_init._entry_ptr.69, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @canary, !158, !"canary", i1 false, i1 false}
!158 = !{!"../arch/arm/mach-at91/pm.c", i32 130, i32 12}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../arch/arm/mach-at91/pm.c", i32 786, i32 35}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../arch/arm/mach-at91/pm.c", i32 789, i32 28}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../arch/arm/mach-at91/pm.c", i32 792, i32 34}
!165 = !{ptr @atmel_shdwc_ids, !166, !"atmel_shdwc_ids", i1 false, i1 false}
!166 = !{!"../arch/arm/mach-at91/pm.c", i32 859, i32 34}
!167 = !{ptr @sama5d2_ws_ids, !168, !"sama5d2_ws_ids", i1 false, i1 false}
!168 = !{!"../arch/arm/mach-at91/pm.c", i32 147, i32 34}
!169 = !{ptr @ws_info, !170, !"ws_info", i1 false, i1 false}
!170 = !{!"../arch/arm/mach-at91/pm.c", i32 138, i32 40}
!171 = !{ptr @sama7g5_ws_ids, !172, !"sama7g5_ws_ids", i1 false, i1 false}
!172 = !{!"../arch/arm/mach-at91/pm.c", i32 170, i32 34}
!173 = !{ptr @__setup_str_at91_pm_modes_select, !17, !"__setup_str_at91_pm_modes_select", i1 false, i1 false}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../arch/arm/mach-at91/pm.c", i32 1253, i32 19}
!176 = !{!"sp"}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"auto-init"}
!187 = !{i64 1145253}
!188 = !{i64 2155076235}
!189 = !{i64 2155076448}
!190 = !{i64 1144835}
!191 = !{i64 2155076836}
!192 = !{i64 2155077232}
!193 = !{i64 12897, i64 12907, i64 12927, i64 12969, i64 13001, i64 13042}
!194 = !{i64 2155114478}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2155115761, i64 2155116249, i64 2155115798, i64 2155115854, i64 2155115888, i64 2155115912, i64 2155115953, i64 2155115974, i64 2155116002, i64 2155116036}
!197 = !{i64 2155114973}
!198 = !{i64 2155073936}
!199 = !{i8 0, i8 2}
!200 = !{i64 2155077979}
!201 = !{i64 2155080290}
!202 = !{i64 2155088619}
!203 = !{i64 2155088842}
!204 = !{i64 2155089548}
!205 = !{i64 2155090070}
!206 = !{i64 2155090229}
!207 = !{i64 2155091512, i64 2155092000, i64 2155091549, i64 2155091605, i64 2155091639, i64 2155091663, i64 2155091704, i64 2155091725, i64 2155091753, i64 2155091787}
!208 = !{i64 2155090724}
!209 = !{i64 2148611992, i64 2148611997, i64 2148612010, i64 2148612054, i64 2148612088, i64 2148612109}
!210 = !{i64 2155073239}
!211 = !{i64 2155124892}
!212 = !{i64 2148689194, i64 2148689217, i64 2148689249, i64 2148689281, i64 2148689319, i64 2148689349}
