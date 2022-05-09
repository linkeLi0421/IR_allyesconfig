; ModuleID = '/llk/IR_all_yes/kernel/time/clockevents.c_pt.bc'
source_filename = "../kernel/time/clockevents.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clockevent_delta2ns\22, \22a\22\09"
module asm "\09.weak\09__crc_clockevent_delta2ns\09\09\09\09"
module asm "\09.long\09__crc_clockevent_delta2ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevent_delta2ns:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevent_delta2ns\22\09\09\09\09\09"
module asm "__kstrtabns_clockevent_delta2ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clockevents_unbind_device\22, \22a\22\09"
module asm "\09.weak\09__crc_clockevents_unbind_device\09\09\09\09"
module asm "\09.long\09__crc_clockevents_unbind_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_unbind_device\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clockevents_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_clockevents_register_device\09\09\09\09"
module asm "\09.long\09__crc_clockevents_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clockevents_config_and_register\22, \22a\22\09"
module asm "\09.weak\09__crc_clockevents_config_and_register\09\09\09\09"
module asm "\09.long\09__crc_clockevents_config_and_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clockevents_config_and_register:\09\09\09\09\09"
module asm "\09.asciz \09\22clockevents_config_and_register\22\09\09\09\09\09"
module asm "__kstrtabns_clockevents_config_and_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.tick_device = type { ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.ce_unbind = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_clockevent_delta2ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevent_delta2ns = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevent_delta2ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevent_delta2ns to i32), ptr @__kstrtab_clockevent_delta2ns, ptr @__kstrtabns_clockevent_delta2ns }, section "___ksymtab_gpl+clockevent_delta2ns", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/time/clockevents.c\00", [38 x i8] zeroinitializer }, align 32
@clockevents_program_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clockevents_program_event.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Current state: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@clockevents_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clockevents_mutex, i64 52), ptr getelementptr (i8, ptr @clockevents_mutex, i64 52) }, ptr @clockevents_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_clockevents_unbind_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_unbind_device = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_unbind_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_unbind_device to i32), ptr @__kstrtab_clockevents_unbind_device, ptr @__kstrtabns_clockevents_unbind_device }, section "___ksymtab_gpl+clockevents_unbind_device", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_all_bits = external dso_local constant [1 x i32], align 4
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s cpumask == cpu_all_mask, using cpu_possible_mask instead\0A\00", [35 x i8] zeroinitializer }, align 32
@clockevents_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@clockevent_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clockevent_devices, ptr @clockevent_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_clockevents_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_register_device to i32), ptr @__kstrtab_clockevents_register_device, ptr @__kstrtabns_clockevents_register_device }, section "___ksymtab_gpl+clockevents_register_device", align 4
@__kstrtab_clockevents_config_and_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_clockevents_config_and_register = external dso_local constant [0 x i8], align 1
@__ksymtab_clockevents_config_and_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clockevents_config_and_register to i32), ptr @__kstrtab_clockevents_config_and_register, ptr @__kstrtabns_clockevents_config_and_register }, section "___ksymtab_gpl+clockevents_config_and_register", align 4
@clockevents_released = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clockevents_released, ptr @clockevents_released }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_clockevents__174_776_clockevents_init_sysfs6 = internal global ptr @clockevents_init_sysfs, section ".initcall6.init", align 4
@__pcpu_unique_tick_percpu_dev = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@tick_percpu_dev = weak dso_local global %struct.device zeroinitializer, section ".data..percpu", align 8
@__clockevents_switch_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clockevents_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clockevents_mutex\00", [46 x i8] zeroinitializer }, align 32
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clockevents_lock\00", [47 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@clockevents_subsys = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.8, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clockevents\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clockevent\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_current_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_unbind_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @unbind_device_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"current_device\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@tick_bc_dev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.12, ptr null, ptr @clockevents_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broadcast\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unbind_device\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 161, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 319, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"clockevents_mutex\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 456, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"clockevents_lock\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"clockevent_devices\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 20, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"clockevents_released\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 21, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 25, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 23, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 108, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"clockevents_subsys\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 662, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 663, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 664, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"dev_attr_current_device\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"dev_attr_unbind_device\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 684, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 680, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"tick_bc_dev\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 719, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 720, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [29 x i8] c"../kernel/time/clockevents.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 716, i32 8 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_clockevents__174_776_clockevents_init_sysfs6, ptr @__ksymtab_clockevent_delta2ns, ptr @__ksymtab_clockevents_config_and_register, ptr @__ksymtab_clockevents_register_device, ptr @__ksymtab_clockevents_unbind_device, ptr @.str, ptr @.str.2, ptr @clockevents_mutex, ptr @.str.3, ptr @clockevents_lock, ptr @clockevent_devices, ptr @clockevents_released, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @clockevents_subsys, ptr @.str.8, ptr @.str.9, ptr @dev_attr_current_device, ptr @dev_attr_unbind_device, ptr @.str.10, ptr @.str.11, ptr @tick_bc_dev, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevents_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevents_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevent_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevents_released to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevents_subsys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unbind_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_bc_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @clockevent_delta2ns(i32 noundef %latch, ptr nocapture noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i32 %latch to i64
  %shift.i = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 7
  %0 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %1 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %mult.i = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 6
  %2 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mult.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end24.i_crit_edge, !prof !66

entry.if.end24.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #10
  %4 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mult.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %entry.if.end24.i_crit_edge
  %5 = phi i32 [ %3, %entry.if.end24.i_crit_edge ], [ 1, %do.end.i ]
  %conv26.i = zext i32 %5 to i64
  %sub.i = add nsw i64 %conv26.i, -1
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %sh_prom28.i = zext i32 %7 to i64
  %shr.i = lshr i64 %shl.i, %sh_prom28.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %shr.i, %conv.i
  %spec.select366.i = select i1 %cmp.not.i, i64 %shl.i, i64 -1
  %sub33.i = xor i64 %spec.select366.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %sub33.i)
  %cmp34.i = icmp ult i64 %sub.i, %sub33.i
  %spec.select367.i = select i1 %cmp34.i, i64 %sub.i, i64 0
  %spec.select = add i64 %spec.select366.i, %spec.select367.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select)
  %cmp223.i = icmp ult i64 %spec.select, 4294967296
  br i1 %cmp223.i, label %if.then231.i, label %if.else237.i, !prof !67

if.then231.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv232.i = trunc i64 %spec.select to i32
  %div235.i = udiv i32 %conv232.i, %5
  %conv236.i = zext i32 %div235.i to i64
  br label %cev_delta2ns.exit

if.else237.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %spec.select) #13, !srcloc !68
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  br label %cev_delta2ns.exit

