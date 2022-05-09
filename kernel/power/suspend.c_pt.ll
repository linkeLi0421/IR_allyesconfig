; ModuleID = '/llk/IR_all_yes/kernel/power/suspend.c_pt.bc'
source_filename = "../kernel/power/suspend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pm_suspend_target_state\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_suspend_target_state\09\09\09\09"
module asm "\09.long\09__crc_pm_suspend_target_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_target_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_target_state\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_target_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_suspend_global_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_suspend_global_flags\09\09\09\09"
module asm "\09.long\09__crc_pm_suspend_global_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_global_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_global_flags\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_global_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_suspend_default_s2idle\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_suspend_default_s2idle\09\09\09\09"
module asm "\09.long\09__crc_pm_suspend_default_s2idle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_default_s2idle:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_default_s2idle\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_default_s2idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+s2idle_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_s2idle_wake\09\09\09\09"
module asm "\09.long\09__crc_s2idle_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s2idle_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22s2idle_wake\22\09\09\09\09\09"
module asm "__kstrtabns_s2idle_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+suspend_set_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_suspend_set_ops\09\09\09\09"
module asm "\09.long\09__crc_suspend_set_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+suspend_valid_only_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_suspend_valid_only_mem\09\09\09\09"
module asm "\09.long\09__crc_suspend_valid_only_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_valid_only_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_valid_only_mem\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_valid_only_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pm_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_suspend\09\09\09\09"
module asm "\09.long\09__crc_pm_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.suspend_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [40 x i8]], i32, [2 x i32], i32, [2 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.swait_queue = type { ptr, %struct.list_head }
%struct.platform_s2idle_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"freeze\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@pm_labels = dso_local constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2], [16 x i8] zeroinitializer }, align 32
@mem_sleep_current = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@mem_sleep_default = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@pm_suspend_target_state = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pm_suspend_target_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_target_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_target_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_target_state to i32), ptr @__kstrtab_pm_suspend_target_state, ptr @__kstrtabns_pm_suspend_target_state }, section "___ksymtab_gpl+pm_suspend_target_state", align 4
@pm_suspend_global_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pm_suspend_global_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_global_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_global_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_global_flags to i32), ptr @__kstrtab_pm_suspend_global_flags, ptr @__kstrtabns_pm_suspend_global_flags }, section "___ksymtab_gpl+pm_suspend_global_flags", align 4
@__kstrtab_pm_suspend_default_s2idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_default_s2idle = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_default_s2idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_default_s2idle to i32), ptr @__kstrtab_pm_suspend_default_s2idle, ptr @__kstrtabns_pm_suspend_default_s2idle }, section "___ksymtab_gpl+pm_suspend_default_s2idle", align 4
@s2idle_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s2idle_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@s2idle_state = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@s2idle_wait_head = internal global { %struct.swait_queue_head, [44 x i8] } { %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @s2idle_wait_head, i64 44), ptr getelementptr (i8, ptr @s2idle_wait_head, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_s2idle_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_s2idle_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_s2idle_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s2idle_wake to i32), ptr @__kstrtab_s2idle_wake, ptr @__kstrtabns_s2idle_wake }, section "___ksymtab_gpl+s2idle_wake", align 4
@pm_states = dso_local global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@mem_sleep_labels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @.str.17, ptr @.str.18, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@mem_sleep_states = dso_local global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__setup_str_mem_sleep_default_setup = internal constant [19 x i8] c"mem_sleep_default=\00", section ".init.rodata", align 1
@__setup_mem_sleep_default_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mem_sleep_default_setup, ptr @mem_sleep_default_setup, i32 0 }, section ".init.setup", align 4
@suspend_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_suspend_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_set_ops to i32), ptr @__kstrtab_suspend_set_ops, ptr @__kstrtabns_suspend_set_ops }, section "___ksymtab_gpl+suspend_set_ops", align 4
@__kstrtab_suspend_valid_only_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_valid_only_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_valid_only_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_valid_only_mem to i32), ptr @__kstrtab_suspend_valid_only_mem, ptr @__kstrtabns_suspend_valid_only_mem }, section "___ksymtab_gpl+suspend_valid_only_mem", align 4
@__param_str_pm_test_delay = internal constant [22 x i8] c"suspend.pm_test_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@pm_test_delay = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_pm_test_delay = internal constant %struct.kernel_param { ptr @__param_str_pm_test_delay, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @pm_test_delay } }, section "__param", align 4
@__UNIQUE_ID_pm_test_delaytype355 = internal constant [36 x i8] c"suspend.parmtype=pm_test_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pm_test_delay356 = internal constant [87 x i8] c"suspend.parm=pm_test_delay:Number of seconds to wait before resuming from suspend test\00", section ".modinfo", align 1
@suspend_devices_and_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013PM: Some devices failed to suspend, or early wake event detected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"suspend_devices_and_enter\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/power/suspend.c\00", [41 x i8] zeroinitializer }, align 32
@suspend_devices_and_enter._entry_ptr = internal global ptr @suspend_devices_and_enter._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"suspend devices\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume devices\00", [17 x i8] zeroinitializer }, align 32
@suspend_devices_and_enter.___tp_str = internal global ptr @.str.8, section "__tracepoint_str", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume_console\00", [17 x i8] zeroinitializer }, align 32
@suspend_devices_and_enter.___tp_str.9 = internal global ptr @.str.8, section "__tracepoint_str", align 4
@pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016PM: suspend entry (%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm_suspend\00", [21 x i8] zeroinitializer }, align 32
@pm_suspend._entry_ptr = internal global ptr @pm_suspend._entry, section ".printk_index", align 4
@suspend_stats = external dso_local local_unnamed_addr global %struct.suspend_stats, align 4
@pm_suspend._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.5, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016PM: suspend exit\0A\00", [44 x i8] zeroinitializer }, align 32
@pm_suspend._entry_ptr.14 = internal global ptr @pm_suspend._entry.12, section ".printk_index", align 4
@__kstrtab_pm_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend to i32), ptr @__kstrtab_pm_suspend, ptr @__kstrtabns_pm_suspend }, section "___ksymtab+pm_suspend", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s2idle_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s2idle_wait_head.lock\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s2idle\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shallow\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"deep\00", [27 x i8] zeroinitializer }, align 32
@pm_test_level = external dso_local local_unnamed_addr global i32, align 4
@suspend_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016PM: suspend debug: Waiting for %d second(s).\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"suspend_test\00", [19 x i8] zeroinitializer }, align 32
@suspend_test._entry_ptr = internal global ptr @suspend_test._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@suspend_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013PM: late suspend of devices failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"suspend_enter\00", [18 x i8] zeroinitializer }, align 32
@suspend_enter._entry_ptr = internal global ptr @suspend_enter._entry, section ".printk_index", align 4
@suspend_enter._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013PM: noirq suspend of devices failed\0A\00", [57 x i8] zeroinitializer }, align 32
@suspend_enter._entry_ptr.26 = internal global ptr @suspend_enter._entry.24, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@suspend_enter.___tp_str = internal global ptr @.str.27, section "__tracepoint_str", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"machine_suspend\00", [16 x i8] zeroinitializer }, align 32
@suspend_enter.___tp_str.28 = internal global ptr @.str.27, section "__tracepoint_str", align 4
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"suspend-to-idle\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resume from suspend-to-idle\0A\00", [35 x i8] zeroinitializer }, align 32
@s2idle_enter.___tp_str = internal global ptr @.str.27, section "__tracepoint_str", align 4
@s2idle_enter.___tp_str.31 = internal global ptr @.str.27, section "__tracepoint_str", align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_suspend_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@enter_state.___tp_str = internal global ptr @.str.23, section "__tracepoint_str", align 4
@enter_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014PM: Unsupported test mode for suspend to idle, please choose none/freezer/devices/platform.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enter_state\00", [20 x i8] zeroinitializer }, align 32
@enter_state._entry_ptr = internal global ptr @enter_state._entry, section ".printk_index", align 4
@system_transition_mutex = external dso_local global %struct.mutex, align 4
@sync_on_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@enter_state.___tp_str.37 = internal global ptr @.str.38, section "__tracepoint_str", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sync_filesystems\00", [47 x i8] zeroinitializer }, align 32
@enter_state.___tp_str.39 = internal global ptr @.str.38, section "__tracepoint_str", align 4
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Preparing system for sleep (%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@enter_state.___tp_str.41 = internal global ptr @.str.23, section "__tracepoint_str", align 4
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Suspending system (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@events_check_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Finishing wakeup.\0A\00", [45 x i8] zeroinitializer }, align 32
@suspend_prepare.___tp_str = internal global ptr @.str.44, section "__tracepoint_str", align 4
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"freeze_processes\00", [47 x i8] zeroinitializer }, align 32
@suspend_prepare.___tp_str.45 = internal global ptr @.str.44, section "__tracepoint_str", align 4
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 37, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 38, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 39, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"pm_labels\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 36, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"mem_sleep_current\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 49, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"mem_sleep_default\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 50, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"pm_suspend_target_state\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 51, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"pm_suspend_global_flags\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 54, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"s2idle_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 58, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"s2idle_lock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"s2idle_wait_head\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [10 x i8] c"pm_states\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 41, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"mem_sleep_labels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 42, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"mem_sleep_states\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 47, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"suspend_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 57, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"pm_test_delay\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 316, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 495, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 498, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 509, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 510, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 610, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 618, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 62, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 59, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 43, i32 25 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 44, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 45, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 326, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 399, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 408, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 436, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 120, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 142, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 226, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 108, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 553, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 567, i32 24 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 572, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 582, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 589, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [26 x i8] c"../kernel/power/suspend.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 356, i32 23 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_pm_test_delay356, ptr @__UNIQUE_ID_pm_test_delaytype355, ptr @__ksymtab_pm_suspend, ptr @__ksymtab_pm_suspend_default_s2idle, ptr @__ksymtab_pm_suspend_global_flags, ptr @__ksymtab_pm_suspend_target_state, ptr @__ksymtab_s2idle_wake, ptr @__ksymtab_suspend_set_ops, ptr @__ksymtab_suspend_valid_only_mem, ptr @__param_pm_test_delay, ptr @__setup_mem_sleep_default_setup, ptr @enter_state.___tp_str, ptr @enter_state.___tp_str.37, ptr @enter_state.___tp_str.39, ptr @enter_state.___tp_str.41, ptr @enter_state._entry, ptr @enter_state._entry_ptr, ptr @pm_suspend._entry, ptr @pm_suspend._entry.12, ptr @pm_suspend._entry_ptr, ptr @pm_suspend._entry_ptr.14, ptr @s2idle_enter.___tp_str, ptr @s2idle_enter.___tp_str.31, ptr @suspend_devices_and_enter.___tp_str, ptr @suspend_devices_and_enter.___tp_str.9, ptr @suspend_devices_and_enter._entry, ptr @suspend_devices_and_enter._entry_ptr, ptr @suspend_enter.___tp_str, ptr @suspend_enter.___tp_str.28, ptr @suspend_enter._entry, ptr @suspend_enter._entry.24, ptr @suspend_enter._entry_ptr, ptr @suspend_enter._entry_ptr.26, ptr @suspend_prepare.___tp_str, ptr @suspend_prepare.___tp_str.45, ptr @suspend_test._entry, ptr @suspend_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pm_labels, ptr @mem_sleep_current, ptr @mem_sleep_default, ptr @pm_suspend_target_state, ptr @pm_suspend_global_flags, ptr @s2idle_ops, ptr @s2idle_lock, ptr @s2idle_wait_head, ptr @pm_states, ptr @mem_sleep_labels, ptr @mem_sleep_states, ptr @suspend_ops, ptr @pm_test_delay, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_labels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_sleep_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_sleep_default to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_suspend_target_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_suspend_global_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2idle_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2idle_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2idle_wait_head to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_states to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_sleep_labels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_sleep_states to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_test_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_devices_and_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_suspend._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_enter._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enter_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pm_suspend_default_s2idle() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mem_sleep_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s2idle_set_ops(ptr noundef %ops) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_system_sleep() #11
  store ptr %ops, ptr @s2idle_ops, align 4
  tail call void @unlock_system_sleep() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_system_sleep() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_system_sleep() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s2idle_wake() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @s2idle_lock) #11
  %0 = load i32, ptr @s2idle_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr @s2idle_state, align 4
  tail call void @swake_up_one(ptr noundef nonnull @s2idle_wait_head) #11
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @s2idle_lock, i32 noundef %call) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pm_states_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @.str.2, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  store ptr @.str, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  store ptr @.str.17, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_sleep_default_setup(ptr nocapture noundef readonly %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %entry
  %state.08 = phi i32 [ 1, %entry ], [ %inc, %for.inc.land.lhs.true_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @mem_sleep_labels, i32 0, i32 %state.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %state.08, ptr @mem_sleep_default, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true
  %inc = add nuw nsw i32 %state.08, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @suspend_set_ops(ptr noundef %ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_system_sleep() #11
  store ptr %ops, ptr @suspend_ops, align 4
  %tobool.not.i = icmp eq ptr %ops, null
  br i1 %tobool.not.i, label %entry.if.end2thread-pre-split_crit_edge, label %land.lhs.true.i

entry.if.end2thread-pre-split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2thread-pre-split

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end2thread-pre-split_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end2thread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2thread-pre-split

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i = tail call i32 %1(i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.if.end2thread-pre-split_crit_edge, label %valid_state.exit

land.lhs.true2.i.if.end2thread-pre-split_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2thread-pre-split

valid_state.exit:                                 ; preds = %land.lhs.true2.i
  %2 = load ptr, ptr @suspend_ops, align 4
  %enter.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %enter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enter.i, align 4
  %tobool5.i.not = icmp eq ptr %4, null
  br i1 %tobool5.i.not, label %valid_state.exit.if.end2_crit_edge, label %if.then

valid_state.exit.if.end2_crit_edge:               ; preds = %valid_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then:                                          ; preds = %valid_state.exit
  store ptr @.str.18, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  store ptr @.str.1, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %5 = load i32, ptr @mem_sleep_default, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then1, label %if.then.if.end2thread-pre-split_crit_edge

if.then.if.end2thread-pre-split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2thread-pre-split

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr @mem_sleep_current, align 4
  br label %if.end2thread-pre-split

if.end2thread-pre-split:                          ; preds = %if.then1, %if.then.if.end2thread-pre-split_crit_edge, %land.lhs.true2.i.if.end2thread-pre-split_crit_edge, %land.lhs.true.i.if.end2thread-pre-split_crit_edge, %entry.if.end2thread-pre-split_crit_edge
  %.pr = load ptr, ptr @suspend_ops, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end2thread-pre-split, %valid_state.exit.if.end2_crit_edge
  %6 = phi ptr [ %.pr, %if.end2thread-pre-split ], [ %2, %valid_state.exit.if.end2_crit_edge ]
  %tobool.not.i9 = icmp eq ptr %6, null
  br i1 %tobool.not.i9, label %if.end2.if.end8_crit_edge, label %land.lhs.true.i11

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.i11:                                ; preds = %if.end2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool1.not.i10 = icmp eq ptr %8, null
  br i1 %tobool1.not.i10, label %land.lhs.true.i11.if.end8_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i11.if.end8_crit_edge:              ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i11
  %call.i12 = tail call i32 %8(i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool4.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool4.not.i13, label %land.lhs.true2.i14.if.end8_crit_edge, label %valid_state.exit18

land.lhs.true2.i14.if.end8_crit_edge:             ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

valid_state.exit18:                               ; preds = %land.lhs.true2.i14
  %9 = load ptr, ptr @suspend_ops, align 4
  %enter.i15 = getelementptr inbounds %struct.platform_suspend_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %enter.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enter.i15, align 4
  %tobool5.i16.not = icmp eq ptr %11, null
  br i1 %tobool5.i16.not, label %valid_state.exit18.if.end8_crit_edge, label %if.then4

valid_state.exit18.if.end8_crit_edge:             ; preds = %valid_state.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %valid_state.exit18
  store ptr @.str.19, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %12 = load i32, ptr @mem_sleep_default, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp5 = icmp sgt i32 %12, 2
  br i1 %cmp5, label %if.then6, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  store i32 3, ptr @mem_sleep_current, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge, %valid_state.exit18.if.end8_crit_edge, %land.lhs.true2.i14.if.end8_crit_edge, %land.lhs.true.i11.if.end8_crit_edge, %if.end2.if.end8_crit_edge
  tail call void @unlock_system_sleep() #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @suspend_valid_only_mem(i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_suspend_disable_irqs() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !159
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !160
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_suspend_enable_irqs() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !161
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @suspend_devices_and_enter(i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  %__wait.i.i = alloca %struct.swait_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp.i = icmp eq i32 %state, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %entry
  %0 = load ptr, ptr @suspend_ops, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.cleanup_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %2(i32 noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.cleanup_crit_edge, label %sleep_state_supported.exit

land.lhs.true2.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sleep_state_supported.exit:                       ; preds = %land.lhs.true2.i.i
  %3 = load ptr, ptr @suspend_ops, align 4
  %enter.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %enter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enter.i.i, align 4
  %tobool5.i.i.not = icmp eq ptr %5, null
  br i1 %tobool5.i.i.not, label %sleep_state_supported.exit.cleanup_crit_edge, label %if.end2

sleep_state_supported.exit.cleanup_crit_edge:     ; preds = %sleep_state_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %sleep_state_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %state, ptr @pm_suspend_target_state, align 4
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  store i32 1, ptr @pm_suspend_target_state, align 4
  %6 = load i32, ptr @pm_suspend_global_flags, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr @pm_suspend_global_flags, align 4
  %7 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true1.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true1.i.if.else.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %9() #11
  br label %platform_suspend_begin.exit

if.else.i:                                        ; preds = %land.lhs.true1.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end2
  %10 = load ptr, ptr @suspend_ops, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.else.i.if.end5_crit_edge, label %land.lhs.true5.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true5.i:                                 ; preds = %if.else.i
  %begin6.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %begin6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %begin6.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end5_crit_edge, label %if.then8.i

land.lhs.true5.i.if.end5_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 %12(i32 noundef %state) #11
  br label %platform_suspend_begin.exit

platform_suspend_begin.exit:                      ; preds = %if.then8.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call10.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %platform_suspend_begin.exit.if.end5_crit_edge, label %platform_suspend_begin.exit.Close_crit_edge

platform_suspend_begin.exit.Close_crit_edge:      ; preds = %platform_suspend_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %Close

platform_suspend_begin.exit.if.end5_crit_edge:    ; preds = %platform_suspend_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %platform_suspend_begin.exit.if.end5_crit_edge, %land.lhs.true5.i.if.end5_crit_edge, %if.else.i.if.end5_crit_edge
  tail call void @suspend_console() #11
  tail call void @suspend_test_start() #11
  %call6 = tail call i32 @dpm_suspend_start([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %Recover_platform

if.end10:                                         ; preds = %if.end5
  tail call void @suspend_test_finish(ptr noundef nonnull @.str.6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %13 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i43 = icmp eq i32 %13, 4
  br i1 %cmp.i43, label %do.end.i, label %do.body15.preheader

do.body15.preheader:                              ; preds = %if.end10
  %14 = getelementptr inbounds %struct.swait_queue, ptr %__wait.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.swait_queue, ptr %__wait.i.i, i32 0, i32 1, i32 1
  br label %do.body15

do.end.i:                                         ; preds = %if.end10
  %16 = load i32, ptr @pm_test_delay, align 4
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %16) #15
  %17 = load i32, ptr @pm_test_delay, align 4
  %mul.i = mul i32 %17, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp2.i = icmp eq i32 %mul.i, 0
  br i1 %cmp2.i, label %do.end.i.Recover_platform_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.Recover_platform_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Recover_platform

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %__ms.021.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %mul.i, %do.end.i.while.body.i_crit_edge ]
  %dec.i = add i32 %__ms.021.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #11
  %tobool.not.i45 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i45, label %while.body.i.Recover_platform_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.Recover_platform_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Recover_platform

do.body15:                                        ; preds = %platform_suspend_again.exit.do.body15_crit_edge, %do.body15.preheader
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i.i48

land.lhs.true.i.i48:                              ; preds = %do.body15
  %19 = load ptr, ptr @suspend_ops, align 4
  %prepare.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %prepare.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prepare.i.i, align 4
  %tobool.not.i.i47 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i47, label %if.end.thread206.i, label %platform_suspend_prepare.exit.i

platform_suspend_prepare.exit.i:                  ; preds = %land.lhs.true.i.i48
  %call.i.i49 = call i32 %21() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool.not.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool.not.i50, label %if.end.thread.i, label %platform_suspend_prepare.exit.i.land.lhs.true.i179.i_crit_edge

platform_suspend_prepare.exit.i.land.lhs.true.i179.i_crit_edge: ; preds = %platform_suspend_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i179.i

if.end.i:                                         ; preds = %do.body15
  %call1.i = call i32 @dpm_suspend_late([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i51 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i51, label %land.lhs.true.i149.i, label %if.end.i.do.end.i52_crit_edge

if.end.i.do.end.i52_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i52

if.end.thread206.i:                               ; preds = %land.lhs.true.i.i48
  %call1207.i = call i32 @dpm_suspend_late([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1207.i)
  %tobool2.not208.i = icmp eq i32 %call1207.i, 0
  br i1 %tobool2.not208.i, label %if.end.thread206.i.if.end9.i_crit_edge, label %if.end.thread206.i.do.end.i52_crit_edge

if.end.thread206.i.do.end.i52_crit_edge:          ; preds = %if.end.thread206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i52

if.end.thread206.i.if.end9.i_crit_edge:           ; preds = %if.end.thread206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end.thread.i:                                  ; preds = %platform_suspend_prepare.exit.i
  %call1184.i = call i32 @dpm_suspend_late([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1184.i)
  %tobool2.not185.i = icmp eq i32 %call1184.i, 0
  br i1 %tobool2.not185.i, label %if.end.thread.i.if.end9.i_crit_edge, label %if.end.thread.i.do.end.i52_crit_edge

if.end.thread.i.do.end.i52_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i52

if.end.thread.i.if.end9.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

do.end.i52:                                       ; preds = %if.end.thread.i.do.end.i52_crit_edge, %if.end.thread206.i.do.end.i52_crit_edge, %if.end.i.do.end.i52_crit_edge
  %call1186.i = phi i32 [ %call1184.i, %if.end.thread.i.do.end.i52_crit_edge ], [ %call1.i, %if.end.i.do.end.i52_crit_edge ], [ %call1207.i, %if.end.thread206.i.do.end.i52_crit_edge ]
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %Platform_finish.i

land.lhs.true.i149.i:                             ; preds = %if.end.i
  %22 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i148.i = icmp eq ptr %22, null
  br i1 %tobool.not.i148.i, label %land.lhs.true.i149.i.if.end9.i_crit_edge, label %land.lhs.true1.i.i

land.lhs.true.i149.i.if.end9.i_crit_edge:         ; preds = %land.lhs.true.i149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i149.i
  %prepare.i150.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prepare.i150.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prepare.i150.i, align 4
  %tobool2.not.i.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i.i, label %land.lhs.true1.i.i.if.end9.i_crit_edge, label %platform_suspend_prepare_late.exit.i

land.lhs.true1.i.i.if.end9.i_crit_edge:           ; preds = %land.lhs.true1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

platform_suspend_prepare_late.exit.i:             ; preds = %land.lhs.true1.i.i
  %call.i151.i = call i32 %24() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %tobool7.not.i53 = icmp eq i32 %call.i151.i, 0
  br i1 %tobool7.not.i53, label %if.end9.thread.i, label %platform_suspend_prepare_late.exit.i.Devices_early_resume.i_crit_edge

platform_suspend_prepare_late.exit.i.Devices_early_resume.i_crit_edge: ; preds = %platform_suspend_prepare_late.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Devices_early_resume.i

if.end9.i:                                        ; preds = %land.lhs.true1.i.i.if.end9.i_crit_edge, %land.lhs.true.i149.i.if.end9.i_crit_edge, %if.end.thread.i.if.end9.i_crit_edge, %if.end.thread206.i.if.end9.i_crit_edge
  %call13.i = call i32 @dpm_suspend_noirq([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end21.i, label %if.end9.i.do.end18.i_crit_edge

if.end9.i.do.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

if.end9.thread.i:                                 ; preds = %platform_suspend_prepare_late.exit.i
  %call13189.i = call i32 @dpm_suspend_noirq([1 x i32] [i32 2]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13189.i)
  %tobool14.not190.i = icmp eq i32 %call13189.i, 0
  br i1 %tobool14.not190.i, label %if.end9.thread.i.if.then.i.i_crit_edge, label %if.end9.thread.i.do.end18.i_crit_edge

if.end9.thread.i.do.end18.i_crit_edge:            ; preds = %if.end9.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

if.end9.thread.i.if.then.i.i_crit_edge:           ; preds = %if.end9.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.end18.i:                                       ; preds = %if.end9.thread.i.do.end18.i_crit_edge, %if.end9.i.do.end18.i_crit_edge
  %call13191.i = phi i32 [ %call13189.i, %if.end9.thread.i.do.end18.i_crit_edge ], [ %call13.i, %if.end9.i.do.end18.i_crit_edge ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %Platform_early_resume.i

if.end21.i:                                       ; preds = %if.end9.i
  br i1 %cmp.i, label %if.end21.i.if.then.i.i_crit_edge, label %if.end.i.i

if.end21.i.if.then.i.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end21.i.if.then.i.i_crit_edge, %if.end9.thread.i.if.then.i.i_crit_edge
  %25 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i155.i = icmp eq ptr %25, null
  br i1 %tobool.not.i155.i, label %if.then.i.i.if.end25.i_crit_edge, label %land.lhs.true.i156.i

if.then.i.i.if.end25.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true.i156.i:                             ; preds = %if.then.i.i
  %prepare_late.i.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %prepare_late.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prepare_late.i.i, align 4
  %tobool1.not.i.i54 = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i54, label %land.lhs.true.i156.i.if.end25.i_crit_edge, label %land.lhs.true.i156.i.platform_suspend_prepare_noirq.exit.i_crit_edge

land.lhs.true.i156.i.platform_suspend_prepare_noirq.exit.i_crit_edge: ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_suspend_prepare_noirq.exit.i

land.lhs.true.i156.i.if.end25.i_crit_edge:        ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.end.i.i:                                       ; preds = %if.end21.i
  %28 = load ptr, ptr @suspend_ops, align 4
  %prepare_late3.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %prepare_late3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prepare_late3.i.i, align 4
  %tobool4.not.i.i55 = icmp eq ptr %30, null
  br i1 %tobool4.not.i.i55, label %if.end25.thread.i, label %if.end.i.i.platform_suspend_prepare_noirq.exit.i_crit_edge

if.end.i.i.platform_suspend_prepare_noirq.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_suspend_prepare_noirq.exit.i

platform_suspend_prepare_noirq.exit.i:            ; preds = %if.end.i.i.platform_suspend_prepare_noirq.exit.i_crit_edge, %land.lhs.true.i156.i.platform_suspend_prepare_noirq.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %27, %land.lhs.true.i156.i.platform_suspend_prepare_noirq.exit.i_crit_edge ], [ %30, %if.end.i.i.platform_suspend_prepare_noirq.exit.i_crit_edge ]
  %call7.i.i = call i32 %.sink.i.i() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool23.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool23.not.i, label %platform_suspend_prepare_noirq.exit.i.if.end25.i_crit_edge, label %platform_suspend_prepare_noirq.exit.i.Platform_wake.i_crit_edge

platform_suspend_prepare_noirq.exit.i.Platform_wake.i_crit_edge: ; preds = %platform_suspend_prepare_noirq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.i

platform_suspend_prepare_noirq.exit.i.if.end25.i_crit_edge: ; preds = %platform_suspend_prepare_noirq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %platform_suspend_prepare_noirq.exit.i.if.end25.i_crit_edge, %land.lhs.true.i156.i.if.end25.i_crit_edge, %if.then.i.i.if.end25.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %31 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i157.i = icmp eq i32 %31, 3
  br i1 %cmp.i157.i, label %if.end25.i.do.end.i.i_crit_edge, label %if.end29.i

if.end25.i.do.end.i.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end25.thread.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %32 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i157210.i = icmp eq i32 %32, 3
  br i1 %cmp.i157210.i, label %if.end25.thread.i.do.end.i.i_crit_edge, label %if.end25.thread.i.if.end31.i_crit_edge

if.end25.thread.i.if.end31.i_crit_edge:           ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.end25.thread.i.do.end.i.i_crit_edge:           ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end25.thread.i.do.end.i.i_crit_edge, %if.end25.i.do.end.i.i_crit_edge
  %33 = load i32, ptr @pm_test_delay, align 4
  %call.i158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %33) #15
  %34 = load i32, ptr @pm_test_delay, align 4
  %mul.i.i = mul i32 %34, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp2.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp2.i.i, label %do.end.i.i.Platform_wake.i_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %while.body.i.i

do.end.i.i.Platform_wake.i_crit_edge:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end.i.i.while.body.i.i_crit_edge
  %__ms.021.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %__ms.021.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #11
  %tobool.not.i160.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i160.i, label %while.body.i.i.Platform_wake.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.Platform_wake.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.i

if.end29.i:                                       ; preds = %if.end25.i
  br i1 %cmp.i, label %Platform_wake.thread.i, label %if.end29.i.if.end31.i_crit_edge

if.end29.i.if.end31.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

Platform_wake.thread.i:                           ; preds = %if.end29.i
  call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.29) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %s2idle_enter.exit.i, %Platform_wake.thread.i
  %36 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i93 = icmp eq ptr %36, null
  br i1 %tobool.not.i93, label %for.cond.i.if.else.i98_crit_edge, label %land.lhs.true.i94

for.cond.i.if.else.i98_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i98

land.lhs.true.i94:                                ; preds = %for.cond.i
  %wake.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %wake.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wake.i, align 4
  %tobool1.not.i = icmp eq ptr %38, null
  br i1 %tobool1.not.i, label %land.lhs.true.i94.if.else.i98_crit_edge, label %if.then.i96

land.lhs.true.i94.if.else.i98_crit_edge:          ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i98

if.then.i96:                                      ; preds = %land.lhs.true.i94
  %call.i95 = call zeroext i1 %38() #11
  br i1 %call.i95, label %if.then.i96.s2idle_loop.exit_crit_edge, label %if.then.i96.if.end7.i_crit_edge

if.then.i96.if.end7.i_crit_edge:                  ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then.i96.s2idle_loop.exit_crit_edge:           ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %s2idle_loop.exit

if.else.i98:                                      ; preds = %land.lhs.true.i94.if.else.i98_crit_edge, %for.cond.i.if.else.i98_crit_edge
  %call4.i97 = call zeroext i1 @pm_wakeup_pending() #11
  br i1 %call4.i97, label %if.else.i98.s2idle_loop.exit_crit_edge, label %if.else.i98.if.end7.i_crit_edge

if.else.i98.if.end7.i_crit_edge:                  ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i98.s2idle_loop.exit_crit_edge:           ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %s2idle_loop.exit

if.end7.i:                                        ; preds = %if.else.i98.if.end7.i_crit_edge, %if.then.i96.if.end7.i_crit_edge
  %39 = load ptr, ptr @s2idle_enter.___tp_str, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %39, i32 noundef 1, i1 noundef zeroext true) #11
  call void @_raw_spin_lock_irq(ptr noundef nonnull @s2idle_lock) #11
  %call.i.i99 = call zeroext i1 @pm_wakeup_pending() #11
  br i1 %call.i.i99, label %if.end7.i.s2idle_enter.exit.i_crit_edge, label %if.end.i.i100

if.end7.i.s2idle_enter.exit.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %s2idle_enter.exit.i

if.end.i.i100:                                    ; preds = %if.end7.i
  store i32 1, ptr @s2idle_state, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @s2idle_lock) #11
  call void @cpus_read_lock() #11
  call void @wake_up_all_idle_cpus() #11
  %40 = load i32, ptr @s2idle_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 2
  br i1 %cmp.i.i, label %if.end.i.i100.do.end.i.i101_crit_edge, label %if.end2.i.i

if.end.i.i100.do.end.i.i101_crit_edge:            ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i101

if.end2.i.i:                                      ; preds = %if.end.i.i100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %__wait.i.i) #11
  %41 = ptrtoint ptr %__wait.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %__wait.i.i, align 4, !annotation !162
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %14, ptr %14, align 4
  %43 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %14, ptr %15, align 4
  %call311.i.i = call i32 @prepare_to_swait_event(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %__wait.i.i, i32 noundef 2) #11
  %44 = load i32, ptr @s2idle_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp412.i.i = icmp eq i32 %44, 2
  br i1 %cmp412.i.i, label %if.end2.i.i.for.end.i.i_crit_edge, label %if.end2.i.i.cleanup.i.i_crit_edge

if.end2.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end2.i.i
  br label %cleanup.i.i

if.end2.i.i.for.end.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end2.i.i.cleanup.i.i_crit_edge
  call void @schedule() #11
  %call3.i.i = call i32 @prepare_to_swait_event(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %__wait.i.i, i32 noundef 2) #11
  %45 = load i32, ptr @s2idle_state, align 4
  %cmp4.i.i = icmp eq i32 %45, 2
  br i1 %cmp4.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end2.i.i.for.end.i.i_crit_edge
  call void @finish_swait(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %__wait.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %__wait.i.i) #11
  br label %do.end.i.i101

do.end.i.i101:                                    ; preds = %for.end.i.i, %if.end.i.i100.do.end.i.i101_crit_edge
  call void @cpus_read_unlock() #11
  call void @_raw_spin_lock_irq(ptr noundef nonnull @s2idle_lock) #11
  br label %s2idle_enter.exit.i

s2idle_enter.exit.i:                              ; preds = %do.end.i.i101, %if.end7.i.s2idle_enter.exit.i_crit_edge
  store i32 0, ptr @s2idle_state, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @s2idle_lock) #11
  %46 = load ptr, ptr @s2idle_enter.___tp_str.31, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %46, i32 noundef 1, i1 noundef zeroext false) #11
  br label %for.cond.i

s2idle_loop.exit:                                 ; preds = %if.else.i98.s2idle_loop.exit_crit_edge, %if.then.i96.s2idle_loop.exit_crit_edge
  call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.30) #11
  br label %if.then.i165.i

if.end31.i:                                       ; preds = %if.end29.i.if.end31.i_crit_edge, %if.end25.thread.i.if.end31.i_crit_edge
  call void @cpuidle_pause() #11
  %call.i.i.i = call i32 @freeze_secondary_cpus(i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool33.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool33.not.i, label %lor.lhs.false.i, label %if.end31.i.Platform_wake.thread200.i_crit_edge

if.end31.i.Platform_wake.thread200.i_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.thread200.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %47 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i75 = icmp eq i32 %47, 2
  br i1 %cmp.i75, label %do.end.i80, label %if.end37.i

do.end.i80:                                       ; preds = %lor.lhs.false.i
  %48 = load i32, ptr @pm_test_delay, align 4
  %call.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %48) #15
  %49 = load i32, ptr @pm_test_delay, align 4
  %mul.i77 = mul i32 %49, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i77)
  %cmp2.i78 = icmp eq i32 %mul.i77, 0
  br i1 %cmp2.i78, label %do.end.i80.Platform_wake.thread200.i_crit_edge, label %do.end.i80.while.body.i90_crit_edge

do.end.i80.while.body.i90_crit_edge:              ; preds = %do.end.i80
  br label %while.body.i90

do.end.i80.Platform_wake.thread200.i_crit_edge:   ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.thread200.i

while.body.i90:                                   ; preds = %while.body.i90.while.body.i90_crit_edge, %do.end.i80.while.body.i90_crit_edge
  %__ms.021.i87 = phi i32 [ %dec.i88, %while.body.i90.while.body.i90_crit_edge ], [ %mul.i77, %do.end.i80.while.body.i90_crit_edge ]
  %dec.i88 = add i32 %__ms.021.i87, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #11
  %tobool.not.i89 = icmp eq i32 %dec.i88, 0
  br i1 %tobool.not.i89, label %while.body.i90.Platform_wake.thread200.i_crit_edge, label %while.body.i90.while.body.i90_crit_edge

while.body.i90.while.body.i90_crit_edge:          ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i90

while.body.i90.Platform_wake.thread200.i_crit_edge: ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.thread200.i

if.end37.i:                                       ; preds = %lor.lhs.false.i
  call void @arch_suspend_disable_irqs() #11
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !159
  %and.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not.i, label %do.body58.i, label %do.end66.i, !prof !163

do.body58.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/suspend.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #11, !srcloc !164
  unreachable

do.end66.i:                                       ; preds = %if.end37.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 7, ptr @system_state, align 4
  %call67.i = call i32 @syscore_suspend() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %do.end66.i.if.end84.i_crit_edge

do.end66.i.if.end84.i_crit_edge:                  ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

if.then69.i:                                      ; preds = %do.end66.i
  %call70.i = call zeroext i1 @pm_wakeup_pending() #11
  %frombool.i = zext i1 %call70.i to i8
  %call71.i = call fastcc i32 @suspend_test(i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  %tobool74.not.i = xor i1 %call70.i, true
  %or.cond = select i1 %tobool72.not.i, i1 %tobool74.not.i, i1 false
  br i1 %or.cond, label %if.then76.i, label %if.else.i56

if.then76.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = load ptr, ptr @suspend_enter.___tp_str, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %52, i32 noundef %state, i1 noundef zeroext true) #11
  %53 = load ptr, ptr @suspend_ops, align 4
  %enter.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %enter.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enter.i, align 4
  %call78.i = call i32 %55(i32 noundef %state) #11
  %56 = load ptr, ptr @suspend_enter.___tp_str.28, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %56, i32 noundef %state, i1 noundef zeroext false) #11
  br label %if.end83.i

if.else.i56:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i = select i1 %call70.i, i32 -16, i32 0
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else.i56, %if.then76.i
  %error.0.i = phi i32 [ %call78.i, %if.then76.i ], [ %spec.select.i, %if.else.i56 ]
  call void @syscore_resume() #11
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end83.i, %do.end66.i.if.end84.i_crit_edge
  %wakeup.1 = phi i8 [ %frombool.i, %if.end83.i ], [ 0, %do.end66.i.if.end84.i_crit_edge ]
  %error.1.i = phi i32 [ %error.0.i, %if.end83.i ], [ %call67.i, %do.end66.i.if.end84.i_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 3, ptr @system_state, align 4
  call void @arch_suspend_enable_irqs() #11
  %57 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !159
  %and.i162.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i)
  %tobool104.not.i = icmp eq i32 %and.i162.i, 0
  br i1 %tobool104.not.i, label %if.end84.i.Platform_wake.thread200.i_crit_edge, label %do.body112.i, !prof !165

if.end84.i.Platform_wake.thread200.i_crit_edge:   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Platform_wake.thread200.i

do.body112.i:                                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/suspend.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #11, !srcloc !166
  unreachable

Platform_wake.thread200.i:                        ; preds = %if.end84.i.Platform_wake.thread200.i_crit_edge, %while.body.i90.Platform_wake.thread200.i_crit_edge, %do.end.i80.Platform_wake.thread200.i_crit_edge, %if.end31.i.Platform_wake.thread200.i_crit_edge
  %wakeup.2 = phi i8 [ %wakeup.1, %if.end84.i.Platform_wake.thread200.i_crit_edge ], [ 0, %if.end31.i.Platform_wake.thread200.i_crit_edge ], [ 0, %do.end.i80.Platform_wake.thread200.i_crit_edge ], [ 0, %while.body.i90.Platform_wake.thread200.i_crit_edge ]
  %error.2.i = phi i32 [ %error.1.i, %if.end84.i.Platform_wake.thread200.i_crit_edge ], [ %call.i.i.i, %if.end31.i.Platform_wake.thread200.i_crit_edge ], [ 0, %do.end.i80.Platform_wake.thread200.i_crit_edge ], [ 0, %while.body.i90.Platform_wake.thread200.i_crit_edge ]
  call void @thaw_secondary_cpus() #11
  call void @cpuidle_resume() #11
  br label %if.else.i.i

Platform_wake.i:                                  ; preds = %while.body.i.i.Platform_wake.i_crit_edge, %do.end.i.i.Platform_wake.i_crit_edge, %platform_suspend_prepare_noirq.exit.i.Platform_wake.i_crit_edge
  %error.3.i = phi i32 [ %call7.i.i, %platform_suspend_prepare_noirq.exit.i.Platform_wake.i_crit_edge ], [ 0, %do.end.i.i.Platform_wake.i_crit_edge ], [ 0, %while.body.i.i.Platform_wake.i_crit_edge ]
  br i1 %cmp.i, label %Platform_wake.i.if.then.i165.i_crit_edge, label %Platform_wake.i.if.else.i.i_crit_edge

Platform_wake.i.if.else.i.i_crit_edge:            ; preds = %Platform_wake.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

Platform_wake.i.if.then.i165.i_crit_edge:         ; preds = %Platform_wake.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i165.i

if.then.i165.i:                                   ; preds = %Platform_wake.i.if.then.i165.i_crit_edge, %s2idle_loop.exit
  %error.3199.i = phi i32 [ 0, %s2idle_loop.exit ], [ %error.3.i, %Platform_wake.i.if.then.i165.i_crit_edge ]
  %58 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i164.i = icmp eq ptr %58, null
  br i1 %tobool.not.i164.i, label %if.then.i165.i.platform_resume_noirq.exit.i_crit_edge, label %land.lhs.true.i167.i

if.then.i165.i.platform_resume_noirq.exit.i_crit_edge: ; preds = %if.then.i165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_resume_noirq.exit.i

land.lhs.true.i167.i:                             ; preds = %if.then.i165.i
  %restore_early.i.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %restore_early.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %restore_early.i.i, align 4
  %tobool1.not.i166.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i166.i, label %land.lhs.true.i167.i.platform_resume_noirq.exit.i_crit_edge, label %land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge

land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.sink.split.i.i

land.lhs.true.i167.i.platform_resume_noirq.exit.i_crit_edge: ; preds = %land.lhs.true.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_resume_noirq.exit.i

if.else.i.i:                                      ; preds = %Platform_wake.i.if.else.i.i_crit_edge, %Platform_wake.thread200.i
  %wakeup.3 = phi i8 [ 0, %Platform_wake.i.if.else.i.i_crit_edge ], [ %wakeup.2, %Platform_wake.thread200.i ]
  %error.3202.i = phi i32 [ %error.3.i, %Platform_wake.i.if.else.i.i_crit_edge ], [ %error.2.i, %Platform_wake.thread200.i ]
  %61 = load ptr, ptr @suspend_ops, align 4
  %wake.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %wake.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wake.i.i, align 4
  %tobool4.not.i168.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i168.i, label %if.else.i.i.platform_resume_noirq.exit.i_crit_edge, label %if.else.i.i.if.end8.sink.split.i.i_crit_edge

if.else.i.i.if.end8.sink.split.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.sink.split.i.i

if.else.i.i.platform_resume_noirq.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_resume_noirq.exit.i

if.end8.sink.split.i.i:                           ; preds = %if.else.i.i.if.end8.sink.split.i.i_crit_edge, %land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge
  %wakeup.4 = phi i8 [ 0, %land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge ], [ %wakeup.3, %if.else.i.i.if.end8.sink.split.i.i_crit_edge ]
  %error.3197.i = phi i32 [ %error.3199.i, %land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge ], [ %error.3202.i, %if.else.i.i.if.end8.sink.split.i.i_crit_edge ]
  %.sink.i169.i = phi ptr [ %60, %land.lhs.true.i167.i.if.end8.sink.split.i.i_crit_edge ], [ %63, %if.else.i.i.if.end8.sink.split.i.i_crit_edge ]
  call void %.sink.i169.i() #11
  br label %platform_resume_noirq.exit.i

platform_resume_noirq.exit.i:                     ; preds = %if.end8.sink.split.i.i, %if.else.i.i.platform_resume_noirq.exit.i_crit_edge, %land.lhs.true.i167.i.platform_resume_noirq.exit.i_crit_edge, %if.then.i165.i.platform_resume_noirq.exit.i_crit_edge
  %wakeup.5 = phi i8 [ 0, %if.then.i165.i.platform_resume_noirq.exit.i_crit_edge ], [ 0, %land.lhs.true.i167.i.platform_resume_noirq.exit.i_crit_edge ], [ %wakeup.4, %if.end8.sink.split.i.i ], [ %wakeup.3, %if.else.i.i.platform_resume_noirq.exit.i_crit_edge ]
  %error.3198.i = phi i32 [ %error.3199.i, %if.then.i165.i.platform_resume_noirq.exit.i_crit_edge ], [ %error.3199.i, %land.lhs.true.i167.i.platform_resume_noirq.exit.i_crit_edge ], [ %error.3197.i, %if.end8.sink.split.i.i ], [ %error.3202.i, %if.else.i.i.platform_resume_noirq.exit.i_crit_edge ]
  call void @dpm_resume_noirq([1 x i32] [i32 16]) #11
  br label %Platform_early_resume.i

Platform_early_resume.i:                          ; preds = %platform_resume_noirq.exit.i, %do.end18.i
  %wakeup.6 = phi i8 [ %wakeup.5, %platform_resume_noirq.exit.i ], [ 0, %do.end18.i ]
  %error.4.i = phi i32 [ %error.3198.i, %platform_resume_noirq.exit.i ], [ %call13191.i, %do.end18.i ]
  br i1 %cmp.i, label %land.lhs.true.i172.i, label %Platform_early_resume.i.Devices_early_resume.i_crit_edge

Platform_early_resume.i.Devices_early_resume.i_crit_edge: ; preds = %Platform_early_resume.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Devices_early_resume.i

land.lhs.true.i172.i:                             ; preds = %Platform_early_resume.i
  %64 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i171.i = icmp eq ptr %64, null
  br i1 %tobool.not.i171.i, label %land.lhs.true.i172.i.Devices_early_resume.i_crit_edge, label %land.lhs.true1.i174.i

land.lhs.true.i172.i.Devices_early_resume.i_crit_edge: ; preds = %land.lhs.true.i172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Devices_early_resume.i

land.lhs.true1.i174.i:                            ; preds = %land.lhs.true.i172.i
  %restore.i.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %restore.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %restore.i.i, align 4
  %tobool2.not.i173.i = icmp eq ptr %66, null
  br i1 %tobool2.not.i173.i, label %land.lhs.true1.i174.i.Devices_early_resume.i_crit_edge, label %if.then.i175.i

land.lhs.true1.i174.i.Devices_early_resume.i_crit_edge: ; preds = %land.lhs.true1.i174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Devices_early_resume.i

if.then.i175.i:                                   ; preds = %land.lhs.true1.i174.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %66() #11
  br label %Devices_early_resume.i

Devices_early_resume.i:                           ; preds = %if.then.i175.i, %land.lhs.true1.i174.i.Devices_early_resume.i_crit_edge, %land.lhs.true.i172.i.Devices_early_resume.i_crit_edge, %Platform_early_resume.i.Devices_early_resume.i_crit_edge, %platform_suspend_prepare_late.exit.i.Devices_early_resume.i_crit_edge
  %wakeup.7 = phi i8 [ %wakeup.6, %land.lhs.true.i172.i.Devices_early_resume.i_crit_edge ], [ %wakeup.6, %land.lhs.true1.i174.i.Devices_early_resume.i_crit_edge ], [ %wakeup.6, %if.then.i175.i ], [ %wakeup.6, %Platform_early_resume.i.Devices_early_resume.i_crit_edge ], [ 0, %platform_suspend_prepare_late.exit.i.Devices_early_resume.i_crit_edge ]
  %error.5.i = phi i32 [ %error.4.i, %land.lhs.true.i172.i.Devices_early_resume.i_crit_edge ], [ %error.4.i, %land.lhs.true1.i174.i.Devices_early_resume.i_crit_edge ], [ %error.4.i, %if.then.i175.i ], [ %error.4.i, %Platform_early_resume.i.Devices_early_resume.i_crit_edge ], [ %call.i151.i, %platform_suspend_prepare_late.exit.i.Devices_early_resume.i_crit_edge ]
  call void @dpm_resume_early([1 x i32] [i32 16]) #11
  br label %Platform_finish.i

Platform_finish.i:                                ; preds = %Devices_early_resume.i, %do.end.i52
  %wakeup.8 = phi i8 [ %wakeup.7, %Devices_early_resume.i ], [ 0, %do.end.i52 ]
  %error.6.i = phi i32 [ %error.5.i, %Devices_early_resume.i ], [ %call1186.i, %do.end.i52 ]
  br i1 %cmp.i, label %Platform_finish.i.suspend_enter.exit_crit_edge, label %Platform_finish.i.land.lhs.true.i179.i_crit_edge

Platform_finish.i.land.lhs.true.i179.i_crit_edge: ; preds = %Platform_finish.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i179.i

Platform_finish.i.suspend_enter.exit_crit_edge:   ; preds = %Platform_finish.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %suspend_enter.exit

land.lhs.true.i179.i:                             ; preds = %Platform_finish.i.land.lhs.true.i179.i_crit_edge, %platform_suspend_prepare.exit.i.land.lhs.true.i179.i_crit_edge
  %wakeup.9 = phi i8 [ %wakeup.8, %Platform_finish.i.land.lhs.true.i179.i_crit_edge ], [ 0, %platform_suspend_prepare.exit.i.land.lhs.true.i179.i_crit_edge ]
  %error.6204.i = phi i32 [ %error.6.i, %Platform_finish.i.land.lhs.true.i179.i_crit_edge ], [ %call.i.i49, %platform_suspend_prepare.exit.i.land.lhs.true.i179.i_crit_edge ]
  %67 = load ptr, ptr @suspend_ops, align 4
  %finish.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %finish.i.i, align 4
  %tobool.not.i178.i = icmp eq ptr %69, null
  br i1 %tobool.not.i178.i, label %land.lhs.true.i179.i.suspend_enter.exit_crit_edge, label %if.then.i180.i

land.lhs.true.i179.i.suspend_enter.exit_crit_edge: ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %suspend_enter.exit

if.then.i180.i:                                   ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %69() #11
  br label %suspend_enter.exit

suspend_enter.exit:                               ; preds = %if.then.i180.i, %land.lhs.true.i179.i.suspend_enter.exit_crit_edge, %Platform_finish.i.suspend_enter.exit_crit_edge
  %wakeup.10 = phi i8 [ %wakeup.8, %Platform_finish.i.suspend_enter.exit_crit_edge ], [ %wakeup.9, %land.lhs.true.i179.i.suspend_enter.exit_crit_edge ], [ %wakeup.9, %if.then.i180.i ]
  %error.6205.i = phi i32 [ %error.6.i, %Platform_finish.i.suspend_enter.exit_crit_edge ], [ %error.6204.i, %land.lhs.true.i179.i.suspend_enter.exit_crit_edge ], [ %error.6204.i, %if.then.i180.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.6205.i)
  %tobool18.not = icmp eq i32 %error.6205.i, 0
  br i1 %tobool18.not, label %land.lhs.true, label %suspend_enter.exit.Resume_devices_crit_edge

suspend_enter.exit.Resume_devices_crit_edge:      ; preds = %suspend_enter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

land.lhs.true:                                    ; preds = %suspend_enter.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wakeup.10)
  %tobool19.not = icmp ne i8 %wakeup.10, 0
  %brmerge = or i1 %cmp.i, %tobool19.not
  br i1 %brmerge, label %land.lhs.true.Resume_devices_crit_edge, label %land.lhs.true.i58

land.lhs.true.Resume_devices_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

land.lhs.true.i58:                                ; preds = %land.lhs.true
  %70 = load ptr, ptr @suspend_ops, align 4
  %suspend_again.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %suspend_again.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %suspend_again.i, align 4
  %tobool.not.i57 = icmp eq ptr %72, null
  br i1 %tobool.not.i57, label %land.lhs.true.i58.Resume_devices_crit_edge, label %platform_suspend_again.exit

land.lhs.true.i58.Resume_devices_crit_edge:       ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

platform_suspend_again.exit:                      ; preds = %land.lhs.true.i58
  %call.i59 = call zeroext i1 %72() #11
  br i1 %call.i59, label %platform_suspend_again.exit.do.body15_crit_edge, label %platform_suspend_again.exit.Resume_devices_crit_edge

platform_suspend_again.exit.Resume_devices_crit_edge: ; preds = %platform_suspend_again.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

platform_suspend_again.exit.do.body15_crit_edge:  ; preds = %platform_suspend_again.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

Resume_devices:                                   ; preds = %if.then.i73, %land.lhs.true.i72.Resume_devices_crit_edge, %Recover_platform.Resume_devices_crit_edge, %platform_suspend_again.exit.Resume_devices_crit_edge, %land.lhs.true.i58.Resume_devices_crit_edge, %land.lhs.true.Resume_devices_crit_edge, %suspend_enter.exit.Resume_devices_crit_edge
  %error.0 = phi i32 [ %call6, %Recover_platform.Resume_devices_crit_edge ], [ %call6, %land.lhs.true.i72.Resume_devices_crit_edge ], [ %call6, %if.then.i73 ], [ 0, %land.lhs.true.i58.Resume_devices_crit_edge ], [ 0, %platform_suspend_again.exit.Resume_devices_crit_edge ], [ 0, %land.lhs.true.Resume_devices_crit_edge ], [ %error.6205.i, %suspend_enter.exit.Resume_devices_crit_edge ]
  call void @suspend_test_start() #11
  call void @dpm_resume_end([1 x i32] [i32 16]) #11
  call void @suspend_test_finish(ptr noundef nonnull @.str.7) #11
  %73 = load ptr, ptr @suspend_devices_and_enter.___tp_str, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %73, i32 noundef %state, i1 noundef zeroext true)
  call void @resume_console() #11
  %74 = load ptr, ptr @suspend_devices_and_enter.___tp_str.9, align 4
  call fastcc void @trace_suspend_resume(ptr noundef %74, i32 noundef %state, i1 noundef zeroext false)
  br label %Close

Close:                                            ; preds = %Resume_devices, %platform_suspend_begin.exit.Close_crit_edge
  %error.1 = phi i32 [ %retval.0.i, %platform_suspend_begin.exit.Close_crit_edge ], [ %error.0, %Resume_devices ]
  br i1 %cmp.i, label %land.lhs.true.i63, label %Close.if.else.i67_crit_edge

Close.if.else.i67_crit_edge:                      ; preds = %Close
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i67

land.lhs.true.i63:                                ; preds = %Close
  %75 = load ptr, ptr @s2idle_ops, align 4
  %tobool.not.i62 = icmp eq ptr %75, null
  br i1 %tobool.not.i62, label %land.lhs.true.i63.if.else.i67_crit_edge, label %land.lhs.true1.i65

land.lhs.true.i63.if.else.i67_crit_edge:          ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i67

land.lhs.true1.i65:                               ; preds = %land.lhs.true.i63
  %end.i = getelementptr inbounds %struct.platform_s2idle_ops, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %tobool2.not.i64 = icmp eq ptr %77, null
  br i1 %tobool2.not.i64, label %land.lhs.true1.i65.if.else.i67_crit_edge, label %land.lhs.true1.i65.if.end10.sink.split.i_crit_edge

land.lhs.true1.i65.if.end10.sink.split.i_crit_edge: ; preds = %land.lhs.true1.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.sink.split.i

land.lhs.true1.i65.if.else.i67_crit_edge:         ; preds = %land.lhs.true1.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i67

if.else.i67:                                      ; preds = %land.lhs.true1.i65.if.else.i67_crit_edge, %land.lhs.true.i63.if.else.i67_crit_edge, %Close.if.else.i67_crit_edge
  %78 = load ptr, ptr @suspend_ops, align 4
  %tobool4.not.i66 = icmp eq ptr %78, null
  br i1 %tobool4.not.i66, label %if.else.i67.platform_resume_end.exit_crit_edge, label %land.lhs.true5.i69

if.else.i67.platform_resume_end.exit_crit_edge:   ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_resume_end.exit

land.lhs.true5.i69:                               ; preds = %if.else.i67
  %end6.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %end6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end6.i, align 4
  %tobool7.not.i68 = icmp eq ptr %80, null
  br i1 %tobool7.not.i68, label %land.lhs.true5.i69.platform_resume_end.exit_crit_edge, label %land.lhs.true5.i69.if.end10.sink.split.i_crit_edge

land.lhs.true5.i69.if.end10.sink.split.i_crit_edge: ; preds = %land.lhs.true5.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.sink.split.i

land.lhs.true5.i69.platform_resume_end.exit_crit_edge: ; preds = %land.lhs.true5.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %platform_resume_end.exit

if.end10.sink.split.i:                            ; preds = %land.lhs.true5.i69.if.end10.sink.split.i_crit_edge, %land.lhs.true1.i65.if.end10.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %77, %land.lhs.true1.i65.if.end10.sink.split.i_crit_edge ], [ %80, %land.lhs.true5.i69.if.end10.sink.split.i_crit_edge ]
  call void %.sink.i() #11
  br label %platform_resume_end.exit

platform_resume_end.exit:                         ; preds = %if.end10.sink.split.i, %land.lhs.true5.i69.platform_resume_end.exit_crit_edge, %if.else.i67.platform_resume_end.exit_crit_edge
  store i32 0, ptr @pm_suspend_target_state, align 4
  br label %cleanup

Recover_platform:                                 ; preds = %while.body.i.Recover_platform_crit_edge, %do.end.i.Recover_platform_crit_edge, %do.end
  br i1 %cmp.i, label %Recover_platform.Resume_devices_crit_edge, label %land.lhs.true.i72

Recover_platform.Resume_devices_crit_edge:        ; preds = %Recover_platform
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

land.lhs.true.i72:                                ; preds = %Recover_platform
  %81 = load ptr, ptr @suspend_ops, align 4
  %recover.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %recover.i, align 4
  %tobool.not.i71 = icmp eq ptr %83, null
  br i1 %tobool.not.i71, label %land.lhs.true.i72.Resume_devices_crit_edge, label %if.then.i73

land.lhs.true.i72.Resume_devices_crit_edge:       ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %Resume_devices

if.then.i73:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %83() #11
  br label %Resume_devices

cleanup:                                          ; preds = %platform_resume_end.exit, %sleep_state_supported.exit.cleanup_crit_edge, %land.lhs.true2.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %platform_resume_end.exit ], [ -38, %sleep_state_supported.exit.cleanup_crit_edge ], [ -38, %land.lhs.true2.i.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i.i.cleanup_crit_edge ], [ -38, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_test_start() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_start([1 x i32]) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_test_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @suspend_test(i32 noundef %level) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %0 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %level)
  %cmp = icmp eq i32 %0, %level
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %entry
  %1 = load i32, ptr @pm_test_delay, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %1) #15
  %2 = load i32, ptr @pm_test_delay, align 4
  %mul = mul i32 %2, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp2 = icmp eq i32 %mul, 0
  br i1 %cmp2, label %do.end.return_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %__ms.021 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %do.end.while.body_crit_edge ]
  %dec = add i32 %__ms.021, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.return_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %while.body.return_crit_edge, %do.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %do.end.return_crit_edge ], [ 1, %while.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_end([1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_suspend_resume(ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), ptr blockaddress(@trace_suspend_resume, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !167

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !168
  %call43 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !169
  %13 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !165

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_suspend_resume.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_suspend_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 246, ptr noundef nonnull @.str.33) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %31 = tail call i32 @llvm.read_register.i32(metadata !149) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resume_console() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_suspend(i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %state, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x ptr], ptr @mem_sleep_labels, i32 0, i32 %state
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %3) #15
  %4 = load ptr, ptr @enter_state.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %4, i32 noundef %state, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp.i = icmp eq i32 %state, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %5 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.i = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2.i = icmp slt i32 %5, 3
  %or.cond.i = and i1 %cmp1.not.i, %cmp2.i
  br i1 %or.cond.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %if.then3

if.else.i:                                        ; preds = %do.end
  %6 = load ptr, ptr @suspend_ops, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.else.i.if.then3_crit_edge, label %land.lhs.true.i.i

if.else.i.if.then3_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

land.lhs.true.i.i:                                ; preds = %if.else.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.then3_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.then3_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %8(i32 noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.if.then3_crit_edge, label %valid_state.exit.i

land.lhs.true2.i.i.if.then3_crit_edge:            ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

valid_state.exit.i:                               ; preds = %land.lhs.true2.i.i
  %9 = load ptr, ptr @suspend_ops, align 4
  %enter.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %enter.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enter.i.i, align 4
  %tobool5.i.not.i = icmp eq ptr %11, null
  br i1 %tobool5.i.not.i, label %valid_state.exit.i.if.then3_crit_edge, label %if.end8.thread.i

valid_state.exit.i.if.then3_crit_edge:            ; preds = %valid_state.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end8.i:                                        ; preds = %if.then.i
  %call9.i = tail call i32 @mutex_trylock(ptr noundef nonnull @system_transition_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end8.i.if.then3_crit_edge, label %if.then13.i

if.end8.i.if.then3_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end8.thread.i:                                 ; preds = %valid_state.exit.i
  %call945.i = tail call i32 @mutex_trylock(ptr noundef nonnull @system_transition_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call945.i)
  %tobool.not46.i = icmp eq i32 %call945.i, 0
  br i1 %tobool.not46.i, label %if.end8.thread.i.if.then3_crit_edge, label %if.end8.thread.i.if.end14.i_crit_edge

if.end8.thread.i.if.end14.i_crit_edge:            ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end8.thread.i.if.then3_crit_edge:              ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @s2idle_state, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end8.thread.i.if.end14.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sync_on_suspend_enabled to i32))
  %12 = load i8, ptr @sync_on_suspend_enabled, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not.i = icmp eq i8 %12, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then16.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @enter_state.___tp_str.37, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %13, i32 noundef 0, i1 noundef zeroext true) #11
  tail call void @ksys_sync_helper() #11
  %14 = load ptr, ptr @enter_state.___tp_str.39, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %14, i32 noundef 0, i1 noundef zeroext false) #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end19.i_crit_edge
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.40, ptr noundef %3) #11
  store i32 0, ptr @pm_suspend_global_flags, align 4
  br i1 %cmp.i, label %if.end19.i.if.end.i.i_crit_edge, label %lor.rhs.i.i.i

