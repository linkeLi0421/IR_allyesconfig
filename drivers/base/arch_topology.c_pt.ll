; ModuleID = '/llk/IR_all_yes/drivers/base/arch_topology.c_pt.bc'
source_filename = "../drivers/base/arch_topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+topology_set_scale_freq_source\22, \22a\22\09"
module asm "\09.weak\09__crc_topology_set_scale_freq_source\09\09\09\09"
module asm "\09.long\09__crc_topology_set_scale_freq_source\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_set_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_set_scale_freq_source\22\09\09\09\09\09"
module asm "__kstrtabns_topology_set_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+topology_clear_scale_freq_source\22, \22a\22\09"
module asm "\09.weak\09__crc_topology_clear_scale_freq_source\09\09\09\09"
module asm "\09.long\09__crc_topology_clear_scale_freq_source\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_clear_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_clear_scale_freq_source\22\09\09\09\09\09"
module asm "__kstrtabns_topology_clear_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arch_freq_scale\22, \22a\22\09"
module asm "\09.weak\09__crc_arch_freq_scale\09\09\09\09"
module asm "\09.long\09__crc_arch_freq_scale\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arch_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22arch_freq_scale\22\09\09\09\09\09"
module asm "__kstrtabns_arch_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_scale\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_scale\09\09\09\09"
module asm "\09.long\09__crc_cpu_scale\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_scale\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+topology_update_thermal_pressure\22, \22a\22\09"
module asm "\09.weak\09__crc_topology_update_thermal_pressure\09\09\09\09"
module asm "\09.long\09__crc_topology_update_thermal_pressure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_update_thermal_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_update_thermal_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_topology_update_thermal_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_topology\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_topology\09\09\09\09"
module asm "\09.long\09__crc_cpu_topology\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_topology\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scale_freq_data = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@freq_factor = weak dso_local global i32 1, section ".data..percpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@scale_freq_counters_mask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@scale_freq_invariant = internal global { i8, [31 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sft_data = weak dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@topology_set_scale_freq_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/base/arch_topology.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_topology_set_scale_freq_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_set_scale_freq_source = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_set_scale_freq_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_set_scale_freq_source to i32), ptr @__kstrtab_topology_set_scale_freq_source, ptr @__kstrtabns_topology_set_scale_freq_source }, section "___ksymtab_gpl+topology_set_scale_freq_source", align 4
@topology_clear_scale_freq_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_topology_clear_scale_freq_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_clear_scale_freq_source = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_clear_scale_freq_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_clear_scale_freq_source to i32), ptr @__kstrtab_topology_clear_scale_freq_source, ptr @__kstrtabns_topology_clear_scale_freq_source }, section "___ksymtab_gpl+topology_clear_scale_freq_source", align 4
@topology_scale_freq_tick.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arch_freq_scale = weak dso_local global i32 1024, section ".data..percpu", align 4
@__kstrtab_arch_freq_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_arch_freq_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_arch_freq_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arch_freq_scale to i32), ptr @__kstrtab_arch_freq_scale, ptr @__kstrtabns_arch_freq_scale }, section "___ksymtab_gpl+arch_freq_scale", align 4
@topology_set_freq_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_scale = weak dso_local global i32 1024, section ".data..percpu", align 4
@__kstrtab_cpu_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_scale to i32), ptr @__kstrtab_cpu_scale, ptr @__kstrtabns_cpu_scale }, section "___ksymtab_gpl+cpu_scale", align 4
@thermal_pressure = weak dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_topology_update_thermal_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_update_thermal_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_update_thermal_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_update_thermal_pressure to i32), ptr @__kstrtab_topology_update_thermal_pressure, ptr @__kstrtabns_topology_update_thermal_pressure }, section "___ksymtab_gpl+topology_update_thermal_pressure", align 4
@__initcall__kmod_arch_topology__253_234_register_cpu_capacity_sysctl4 = internal global ptr @register_cpu_capacity_sysctl, section ".initcall4.init", align 4
@update_topology = internal global { i1, [31 x i8] } zeroinitializer, align 32
@raw_capacity = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@topology_normalize_cpu_scale.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arch_topology\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"topology_normalize_cpu_scale\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cpu_capacity: capacity_scale=%llu\0A\00", [61 x i8] zeroinitializer }, align 32
@topology_normalize_cpu_scale.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cpu_capacity: CPU%d cpu_capacity=%lu\0A\00", [58 x i8] zeroinitializer }, align 32
@topology_parse_cpu_capacity.cap_parsing_failed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"capacity-dmips-mhz\00", [45 x i8] zeroinitializer }, align 32
@topology_parse_cpu_capacity.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"topology_parse_cpu_capacity\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cpu_capacity: %pOF cpu_capacity=%u (raw)\0A\00", [54 x i8] zeroinitializer }, align 32
@topology_parse_cpu_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cpu_capacity: missing %pOF raw capacity\0A\00", [53 x i8] zeroinitializer }, align 32
@topology_parse_cpu_capacity._entry_ptr = internal global ptr @topology_parse_cpu_capacity._entry, section ".printk_index", align 4
@topology_parse_cpu_capacity._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013cpu_capacity: partial information: fallback to 1024 for all CPUs\0A\00", [60 x i8] zeroinitializer }, align 32
@topology_parse_cpu_capacity._entry_ptr.12 = internal global ptr @topology_parse_cpu_capacity._entry.10, section ".printk_index", align 4
@__initcall__kmod_arch_topology__262_410_register_cpufreq_notifier1 = internal global ptr @register_cpufreq_notifier, section ".initcall1.init", align 4
@cpu_topology = dso_local global { [4 x %struct.cpu_topology], [48 x i8] } zeroinitializer, align 32
@__kstrtab_cpu_topology = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_topology = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_topology = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_topology to i32), ptr @__kstrtab_cpu_topology, ptr @__kstrtabns_cpu_topology }, section "___ksymtab_gpl+cpu_topology", align 4
@__pcpu_unique_sft_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_freq_factor = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_arch_freq_scale = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_arch_freq_scale = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_cpu_scale = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_scale = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_thermal_pressure = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_thermal_pressure = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@register_cpu_capacity_sysctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: too early to get CPU%d device!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register_cpu_capacity_sysctl\00", [35 x i8] zeroinitializer }, align 32
@register_cpu_capacity_sysctl._entry_ptr = internal global ptr @register_cpu_capacity_sysctl._entry, section ".printk_index", align 4
@dev_attr_cpu_capacity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu_capacity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu_capacity\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@cpus_to_visit = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_cpu_capacity_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @init_cpu_capacity_callback, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_cpu_capacity_callback.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"init_cpu_capacity_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"cpu_capacity: init cpu capacity for CPUs [%*pbl] (to_visit=%*pbl)\0A\00", [61 x i8] zeroinitializer }, align 32
@update_topology_flags_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @update_topology_flags_work, i64 4), ptr getelementptr (i8, ptr @update_topology_flags_work, i64 4) }, ptr @update_topology_flags_workfn, %struct.lockdep_map { ptr @update_topology_flags_work, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@init_cpu_capacity_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.23, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpu_capacity: parsing done\0A\00", [36 x i8] zeroinitializer }, align 32
@parsing_done_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @parsing_done_work, i64 4), ptr getelementptr (i8, ptr @parsing_done_work, i64 4) }, ptr @parsing_done_workfn, %struct.lockdep_map { ptr @parsing_done_work, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"update_topology_flags_work\00", [37 x i8] zeroinitializer }, align 32
@update_topology_flags_workfn.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str, ptr @.str.26, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"update_topology_flags_workfn\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sched_domain hierarchy rebuilt, flags updated\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parsing_done_work\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"scale_freq_counters_mask\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 23, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"scale_freq_invariant\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 24, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 71, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"update_topology\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"raw_capacity\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 255, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 280, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 286, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [47 x i8] c"topology_parse_cpu_capacity.cap_parsing_failed\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 301, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 314, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 331, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 333, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"cpu_topology\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 614, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 108, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 723, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 225, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"dev_attr_cpu_capacity\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 215, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 209, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"cpus_to_visit\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 343, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"init_cpu_capacity_notifier\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 381, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 361, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"update_topology_flags_work\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 374, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"parsing_done_work\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 213, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 251, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [32 x i8] c"../drivers/base/arch_topology.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 345, i32 8 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__initcall__kmod_arch_topology__253_234_register_cpu_capacity_sysctl4, ptr @__initcall__kmod_arch_topology__262_410_register_cpufreq_notifier1, ptr @__ksymtab_arch_freq_scale, ptr @__ksymtab_cpu_scale, ptr @__ksymtab_cpu_topology, ptr @__ksymtab_topology_clear_scale_freq_source, ptr @__ksymtab_topology_set_scale_freq_source, ptr @__ksymtab_topology_update_thermal_pressure, ptr @register_cpu_capacity_sysctl._entry, ptr @register_cpu_capacity_sysctl._entry_ptr, ptr @topology_parse_cpu_capacity._entry, ptr @topology_parse_cpu_capacity._entry.10, ptr @topology_parse_cpu_capacity._entry_ptr, ptr @topology_parse_cpu_capacity._entry_ptr.12, ptr @scale_freq_counters_mask, ptr @scale_freq_invariant, ptr @.str, ptr @.str.1, ptr @update_topology, ptr @raw_capacity, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @topology_parse_cpu_capacity.cap_parsing_failed, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @cpu_topology, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dev_attr_cpu_capacity, ptr @.str.19, ptr @.str.20, ptr @cpus_to_visit, ptr @init_cpu_capacity_notifier, ptr @.str.21, ptr @.str.22, ptr @update_topology_flags_work, ptr @.str.23, ptr @parsing_done_work, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_freq_counters_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_freq_invariant to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_topology to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_capacity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topology_parse_cpu_capacity.cap_parsing_failed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topology_parse_cpu_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topology_parse_cpu_capacity._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_topology to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_cpu_capacity_sysctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu_capacity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_to_visit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cpu_capacity_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_topology_flags_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parsing_done_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @topology_scale_freq_invariant() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %call, label %entry.lor.end_crit_edge, label %if.else.i.i.i

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i = icmp ne i32 %call.i.i.i, 0
  br label %lor.end