cev_delta2ns.exit:                                ; preds = %if.else237.i, %if.then231.i
  %clc.2.i = phi i64 [ %conv236.i, %if.then231.i ], [ %asmresult1.i.i, %if.else237.i ]
  %9 = tail call i64 @llvm.umax.i64(i64 %clc.2.i, i64 1000) #10
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_switch_state(ptr noundef %dev, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp.not = icmp eq i32 %1, %state
  br i1 %cmp.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @__clockevents_switch_state(ptr noundef %dev, i32 noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.end33_crit_edge

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %state, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp.i = icmp eq i32 %state, 3
  br i1 %cmp.i, label %if.then4, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then4:                                         ; preds = %if.end
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mult, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %do.end, label %if.then4.if.end33_crit_edge, !prof !66

if.then4.if.end33_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  %5 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mult, align 8
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then4.if.end33_crit_edge, %if.end.if.end33_crit_edge, %if.then.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__clockevents_switch_state(ptr noundef %dev, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.end.return_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge99
    i32 2, label %sw.bb5
    i32 3, label %sw.bb16
    i32 4, label %sw.bb27
  ]

if.end.sw.bb_crit_edge99:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge99
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_state_shutdown, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %sw.bb.return_crit_edge, label %if.then2

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %4(ptr noundef %dev) #10
  br label %return

sw.bb5:                                           ; preds = %if.end
  %and7 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %sw.bb5.return_crit_edge, label %if.end10

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10:                                         ; preds = %sw.bb5
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_state_periodic, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.end10.return_crit_edge, label %if.then12

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 %6(ptr noundef %dev) #10
  br label %return

sw.bb16:                                          ; preds = %if.end
  %and18 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %sw.bb16.return_crit_edge, label %if.end21

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end21:                                         ; preds = %sw.bb16
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_state_oneshot, align 64
  %tobool22.not = icmp eq ptr %8, null
  br i1 %tobool22.not, label %if.end21.return_crit_edge, label %if.then23

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 %8(ptr noundef %dev) #10
  br label %return

sw.bb27:                                          ; preds = %if.end
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp eq i32 %10, 3
  br i1 %cmp.i, label %if.end70, label %land.rhs

land.rhs:                                         ; preds = %sw.bb27
  %.b96 = load i1, ptr @__clockevents_switch_state.__already_done, align 1
  br i1 %.b96, label %land.rhs.return_crit_edge, label %if.then37, !prof !67

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__clockevents_switch_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %10) #10
  br label %return

if.end70:                                         ; preds = %sw.bb27
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_state_oneshot_stopped, align 4
  %tobool71.not = icmp eq ptr %12, null
  br i1 %tobool71.not, label %if.end70.return_crit_edge, label %if.then72

if.end70.return_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 %12(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.then72, %if.end70.return_crit_edge, %if.then37, %land.rhs.return_crit_edge, %if.then23, %if.end21.return_crit_edge, %sw.bb16.return_crit_edge, %if.then12, %if.end10.return_crit_edge, %sw.bb5.return_crit_edge, %if.then2, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call74, %if.then72 ], [ %call25, %if.then23 ], [ %call14, %if.then12 ], [ %call, %if.then2 ], [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ -38, %sw.bb5.return_crit_edge ], [ 0, %if.end10.return_crit_edge ], [ -38, %sw.bb16.return_crit_edge ], [ 0, %if.end21.return_crit_edge ], [ -22, %if.then37 ], [ -38, %if.end70.return_crit_edge ], [ -38, %if.end.return_crit_edge ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_shutdown(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %entry.clockevents_switch_state.exit_crit_edge, label %if.then.i

entry.clockevents_switch_state.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_switch_state.exit

if.then.i:                                        ; preds = %entry
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i2 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i2, label %if.end.i3, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i3:                                        ; preds = %if.then.i
  %set_state_shutdown.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %set_state_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_state_shutdown.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i3.if.end.i_crit_edge, label %__clockevents_switch_state.exit

if.end.i3.if.end.i_crit_edge:                     ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

__clockevents_switch_state.exit:                  ; preds = %if.end.i3
  %call.i = tail call i32 %5(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__clockevents_switch_state.exit.if.end.i_crit_edge, label %__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge

__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge: ; preds = %__clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_switch_state.exit

__clockevents_switch_state.exit.if.end.i_crit_edge: ; preds = %__clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %__clockevents_switch_state.exit.if.end.i_crit_edge, %if.end.i3.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %6 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state_use_accessors.i.i, align 16
  br label %clockevents_switch_state.exit

clockevents_switch_state.exit:                    ; preds = %if.end.i, %__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge, %entry.clockevents_switch_state.exit_crit_edge
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 9223372036854775807, ptr %next_event, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clockevents_tick_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %tick_resume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tick_resume, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %1(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clockevents_program_event(ptr noundef %dev, i64 noundef %expires, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %expires)
  %cmp = icmp slt i64 %expires, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b166 = load i1, ptr @clockevents_program_event.__already_done, align 1
  br i1 %.b166, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !67

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @clockevents_program_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 310, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end38:                                         ; preds = %entry
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %expires, ptr %next_event, align 16
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state_use_accessors.i, align 16
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %2, label %land.rhs51 [
    i32 1, label %if.end38.cleanup_crit_edge
    i32 3, label %if.end38.if.end90_crit_edge
  ]

if.end38.if.end90_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs51:                                       ; preds = %if.end38
  %.b164165 = load i1, ptr @clockevents_program_event.__already_done.1, align 1
  br i1 %.b164165, label %land.rhs51.if.end90_crit_edge, label %if.then62, !prof !67

land.rhs51.if.end90_crit_edge:                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @clockevents_program_event.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %2) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then62, %land.rhs51.if.end90_crit_edge, %if.end38.if.end90_crit_edge
  %features = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %if.end101, label %if.then99

if.then99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %set_next_ktime = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %set_next_ktime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_next_ktime, align 8
  %call100 = tail call i32 %7(i64 noundef %expires, ptr noundef %dev) #10
  br label %cleanup

if.end101:                                        ; preds = %if.end90
  %call102 = tail call i64 @ktime_get() #10
  %sub = sub i64 %expires, %call102
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp104 = icmp slt i64 %sub, 1
  br i1 %cmp104, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end101
  br i1 %force, label %cond.true, label %if.then105.cleanup_crit_edge

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true:                                        ; preds = %if.then105
  %min_delta_ns.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 5
  %retries.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 10
  %mult.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 6
  %shift.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 7
  %set_next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc9.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %cond.true
  %i.023.i = phi i32 [ 0, %cond.true ], [ %inc9.i, %for.cond.i.for.body.i_crit_edge ]
  %delta.022.i = phi i64 [ 0, %cond.true ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %min_delta_ns.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %min_delta_ns.i, align 32
  %add.i = add i64 %9, %delta.022.i
  %call.i = tail call i64 @ktime_get() #10
  %add1.i = add i64 %call.i, %add.i
  %10 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add1.i, ptr %next_event, align 16
  %11 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  br i1 %cmp.i.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %13 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retries.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %retries.i, align 8
  %15 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult.i, align 8
  %conv.i = zext i32 %16 to i64
  %mul.i = mul i64 %add.i, %conv.i
  %17 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %18 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %19 = ptrtoint ptr %set_next_event.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_next_event.i, align 4
  %conv3.i = trunc i64 %shr.i to i32
  %call4.i = tail call i32 %20(i32 noundef %conv3.i, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %for.cond.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end108:                                        ; preds = %if.end101
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %max_delta_ns to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %max_delta_ns, align 8
  %23 = tail call i64 @llvm.smin.i64(i64 %sub, i64 %22)
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %min_delta_ns to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %min_delta_ns, align 32
  %26 = tail call i64 @llvm.smax.i64(i64 %23, i64 %25)
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mult, align 8
  %conv = zext i32 %28 to i64
  %mul = mul i64 %26, %conv
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 7
  %29 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %30 to i64
  %shr = lshr i64 %mul, %sh_prom
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %set_next_event to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_next_event, align 4
  %conv121 = trunc i64 %shr to i32
  %call122 = tail call i32 %32(i32 noundef %conv121, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp ne i32 %call122, 0
  %33 = and i1 %tobool123.not, %force
  br i1 %33, label %cond.true126, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true126:                                     ; preds = %if.end108
  %retries.i172 = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 10
  br label %for.body.i187

for.cond.i180:                                    ; preds = %if.end.i196
  %inc9.i178 = add nuw nsw i32 %i.023.i181, 1
  %exitcond.not.i179 = icmp eq i32 %inc9.i178, 10
  br i1 %exitcond.not.i179, label %for.cond.i180.cleanup_crit_edge, label %for.cond.i180.for.body.i187_crit_edge

for.cond.i180.for.body.i187_crit_edge:            ; preds = %for.cond.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i187

for.cond.i180.cleanup_crit_edge:                  ; preds = %for.cond.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i187:                                    ; preds = %for.cond.i180.for.body.i187_crit_edge, %cond.true126
  %i.023.i181 = phi i32 [ 0, %cond.true126 ], [ %inc9.i178, %for.cond.i180.for.body.i187_crit_edge ]
  %delta.022.i182 = phi i64 [ 0, %cond.true126 ], [ %add.i183, %for.cond.i180.for.body.i187_crit_edge ]
  %34 = ptrtoint ptr %min_delta_ns to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %min_delta_ns, align 32
  %add.i183 = add i64 %35, %delta.022.i182
  %call.i184 = tail call i64 @ktime_get() #10
  %add1.i185 = add i64 %call.i184, %add.i183
  %36 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add1.i185, ptr %next_event, align 16
  %37 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.i186 = icmp eq i32 %38, 1
  br i1 %cmp.i.i186, label %for.body.i187.cleanup_crit_edge, label %if.end.i196

for.body.i187.cleanup_crit_edge:                  ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i196:                                      ; preds = %for.body.i187
  %39 = ptrtoint ptr %retries.i172 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %retries.i172, align 8
  %inc.i188 = add i32 %40, 1
  store i32 %inc.i188, ptr %retries.i172, align 8
  %41 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mult, align 8
  %conv.i189 = zext i32 %42 to i64
  %mul.i190 = mul i64 %add.i183, %conv.i189
  %43 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %shift, align 4
  %sh_prom.i191 = zext i32 %44 to i64
  %shr.i192 = lshr i64 %mul.i190, %sh_prom.i191
  %45 = ptrtoint ptr %set_next_event to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_next_event, align 4
  %conv3.i193 = trunc i64 %shr.i192 to i32
  %call4.i194 = tail call i32 %46(i32 noundef %conv3.i193, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i194)
  %cmp5.i195 = icmp eq i32 %call4.i194, 0
  br i1 %cmp5.i195, label %if.end.i196.cleanup_crit_edge, label %for.cond.i180

if.end.i196.cleanup_crit_edge:                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i196.cleanup_crit_edge, %for.body.i187.cleanup_crit_edge, %for.cond.i180.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then105.cleanup_crit_edge, %if.then99, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call100, %if.then99 ], [ -62, %if.then ], [ 0, %if.end38.cleanup_crit_edge ], [ -62, %if.then105.cleanup_crit_edge ], [ %call122, %if.end108.cleanup_crit_edge ], [ -62, %land.rhs.cleanup_crit_edge ], [ -62, %for.cond.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ -62, %for.cond.i180.cleanup_crit_edge ], [ 0, %if.end.i196.cleanup_crit_edge ], [ 0, %for.body.i187.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clockevents_unbind_device(ptr noundef %ced, i32 noundef %cpu) #0 align 64 {
entry:
  %cu.i = alloca %struct.ce_unbind, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clockevents_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cu.i) #10
  %0 = getelementptr inbounds %struct.ce_unbind, ptr %cu.i, i32 0, i32 1
  %1 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ced, ptr %cu.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -19, ptr %0, align 4
  %call.i = call i32 @smp_call_function_single(i32 noundef %cpu, ptr noundef nonnull @__clockevents_unbind, ptr noundef nonnull %cu.i, i32 noundef 1) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cu.i) #10
  call void @mutex_unlock(ptr noundef nonnull @clockevents_mutex) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_register_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state_use_accessors.i, align 16
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 25
  %1 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpumask, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.i.i, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp ugt i32 %call4.i.i, 1
  br i1 %cmp, label %do.end, label %if.end.i.i.if.end_crit_edge, !prof !66

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.i.if.end_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %7, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %7, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %8 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  %9 = phi ptr [ %add.ptr.i, %if.end ], [ %2, %entry.if.end24_crit_edge ]
  %cmp26 = icmp eq ptr %9, @cpu_all_bits
  br i1 %cmp26, label %do.end40, label %if.end24.do.body56_crit_edge

if.end24.do.body56_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

do.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 21
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %11) #10
  %12 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  br label %do.body56

do.body56:                                        ; preds = %do.end40, %if.end24.do.body56_crit_edge
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clockevents_lock) #10
  %list = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 26
  %13 = load ptr, ptr @clockevent_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @clockevent_devices, ptr noundef %13) #10
  br i1 %call.i.i, label %if.end.i.i79, label %do.body56.list_add.exit_crit_edge

do.body56.list_add.exit_crit_edge:                ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i79:                                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 26, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @clockevent_devices, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @clockevent_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i79, %do.body56.list_add.exit_crit_edge
  tail call void @tick_check_new_device(ptr noundef %dev) #10
  %17 = load volatile ptr, ptr @clockevents_released, align 4
  %cmp.i.not2.i = icmp eq ptr %17, @clockevents_released
  br i1 %cmp.i.not2.i, label %list_add.exit.clockevents_notify_released.exit_crit_edge, label %list_add.exit.while.body.i_crit_edge

list_add.exit.while.body.i_crit_edge:             ; preds = %list_add.exit
  br label %while.body.i

list_add.exit.clockevents_notify_released.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_notify_released.exit

while.body.i:                                     ; preds = %list_move.exit.i.while.body.i_crit_edge, %list_add.exit.while.body.i_crit_edge
  %18 = phi ptr [ %29, %list_move.exit.i.while.body.i_crit_edge ], [ %17, %list_add.exit.while.body.i_crit_edge ]
  %add.ptr.i80 = getelementptr i8, ptr %18, i32 -120
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %25 = load ptr, ptr @clockevent_devices, align 4
  %call.i.i.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef nonnull @clockevent_devices, ptr noundef %25) #10
  br i1 %call.i.i.i.i81, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %prev1.i.i2.i.i, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %18, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @clockevent_devices, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %18, ptr @clockevent_devices, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  tail call void @tick_check_new_device(ptr noundef %add.ptr.i80) #10
  %29 = load volatile ptr, ptr @clockevents_released, align 4
  %cmp.i.not.i = icmp eq ptr %29, @clockevents_released
  br i1 %cmp.i.not.i, label %list_move.exit.i.clockevents_notify_released.exit_crit_edge, label %list_move.exit.i.while.body.i_crit_edge

list_move.exit.i.while.body.i_crit_edge:          ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_move.exit.i.clockevents_notify_released.exit_crit_edge: ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_notify_released.exit

clockevents_notify_released.exit:                 ; preds = %list_move.exit.i.clockevents_notify_released.exit_crit_edge, %list_add.exit.clockevents_notify_released.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clockevents_lock, i32 noundef %call59) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_check_new_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_config_and_register(ptr noundef %dev, i32 noundef %freq, i32 noundef %min_delta, i32 noundef %max_delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %min_delta_ticks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %min_delta, ptr %min_delta_ticks, align 4
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %max_delta_ticks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max_delta, ptr %max_delta_ticks, align 32
  tail call fastcc void @clockevents_config(ptr noundef %dev, i32 noundef %freq)
  tail call void @clockevents_register_device(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clockevents_config(ptr noundef %dev, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %max_delta_ticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_delta_ticks, align 32
  %div178 = udiv i32 %3, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %freq)
  %tobool186.not = icmp ult i32 %3, %freq
  %conv198 = select i1 %tobool186.not, i32 1, i32 %div178
  %mult.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 6
  %shift.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 7
  tail call void @clocks_calc_mult_shift(ptr noundef %mult.i, ptr noundef %shift.i, i32 noundef 1000000000, i32 noundef %freq, i32 noundef %conv198) #10
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %min_delta_ticks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_delta_ticks, align 4
  %conv.i = zext i32 %5 to i64
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %7 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %8 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mult.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.if.end24.i_crit_edge, !prof !66

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #10
  %10 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mult.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %if.end.if.end24.i_crit_edge
  %11 = phi i32 [ %9, %if.end.if.end24.i_crit_edge ], [ 1, %do.end.i ]
  %conv26.i = zext i32 %11 to i64
  %sub.i295 = add nsw i64 %conv26.i, -1
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift.i, align 4
  %sh_prom28.i = zext i32 %13 to i64
  %shr.i = lshr i64 %shl.i, %sh_prom28.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.not.i296 = icmp eq i64 %shr.i, %conv.i
  %spec.select366.i = select i1 %cmp.not.i296, i64 %shl.i, i64 -1
  %sub33.i = xor i64 %spec.select366.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i295, i64 %sub33.i)
  %cmp34.i = icmp ult i64 %sub.i295, %sub33.i
  %spec.select367.i = select i1 %cmp34.i, i64 %sub.i295, i64 0
  %spec.select = add i64 %spec.select366.i, %spec.select367.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select)
  %cmp223.i = icmp ult i64 %spec.select, 4294967296
  br i1 %cmp223.i, label %if.then231.i, label %if.else237.i, !prof !67