if.end19.i.if.end.i.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end19.i
  %15 = load ptr, ptr @suspend_ops, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.enter_state.exit.thread22_crit_edge, label %land.lhs.true.i.i.i.i

lor.rhs.i.i.i.enter_state.exit.thread22_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_state.exit.thread22

land.lhs.true.i.i.i.i:                            ; preds = %lor.rhs.i.i.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.enter_state.exit.thread22_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.enter_state.exit.thread22_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_state.exit.thread22

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i = tail call i32 %17(i32 noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true2.i.i.i.i.enter_state.exit.thread22_crit_edge, label %sleep_state_supported.exit.i.i

land.lhs.true2.i.i.i.i.enter_state.exit.thread22_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_state.exit.thread22

sleep_state_supported.exit.i.i:                   ; preds = %land.lhs.true2.i.i.i.i
  %18 = load ptr, ptr @suspend_ops, align 4
  %enter.i.i.i.i = getelementptr inbounds %struct.platform_suspend_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %enter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enter.i.i.i.i, align 4
  %tobool5.i.i.not.i.i = icmp eq ptr %20, null
  br i1 %tobool5.i.i.not.i.i, label %sleep_state_supported.exit.i.i.enter_state.exit.thread22_crit_edge, label %sleep_state_supported.exit.i.i.if.end.i.i_crit_edge

sleep_state_supported.exit.i.i.if.end.i.i_crit_edge: ; preds = %sleep_state_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sleep_state_supported.exit.i.i.enter_state.exit.thread22_crit_edge: ; preds = %sleep_state_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_state.exit.thread22

if.end.i.i:                                       ; preds = %sleep_state_supported.exit.i.i.if.end.i.i_crit_edge, %if.end19.i.if.end.i.i_crit_edge
  tail call void @pm_prepare_console() #11
  %call1.i.i = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i40.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i40.i, label %if.end3.i.i, label %if.end.i.i.enter_state.exit_crit_edge

if.end.i.i.enter_state.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_state.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %21 = load ptr, ptr @suspend_prepare.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %21, i32 noundef 0, i1 noundef zeroext true) #11
  %call.i.i.i = tail call i32 @freeze_processes() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %call1.i.i.i = tail call i32 @freeze_kernel_threads() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end23.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @thaw_processes() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i.i, %if.end3.i.i.if.end8.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i, %if.end3.i.i.if.end8.i.i_crit_edge ]
  %22 = load ptr, ptr @suspend_prepare.___tp_str.45, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %22, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %arrayidx.i.i.i = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx.i.i.i, align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %inc.i.i.i = add i32 %26, 1
  %rem.i.i.i = srem i32 %inc.i.i.i, 2
  store i32 %rem.i.i.i, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  br label %Unlock.sink.split.sink.split.i