lor.end:                                          ; preds = %if.else.i.i.i, %entry.lor.end_crit_edge
  %1 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool.i, %if.else.i.i.i ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_supports_freq_invariance() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_set_scale_freq_source(ptr noundef %data, ptr noundef %cpus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %0) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %0)
  %cmp4.i.i = icmp eq i32 %call.i.i, %0
  br i1 %cmp4.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i84 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %call.i84, label %if.then.topology_scale_freq_invariant.exit_crit_edge, label %if.else.i.i.i.i

if.then.topology_scale_freq_invariant.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %topology_scale_freq_invariant.exit

if.else.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_subset(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i = icmp ne i32 %call.i.i.i.i, 0
  br label %topology_scale_freq_invariant.exit

topology_scale_freq_invariant.exit:               ; preds = %if.else.i.i.i.i, %if.then.topology_scale_freq_invariant.exit_crit_edge
  %2 = phi i1 [ true, %if.then.topology_scale_freq_invariant.exit_crit_edge ], [ %tobool.i.i, %if.else.i.i.i.i ]
  %frombool = zext i1 %2 to i8
  store i8 %frombool, ptr @scale_freq_invariant, align 1
  br label %if.end

if.end:                                           ; preds = %topology_scale_freq_invariant.exit, %entry.if.end_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call296 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call296, i32 %7)
  %cmp97 = icmp ult i32 %call296, %7
  br i1 %cmp97, label %rcu_read_lock.exit.for.body_crit_edge, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

for.body:                                         ; preds = %if.end77.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call298 = phi i32 [ %call2, %if.end77.for.body_crit_edge ], [ %call296, %rcu_read_lock.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call298
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @sft_data to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end17_crit_edge

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true:                                    ; preds = %for.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @topology_set_scale_freq_source.__warned, align 1
  br i1 %.b83, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @topology_set_scale_freq_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1) #13
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %do.end17.do.body22_crit_edge, label %lor.lhs.false

do.end17.do.body22_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body22

lor.lhs.false:                                    ; preds = %do.end17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20.not = icmp eq i32 %14, 1
  br i1 %cmp20.not, label %lor.lhs.false.if.end77_crit_edge, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body22

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %do.end17.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add65 = add i32 %16, ptrtoint (ptr @sft_data to i32)
  %17 = inttoptr i32 %add65 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %data, ptr %17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call298)
  %cmp.not.i.i.i = icmp ugt i32 %19, %call298
  br i1 %cmp.not.i.i.i, label %do.body22.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

do.body22.cpumask_set_cpu.exit_crit_edge:         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %do.body22
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !131

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %do.body22.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call298, ptr noundef nonnull @scale_freq_counters_mask) #13
  br label %if.end77

if.end77:                                         ; preds = %cpumask_set_cpu.exit, %lor.lhs.false.if.end77_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call298, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %20
  br i1 %cmp, label %if.end77.for.body_crit_edge, label %if.end77.for.end_crit_edge

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end77.for.body_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end77.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i85, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %for.end
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  %21 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i92 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %25 = load i8, ptr @scale_freq_invariant, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.i = icmp eq i8 %25, 1
  br i1 %cmp.i, label %rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge, label %if.end.i

rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_scale_freq_invariant.exit

if.end.i:                                         ; preds = %rcu_read_unlock.exit
  %call.i.i94 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %call.i.i94, label %if.end.i.if.then9.i_crit_edge, label %if.else.i.i.i.i.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i.i = tail call i32 @__bitmap_subset(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.i.i.i.not = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge, label %if.else.i.i.i.i.i.if.then9.i_crit_edge

if.else.i.i.i.i.i.if.then9.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_scale_freq_invariant.exit

if.then9.i:                                       ; preds = %if.else.i.i.i.i.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge
  store i8 1, ptr @scale_freq_invariant, align 1
  tail call void @rebuild_sched_domains_energy() #13
  br label %update_scale_freq_invariant.exit

update_scale_freq_invariant.exit:                 ; preds = %if.then9.i, %if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge, %rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_clear_scale_freq_source(i32 noundef %source, ptr noundef %cpus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call94 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call94, i32 %4)
  %cmp95 = icmp ult i32 %call94, %4
  br i1 %cmp95, label %rcu_read_lock.exit.for.body_crit_edge, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

for.body:                                         ; preds = %if.end74.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call96 = phi i32 [ %call, %if.end74.for.body_crit_edge ], [ %call94, %rcu_read_lock.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call96
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @sft_data to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %call7 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end13_crit_edge

for.body.do.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @topology_clear_scale_freq_source.__warned, align 1
  br i1 %.b83, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @topology_clear_scale_freq_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %for.body.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %do.end13.if.end74_crit_edge, label %land.lhs.true16

do.end13.if.end74_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

land.lhs.true16:                                  ; preds = %do.end13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %source)
  %cmp18 = icmp eq i32 %11, %source
  br i1 %cmp18, label %do.body27, label %land.lhs.true16.if.end74_crit_edge

land.lhs.true16.if.end74_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

do.body27:                                        ; preds = %land.lhs.true16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add36 = add i32 %13, ptrtoint (ptr @sft_data to i32)
  %14 = inttoptr i32 %add36 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call96)
  %cmp.not.i.i.i = icmp ugt i32 %16, %call96
  br i1 %cmp.not.i.i.i, label %do.body27.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

do.body27.cpumask_clear_cpu.exit_crit_edge:       ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %do.body27
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !131

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %do.body27.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %call96, ptr noundef nonnull @scale_freq_counters_mask) #13
  br label %if.end74

if.end74:                                         ; preds = %cpumask_clear_cpu.exit, %land.lhs.true16.if.end74_crit_edge, %do.end13.if.end74_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call96, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %17
  br i1 %cmp, label %if.end74.for.body_crit_edge, label %if.end74.for.end_crit_edge

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end74.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i84, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %for.end
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  %18 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i91 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call void @synchronize_rcu() #13
  %22 = load i8, ptr @scale_freq_invariant, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i = icmp eq i8 %22, 0
  br i1 %cmp.i, label %rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge, label %if.end.i

rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_scale_freq_invariant.exit

if.end.i:                                         ; preds = %rcu_read_unlock.exit
  %call.i.i = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %call.i.i, label %if.end.i.update_scale_freq_invariant.exit_crit_edge, label %if.else.i.i.i.i.i

