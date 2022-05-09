; ModuleID = '/llk/IR_all_yes/drivers/thermal/thermal_helpers.c_pt.bc'
source_filename = "../drivers/thermal/thermal_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_tz_trend\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tz_trend\09\09\09\09"
module asm "\09.long\09__crc_get_tz_trend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tz_trend:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tz_trend\22\09\09\09\09\09"
module asm "__kstrtabns_get_tz_trend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_thermal_instance\22, \22a\22\09"
module asm "\09.weak\09__crc_get_thermal_instance\09\09\09\09"
module asm "\09.long\09__crc_get_thermal_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_thermal_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22get_thermal_instance\22\09\09\09\09\09"
module asm "__kstrtabns_get_thermal_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+thermal_zone_get_temp\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_zone_get_temp\09\09\09\09"
module asm "\09.long\09__crc_thermal_zone_get_temp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_temp\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+thermal_cdev_update\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_cdev_update\09\09\09\09"
module asm "\09.long\09__crc_thermal_cdev_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_cdev_update:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_cdev_update\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_cdev_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+thermal_zone_get_slope\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_zone_get_slope\09\09\09\09"
module asm "\09.long\09__crc_thermal_zone_get_slope\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_slope:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_slope\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_slope:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+thermal_zone_get_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_zone_get_offset\09\09\09\09"
module asm "\09.long\09__crc_thermal_zone_get_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_offset\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_get_tz_trend = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tz_trend = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tz_trend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tz_trend to i32), ptr @__kstrtab_get_tz_trend, ptr @__kstrtabns_get_tz_trend }, section "___ksymtab+get_tz_trend", align 4
@__kstrtab_get_thermal_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_thermal_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_get_thermal_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_thermal_instance to i32), ptr @__kstrtab_get_thermal_instance, ptr @__kstrtabns_get_thermal_instance }, section "___ksymtab+get_thermal_instance", align 4
@__kstrtab_thermal_zone_get_temp = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_temp = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_temp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_temp to i32), ptr @__kstrtab_thermal_zone_get_temp, ptr @__kstrtabns_thermal_zone_get_temp }, section "___ksymtab_gpl+thermal_zone_get_temp", align 4
@thermal_zone_set_trips.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"thermal_zone_set_trips\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/thermal_helpers.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"new temperature boundaries: %d < x < %d\0A\00", [55 x i8] zeroinitializer }, align 32
@thermal_zone_set_trips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 172, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set trips: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@thermal_zone_set_trips._entry_ptr = internal global ptr @thermal_zone_set_trips._entry, section ".printk_index", align 4
@__thermal_cdev_update.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__thermal_cdev_update\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zone%d->target=%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@__thermal_cdev_update.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set to state %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_thermal_cdev_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_cdev_update = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_cdev_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_cdev_update to i32), ptr @__kstrtab_thermal_cdev_update, ptr @__kstrtabns_thermal_cdev_update }, section "___ksymtab+thermal_cdev_update", align 4
@__kstrtab_thermal_zone_get_slope = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_slope = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_slope = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_slope to i32), ptr @__kstrtab_thermal_zone_get_slope, ptr @__kstrtabns_thermal_zone_get_slope }, section "___ksymtab_gpl+thermal_zone_get_slope", align 4
@__kstrtab_thermal_zone_get_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_offset to i32), ptr @__kstrtab_thermal_zone_get_offset, ptr @__kstrtabns_thermal_zone_get_offset }, section "___ksymtab_gpl+thermal_zone_get_offset", align 4
@__tracepoint_cdev_update = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/thermal.h\00", [33 x i8] zeroinitializer }, align 32
@trace_cdev_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 163, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 172, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 202, i32 3 }
@___asan_gen_.44 = private constant [37 x i8] c"../drivers/thermal/thermal_helpers.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 213, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"../include/trace/events/thermal.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 49, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 108, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_get_thermal_instance, ptr @__ksymtab_get_tz_trend, ptr @__ksymtab_thermal_cdev_update, ptr @__ksymtab_thermal_zone_get_offset, ptr @__ksymtab_thermal_zone_get_slope, ptr @__ksymtab_thermal_zone_get_temp, ptr @thermal_zone_set_trips._entry, ptr @thermal_zone_set_trips._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_set_trips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tz_trend(ptr noundef %tz, i32 noundef %trip) #0 align 64 {
entry:
  %trend = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trend) #7
  %0 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trend, align 4, !annotation !49
  %emul_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 15
  %1 = ptrtoint ptr %emul_temperature to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %emul_temperature, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_trend = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %get_trend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_trend, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call = call i32 %6(ptr noundef %tz, i32 noundef %trip, ptr noundef nonnull %trend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false2.if.end13_crit_edge, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false2.if.end13_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  %7 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temperature, align 8
  %last_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 14
  %9 = ptrtoint ptr %last_temperature to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_temperature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp sgt i32 %8, %10
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %trend, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9 = icmp slt i32 %8, %10
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %trend, align 4
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %trend, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10, %if.then6, %lor.lhs.false2.if.end13_crit_edge
  %14 = ptrtoint ptr %trend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trend, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trend) #7
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_thermal_instance(ptr noundef %tz, ptr noundef %cdev, i32 noundef %trip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %lock1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock1, i32 noundef 0) #7
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %0 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn30 = load ptr, ptr %thermal_instances, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %thermal_instances
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %entry.for.body_crit_edge ]
  %tz3 = getelementptr i8, ptr %.pn32, i32 -124
  %1 = ptrtoint ptr %tz3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tz3, align 4
  %cmp4 = icmp eq ptr %2, %tz
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %trip5 = getelementptr i8, ptr %.pn32, i32 -116
  %3 = ptrtoint ptr %trip5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %trip5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %trip)
  %cmp6 = icmp eq i32 %4, %trip
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %cdev8 = getelementptr i8, ptr %.pn32, i32 -120
  %5 = ptrtoint ptr %cdev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev8, align 4
  %cmp9 = icmp eq ptr %6, %cdev
  br i1 %cmp9, label %for.end.split.loop.exit, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.split.loop.exit:                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %pos.0.le = getelementptr i8, ptr %.pn32, i32 -148
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %target_instance.0 = phi ptr [ %pos.0.le, %for.end.split.loop.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock1) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret ptr %target_instance.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_get_temp(ptr noundef %tz, ptr noundef %temp) #0 align 64 {
entry:
  %crit_temp = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crit_temp) #7
  %0 = ptrtoint ptr %crit_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %crit_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %type, align 4, !annotation !49
  %tobool.not = icmp eq ptr %tz, null
  %cmp.i = icmp ugt ptr %tz, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.exit_crit_edge, label %lor.lhs.false1

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