if.end23.i:                                       ; preds = %if.end.i.i.i
  %27 = load ptr, ptr @suspend_prepare.___tp_str.45, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %27, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %28 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i

do.end.i.i:                                       ; preds = %if.end23.i
  %29 = load i32, ptr @pm_test_delay, align 4
  %call.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %29) #15
  %30 = load i32, ptr @pm_test_delay, align 4
  %mul.i.i = mul i32 %30, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp2.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp2.i.i, label %do.end.i.i.Finish.i_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %while.body.i.i

do.end.i.i.Finish.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Finish.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end.i.i.while.body.i.i_crit_edge
  %__ms.021.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %__ms.021.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #11
  %tobool.not.i42.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i42.i, label %while.body.i.i.Finish.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.Finish.i_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %Finish.i

if.end27.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = load ptr, ptr @enter_state.___tp_str.41, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %32, i32 noundef %state, i1 noundef zeroext false) #11
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.42, ptr noundef %3) #11
  tail call void @pm_restrict_gfp_mask() #11
  %call30.i = tail call i32 @suspend_devices_and_enter(i32 noundef %state) #11
  tail call void @pm_restore_gfp_mask() #11
  br label %Finish.i

Finish.i:                                         ; preds = %if.end27.i, %while.body.i.i.Finish.i_crit_edge, %do.end.i.i.Finish.i_crit_edge
  %error.0.i = phi i32 [ %call30.i, %if.end27.i ], [ 0, %do.end.i.i.Finish.i_crit_edge ], [ 0, %while.body.i.i.Finish.i_crit_edge ]
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @events_check_enabled to i32))
  store i8 0, ptr @events_check_enabled, align 1
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.43) #11
  tail call void @thaw_processes() #11
  br label %Unlock.sink.split.sink.split.i