if.end.i.update_scale_freq_invariant.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_scale_freq_invariant.exit

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i.i = tail call i32 @__bitmap_subset(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.i.i.i.not = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %if.then9.i, label %if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge

if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_scale_freq_invariant.exit

if.then9.i:                                       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i8 0, ptr @scale_freq_invariant, align 1
  tail call void @rebuild_sched_domains_energy() #13
  br label %update_scale_freq_invariant.exit

update_scale_freq_invariant.exit:                 ; preds = %if.then9.i, %if.else.i.i.i.i.i.update_scale_freq_invariant.exit_crit_edge, %if.end.i.update_scale_freq_invariant.exit_crit_edge, %rcu_read_unlock.exit.update_scale_freq_invariant.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_scale_freq_tick() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @sft_data to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %call7 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true:                                    ; preds = %entry
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b19 = load i1, ptr @topology_scale_freq_tick.__warned, align 1
  br i1 %.b19, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @topology_scale_freq_tick.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 117, ptr noundef nonnull @.str.1) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %entry.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %do.end13.if.end17_crit_edge, label %if.then16

do.end13.if.end17_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  %set_freq_scale = getelementptr inbounds %struct.scale_freq_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %set_freq_scale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_freq_scale, align 4
  tail call void %10() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end13.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_set_freq_scale(ptr noundef %cpus, i32 noundef %cur_freq, i32 noundef %max_freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_freq)
  %tobool.not = icmp eq i32 %cur_freq, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_freq)
  %tobool1.not = icmp eq i32 %max_freq, 0
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %land.rhs, label %if.else.i.i.i

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @topology_set_freq_scale.__already_done, align 1
  br i1 %.b57, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !131

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @topology_set_freq_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.else.i.i.i:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %cpus, ptr noundef nonnull @scale_freq_counters_mask, i32 noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.not, label %if.end42, label %if.else.i.i.i.cleanup_crit_edge

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %if.else.i.i.i
  %shl = shl i32 %cur_freq, 10
  %div = udiv i32 %shl, %max_freq
  %call4359 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4359, i32 %1)
  %cmp60 = icmp ult i32 %call4359, %1
  br i1 %cmp60, label %if.end42.for.body_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end42.for.body_crit_edge
  %call4361 = phi i32 [ %call43, %for.body.for.body_crit_edge ], [ %call4359, %if.end42.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4361
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @arch_freq_scale to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %4, align 4
  %call43 = tail call i32 @cpumask_next(i32 noundef %call4361, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call43, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else.i.i.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @topology_set_cpu_scale(i32 noundef %cpu, i32 noundef %capacity) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_scale to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %capacity, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_update_thermal_pressure(ptr noundef %cpus, i32 noundef %capped_freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %cpus, i32 noundef %0) #13
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @cpu_scale to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %2, ptrtoint (ptr @freq_factor to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %div = udiv i32 %capped_freq, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div)
  %cmp.not = icmp ugt i32 %8, %div
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.frozen = freeze i32 %5
  %.frozen46 = freeze i32 %8
  %div3 = udiv i32 %.frozen, %.frozen46
  %9 = mul i32 %div3, %.frozen46
  %rem4.decomposed = sub i32 %.frozen, %9
  %mul = mul i32 %div3, %div
  %mul6 = mul i32 %rem4.decomposed, %div
  %div7 = udiv i32 %mul6, %8
  %add8 = add i32 %div7, %mul
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %capacity.0 = phi i32 [ %add8, %if.else ], [ %5, %entry.if.end_crit_edge ]
  %sub = sub i32 %5, %capacity.0
  %call943 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call943, i32 %10)
  %cmp1044 = icmp ult i32 %call943, %10
  br i1 %cmp1044, label %if.end.do.body15_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.do.body15_crit_edge:                       ; preds = %if.end
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %if.end.do.body15_crit_edge
  %call945 = phi i32 [ %call9, %do.body15.do.body15_crit_edge ], [ %call943, %if.end.do.body15_crit_edge ]
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call945
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %12, ptrtoint (ptr @thermal_pressure to i32)
  %13 = inttoptr i32 %add24 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %sub, ptr %13, align 4
  %call9 = tail call i32 @cpumask_next(i32 noundef %call945, ptr noundef %cpus) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %15
  br i1 %cmp10, label %do.body15.do.body15_crit_edge, label %do.body15.for.end_crit_edge

do.body15.for.end_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15

for.end:                                          ; preds = %do.body15.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @register_cpu_capacity_sysctl() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %0)
  %cmp9 = icmp ult i32 %call8, %0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %call10 = phi i32 [ %call, %for.cond.backedge.for.body_crit_edge ], [ %call8, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @get_cpu_device(i32 noundef %call10) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call10) #17
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end, %do.end
  %call = tail call i32 @cpumask_next(i32 noundef %call10, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @device_create_file(ptr noundef nonnull %call1, ptr noundef nonnull @dev_attr_cpu_capacity) #13
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @update_topology, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @topology_normalize_cpu_scale() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_capacity, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call81 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call81, i32 %1)
  %cmp82 = icmp ult i32 %call81, %1
  br i1 %cmp82, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body6_crit_edge

for.cond.preheader.do.body6_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call84 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call81, %for.cond.preheader.for.body_crit_edge ]
  %capacity_scale.083 = phi i64 [ %9, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %0, i32 %call84
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call84
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %5, ptrtoint (ptr @freq_factor to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %mul = mul i32 %8, %3
  %conv = zext i32 %mul to i64
  %9 = tail call i64 @llvm.umax.i64(i64 %capacity_scale.083, i64 %conv)
  %call = tail call i32 @cpumask_next(i32 noundef %call84, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body6_crit_edge

for.body.do.body6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body6:                                         ; preds = %for.body.do.body6_crit_edge, %for.cond.preheader.do.body6_crit_edge
  %capacity_scale.0.lcssa = phi i64 [ 1, %for.cond.preheader.do.body6_crit_edge ], [ %9, %for.body.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@topology_normalize_cpu_scale, %do.end16)) #13
          to label %if.then13 [label %do.end16], !srcloc !134

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.4, i64 noundef %capacity_scale.0.lcssa) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body6
  %call1885 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1885, i32 %10)
  %cmp1986 = icmp ult i32 %call1885, %10
  br i1 %cmp1986, label %do.end16.for.body21_crit_edge, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end16.for.body21_crit_edge:                    ; preds = %do.end16
  br label %for.body21

for.body21:                                       ; preds = %do.end54.for.body21_crit_edge, %do.end16.for.body21_crit_edge
  %call1887 = phi i32 [ %call18, %do.end54.for.body21_crit_edge ], [ %call1885, %do.end16.for.body21_crit_edge ]
  %11 = load ptr, ptr @raw_capacity, align 4
  %arrayidx22 = getelementptr i32, ptr %11, i32 %call1887
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx22, align 4
  %arrayidx30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1887
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %15, ptrtoint (ptr @freq_factor to i32)
  %16 = inttoptr i32 %add31 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %mul32 = mul i32 %18, %13
  %conv33 = zext i32 %mul32 to i64
  %shl = shl nuw nsw i64 %conv33, 10
  %call34 = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %capacity_scale.0.lcssa) #13
  %conv35 = trunc i64 %call34 to i32
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30, align 4
  %add.i = add i32 %20, ptrtoint (ptr @cpu_scale to i32)
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv35, ptr %21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@topology_normalize_cpu_scale, %do.end54)) #13
          to label %if.then50 [label %do.end54], !srcloc !134

if.then50:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %add.i78 = add i32 %24, ptrtoint (ptr @cpu_scale to i32)
  %25 = inttoptr i32 %add.i78 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.5, i32 noundef %call1887, i32 noundef %27) #13
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %for.body21
  %call18 = tail call i32 @cpumask_next(i32 noundef %call1887, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %28
  br i1 %cmp19, label %do.end54.for.body21_crit_edge, label %do.end54.cleanup_crit_edge

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end54.for.body21_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

cleanup:                                          ; preds = %do.end54.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @topology_parse_cpu_capacity(ptr noundef %cpu_node, i32 noundef %cpu) local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  %cpu_capacity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_capacity) #13
  %0 = ptrtoint ptr %cpu_capacity to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpu_capacity, align 4, !annotation !135
  %.b59 = load i1, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br i1 %.b59, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %cpu_node, ptr noundef nonnull @.str.6, ptr noundef nonnull %cpu_capacity, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  %1 = load ptr, ptr @raw_capacity, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.end.i.i, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end.i.i:                                       ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #13
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #13
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !136