if.then231.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv232.i = trunc i64 %spec.select to i32
  %div235.i = udiv i32 %conv232.i, %11
  %conv236.i = zext i32 %div235.i to i64
  br label %cev_delta2ns.exit

if.else237.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %spec.select) #13, !srcloc !68
  %asmresult1.i.i = extractvalue { i64, i64 } %14, 1
  br label %cev_delta2ns.exit

cev_delta2ns.exit:                                ; preds = %if.else237.i, %if.then231.i
  %clc.2.i = phi i64 [ %conv236.i, %if.then231.i ], [ %asmresult1.i.i, %if.else237.i ]
  %15 = tail call i64 @llvm.umax.i64(i64 %clc.2.i, i64 1000) #10
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %min_delta_ns to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %min_delta_ns, align 32
  %17 = ptrtoint ptr %max_delta_ticks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_delta_ticks, align 32
  %conv.i297 = zext i32 %18 to i64
  %shl.i300 = shl i64 %conv.i297, %sh_prom28.i
  %19 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mult.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i302 = icmp eq i32 %20, 0
  br i1 %tobool.not.i302, label %do.end.i303, label %cev_delta2ns.exit.if.end24.i312_crit_edge, !prof !66

cev_delta2ns.exit.if.end24.i312_crit_edge:        ; preds = %cev_delta2ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i312