lor.lhs.false1:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_temp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false1.exit_crit_edge, label %if.end

lor.lhs.false1.exit_crit_edge:                    ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %lor.lhs.false1
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_temp4 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %get_temp4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_temp4, align 4
  %call5 = tail call i32 %9(ptr noundef nonnull %tz, ptr noundef %temp) #7
  %emul_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 15
  %10 = ptrtoint ptr %emul_temperature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %emul_temperature, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end.if.end22_crit_edge, label %for.cond.preheader

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %12 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46 = icmp sgt i32 %13, 0
  br i1 %cmp46, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_trip_type, align 4
  %call9 = call i32 %17(ptr noundef nonnull %tz, i32 noundef %count.047, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp11 = icmp eq i32 %19, 3
  br i1 %cmp11, label %if.then12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_trip_temp, align 4
  %call14 = call i32 %23(ptr noundef nonnull %tz, i32 noundef %count.047, ptr noundef nonnull %crit_temp) #7
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %count.047, 1
  %24 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trips, align 8
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then12, %for.cond.preheader.for.end_crit_edge
  %ret.1 = phi i32 [ %call14, %if.then12 ], [ %call5, %for.cond.preheader.for.end_crit_edge ], [ %call9, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool16.not = icmp eq i32 %ret.1, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true17:                                  ; preds = %for.end
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp, align 4
  %28 = ptrtoint ptr %crit_temp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crit_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp18 = icmp slt i32 %27, %29
  br i1 %cmp18, label %if.then19, label %land.lhs.true17.if.end22_crit_edge

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %emul_temperature to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %emul_temperature, align 8
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %temp, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true17.if.end22_crit_edge, %for.end.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end.if.end22_crit_edge ], [ 0, %if.then19 ], [ 0, %land.lhs.true17.if.end22_crit_edge ], [ %call5, %if.end.if.end22_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %exit

exit:                                             ; preds = %if.end22, %lor.lhs.false1.exit_crit_edge, %entry.exit_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end22 ], [ -22, %lor.lhs.false1.exit_crit_edge ], [ -22, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crit_temp) #7
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_zone_set_trips(ptr noundef %tz) local_unnamed_addr #0 align 64 {
entry:
  %trip_temp = alloca i32, align 4
  %hysteresis = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp) #7
  %0 = ptrtoint ptr %trip_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip_temp, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hysteresis) #7
  %1 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hysteresis, align 4, !annotation !49
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %set_trips = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_trips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_trips, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_trip_hyst, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.exit_crit_edge, label %for.cond.preheader

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.cond.preheader:                               ; preds = %lor.lhs.false
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %8 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp75 = icmp sgt i32 %9, 0
  br i1 %cmp75, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %low.078 = phi i32 [ -2147483647, %for.body.lr.ph ], [ %low.1, %for.body.for.body_crit_edge ]
  %high.077 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %high.1, %for.body.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_trip_temp, align 4
  %call = call i32 %13(ptr noundef %tz, i32 noundef %i.076, ptr noundef nonnull %trip_temp) #7
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %get_trip_hyst5 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %get_trip_hyst5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_trip_hyst5, align 4
  %call6 = call i32 %17(ptr noundef %tz, i32 noundef %i.076, ptr noundef nonnull %hysteresis) #7
  %18 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trip_temp, align 4
  %20 = ptrtoint ptr %hysteresis to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hysteresis, align 4
  %sub = sub i32 %19, %21
  %22 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temperature, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %23)
  %cmp7 = icmp slt i32 %sub, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %low.078)
  %cmp8 = icmp sgt i32 %sub, %low.078
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  %low.1 = select i1 %or.cond, i32 %sub, i32 %low.078
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp12 = icmp sgt i32 %19, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %high.077)
  %cmp14 = icmp slt i32 %19, %high.077
  %or.cond73 = select i1 %cmp12, i1 %cmp14, i1 false
  %high.1 = select i1 %or.cond73, i32 %19, i32 %high.077
  %inc = add nuw nsw i32 %i.076, 1
  %24 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trips, align 8
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %high.0.lcssa = phi i32 [ 2147483647, %for.cond.preheader.for.end_crit_edge ], [ %high.1, %for.body.for.end_crit_edge ]
  %low.0.lcssa = phi i32 [ -2147483647, %for.cond.preheader.for.end_crit_edge ], [ %low.1, %for.body.for.end_crit_edge ]
  %prev_low_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 17
  %26 = ptrtoint ptr %prev_low_trip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prev_low_trip, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %low.0.lcssa)
  %cmp17 = icmp eq i32 %27, %low.0.lcssa
  br i1 %cmp17, label %land.lhs.true18, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true18:                                  ; preds = %for.end
  %prev_high_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 18
  %28 = ptrtoint ptr %prev_high_trip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prev_high_trip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %high.0.lcssa)
  %cmp19 = icmp eq i32 %29, %high.0.lcssa
  br i1 %cmp19, label %land.lhs.true18.exit_crit_edge, label %land.lhs.true18.if.end21_crit_edge