kcalloc.exit.thread:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @raw_capacity, align 4
  br label %if.then8

if.end7.i.i:                                      ; preds = %if.end.i.i
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #18
  store ptr %call8.i.i, ptr @raw_capacity, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.if.then8_crit_edge, label %if.end7.i.i.if.end10_crit_edge

if.end7.i.i.if.end10_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end7.i.i.if.then8_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %if.end7.i.i.if.then8_crit_edge, %kcalloc.exit.thread
  store i1 true, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i.i.if.end10_crit_edge, %if.then2.if.end10_crit_edge
  %6 = ptrtoint ptr %cpu_capacity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_capacity, align 4
  %8 = load ptr, ptr @raw_capacity, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 %cpu
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @topology_parse_cpu_capacity.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@topology_parse_cpu_capacity, %do.end)) #13
          to label %if.then16 [label %do.end], !srcloc !134

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %10 = load ptr, ptr @raw_capacity, align 4
  %arrayidx17 = getelementptr i32, ptr %10, i32 %cpu
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx17, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @topology_parse_cpu_capacity.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.8, ptr noundef %cpu_node, i32 noundef %12) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end10
  %call19 = call ptr @of_clk_get(ptr noundef %cpu_node, i32 noundef 0) #13
  %cmp.i.i.not = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end.cleanup_crit_edge, label %if.then22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call i32 @clk_get_rate(ptr noundef %call19) #13
  %div = udiv i32 %call23, 1000
  %arrayidx29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx29, align 4
  %add = add i32 %14, ptrtoint (ptr @freq_factor to i32)
  %15 = inttoptr i32 %add to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %15, align 4
  call void @clk_put(ptr noundef %call19) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.else.if.end43_crit_edge, label %do.end35

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %cpu_node) #17
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  br label %if.end43

if.end43:                                         ; preds = %do.end35, %if.else.if.end43_crit_edge
  store i1 true, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  %17 = load ptr, ptr @raw_capacity, align 4
  call void @kfree(ptr noundef %17) #13
  store ptr null, ptr @raw_capacity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then22, %do.end.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then8 ], [ false, %entry.cleanup_crit_edge ], [ true, %do.end.cleanup_crit_edge ], [ true, %if.then22 ], [ false, %if.end43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_capacity) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @register_cpufreq_notifier() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_capacity, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @cpus_to_visit, i32 noundef 3264) #13
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr @cpus_to_visit, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %2, 31
  %3 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %3, 536870908
  %4 = call ptr @memcpy(ptr %1, ptr @__cpu_possible_mask, i32 %mul.i.i)
  %call3 = tail call i32 @cpufreq_register_notifier(ptr noundef nonnull @init_cpu_capacity_notifier, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %5 = load ptr, ptr @cpus_to_visit, align 4
  tail call void @free_cpumask_var(ptr noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @cpu_coregroup_mask(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %core_sibling, ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  %spec.select = select i1 %tobool.not, ptr @__cpu_online_mask, ptr %core_sibling
  %llc_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 4
  %1 = ptrtoint ptr %llc_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %llc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then4

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %llc_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i30 = tail call i32 @__bitmap_subset(ptr noundef %llc_sibling, ptr noundef %spec.select, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool7.not = icmp eq i32 %call.i.i30, 0
  %spec.select20 = select i1 %tobool7.not, ptr %spec.select, ptr %llc_sibling
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %entry.if.end12_crit_edge
  %core_mask.1 = phi ptr [ %spec.select, %entry.if.end12_crit_edge ], [ %spec.select20, %if.then4 ]
  ret ptr %core_mask.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @cpu_clustergroup_mask(i32 noundef %cpu) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 7
  ret ptr %cluster_sibling
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_siblings_masks(i32 noundef %cpuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call82 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call82, i32 %0)
  %cmp83 = icmp ult i32 %call82, %0
  br i1 %cmp83, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %llc_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 4
  %llc_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 8
  %package_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 3
  %cluster_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 2
  %cluster_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 7
  %core_sibling16 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 6
  %core_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 1
  %thread_sibling21 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpuid, i32 5
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %call84 = phi i32 [ %call82, %for.body.lr.ph ], [ %call, %for.cond.backedge.for.body_crit_edge ]
  %1 = ptrtoint ptr %llc_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %llc_id, align 4
  %llc_id2 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 4
  %3 = ptrtoint ptr %llc_id2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %llc_id2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp3 = icmp eq i32 %2, %4
  br i1 %cmp3, label %cpumask_set_cpu.exit, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cpumask_set_cpu.exit:                             ; preds = %for.body
  tail call void @_set_bit(i32 noundef %call84, ptr noundef %llc_sibling) #13
  %llc_sibling4 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cpuid)
  %cmp.not.i.i.i47 = icmp ugt i32 %5, %cpuid
  br i1 %cmp.not.i.i.i47, label %cpumask_set_cpu.exit.cpumask_set_cpu.exit51_crit_edge, label %land.rhs.i.i.i49

cpumask_set_cpu.exit.cpumask_set_cpu.exit51_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit51

land.rhs.i.i.i49:                                 ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i48 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i48, label %land.rhs.i.i.i49.cpumask_set_cpu.exit51_crit_edge, label %if.then.i.i.i50, !prof !131

land.rhs.i.i.i49.cpumask_set_cpu.exit51_crit_edge: ; preds = %land.rhs.i.i.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit51

if.then.i.i.i50:                                  ; preds = %land.rhs.i.i.i49
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit51

cpumask_set_cpu.exit51:                           ; preds = %if.then.i.i.i50, %land.rhs.i.i.i49.cpumask_set_cpu.exit51_crit_edge, %cpumask_set_cpu.exit.cpumask_set_cpu.exit51_crit_edge
  tail call void @_set_bit(i32 noundef %cpuid, ptr noundef %llc_sibling4) #13
  br label %if.end

if.end:                                           ; preds = %cpumask_set_cpu.exit51, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %package_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %package_id, align 4
  %package_id5 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 3
  %8 = ptrtoint ptr %package_id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %package_id5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6.not = icmp eq i32 %7, %9
  br i1 %cmp6.not, label %if.end8, label %if.end.for.cond.backedge_crit_edge

if.end.for.cond.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %cluster_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cluster_id, align 4
  %cluster_id9 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 2
  %12 = ptrtoint ptr %cluster_id9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_id9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp10 = icmp ne i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp12.not = icmp eq i32 %11, -1
  %or.cond = or i1 %cmp12.not, %cmp10
  br i1 %or.cond, label %if.end8.if.end15_crit_edge, label %if.then13

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call84)
  %cmp.not.i.i.i52 = icmp ugt i32 %14, %call84
  br i1 %cmp.not.i.i.i52, label %if.then13.cpumask_set_cpu.exit56_crit_edge, label %land.rhs.i.i.i54

if.then13.cpumask_set_cpu.exit56_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit56

land.rhs.i.i.i54:                                 ; preds = %if.then13
  %.b37.i.i.i53 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i53, label %land.rhs.i.i.i54.cpumask_set_cpu.exit56_crit_edge, label %if.then.i.i.i55, !prof !131

land.rhs.i.i.i54.cpumask_set_cpu.exit56_crit_edge: ; preds = %land.rhs.i.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit56

if.then.i.i.i55:                                  ; preds = %land.rhs.i.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit56

cpumask_set_cpu.exit56:                           ; preds = %if.then.i.i.i55, %land.rhs.i.i.i54.cpumask_set_cpu.exit56_crit_edge, %if.then13.cpumask_set_cpu.exit56_crit_edge
  tail call void @_set_bit(i32 noundef %call84, ptr noundef %cluster_sibling) #13
  %cluster_sibling14 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cpuid)
  %cmp.not.i.i.i57 = icmp ugt i32 %15, %cpuid
  br i1 %cmp.not.i.i.i57, label %cpumask_set_cpu.exit56.cpumask_set_cpu.exit61_crit_edge, label %land.rhs.i.i.i59

cpumask_set_cpu.exit56.cpumask_set_cpu.exit61_crit_edge: ; preds = %cpumask_set_cpu.exit56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit61

land.rhs.i.i.i59:                                 ; preds = %cpumask_set_cpu.exit56
  %.b37.i.i.i58 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i58, label %land.rhs.i.i.i59.cpumask_set_cpu.exit61_crit_edge, label %if.then.i.i.i60, !prof !131

land.rhs.i.i.i59.cpumask_set_cpu.exit61_crit_edge: ; preds = %land.rhs.i.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit61

if.then.i.i.i60:                                  ; preds = %land.rhs.i.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit61

cpumask_set_cpu.exit61:                           ; preds = %if.then.i.i.i60, %land.rhs.i.i.i59.cpumask_set_cpu.exit61_crit_edge, %cpumask_set_cpu.exit56.cpumask_set_cpu.exit61_crit_edge
  tail call void @_set_bit(i32 noundef %cpuid, ptr noundef %cluster_sibling14) #13
  br label %if.end15

if.end15:                                         ; preds = %cpumask_set_cpu.exit61, %if.end8.if.end15_crit_edge
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cpuid)
  %cmp.not.i.i.i62 = icmp ugt i32 %16, %cpuid
  br i1 %cmp.not.i.i.i62, label %if.end15.cpumask_set_cpu.exit66_crit_edge, label %land.rhs.i.i.i64