Unlock.sink.split.sink.split.i:                   ; preds = %Finish.i, %if.end8.i.i
  %error.1.ph.ph.i = phi i32 [ %retval.0.i.ph.i.i, %if.end8.i.i ], [ %error.0.i, %Finish.i ]
  %call9.i.i = tail call i32 @pm_notifier_call_chain(i32 noundef 4) #11
  br label %enter_state.exit

enter_state.exit.thread22:                        ; preds = %sleep_state_supported.exit.i.i.enter_state.exit.thread22_crit_edge, %land.lhs.true2.i.i.i.i.enter_state.exit.thread22_crit_edge, %land.lhs.true.i.i.i.i.enter_state.exit.thread22_crit_edge, %lor.rhs.i.i.i.enter_state.exit.thread22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #11
  br label %if.then3

enter_state.exit:                                 ; preds = %Unlock.sink.split.sink.split.i, %if.end.i.i.enter_state.exit_crit_edge
  %error.1.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.enter_state.exit_crit_edge ], [ %error.1.ph.ph.i, %Unlock.sink.split.sink.split.i ]
  tail call void @pm_restore_console() #11
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.ph.i)
  %tobool.not = icmp eq i32 %error.1.ph.i, 0
  br i1 %tobool.not, label %if.else, label %enter_state.exit.if.then3_crit_edge