do.end.i303:                                      ; preds = %cev_delta2ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #10
  %21 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %mult.i, align 8
  br label %if.end24.i312

if.end24.i312:                                    ; preds = %do.end.i303, %cev_delta2ns.exit.if.end24.i312_crit_edge
  %22 = phi i32 [ %20, %cev_delta2ns.exit.if.end24.i312_crit_edge ], [ 1, %do.end.i303 ]
  %conv26.i304 = zext i32 %22 to i64
  %sub.i305 = add nsw i64 %conv26.i304, -1
  %23 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shift.i, align 4
  %sh_prom28.i306 = zext i32 %24 to i64
  %shr.i307 = lshr i64 %shl.i300, %sh_prom28.i306
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i307, i64 %conv.i297)
  %cmp.not.i308 = icmp eq i64 %shr.i307, %conv.i297
  %spec.select366.i309 = select i1 %cmp.not.i308, i64 %shl.i300, i64 -1
  %sub33.i310 = xor i64 %spec.select366.i309, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i305, i64 %sub33.i310)
  %cmp34.i311 = icmp ult i64 %sub.i305, %sub33.i310
  br i1 %cmp34.i311, label %land.lhs.true.i316, label %if.end24.i312.if.else221.i421_crit_edge

if.end24.i312.if.else221.i421_crit_edge:          ; preds = %if.end24.i312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else221.i421

land.lhs.true.i316:                               ; preds = %if.end24.i312
  call void @__sanitizer_cov_trace_pc() #12
  %shl41.i313 = shl nuw i64 1, %sh_prom28.i306
  call void @__sanitizer_cov_trace_cmp8(i64 %shl41.i313, i64 %conv26.i304)
  %cmp42.not.i314 = icmp ult i64 %shl41.i313, %conv26.i304
  %add.i = select i1 %cmp42.not.i314, i64 0, i64 %sub.i305
  %spec.select367.i315 = add i64 %add.i, %spec.select366.i309
  br label %if.else221.i421

if.else221.i421:                                  ; preds = %land.lhs.true.i316, %if.end24.i312.if.else221.i421_crit_edge
  %clc.1.i317 = phi i64 [ %spec.select366.i309, %if.end24.i312.if.else221.i421_crit_edge ], [ %spec.select367.i315, %land.lhs.true.i316 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %clc.1.i317)
  %cmp223.i420 = icmp ult i64 %clc.1.i317, 4294967296
  br i1 %cmp223.i420, label %if.then231.i425, label %if.else237.i427, !prof !67