if.end15.cpumask_set_cpu.exit66_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit66

land.rhs.i.i.i64:                                 ; preds = %if.end15
  %.b37.i.i.i63 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i63, label %land.rhs.i.i.i64.cpumask_set_cpu.exit66_crit_edge, label %if.then.i.i.i65, !prof !131

land.rhs.i.i.i64.cpumask_set_cpu.exit66_crit_edge: ; preds = %land.rhs.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit66

if.then.i.i.i65:                                  ; preds = %land.rhs.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit66

cpumask_set_cpu.exit66:                           ; preds = %if.then.i.i.i65, %land.rhs.i.i.i64.cpumask_set_cpu.exit66_crit_edge, %if.end15.cpumask_set_cpu.exit66_crit_edge
  tail call void @_set_bit(i32 noundef %cpuid, ptr noundef %core_sibling) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call84)
  %cmp.not.i.i.i67 = icmp ugt i32 %17, %call84
  br i1 %cmp.not.i.i.i67, label %cpumask_set_cpu.exit66.cpumask_set_cpu.exit71_crit_edge, label %land.rhs.i.i.i69

cpumask_set_cpu.exit66.cpumask_set_cpu.exit71_crit_edge: ; preds = %cpumask_set_cpu.exit66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit71

land.rhs.i.i.i69:                                 ; preds = %cpumask_set_cpu.exit66
  %.b37.i.i.i68 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i68, label %land.rhs.i.i.i69.cpumask_set_cpu.exit71_crit_edge, label %if.then.i.i.i70, !prof !131

land.rhs.i.i.i69.cpumask_set_cpu.exit71_crit_edge: ; preds = %land.rhs.i.i.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit71

if.then.i.i.i70:                                  ; preds = %land.rhs.i.i.i69
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit71

cpumask_set_cpu.exit71:                           ; preds = %if.then.i.i.i70, %land.rhs.i.i.i69.cpumask_set_cpu.exit71_crit_edge, %cpumask_set_cpu.exit66.cpumask_set_cpu.exit71_crit_edge
  tail call void @_set_bit(i32 noundef %call84, ptr noundef %core_sibling16) #13
  %18 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_id, align 4
  %core_id17 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 1
  %20 = ptrtoint ptr %core_id17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_id17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp18.not = icmp eq i32 %19, %21
  br i1 %cmp18.not, label %if.end20, label %cpumask_set_cpu.exit71.for.cond.backedge_crit_edge

cpumask_set_cpu.exit71.for.cond.backedge_crit_edge: ; preds = %cpumask_set_cpu.exit71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

if.end20:                                         ; preds = %cpumask_set_cpu.exit71
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call84, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cpuid)
  %cmp.not.i.i.i72 = icmp ugt i32 %22, %cpuid
  br i1 %cmp.not.i.i.i72, label %if.end20.cpumask_set_cpu.exit76_crit_edge, label %land.rhs.i.i.i74

if.end20.cpumask_set_cpu.exit76_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit76

land.rhs.i.i.i74:                                 ; preds = %if.end20
  %.b37.i.i.i73 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i73, label %land.rhs.i.i.i74.cpumask_set_cpu.exit76_crit_edge, label %if.then.i.i.i75, !prof !131

land.rhs.i.i.i74.cpumask_set_cpu.exit76_crit_edge: ; preds = %land.rhs.i.i.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit76

if.then.i.i.i75:                                  ; preds = %land.rhs.i.i.i74
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit76

cpumask_set_cpu.exit76:                           ; preds = %if.then.i.i.i75, %land.rhs.i.i.i74.cpumask_set_cpu.exit76_crit_edge, %if.end20.cpumask_set_cpu.exit76_crit_edge
  tail call void @_set_bit(i32 noundef %cpuid, ptr noundef %thread_sibling) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call84)
  %cmp.not.i.i.i77 = icmp ugt i32 %23, %call84
  br i1 %cmp.not.i.i.i77, label %cpumask_set_cpu.exit76.cpumask_set_cpu.exit81_crit_edge, label %land.rhs.i.i.i79

cpumask_set_cpu.exit76.cpumask_set_cpu.exit81_crit_edge: ; preds = %cpumask_set_cpu.exit76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit81

land.rhs.i.i.i79:                                 ; preds = %cpumask_set_cpu.exit76
  %.b37.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i78, label %land.rhs.i.i.i79.cpumask_set_cpu.exit81_crit_edge, label %if.then.i.i.i80, !prof !131

land.rhs.i.i.i79.cpumask_set_cpu.exit81_crit_edge: ; preds = %land.rhs.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit81

if.then.i.i.i80:                                  ; preds = %land.rhs.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit81

cpumask_set_cpu.exit81:                           ; preds = %if.then.i.i.i80, %land.rhs.i.i.i79.cpumask_set_cpu.exit81_crit_edge, %cpumask_set_cpu.exit76.cpumask_set_cpu.exit81_crit_edge
  tail call void @_set_bit(i32 noundef %call84, ptr noundef %thread_sibling21) #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cpumask_set_cpu.exit81, %cpumask_set_cpu.exit71.for.cond.backedge_crit_edge, %if.end.for.cond.backedge_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call84, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %24
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_cpu_topology() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %0)
  %cmp9 = icmp ult i32 %call8, %0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call10 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call8, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call10
  %1 = call ptr @memset(ptr %arrayidx, i32 255, i32 20)
  tail call fastcc void @clear_cpu_topology(i32 noundef %call10)
  %call = tail call i32 @cpumask_next(i32 noundef %call10, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_cpu_topology(i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %llc_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  %2 = call ptr @memset(ptr %llc_sibling, i32 0, i32 %mul.i.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !131

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %llc_sibling) #13
  %cluster_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i16 = add i32 %3, 31
  %4 = lshr i32 %sub.i.i16, 3
  %mul.i.i17 = and i32 %4, 536870908
  %5 = call ptr @memset(ptr %cluster_sibling, i32 0, i32 %mul.i.i17)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp.not.i.i.i18 = icmp ugt i32 %3, %cpu
  br i1 %cmp.not.i.i.i18, label %cpumask_set_cpu.exit.cpumask_set_cpu.exit22_crit_edge, label %land.rhs.i.i.i20

cpumask_set_cpu.exit.cpumask_set_cpu.exit22_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit22

land.rhs.i.i.i20:                                 ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i19 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i19, label %land.rhs.i.i.i20.cpumask_set_cpu.exit22_crit_edge, label %if.then.i.i.i21, !prof !131

land.rhs.i.i.i20.cpumask_set_cpu.exit22_crit_edge: ; preds = %land.rhs.i.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit22

if.then.i.i.i21:                                  ; preds = %land.rhs.i.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit22

cpumask_set_cpu.exit22:                           ; preds = %if.then.i.i.i21, %land.rhs.i.i.i20.cpumask_set_cpu.exit22_crit_edge, %cpumask_set_cpu.exit.cpumask_set_cpu.exit22_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %cluster_sibling) #13
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i23 = add i32 %6, 31
  %7 = lshr i32 %sub.i.i23, 3
  %mul.i.i24 = and i32 %7, 536870908
  %8 = call ptr @memset(ptr %core_sibling, i32 0, i32 %mul.i.i24)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cpu)
  %cmp.not.i.i.i25 = icmp ugt i32 %6, %cpu
  br i1 %cmp.not.i.i.i25, label %cpumask_set_cpu.exit22.cpumask_set_cpu.exit29_crit_edge, label %land.rhs.i.i.i27