land.lhs.true18.if.end21_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true18.exit_crit_edge:                   ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end21:                                         ; preds = %land.lhs.true18.if.end21_crit_edge, %for.end.if.end21_crit_edge
  %30 = ptrtoint ptr %prev_low_trip to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %low.0.lcssa, ptr %prev_low_trip, align 8
  %prev_high_trip23 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 18
  %31 = ptrtoint ptr %prev_high_trip23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %high.0.lcssa, ptr %prev_high_trip23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_zone_set_trips.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_zone_set_trips, %if.then28)) #7
          to label %do.end [label %if.then28], !srcloc !50

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_zone_set_trips.__UNIQUE_ID_ddebug198, ptr noundef %device, ptr noundef nonnull @.str.3, i32 noundef %low.0.lcssa, i32 noundef %high.0.lcssa) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.end21
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %set_trips31 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %set_trips31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_trips31, align 4
  %call32 = call i32 %35(ptr noundef %tz, i32 noundef %low.0.lcssa, i32 noundef %high.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end.exit_crit_edge, label %do.end37

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %device38 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device38, ptr noundef nonnull @.str.4, i32 noundef %call32) #10
  br label %exit

exit:                                             ; preds = %do.end37, %do.end.exit_crit_edge, %land.lhs.true18.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hysteresis) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_set_delay_jiffies(ptr nocapture noundef writeonly %delay_jiffies, i32 noundef %delay_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay_ms) #7
  %0 = ptrtoint ptr %delay_jiffies to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2.i, ptr %delay_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %delay_ms)
  %cmp = icmp sgt i32 %delay_ms, 1000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @round_jiffies(i32 noundef %call2.i) #7
  %1 = ptrtoint ptr %delay_jiffies to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %delay_jiffies, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__thermal_cdev_update(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_instances = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 9
  %0 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn57 = load ptr, ptr %thermal_instances, align 4
  %cmp.not58 = icmp eq ptr %.pn57, %thermal_instances
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.lr.ph
  %.pn60 = phi ptr [ %.pn57, %do.body.lr.ph ], [ %.pn, %do.end.do.body_crit_edge ]
  %target.059 = phi i32 [ 0, %do.body.lr.ph ], [ %target.1, %do.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__thermal_cdev_update.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__thermal_cdev_update, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %tz = getelementptr i8, ptr %.pn60, i32 -132
  %1 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tz, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %target6 = getelementptr i8, ptr %.pn60, i32 -108
  %5 = ptrtoint ptr %target6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__thermal_cdev_update.__UNIQUE_ID_ddebug199, ptr noundef %device, ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %target7 = getelementptr i8, ptr %.pn60, i32 -108
  %7 = ptrtoint ptr %target7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp8 = icmp ne i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %target.059)
  %cmp12 = icmp ugt i32 %8, %target.059
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  %target.1 = select i1 %or.cond, i32 %8, i32 %target.059
  %9 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %target.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %target.1, %do.end.for.end_crit_edge ]
  %ops.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %set_cur_state.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %set_cur_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_cur_state.i, align 4
  %call.i = tail call i32 %13(ptr noundef %cdev, i32 noundef %target.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.thermal_cdev_set_cur_state.exit_crit_edge

for.end.thermal_cdev_set_cur_state.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %thermal_cdev_set_cur_state.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cdev, align 8
  %call1.i = tail call i32 @thermal_notify_cdev_state_update(i32 noundef %15, i32 noundef %target.0.lcssa) #7
  tail call void @thermal_cooling_device_stats_update(ptr noundef %cdev, i32 noundef %target.0.lcssa) #7
  br label %thermal_cdev_set_cur_state.exit

thermal_cdev_set_cur_state.exit:                  ; preds = %if.end.i, %for.end.thermal_cdev_set_cur_state.exit_crit_edge
  tail call fastcc void @trace_cdev_update(ptr noundef %cdev, i32 noundef %target.0.lcssa)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__thermal_cdev_update.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__thermal_cdev_update, %if.then33)) #7
          to label %do.end37 [label %if.then33], !srcloc !50