if.then231.i425:                                  ; preds = %if.else221.i421
  call void @__sanitizer_cov_trace_pc() #12
  %conv232.i422 = trunc i64 %clc.1.i317 to i32
  %div235.i423 = udiv i32 %conv232.i422, %22
  %conv236.i424 = zext i32 %div235.i423 to i64
  br label %cev_delta2ns.exit429

if.else237.i427:                                  ; preds = %if.else221.i421
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %clc.1.i317) #13, !srcloc !68
  %asmresult1.i.i426 = extractvalue { i64, i64 } %25, 1
  br label %cev_delta2ns.exit429

cev_delta2ns.exit429:                             ; preds = %if.else237.i427, %if.then231.i425
  %clc.2.i428 = phi i64 [ %conv236.i424, %if.then231.i425 ], [ %asmresult1.i.i426, %if.else237.i427 ]
  %26 = tail call i64 @llvm.umax.i64(i64 %clc.2.i428, i64 1000) #10
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %max_delta_ns to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %max_delta_ns, align 8
  br label %cleanup

cleanup:                                          ; preds = %cev_delta2ns.exit429, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__clockevents_update_freq(ptr noundef %dev, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clockevents_config(ptr noundef %dev, i32 noundef %freq)
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %entry.return_crit_edge [
    i32 3, label %if.then
    i32 2, label %if.then3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %next_event to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %next_event, align 16
  %call1 = tail call i32 @clockevents_program_event(ptr noundef %dev, i64 noundef %4, i1 noundef zeroext false)
  br label %return

if.then3:                                         ; preds = %entry
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then3
  %and7.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.return_crit_edge, label %if.end10.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10.i:                                       ; preds = %if.end.i
  %set_state_periodic.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 11
  %7 = ptrtoint ptr %set_state_periodic.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_state_periodic.i, align 4
  %tobool11.not.i = icmp eq ptr %8, null
  br i1 %tobool11.not.i, label %if.end10.i.return_crit_edge, label %if.then12.i

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 %8(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.then12.i, %if.end10.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then3.return_crit_edge, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call14.i, %if.then12.i ], [ 0, %if.then3.return_crit_edge ], [ -38, %if.end.i.return_crit_edge ], [ 0, %if.end10.i.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clockevents_update_freq(ptr noundef %dev, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %call12 = tail call i32 @tick_broadcast_update_freq(ptr noundef %dev, i32 noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call12)
  %cmp13 = icmp eq i32 %call12, -19
  br i1 %cmp13, label %if.then15, label %do.end11.do.body18_crit_edge

do.end11.do.body18_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then15:                                        ; preds = %do.end11
  tail call fastcc void @clockevents_config(ptr noundef %dev, i32 noundef %freq) #10
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state_use_accessors.i.i, align 16
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %2, label %if.then15.do.body18_crit_edge [
    i32 3, label %if.then.i
    i32 2, label %if.then3.i
  ]

if.then15.do.body18_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %next_event.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %next_event.i, align 16
  %call1.i = tail call i32 @clockevents_program_event(ptr noundef %dev, i64 noundef %5, i1 noundef zeroext false) #10
  br label %do.body18

if.then3.i:                                       ; preds = %if.then15
  %features.i.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.do.body18_crit_edge

if.then3.i.do.body18_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.end.i.i:                                       ; preds = %if.then3.i
  %and7.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.do.body18_crit_edge, label %if.end10.i.i

if.end.i.i.do.body18_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.end10.i.i:                                     ; preds = %if.end.i.i
  %set_state_periodic.i.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %set_state_periodic.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_state_periodic.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i.i, label %if.end10.i.i.do.body18_crit_edge, label %if.then12.i.i

if.end10.i.i.do.body18_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = tail call i32 %9(ptr noundef %dev) #10
  br label %do.body18

do.body18:                                        ; preds = %if.then12.i.i, %if.end10.i.i.do.body18_crit_edge, %if.end.i.i.do.body18_crit_edge, %if.then3.i.do.body18_crit_edge, %if.then.i, %if.then15.do.body18_crit_edge, %do.end11.do.body18_crit_edge
  %ret.0 = phi i32 [ %call12, %do.end11.do.body18_crit_edge ], [ %call1.i, %if.then.i ], [ %call14.i.i, %if.then12.i.i ], [ 0, %if.then3.i.do.body18_crit_edge ], [ -38, %if.end.i.i.do.body18_crit_edge ], [ 0, %if.end10.i.i.do.body18_crit_edge ], [ 0, %if.then15.do.body18_crit_edge ]
  br i1 %tobool.not, label %if.then27, label %do.body18.do.body29_crit_edge

do.body18.do.body29_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.body18.do.body29_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i55 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool37.not = icmp eq i32 %and.i.i55, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !66

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !71
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @clockevents_handle_noop(ptr nocapture noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_exchange_device(ptr noundef %old, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 27
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 128
  tail call void @module_put(ptr noundef %1) #10
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.then.clockevents_switch_state.exit_crit_edge, label %if.then.i

if.then.clockevents_switch_state.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_switch_state.exit

if.then.i:                                        ; preds = %if.then
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 9
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features.i, align 4
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i20 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i21:                                       ; preds = %if.then.i
  %set_state_shutdown.i = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 14
  %6 = ptrtoint ptr %set_state_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_state_shutdown.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i21.if.end.i_crit_edge, label %__clockevents_switch_state.exit

if.end.i21.if.end.i_crit_edge:                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

__clockevents_switch_state.exit:                  ; preds = %if.end.i21
  %call.i = tail call i32 %7(ptr noundef nonnull %old) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__clockevents_switch_state.exit.if.end.i_crit_edge, label %__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge

__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge: ; preds = %__clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_switch_state.exit

__clockevents_switch_state.exit.if.end.i_crit_edge: ; preds = %__clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %__clockevents_switch_state.exit.if.end.i_crit_edge, %if.end.i21.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state_use_accessors.i.i, align 16
  br label %clockevents_switch_state.exit

clockevents_switch_state.exit:                    ; preds = %if.end.i, %__clockevents_switch_state.exit.clockevents_switch_state.exit_crit_edge, %if.then.clockevents_switch_state.exit_crit_edge
  %list = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %clockevents_switch_state.exit.__list_del_entry.exit.i_crit_edge

clockevents_switch_state.exit.__list_del_entry.exit.i_crit_edge: ; preds = %clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %clockevents_switch_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %clockevents_switch_state.exit.__list_del_entry.exit.i_crit_edge
  %15 = load ptr, ptr @clockevents_released, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @clockevents_released, ptr noundef %15) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end_crit_edge

__list_del_entry.exit.i.if.end_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.clock_event_device, ptr %old, i32 0, i32 26, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clockevents_released, ptr %prev3.i.i.i, align 4
  store volatile ptr %list, ptr @clockevents_released, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %new, null
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %do.body

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body:                                          ; preds = %if.end
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %new, i32 0, i32 8
  %19 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then.i.i, label %do.body7, !prof !67

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/clockevents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

if.then.i.i:                                      ; preds = %do.body
  %features.i.i = getelementptr inbounds %struct.clock_event_device, ptr %new, i32 0, i32 9
  %21 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i2.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i3.i, label %if.then.i.i.if.end.i.i19_crit_edge

if.then.i.i.if.end.i.i19_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i19

if.end.i3.i:                                      ; preds = %if.then.i.i
  %set_state_shutdown.i.i = getelementptr inbounds %struct.clock_event_device, ptr %new, i32 0, i32 14
  %23 = ptrtoint ptr %set_state_shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_state_shutdown.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i, label %if.end.i3.i.if.end.i.i19_crit_edge, label %__clockevents_switch_state.exit.i

if.end.i3.i.if.end.i.i19_crit_edge:               ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i19

__clockevents_switch_state.exit.i:                ; preds = %if.end.i3.i
  %call.i.i18 = tail call i32 %24(ptr noundef nonnull %new) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i.i = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i.i, label %__clockevents_switch_state.exit.i.if.end.i.i19_crit_edge, label %__clockevents_switch_state.exit.i.clockevents_shutdown.exit_crit_edge

__clockevents_switch_state.exit.i.clockevents_shutdown.exit_crit_edge: ; preds = %__clockevents_switch_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clockevents_shutdown.exit

__clockevents_switch_state.exit.i.if.end.i.i19_crit_edge: ; preds = %__clockevents_switch_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %__clockevents_switch_state.exit.i.if.end.i.i19_crit_edge, %if.end.i3.i.if.end.i.i19_crit_edge, %if.then.i.i.if.end.i.i19_crit_edge
  %25 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %state_use_accessors.i, align 16
  br label %clockevents_shutdown.exit

clockevents_shutdown.exit:                        ; preds = %if.end.i.i19, %__clockevents_switch_state.exit.i.clockevents_shutdown.exit_crit_edge
  %next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %new, i32 0, i32 3
  %26 = ptrtoint ptr %next_event.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 9223372036854775807, ptr %next_event.i, align 16
  br label %if.end12

if.end12:                                         ; preds = %clockevents_shutdown.exit, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clockevent_devices, i32 0, i32 1), align 4
  %cmp.not13 = icmp eq ptr %.pn11, @clockevent_devices
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %dev.016 = getelementptr i8, ptr %.pn14, i32 -120
  %suspend = getelementptr i8, ptr %.pn14, i32 -36
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state_use_accessors.i = getelementptr i8, ptr %.pn14, i32 -72
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %dev.016) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn14, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %.pn, @clockevent_devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clockevents_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn11 = load ptr, ptr @clockevent_devices, align 4
  %cmp.not13 = icmp eq ptr %.pn11, @clockevent_devices
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %dev.015 = getelementptr i8, ptr %.pn14, i32 -120
  %resume = getelementptr i8, ptr %.pn14, i32 -32
  %0 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state_use_accessors.i = getelementptr i8, ptr %.pn14, i32 -72
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %dev.015) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, @clockevent_devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_offline_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @clockevents_lock) #10
  tail call void @tick_broadcast_offline(i32 noundef %cpu) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @clockevents_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_offline(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_cleanup_dead_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @clockevents_lock) #10
  tail call void @tick_shutdown(i32 noundef %cpu) #10
  %0 = load ptr, ptr @clockevents_released, align 4
  %cmp7.not93 = icmp eq ptr %0, @clockevents_released
  br i1 %cmp7.not93, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %1, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp7.not = icmp eq ptr %.pn, @clockevents_released
  br i1 %cmp7.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = load ptr, ptr @clockevent_devices, align 4
  %cmp25.not96 = icmp eq ptr %11, @clockevent_devices
  br i1 %cmp25.not96, label %for.end.do.body61_crit_edge, label %for.body28.lr.ph

for.end.do.body61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

for.body28.lr.ph:                                 ; preds = %for.end
  %div3.i.i = lshr i32 %cpu, 5
  %and.i.i = and i32 %cpu, 31
  %12 = shl nuw i32 1, %and.i.i
  br label %for.body28

for.body28:                                       ; preds = %for.inc54.for.body28_crit_edge, %for.body28.lr.ph
  %.pn82.in97 = phi ptr [ %11, %for.body28.lr.ph ], [ %.pn82100, %for.inc54.for.body28_crit_edge ]
  %dev.199 = getelementptr i8, ptr %.pn82.in97, i32 -120
  %13 = ptrtoint ptr %.pn82.in97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn82100 = load ptr, ptr %.pn82.in97, align 8
  %cpumask = getelementptr i8, ptr %.pn82.in97, i32 -4
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %16, %cpu
  br i1 %cmp.not.i.i.i, label %for.body28.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body28.cpumask_test_cpu.exit_crit_edge:       ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body28
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !67

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %for.body28.cpumask_test_cpu.exit_crit_edge
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div3.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %19 = and i32 %18, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.for.inc54_crit_edge, label %if.end.i.i86

cpumask_test_cpu.exit.for.inc54_crit_edge:        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

if.end.i.i86:                                     ; preds = %cpumask_test_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpumask, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %22, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp32 = icmp eq i32 %call4.i.i, 1
  br i1 %cmp32, label %land.lhs.true34, label %if.end.i.i86.for.inc54_crit_edge

if.end.i.i86.for.inc54_crit_edge:                 ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

land.lhs.true34:                                  ; preds = %if.end.i.i86
  %call35 = tail call i32 @tick_is_broadcast_device(ptr noundef %dev.199) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body37, label %land.lhs.true34.for.inc54_crit_edge

land.lhs.true34.for.inc54_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

do.body37:                                        ; preds = %land.lhs.true34
  %state_use_accessors.i = getelementptr i8, ptr %.pn82.in97, i32 -72
  %23 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %do.end51, label %do.body44, !prof !67

do.body44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/clockevents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

do.end51:                                         ; preds = %do.body37
  %call.i.i87 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn82.in97) #10
  br i1 %call.i.i87, label %if.end.i.i90, label %do.end51.list_del.exit92_crit_edge