cpumask_set_cpu.exit22.cpumask_set_cpu.exit29_crit_edge: ; preds = %cpumask_set_cpu.exit22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit29

land.rhs.i.i.i27:                                 ; preds = %cpumask_set_cpu.exit22
  %.b37.i.i.i26 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i26, label %land.rhs.i.i.i27.cpumask_set_cpu.exit29_crit_edge, label %if.then.i.i.i28, !prof !131

land.rhs.i.i.i27.cpumask_set_cpu.exit29_crit_edge: ; preds = %land.rhs.i.i.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit29

if.then.i.i.i28:                                  ; preds = %land.rhs.i.i.i27
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit29

cpumask_set_cpu.exit29:                           ; preds = %if.then.i.i.i28, %land.rhs.i.i.i27.cpumask_set_cpu.exit29_crit_edge, %cpumask_set_cpu.exit22.cpumask_set_cpu.exit29_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %core_sibling) #13
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i30 = add i32 %9, 31
  %10 = lshr i32 %sub.i.i30, 3
  %mul.i.i31 = and i32 %10, 536870908
  %11 = call ptr @memset(ptr %thread_sibling, i32 0, i32 %mul.i.i31)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cpu)
  %cmp.not.i.i.i32 = icmp ugt i32 %9, %cpu
  br i1 %cmp.not.i.i.i32, label %cpumask_set_cpu.exit29.cpumask_set_cpu.exit36_crit_edge, label %land.rhs.i.i.i34

cpumask_set_cpu.exit29.cpumask_set_cpu.exit36_crit_edge: ; preds = %cpumask_set_cpu.exit29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit36

land.rhs.i.i.i34:                                 ; preds = %cpumask_set_cpu.exit29
  %.b37.i.i.i33 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i33, label %land.rhs.i.i.i34.cpumask_set_cpu.exit36_crit_edge, label %if.then.i.i.i35, !prof !131

land.rhs.i.i.i34.cpumask_set_cpu.exit36_crit_edge: ; preds = %land.rhs.i.i.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit36

if.then.i.i.i35:                                  ; preds = %land.rhs.i.i.i34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit36

cpumask_set_cpu.exit36:                           ; preds = %if.then.i.i.i35, %land.rhs.i.i.i34.cpumask_set_cpu.exit36_crit_edge, %cpumask_set_cpu.exit29.cpumask_set_cpu.exit36_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %thread_sibling) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @remove_cpu_topology(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 6
  %call61 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %core_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call61, i32 %0)
  %cmp62 = icmp ult i32 %call61, %0
  br i1 %cmp62, label %entry.for.body_crit_edge, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond3.preheader:                              ; preds = %cpumask_clear_cpu.exit.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 5
  %call564 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %thread_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call564, i32 %1)
  %cmp665 = icmp ult i32 %call564, %1
  br i1 %cmp665, label %for.cond3.preheader.for.body7_crit_edge, label %for.cond3.preheader.for.cond11.preheader_crit_edge

for.cond3.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond11.preheader

for.cond3.preheader.for.body7_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body7

for.body:                                         ; preds = %cpumask_clear_cpu.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi i32 [ %3, %cpumask_clear_cpu.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %call63 = phi i32 [ %call, %cpumask_clear_cpu.exit.for.body_crit_edge ], [ %call61, %entry.for.body_crit_edge ]
  %core_sibling2 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call63, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i, label %for.body.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body.cpumask_clear_cpu.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !131

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %for.body.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %core_sibling2) #13
  %call = tail call i32 @cpumask_next(i32 noundef %call63, ptr noundef %core_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %cpumask_clear_cpu.exit.for.body_crit_edge, label %cpumask_clear_cpu.exit.for.cond3.preheader_crit_edge

cpumask_clear_cpu.exit.for.cond3.preheader_crit_edge: ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader

cpumask_clear_cpu.exit.for.body_crit_edge:        ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond11.preheader:                             ; preds = %cpumask_clear_cpu.exit50.for.cond11.preheader_crit_edge, %for.cond3.preheader.for.cond11.preheader_crit_edge
  %cluster_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 7
  %call1367 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cluster_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1367, i32 %4)
  %cmp1468 = icmp ult i32 %call1367, %4
  br i1 %cmp1468, label %for.cond11.preheader.for.body15_crit_edge, label %for.cond11.preheader.for.cond19.preheader_crit_edge

for.cond11.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19.preheader

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.body7:                                        ; preds = %cpumask_clear_cpu.exit50.for.body7_crit_edge, %for.cond3.preheader.for.body7_crit_edge
  %5 = phi i32 [ %6, %cpumask_clear_cpu.exit50.for.body7_crit_edge ], [ %1, %for.cond3.preheader.for.body7_crit_edge ]
  %call566 = phi i32 [ %call5, %cpumask_clear_cpu.exit50.for.body7_crit_edge ], [ %call564, %for.cond3.preheader.for.body7_crit_edge ]
  %thread_sibling9 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call566, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cpu)
  %cmp.not.i.i.i46 = icmp ugt i32 %5, %cpu
  br i1 %cmp.not.i.i.i46, label %for.body7.cpumask_clear_cpu.exit50_crit_edge, label %land.rhs.i.i.i48

for.body7.cpumask_clear_cpu.exit50_crit_edge:     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit50

land.rhs.i.i.i48:                                 ; preds = %for.body7
  %.b37.i.i.i47 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i47, label %land.rhs.i.i.i48.cpumask_clear_cpu.exit50_crit_edge, label %if.then.i.i.i49, !prof !131

land.rhs.i.i.i48.cpumask_clear_cpu.exit50_crit_edge: ; preds = %land.rhs.i.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit50

if.then.i.i.i49:                                  ; preds = %land.rhs.i.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_clear_cpu.exit50

cpumask_clear_cpu.exit50:                         ; preds = %if.then.i.i.i49, %land.rhs.i.i.i48.cpumask_clear_cpu.exit50_crit_edge, %for.body7.cpumask_clear_cpu.exit50_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %thread_sibling9) #13
  %call5 = tail call i32 @cpumask_next(i32 noundef %call566, ptr noundef %thread_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call5, %6
  br i1 %cmp6, label %cpumask_clear_cpu.exit50.for.body7_crit_edge, label %cpumask_clear_cpu.exit50.for.cond11.preheader_crit_edge

cpumask_clear_cpu.exit50.for.cond11.preheader_crit_edge: ; preds = %cpumask_clear_cpu.exit50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond11.preheader

cpumask_clear_cpu.exit50.for.body7_crit_edge:     ; preds = %cpumask_clear_cpu.exit50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.cond19.preheader:                             ; preds = %cpumask_clear_cpu.exit55.for.cond19.preheader_crit_edge, %for.cond11.preheader.for.cond19.preheader_crit_edge
  %llc_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 8
  %call2170 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %llc_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2170, i32 %7)
  %cmp2271 = icmp ult i32 %call2170, %7
  br i1 %cmp2271, label %for.cond19.preheader.for.body23_crit_edge, label %for.cond19.preheader.for.end26_crit_edge

for.cond19.preheader.for.end26_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.cond19.preheader.for.body23_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body23