enter_state.exit.if.then3_crit_edge:              ; preds = %enter_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %enter_state.exit.if.then3_crit_edge, %enter_state.exit.thread22, %if.end8.thread.i.if.then3_crit_edge, %if.end8.i.if.then3_crit_edge, %valid_state.exit.i.if.then3_crit_edge, %land.lhs.true2.i.i.if.then3_crit_edge, %land.lhs.true.i.i.if.then3_crit_edge, %if.else.i.if.then3_crit_edge, %do.end.i
  %retval.0.i20 = phi i32 [ %error.1.ph.i, %enter_state.exit.if.then3_crit_edge ], [ -1, %enter_state.exit.thread22 ], [ -22, %if.else.i.if.then3_crit_edge ], [ -22, %land.lhs.true.i.i.if.then3_crit_edge ], [ -22, %land.lhs.true2.i.i.if.then3_crit_edge ], [ -16, %if.end8.thread.i.if.then3_crit_edge ], [ -16, %if.end8.i.if.then3_crit_edge ], [ -22, %valid_state.exit.i.if.then3_crit_edge ], [ -11, %do.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12) to i32))
  %34 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %arrayidx.i16 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %34
  %35 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i20, ptr %arrayidx.i16, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %inc.i = add i32 %36, 1
  %rem.i = srem i32 %inc.i, 2
  store i32 %rem.i, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  br label %do.end8