do.end51.list_del.exit92_crit_edge:               ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit92

if.end.i.i90:                                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i88 = getelementptr inbounds %struct.list_head, ptr %.pn82.in97, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i88, align 4
  %27 = ptrtoint ptr %.pn82.in97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn82.in97, align 4
  %prev1.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i89, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit92

list_del.exit92:                                  ; preds = %if.end.i.i90, %do.end51.list_del.exit92_crit_edge
  %31 = ptrtoint ptr %.pn82.in97 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn82.in97, align 4
  %prev.i91 = getelementptr inbounds %struct.list_head, ptr %.pn82.in97, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i91, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %list_del.exit92, %land.lhs.true34.for.inc54_crit_edge, %if.end.i.i86.for.inc54_crit_edge, %cpumask_test_cpu.exit.for.inc54_crit_edge
  %cmp25.not = icmp eq ptr %.pn82100, @clockevent_devices
  br i1 %cmp25.not, label %for.inc54.do.body61_crit_edge, label %for.inc54.for.body28_crit_edge

for.inc54.for.body28_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

for.inc54.do.body61_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

do.body61:                                        ; preds = %for.inc54.do.body61_crit_edge, %for.end.do.body61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @clockevents_lock, i32 noundef %call) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_shutdown(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_broadcast_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clockevents_init_sysfs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @subsys_system_register(ptr noundef nonnull @clockevents_subsys, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @tick_init_sysfs() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__clockevents_unbind(ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @clockevents_lock) #10
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %list.i = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i, ptr %list.i, align 4
  br label %if.end.sink.split

if.end.i:                                         ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @tick_cpu_device to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp.i = icmp eq ptr %19, %1
  br i1 %cmp.i, label %if.then, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %if.end.i
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg, align 4
  %.pn32.i = load ptr, ptr @clockevent_devices, align 4
  %cmp.not34.i = icmp eq ptr %.pn32.i, @clockevent_devices
  br i1 %cmp.not34.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn36.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn32.i, %if.then.for.body.i_crit_edge ]
  %newdev.035.i = phi ptr [ %newdev.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then.for.body.i_crit_edge ]
  %dev.037.i = getelementptr i8, ptr %.pn36.i, i32 -120
  %cmp1.i = icmp eq ptr %dev.037.i, %21
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %state_use_accessors.i.i8 = getelementptr i8, ptr %.pn36.i, i32 -72
  %22 = ptrtoint ptr %state_use_accessors.i.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state_use_accessors.i.i8, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i9 = icmp eq i32 %23, 0
  br i1 %cmp.i.i9, label %if.end.i10, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i10:                                       ; preds = %lor.lhs.false.i
  %call2.i = tail call zeroext i1 @tick_check_replacement(ptr noundef %newdev.035.i, ptr noundef %dev.037.i) #10
  br i1 %call2.i, label %if.end4.i, label %if.end.i10.for.inc.i_crit_edge

if.end.i10.for.inc.i_crit_edge:                   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i10
  %owner.i = getelementptr i8, ptr %.pn36.i, i32 8
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i, align 128
  %call5.i = tail call zeroext i1 @try_module_get(ptr noundef %25) #10
  br i1 %call5.i, label %if.end7.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end4.i
  %tobool.not.i = icmp eq ptr %newdev.035.i, null
  br i1 %tobool.not.i, label %if.end7.i.for.inc.i_crit_edge, label %if.then8.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %owner9.i = getelementptr inbounds %struct.clock_event_device, ptr %newdev.035.i, i32 0, i32 27
  %26 = ptrtoint ptr %owner9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner9.i, align 128
  tail call void @module_put(ptr noundef %27) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %if.end7.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %if.end.i10.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %newdev.1.i = phi ptr [ %newdev.035.i, %for.body.i.for.inc.i_crit_edge ], [ %newdev.035.i, %if.end4.i.for.inc.i_crit_edge ], [ %newdev.035.i, %if.end.i10.for.inc.i_crit_edge ], [ %newdev.035.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %dev.037.i, %if.then8.i ], [ %dev.037.i, %if.end7.i.for.inc.i_crit_edge ]
  %28 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn36.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clockevent_devices
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool15.not.i = icmp eq ptr %newdev.1.i, null
  br i1 %tobool15.not.i, label %for.end.i.if.end_crit_edge, label %if.then16.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then16.i:                                      ; preds = %for.end.i
  tail call void @tick_install_replacement(ptr noundef nonnull %newdev.1.i) #10
  %list17.i = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 26
  %call.i.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list17.i) #10
  br i1 %call.i.i.i11, label %if.end.i.i.i14, label %if.then16.i.list_del_init.exit.i16_crit_edge