for.body15:                                       ; preds = %cpumask_clear_cpu.exit55.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %8 = phi i32 [ %9, %cpumask_clear_cpu.exit55.for.body15_crit_edge ], [ %4, %for.cond11.preheader.for.body15_crit_edge ]
  %call1369 = phi i32 [ %call13, %cpumask_clear_cpu.exit55.for.body15_crit_edge ], [ %call1367, %for.cond11.preheader.for.body15_crit_edge ]
  %cluster_sibling17 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call1369, i32 7
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cpu)
  %cmp.not.i.i.i51 = icmp ugt i32 %8, %cpu
  br i1 %cmp.not.i.i.i51, label %for.body15.cpumask_clear_cpu.exit55_crit_edge, label %land.rhs.i.i.i53

for.body15.cpumask_clear_cpu.exit55_crit_edge:    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit55

land.rhs.i.i.i53:                                 ; preds = %for.body15
  %.b37.i.i.i52 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i52, label %land.rhs.i.i.i53.cpumask_clear_cpu.exit55_crit_edge, label %if.then.i.i.i54, !prof !131

land.rhs.i.i.i53.cpumask_clear_cpu.exit55_crit_edge: ; preds = %land.rhs.i.i.i53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit55

if.then.i.i.i54:                                  ; preds = %land.rhs.i.i.i53
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_clear_cpu.exit55

cpumask_clear_cpu.exit55:                         ; preds = %if.then.i.i.i54, %land.rhs.i.i.i53.cpumask_clear_cpu.exit55_crit_edge, %for.body15.cpumask_clear_cpu.exit55_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %cluster_sibling17) #13
  %call13 = tail call i32 @cpumask_next(i32 noundef %call1369, ptr noundef %cluster_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %9
  br i1 %cmp14, label %cpumask_clear_cpu.exit55.for.body15_crit_edge, label %cpumask_clear_cpu.exit55.for.cond19.preheader_crit_edge

cpumask_clear_cpu.exit55.for.cond19.preheader_crit_edge: ; preds = %cpumask_clear_cpu.exit55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19.preheader

cpumask_clear_cpu.exit55.for.body15_crit_edge:    ; preds = %cpumask_clear_cpu.exit55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15

for.body23:                                       ; preds = %cpumask_clear_cpu.exit60.for.body23_crit_edge, %for.cond19.preheader.for.body23_crit_edge
  %10 = phi i32 [ %11, %cpumask_clear_cpu.exit60.for.body23_crit_edge ], [ %7, %for.cond19.preheader.for.body23_crit_edge ]
  %call2172 = phi i32 [ %call21, %cpumask_clear_cpu.exit60.for.body23_crit_edge ], [ %call2170, %for.cond19.preheader.for.body23_crit_edge ]
  %llc_sibling25 = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call2172, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cpu)
  %cmp.not.i.i.i56 = icmp ugt i32 %10, %cpu
  br i1 %cmp.not.i.i.i56, label %for.body23.cpumask_clear_cpu.exit60_crit_edge, label %land.rhs.i.i.i58

for.body23.cpumask_clear_cpu.exit60_crit_edge:    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit60

land.rhs.i.i.i58:                                 ; preds = %for.body23
  %.b37.i.i.i57 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i57, label %land.rhs.i.i.i58.cpumask_clear_cpu.exit60_crit_edge, label %if.then.i.i.i59, !prof !131

land.rhs.i.i.i58.cpumask_clear_cpu.exit60_crit_edge: ; preds = %land.rhs.i.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_clear_cpu.exit60

if.then.i.i.i59:                                  ; preds = %land.rhs.i.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_clear_cpu.exit60

cpumask_clear_cpu.exit60:                         ; preds = %if.then.i.i.i59, %land.rhs.i.i.i58.cpumask_clear_cpu.exit60_crit_edge, %for.body23.cpumask_clear_cpu.exit60_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %llc_sibling25) #13
  %call21 = tail call i32 @cpumask_next(i32 noundef %call2172, ptr noundef %llc_sibling) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp22 = icmp ult i32 %call21, %11
  br i1 %cmp22, label %cpumask_clear_cpu.exit60.for.body23_crit_edge, label %cpumask_clear_cpu.exit60.for.end26_crit_edge

cpumask_clear_cpu.exit60.for.end26_crit_edge:     ; preds = %cpumask_clear_cpu.exit60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

cpumask_clear_cpu.exit60.for.body23_crit_edge:    ; preds = %cpumask_clear_cpu.exit60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23

for.end26:                                        ; preds = %cpumask_clear_cpu.exit60.for.end26_crit_edge, %for.cond19.preheader.for.end26_crit_edge
  tail call fastcc void @clear_cpu_topology(i32 noundef %cpu)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @parse_acpi_topology() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rebuild_sched_domains_energy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_capacity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @cpu_scale to i32)
  %4 = inttoptr i32 %add.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %6) #13
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_cpu_capacity_callback(ptr nocapture noundef readnone %nb, i32 noundef %val, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @raw_capacity, align 4
  %tobool.not = icmp ne ptr %0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cpu_capacity_callback.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_cpu_capacity_callback, %do.end)) #13
          to label %if.then7 [label %do.end], !srcloc !134

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %4 = load ptr, ptr @cpus_to_visit, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cpu_capacity_callback.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.22, i32 noundef %1, ptr noundef %3, i32 noundef %1, ptr noundef %4) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %related_cpus11 = getelementptr inbounds %struct.cpufreq_policy, ptr %data, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = ptrtoint ptr %related_cpus11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %related_cpus11, align 4
  %8 = load ptr, ptr @cpus_to_visit, align 4
  %call.i.i = tail call i32 @__bitmap_andnot(ptr noundef %8, ptr noundef %8, ptr noundef %7, i32 noundef %5) #13
  %9 = ptrtoint ptr %related_cpus11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %related_cpus11, align 4
  %call1465 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %10) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1465, i32 %11)
  %cmp1566 = icmp ult i32 %call1465, %11
  br i1 %cmp1566, label %for.body.lr.ph, label %do.end.cpumask_empty.exit_crit_edge

do.end.cpumask_empty.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_empty.exit

for.body.lr.ph:                                   ; preds = %do.end
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy, ptr %data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call1467 = phi i32 [ %call1465, %for.body.lr.ph ], [ %call14, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %cpuinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpuinfo, align 4
  %div = udiv i32 %13, 1000
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1467
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, ptrtoint (ptr @freq_factor to i32)
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %16, align 4
  %18 = ptrtoint ptr %related_cpus11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %related_cpus11, align 4
  %call14 = tail call i32 @cpumask_next(i32 noundef %call1467, ptr noundef %19) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %20
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.cpumask_empty.exit_crit_edge

for.body.cpumask_empty.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_empty.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cpumask_empty.exit:                               ; preds = %for.body.cpumask_empty.exit_crit_edge, %do.end.cpumask_empty.exit_crit_edge
  %.lcssa = phi i32 [ %11, %do.end.cpumask_empty.exit_crit_edge ], [ %20, %for.body.cpumask_empty.exit_crit_edge ]
  %21 = load ptr, ptr @cpus_to_visit, align 4
  %call.i.i59 = tail call i32 @_find_first_bit_be(ptr noundef %21, i32 noundef %.lcssa) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i59, i32 %.lcssa)
  %cmp4.i.i = icmp eq i32 %call.i.i59, %.lcssa
  br i1 %cmp4.i.i, label %if.then22, label %cpumask_empty.exit.cleanup_crit_edge

cpumask_empty.exit.cleanup_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %cpumask_empty.exit
  tail call void @topology_normalize_cpu_scale()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i61 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef nonnull @update_topology_flags_work) #13
  %23 = load ptr, ptr @raw_capacity, align 4
  tail call void @kfree(ptr noundef %23) #13
  store ptr null, ptr @raw_capacity, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cpu_capacity_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_cpu_capacity_callback, %do.end42)) #13
          to label %if.then39 [label %do.end42], !srcloc !134

if.then39:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cpu_capacity_callback.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.23) #13
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i62 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef nonnull @parsing_done_work) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %cpumask_empty.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_topology_flags_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @update_topology, align 4
  tail call void @rebuild_sched_domains() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_topology_flags_workfn.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@update_topology_flags_workfn, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_topology_flags_workfn.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.26) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  store i1 false, ptr @update_topology, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rebuild_sched_domains() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parsing_done_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_notifier(ptr noundef nonnull @init_cpu_capacity_notifier, i32 noundef 1) #13
  %0 = load ptr, ptr @cpus_to_visit, align 4
  tail call void @free_cpumask_var(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !98, !100, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @freq_factor, !1, !"freq_factor", i1 false, i1 false}