if.else:                                          ; preds = %enter_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suspend_stats to i32))
  %37 = load i32, ptr @suspend_stats, align 4
  %inc4 = add i32 %37, 1
  store i32 %inc4, ptr @suspend_stats, align 4
  br label %do.end8

do.end8:                                          ; preds = %if.else, %if.then3
  %retval.0.i19 = phi i32 [ %retval.0.i20, %if.then3 ], [ 0, %if.else ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i19, %do.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_late([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_noirq([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscore_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_noirq([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_early([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_pr_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_swait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_pause() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_secondary_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_secondary_cpus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync_helper() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restrict_gfp_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_gfp_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_prepare_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain_robust(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_processes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_kernel_threads() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_processes() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !34, !35, !36, !37, !39, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !77, !79, !81, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !126, !128, !129, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !147}
!llvm.named.register.sp = !{!149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/suspend.c", i32 37, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/power/suspend.c", i32 38, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/power/suspend.c", i32 39, i32 21}
!6 = !{ptr @pm_labels, !7, !"pm_labels", i1 false, i1 false}
!7 = !{!"../kernel/power/suspend.c", i32 36, i32 20}
!8 = !{ptr @mem_sleep_current, !9, !"mem_sleep_current", i1 false, i1 false}
!9 = !{!"../kernel/power/suspend.c", i32 49, i32 17}
!10 = !{ptr @mem_sleep_default, !11, !"mem_sleep_default", i1 false, i1 false}
!11 = !{!"../kernel/power/suspend.c", i32 50, i32 17}
!12 = !{ptr @__ksymtab_pm_suspend_target_state, !13, !"__ksymtab_pm_suspend_target_state", i1 false, i1 false}
!13 = !{!"../kernel/power/suspend.c", i32 52, i32 1}
!14 = !{ptr @__ksymtab_pm_suspend_global_flags, !15, !"__ksymtab_pm_suspend_global_flags", i1 false, i1 false}
!15 = !{!"../kernel/power/suspend.c", i32 55, i32 1}
!16 = !{ptr @__ksymtab_pm_suspend_default_s2idle, !17, !"__ksymtab_pm_suspend_default_s2idle", i1 false, i1 false}
!17 = !{!"../kernel/power/suspend.c", i32 74, i32 1}
!18 = !{ptr @__ksymtab_s2idle_wake, !19, !"__ksymtab_s2idle_wake", i1 false, i1 false}
!19 = !{!"../kernel/power/suspend.c", i32 156, i32 1}
!20 = !{ptr @__setup_mem_sleep_default_setup, !21, !"__setup_mem_sleep_default_setup", i1 false, i1 false}
!21 = !{!"../kernel/power/suspend.c", i32 195, i32 1}
!22 = !{ptr @__ksymtab_suspend_set_ops, !23, !"__ksymtab_suspend_set_ops", i1 false, i1 false}
!23 = !{!"../kernel/power/suspend.c", i32 221, i32 1}
!24 = !{ptr @__ksymtab_suspend_valid_only_mem, !25, !"__ksymtab_suspend_valid_only_mem", i1 false, i1 false}
!25 = !{!"../kernel/power/suspend.c", i32 235, i32 1}
!26 = !{ptr @__param_pm_test_delay, !27, !"__param_pm_test_delay", i1 false, i1 false}
!27 = !{!"../kernel/power/suspend.c", i32 317, i32 1}
!28 = !{ptr @__UNIQUE_ID_pm_test_delaytype355, !27, !"__UNIQUE_ID_pm_test_delaytype355", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_pm_test_delay356, !30, !"__UNIQUE_ID_pm_test_delay356", i1 false, i1 false}
!30 = !{!"../kernel/power/suspend.c", i32 318, i32 1}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/power/suspend.c", i32 495, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @suspend_devices_and_enter._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @suspend_devices_and_enter._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/power/suspend.c", i32 498, i32 22}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/power/suspend.c", i32 509, i32 22}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/power/suspend.c", i32 510, i32 23}
!43 = !{ptr @suspend_devices_and_enter.___tp_str, !42, !"___tp_str", i1 false, i1 false}
!44 = !{ptr @suspend_devices_and_enter.___tp_str.9, !45, !"___tp_str", i1 false, i1 false}
!45 = !{!"../kernel/power/suspend.c", i32 512, i32 23}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/power/suspend.c", i32 610, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pm_suspend._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pm_suspend._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/power/suspend.c", i32 618, i32 2}
!53 = !{ptr @pm_suspend._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pm_suspend._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__ksymtab_pm_suspend, !56, !"__ksymtab_pm_suspend", i1 false, i1 false}
!56 = !{!"../kernel/power/suspend.c", i32 621, i32 1}
!57 = !{ptr @pm_states, !58, !"pm_states", i1 false, i1 false}
!58 = !{!"../kernel/power/suspend.c", i32 41, i32 13}
!59 = !{ptr @mem_sleep_states, !60, !"mem_sleep_states", i1 false, i1 false}
!60 = !{!"../kernel/power/suspend.c", i32 47, i32 13}
!61 = !{ptr @pm_suspend_target_state, !62, !"pm_suspend_target_state", i1 false, i1 false}
!62 = !{!"../kernel/power/suspend.c", i32 51, i32 17}
!63 = !{ptr @pm_suspend_global_flags, !64, !"pm_suspend_global_flags", i1 false, i1 false}
!64 = !{!"../kernel/power/suspend.c", i32 54, i32 14}
!65 = !{ptr @suspend_ops, !66, !"suspend_ops", i1 false, i1 false}
!66 = !{!"../kernel/power/suspend.c", i32 57, i32 43}
!67 = !{ptr @s2idle_ops, !68, !"s2idle_ops", i1 false, i1 false}
!68 = !{!"../kernel/power/suspend.c", i32 58, i32 42}
!69 = !{ptr @s2idle_state, !70, !"s2idle_state", i1 false, i1 false}
!70 = !{!"../kernel/power/suspend.c", i32 61, i32 34}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/power/suspend.c", i32 62, i32 8}
!73 = !{ptr @s2idle_lock, !72, !"s2idle_lock", i1 false, i1 false}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/power/suspend.c", i32 59, i32 8}
!76 = !{ptr @s2idle_wait_head, !75, !"s2idle_wait_head", i1 false, i1 false}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/power/suspend.c", i32 43, i32 25}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/power/suspend.c", i32 44, i32 25}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/power/suspend.c", i32 45, i32 21}
!83 = !{ptr @mem_sleep_labels, !84, !"mem_sleep_labels", i1 false, i1 false}
!84 = !{!"../kernel/power/suspend.c", i32 42, i32 27}
!85 = !{ptr @__setup_str_mem_sleep_default_setup, !21, !"__setup_str_mem_sleep_default_setup", i1 false, i1 false}
!86 = !{ptr @__param_str_pm_test_delay, !27, !"__param_str_pm_test_delay", i1 false, i1 false}
!87 = !{ptr @pm_test_delay, !88, !"pm_test_delay", i1 false, i1 false}
!88 = !{!"../kernel/power/suspend.c", i32 316, i32 21}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/power/suspend.c", i32 326, i32 3}
!91 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @suspend_test._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @suspend_test._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/power/suspend.c", i32 399, i32 3}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @suspend_enter._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @suspend_enter._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/power/suspend.c", i32 408, i32 3}
!101 = !{ptr @suspend_enter._entry.24, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @suspend_enter._entry_ptr.26, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/power/suspend.c", i32 436, i32 25}
!105 = !{ptr @suspend_enter.___tp_str, !104, !"___tp_str", i1 false, i1 false}
!106 = !{ptr @suspend_enter.___tp_str.28, !107, !"___tp_str", i1 false, i1 false}
!107 = !{!"../kernel/power/suspend.c", i32 439, i32 25}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/power/suspend.c", i32 120, i32 2}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/power/suspend.c", i32 142, i32 2}
!112 = !{ptr @s2idle_enter.___tp_str, !113, !"___tp_str", i1 false, i1 false}
!113 = !{!"../kernel/power/suspend.c", i32 90, i32 23}
!114 = !{ptr @s2idle_enter.___tp_str.31, !115, !"___tp_str", i1 false, i1 false}
!115 = !{!"../kernel/power/suspend.c", i32 115, i32 23}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../include/trace/events/power.h", i32 226, i32 1}
!118 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!120 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!123 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @enter_state.___tp_str, !125, !"___tp_str", i1 false, i1 false}
!125 = !{!"../kernel/power/suspend.c", i32 549, i32 23}
!126 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/power/suspend.c", i32 553, i32 4}
!128 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @enter_state._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @enter_state._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/power/suspend.c", i32 567, i32 24}
!133 = !{ptr @enter_state.___tp_str.37, !132, !"___tp_str", i1 false, i1 false}
!134 = !{ptr @enter_state.___tp_str.39, !135, !"___tp_str", i1 false, i1 false}
!135 = !{!"../kernel/power/suspend.c", i32 569, i32 24}
!136 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/power/suspend.c", i32 572, i32 2}
!138 = !{ptr @enter_state.___tp_str.41, !139, !"___tp_str", i1 false, i1 false}
!139 = !{!"../kernel/power/suspend.c", i32 581, i32 23}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/power/suspend.c", i32 582, i32 2}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/power/suspend.c", i32 589, i32 2}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/power/suspend.c", i32 356, i32 23}
!146 = !{ptr @suspend_prepare.___tp_str, !145, !"___tp_str", i1 false, i1 false}
!147 = !{ptr @suspend_prepare.___tp_str.45, !148, !"___tp_str", i1 false, i1 false}
!148 = !{!"../kernel/power/suspend.c", i32 358, i32 23}
!149 = !{!"sp"}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 620836}
!160 = !{i64 618539}
!161 = !{i64 618349}
!162 = !{!"auto-init"}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 2156148059, i64 2156148546, i64 2156148096, i64 2156148152, i64 2156148186, i64 2156148210, i64 2156148251, i64 2156148272, i64 2156148300, i64 2156148334}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2156151473, i64 2156151960, i64 2156151510, i64 2156151566, i64 2156151600, i64 2156151624, i64 2156151665, i64 2156151686, i64 2156151714, i64 2156151748}
!167 = !{i64 2148792974, i64 2148792979, i64 2148792992, i64 2148793036, i64 2148793070, i64 2148793091}
!168 = !{i64 2155830341}
!169 = !{i64 2155830568}
!170 = !{i64 2149271519}
!171 = !{i64 2149272555}
!172 = !{i8 0, i8 2}