if.then16.i.list_del_init.exit.i16_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i16

if.end.i.i.i14:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i12 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 26, i32 1
  %29 = ptrtoint ptr %prev.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i12, align 4
  %31 = ptrtoint ptr %list17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list17.i, align 4
  %prev1.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i13, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit.i16

list_del_init.exit.i16:                           ; preds = %if.end.i.i.i14, %if.then16.i.list_del_init.exit.i16_crit_edge
  %35 = ptrtoint ptr %list17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list17.i, ptr %list17.i, align 4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %list_del_init.exit.i16, %list_del_init.exit.i
  %.sink = phi ptr [ %1, %list_del_init.exit.i ], [ %21, %list_del_init.exit.i16 ]
  %list.i.sink = phi ptr [ %list.i, %list_del_init.exit.i ], [ %list17.i, %list_del_init.exit.i16 ]
  %prev.i3.i.i = getelementptr inbounds %struct.clock_event_device, ptr %.sink, i32 0, i32 26, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i.sink, ptr %prev.i3.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %res.0 = phi i32 [ -16, %for.end.i.if.end_crit_edge ], [ -16, %if.then.if.end_crit_edge ], [ -16, %if.end.i.if.end_crit_edge ], [ 0, %if.end.sink.split ]
  %res4 = getelementptr inbounds %struct.ce_unbind, ptr %arg, i32 0, i32 1
  %37 = ptrtoint ptr %res4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %res.0, ptr %res4, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @clockevents_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_check_replacement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_install_replacement(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tick_init_sysfs() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %if.end7.for.cond_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @tick_percpu_dev to i32)
  %3 = inttoptr i32 %add to ptr
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %id, align 4
  %bus = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clockevents_subsys, ptr %bus, align 8
  %call2 = tail call i32 @device_register(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup13_crit_edge

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_current_device) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.end.cleanup13_crit_edge

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.end7:                                          ; preds = %if.end
  %call6 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_unbind_device) #10
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end7.for.cond_crit_edge, label %if.end7.cleanup13_crit_edge

if.end7.cleanup13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call fastcc i32 @tick_broadcast_init_sysfs() #14
  br label %cleanup13

cleanup13:                                        ; preds = %for.end, %if.end7.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %for.body.cleanup13_crit_edge
  %retval.2 = phi i32 [ %call12, %for.end ], [ %call2, %for.body.cleanup13_crit_edge ], [ %call3, %if.end.cleanup13_crit_edge ], [ %call6, %if.end7.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tick_broadcast_init_sysfs() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_register(ptr noundef nonnull @tick_bc_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @device_create_file(ptr noundef nonnull @tick_bc_dev, ptr noundef nonnull @dev_attr_current_device) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_device_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @clockevents_lock) #10
  %cmp.i = icmp eq ptr %dev, @tick_bc_dev
  br i1 %cmp.i, label %cond.true.i, label %do.body.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @tick_get_broadcast_device() #10
  br label %tick_get_tick_dev.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %4 = inttoptr i32 %add.i to ptr
  br label %tick_get_tick_dev.exit

tick_get_tick_dev.exit:                           ; preds = %do.body.i, %cond.true.i
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ %4, %do.body.i ]
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %tick_get_tick_dev.exit.if.end_crit_edge, label %land.lhs.true