if.then33:                                        ; preds = %thermal_cdev_set_cur_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %device34 = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__thermal_cdev_update.__UNIQUE_ID_ddebug200, ptr noundef %device34, ptr noundef nonnull @.str.9, i32 noundef %target.0.lcssa) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %thermal_cdev_set_cur_state.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdev_update(ptr noundef %cdev, i32 noundef %target) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 1), ptr blockaddress(@trace_cdev_update, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %call42 = tail call i32 @__traceiter_cdev_update(ptr noundef null, ptr noundef %cdev, i32 noundef %target) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdev_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdev_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 66, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_cdev_update(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %updated = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 7
  %0 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %updated, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__thermal_cdev_update(ptr noundef %cdev)
  %2 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %updated, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @thermal_zone_get_slope(ptr noundef readonly %tz) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tz, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %entry
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 21
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %slope to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slope, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @thermal_zone_get_offset(ptr noundef readonly %tz) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tz, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %entry
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 21
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_notify_cdev_state_update(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_stats_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdev_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_get_tz_trend, !1, !"__ksymtab_get_tz_trend", i1 false, i1 false}
!1 = !{!"../drivers/thermal/thermal_helpers.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab_get_thermal_instance, !3, !"__ksymtab_get_thermal_instance", i1 false, i1 false}
!3 = !{!"../drivers/thermal/thermal_helpers.c", i32 66, i32 1}
!4 = !{ptr @__ksymtab_thermal_zone_get_temp, !5, !"__ksymtab_thermal_zone_get_temp", i1 false, i1 false}
!5 = !{!"../drivers/thermal/thermal_helpers.c", i32 115, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/thermal_helpers.c", i32 163, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @thermal_zone_set_trips.__UNIQUE_ID_ddebug198, !7, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/thermal_helpers.c", i32 172, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @thermal_zone_set_trips._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @thermal_zone_set_trips._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/thermal_helpers.c", i32 202, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__thermal_cdev_update.__UNIQUE_ID_ddebug199, !19, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/thermal_helpers.c", i32 213, i32 2}
!24 = !{ptr @__thermal_cdev_update.__UNIQUE_ID_ddebug200, !23, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!25 = !{ptr @__ksymtab_thermal_cdev_update, !26, !"__ksymtab_thermal_cdev_update", i1 false, i1 false}
!26 = !{!"../drivers/thermal/thermal_helpers.c", i32 231, i32 1}
!27 = !{ptr @__ksymtab_thermal_zone_get_slope, !28, !"__ksymtab_thermal_zone_get_slope", i1 false, i1 false}
!28 = !{!"../drivers/thermal/thermal_helpers.c", i32 246, i32 1}
!29 = !{ptr @__ksymtab_thermal_zone_get_offset, !30, !"__ksymtab_thermal_zone_get_offset", i1 false, i1 false}
!30 = !{!"../drivers/thermal/thermal_helpers.c", i32 261, i32 1}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/trace/events/thermal.h", i32 49, i32 1}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 2148282293, i64 2148282298, i64 2148282311, i64 2148282355, i64 2148282389, i64 2148282410}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2152919484}
!53 = !{i64 2152919693}
!54 = !{i64 2149304973}
!55 = !{i64 2149306009}
!56 = !{i8 0, i8 2}