!1 = !{!"../drivers/base/arch_topology.c", i32 25, i32 8}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/base/arch_topology.c", i32 71, i32 9}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_topology_set_scale_freq_source, !7, !"__ksymtab_topology_set_scale_freq_source", i1 false, i1 false}
!7 = !{!"../drivers/base/arch_topology.c", i32 84, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/base/arch_topology.c", i32 95, i32 9}
!10 = !{ptr @__ksymtab_topology_clear_scale_freq_source, !11, !"__ksymtab_topology_clear_scale_freq_source", i1 false, i1 false}
!11 = !{!"../drivers/base/arch_topology.c", i32 113, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/base/arch_topology.c", i32 117, i32 32}
!14 = !{ptr @arch_freq_scale, !15, !"arch_freq_scale", i1 false, i1 false}
!15 = !{!"../drivers/base/arch_topology.c", i32 123, i32 1}
!16 = !{ptr @__ksymtab_arch_freq_scale, !17, !"__ksymtab_arch_freq_scale", i1 false, i1 false}
!17 = !{!"../drivers/base/arch_topology.c", i32 124, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/base/arch_topology.c", i32 132, i32 6}
!20 = !{ptr @cpu_scale, !21, !"cpu_scale", i1 false, i1 false}
!21 = !{!"../drivers/base/arch_topology.c", i32 149, i32 1}
!22 = !{ptr @__ksymtab_cpu_scale, !23, !"__ksymtab_cpu_scale", i1 false, i1 false}
!23 = !{!"../drivers/base/arch_topology.c", i32 150, i32 1}
!24 = !{ptr @__ksymtab_topology_update_thermal_pressure, !25, !"__ksymtab_topology_update_thermal_pressure", i1 false, i1 false}
!25 = !{!"../drivers/base/arch_topology.c", i32 201, i32 1}
!26 = !{ptr @__initcall__kmod_arch_topology__253_234_register_cpu_capacity_sysctl4, !27, !"__initcall__kmod_arch_topology__253_234_register_cpu_capacity_sysctl4", i1 false, i1 false}
!27 = !{!"../drivers/base/arch_topology.c", i32 234, i32 1}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/base/arch_topology.c", i32 280, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug257, !29, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/base/arch_topology.c", i32 286, i32 3}
!35 = !{ptr @topology_normalize_cpu_scale.__UNIQUE_ID_ddebug258, !34, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!36 = distinct !{null, !37, !"cap_parsing_failed", i1 false, i1 false}
!37 = !{!"../drivers/base/arch_topology.c", i32 294, i32 14}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/base/arch_topology.c", i32 301, i32 39}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/base/arch_topology.c", i32 314, i32 3}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @topology_parse_cpu_capacity.__UNIQUE_ID_ddebug259, !41, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/base/arch_topology.c", i32 331, i32 4}
!46 = !{ptr @topology_parse_cpu_capacity._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @topology_parse_cpu_capacity._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/base/arch_topology.c", i32 333, i32 4}
!50 = !{ptr @topology_parse_cpu_capacity._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @topology_parse_cpu_capacity._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__initcall__kmod_arch_topology__262_410_register_cpufreq_notifier1, !53, !"__initcall__kmod_arch_topology__262_410_register_cpufreq_notifier1", i1 false, i1 false}
!53 = !{!"../drivers/base/arch_topology.c", i32 410, i32 1}
!54 = !{ptr @__ksymtab_cpu_topology, !55, !"__ksymtab_cpu_topology", i1 false, i1 false}
!55 = !{!"../drivers/base/arch_topology.c", i32 615, i32 1}
!56 = !{ptr @__pcpu_unique_sft_data, !57, !"__pcpu_unique_sft_data", i1 false, i1 false}
!57 = !{!"../drivers/base/arch_topology.c", i32 22, i32 8}
!58 = !{ptr @sft_data, !57, !"sft_data", i1 false, i1 false}
!59 = !{ptr @scale_freq_counters_mask, !60, !"scale_freq_counters_mask", i1 false, i1 false}
!60 = !{!"../drivers/base/arch_topology.c", i32 23, i32 23}
!61 = !{ptr @scale_freq_invariant, !62, !"scale_freq_invariant", i1 false, i1 false}
!62 = !{!"../drivers/base/arch_topology.c", i32 24, i32 13}
!63 = !{ptr @__pcpu_unique_freq_factor, !1, !"__pcpu_unique_freq_factor", i1 false, i1 false}
!64 = !{ptr @__pcpu_scope_arch_freq_scale, !15, !"__pcpu_scope_arch_freq_scale", i1 false, i1 false}
!65 = !{ptr @__pcpu_unique_arch_freq_scale, !15, !"__pcpu_unique_arch_freq_scale", i1 false, i1 false}
!66 = !{ptr @__pcpu_scope_cpu_scale, !21, !"__pcpu_scope_cpu_scale", i1 false, i1 false}
!67 = !{ptr @__pcpu_unique_cpu_scale, !21, !"__pcpu_unique_cpu_scale", i1 false, i1 false}
!68 = !{ptr @__pcpu_scope_thermal_pressure, !69, !"__pcpu_scope_thermal_pressure", i1 false, i1 false}
!69 = !{!"../drivers/base/arch_topology.c", i32 157, i32 1}
!70 = !{ptr @__pcpu_unique_thermal_pressure, !69, !"__pcpu_unique_thermal_pressure", i1 false, i1 false}
!71 = !{ptr @thermal_pressure, !69, !"thermal_pressure", i1 false, i1 false}
!72 = distinct !{null, !73, !"update_topology", i1 false, i1 false}
!73 = !{!"../drivers/base/arch_topology.c", i32 236, i32 12}
!74 = !{ptr @raw_capacity, !75, !"raw_capacity", i1 false, i1 false}
!75 = !{!"../drivers/base/arch_topology.c", i32 255, i32 13}
!76 = !{ptr @cpu_topology, !77, !"cpu_topology", i1 false, i1 false}
!77 = !{!"../drivers/base/arch_topology.c", i32 614, i32 21}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!84 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!87 = !{ptr @.str.16, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/base/arch_topology.c", i32 225, i32 4}
!90 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @register_cpu_capacity_sysctl._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @register_cpu_capacity_sysctl._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/base/arch_topology.c", i32 215, i32 8}
!95 = !{ptr @dev_attr_cpu_capacity, !94, !"dev_attr_cpu_capacity", i1 false, i1 false}
!96 = !{ptr @.str.20, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/base/arch_topology.c", i32 209, i32 25}
!98 = !{ptr @cpus_to_visit, !99, !"cpus_to_visit", i1 false, i1 false}
!99 = !{!"../drivers/base/arch_topology.c", i32 343, i32 22}
!100 = !{ptr @init_cpu_capacity_notifier, !101, !"init_cpu_capacity_notifier", i1 false, i1 false}
!101 = !{!"../drivers/base/arch_topology.c", i32 381, i32 30}
!102 = !{ptr @.str.21, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/base/arch_topology.c", i32 361, i32 2}
!104 = !{ptr @.str.22, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @init_cpu_capacity_callback.__UNIQUE_ID_ddebug260, !103, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/base/arch_topology.c", i32 374, i32 3}
!108 = !{ptr @init_cpu_capacity_callback.__UNIQUE_ID_ddebug261, !107, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/base/arch_topology.c", i32 213, i32 8}
!111 = !{ptr @update_topology_flags_work, !110, !"update_topology_flags_work", i1 false, i1 false}
!112 = !{ptr @.str.25, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/base/arch_topology.c", i32 251, i32 2}
!114 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @update_topology_flags_workfn.__UNIQUE_ID_ddebug254, !113, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/base/arch_topology.c", i32 345, i32 8}
!118 = !{ptr @parsing_done_work, !117, !"parsing_done_work", i1 false, i1 false}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2150107198}
!130 = !{i64 2154697871}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2150107464}
!133 = !{i8 0, i8 2}
!134 = !{i64 2148964253, i64 2148964258, i64 2148964271, i64 2148964315, i64 2148964349, i64 2148964370}
!135 = !{!"auto-init"}
!136 = !{!"branch_weights", i32 1, i32 2000}