tick_get_tick_dev.exit.if.end_crit_edge:          ; preds = %tick_get_tick_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %tick_get_tick_dev.exit
  %5 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond.i, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %tick_get_tick_dev.exit.if.end_crit_edge
  %count.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %tick_get_tick_dev.exit.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @clockevents_lock) #10
  ret i32 %count.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unbind_device_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %cu.i = alloca %struct.ce_unbind, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #10
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call = call i32 @sysfs_get_uname(ptr noundef %buf, ptr noundef nonnull %name, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @clockevents_mutex, i32 noundef 0) #10
  call void @_raw_spin_lock_irq(ptr noundef nonnull @clockevents_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @clockevent_devices, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp1.not = icmp eq ptr %.pn, @clockevent_devices
  br i1 %cmp1.not, label %for.cond.for.end.thread_crit_edge, label %for.body

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body:                                         ; preds = %for.cond
  %name2 = getelementptr i8, ptr %.pn, i32 -20
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 4
  %call4 = call i32 @strcmp(ptr noundef %3, ptr noundef nonnull %name) #16
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then5:                                         ; preds = %for.body
  %ce.0.le = getelementptr i8, ptr %.pn, i32 -120
  %state_use_accessors.i.i = getelementptr i8, ptr %.pn, i32 -72
  %4 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_use_accessors.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then5
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn, i32 4
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn, i32 4
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.pn, ptr %prev.i3.i.i, align 4
  br label %for.end.thread

if.end.i:                                         ; preds = %if.then5
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @tick_cpu_device to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp.i = icmp eq ptr %20, %ce.0.le
  br i1 %cmp.i, label %if.then13, label %if.end.i.for.end.thread_crit_edge

if.end.i.for.end.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end.i.for.end.thread_crit_edge, %list_del_init.exit.i, %for.cond.for.end.thread_crit_edge
  %ret.0.ph = phi i32 [ -16, %if.end.i.for.end.thread_crit_edge ], [ 0, %list_del_init.exit.i ], [ -19, %for.cond.for.end.thread_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @clockevents_lock) #10
  br label %if.end16

if.then13:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @clockevents_lock) #10
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cu.i) #10
  %23 = getelementptr inbounds %struct.ce_unbind, ptr %cu.i, i32 0, i32 1
  %24 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ce.0.le, ptr %cu.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -19, ptr %23, align 4
  %call.i = call i32 @smp_call_function_single(i32 noundef %22, ptr noundef nonnull @__clockevents_unbind, ptr noundef nonnull %cu.i, i32 noundef 1) #10
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cu.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %for.end.thread
  %ret.1 = phi i32 [ %27, %if.then13 ], [ %ret.0.ph, %for.end.thread ]
  call void @mutex_unlock(ptr noundef nonnull @clockevents_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool17.not = icmp eq i32 %ret.1, 0
  %count.ret.1 = select i1 %tobool17.not, i32 %count, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.ret.1, %if.end16 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_get_uname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_clockevent_delta2ns, !1, !"__ksymtab_clockevent_delta2ns", i1 false, i1 false}
!1 = !{!"../kernel/time/clockevents.c", i32 89, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/clockevents.c", i32 161, i32 8}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/time/clockevents.c", i32 310, i32 6}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/time/clockevents.c", i32 319, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_clockevents_unbind_device, !10, !"__ksymtab_clockevents_unbind_device", i1 false, i1 false}
!10 = !{!"../kernel/time/clockevents.c", i32 437, i32 1}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/time/clockevents.c", i32 456, i32 3}
!13 = !{ptr @__ksymtab_clockevents_register_device, !14, !"__ksymtab_clockevents_register_device", i1 false, i1 false}
!14 = !{!"../kernel/time/clockevents.c", i32 469, i32 1}
!15 = !{ptr @__ksymtab_clockevents_config_and_register, !16, !"__ksymtab_clockevents_config_and_register", i1 false, i1 false}
!16 = !{!"../kernel/time/clockevents.c", i32 513, i32 1}
!17 = !{ptr @__initcall__kmod_clockevents__174_776_clockevents_init_sysfs6, !18, !"__initcall__kmod_clockevents__174_776_clockevents_init_sysfs6", i1 false, i1 false}
!18 = !{!"../kernel/time/clockevents.c", i32 776, i32 1}
!19 = !{ptr @__pcpu_unique_tick_percpu_dev, !20, !"__pcpu_unique_tick_percpu_dev", i1 false, i1 false}
!20 = !{!"../kernel/time/clockevents.c", i32 667, i32 8}
!21 = !{ptr @tick_percpu_dev, !20, !"tick_percpu_dev", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/time/clockevents.c", i32 125, i32 7}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/time/clockevents.c", i32 25, i32 8}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @clockevents_mutex, !25, !"clockevents_mutex", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/time/clockevents.c", i32 23, i32 8}
!30 = !{ptr @clockevents_lock, !29, !"clockevents_lock", i1 false, i1 false}
!31 = !{ptr @clockevent_devices, !32, !"clockevent_devices", i1 false, i1 false}
!32 = !{!"../kernel/time/clockevents.c", i32 20, i32 8}
!33 = !{ptr @clockevents_released, !34, !"clockevents_released", i1 false, i1 false}
!34 = !{!"../kernel/time/clockevents.c", i32 21, i32 8}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/time/clockevents.c", i32 663, i32 11}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/time/clockevents.c", i32 664, i32 20}
!42 = !{ptr @clockevents_subsys, !43, !"clockevents_subsys", i1 false, i1 false}
!43 = !{!"../kernel/time/clockevents.c", i32 662, i32 24}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/time/clockevents.c", i32 684, i32 8}
!46 = !{ptr @dev_attr_current_device, !45, !"dev_attr_current_device", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/time/clockevents.c", i32 680, i32 36}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/time/clockevents.c", i32 720, i32 15}
!51 = !{ptr @tick_bc_dev, !52, !"tick_bc_dev", i1 false, i1 false}
!52 = !{!"../kernel/time/clockevents.c", i32 719, i32 22}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/time/clockevents.c", i32 716, i32 8}
!55 = !{ptr @dev_attr_unbind_device, !54, !"dev_attr_unbind_device", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148046698, i64 2148046978, i64 2148047312, i64 2148047646}
!69 = !{i64 642959, i64 643020}
!70 = !{i64 645691}
!71 = !{i64 645976}
!72 = !{i64 2152548696, i64 2152549186, i64 2152548733, i64 2152548789, i64 2152548823, i64 2152548847, i64 2152548888, i64 2152548909, i64 2152548937, i64 2152548971}
!73 = !{i64 2152571009, i64 2152571499, i64 2152571046, i64 2152571102, i64 2152571136, i64 2152571160, i64 2152571201, i64 2152571222, i64 2152571250, i64 2152571284}
