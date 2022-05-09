; ModuleID = '/llk/IR_all_yes/kernel/power/energy_model.c_pt.bc'
source_filename = "../kernel/power/energy_model.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+em_pd_get\22, \22a\22\09"
module asm "\09.weak\09__crc_em_pd_get\09\09\09\09"
module asm "\09.long\09__crc_em_pd_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em_pd_get:\09\09\09\09\09"
module asm "\09.asciz \09\22em_pd_get\22\09\09\09\09\09"
module asm "__kstrtabns_em_pd_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em_cpu_get\22, \22a\22\09"
module asm "\09.weak\09__crc_em_cpu_get\09\09\09\09"
module asm "\09.long\09__crc_em_cpu_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em_cpu_get:\09\09\09\09\09"
module asm "\09.asciz \09\22em_cpu_get\22\09\09\09\09\09"
module asm "__kstrtabns_em_cpu_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em_dev_register_perf_domain\22, \22a\22\09"
module asm "\09.weak\09__crc_em_dev_register_perf_domain\09\09\09\09"
module asm "\09.long\09__crc_em_dev_register_perf_domain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em_dev_register_perf_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22em_dev_register_perf_domain\22\09\09\09\09\09"
module asm "__kstrtabns_em_dev_register_perf_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em_dev_unregister_perf_domain\22, \22a\22\09"
module asm "\09.weak\09__crc_em_dev_unregister_perf_domain\09\09\09\09"
module asm "\09.long\09__crc_em_dev_unregister_perf_domain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em_dev_unregister_perf_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22em_dev_unregister_perf_domain\22\09\09\09\09\09"
module asm "__kstrtabns_em_dev_unregister_perf_domain:\09\09\09\09\09"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.em_perf_domain = type { ptr, i32, i32, [0 x i32] }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.em_perf_state = type { i32, i32, i32, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_energy_model__235_117_em_debug_init5 = internal global ptr @em_debug_init, section ".initcall5.init", align 4
@__kstrtab_em_pd_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_em_pd_get = external dso_local constant [0 x i8], align 1
@__ksymtab_em_pd_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em_pd_get to i32), ptr @__kstrtab_em_pd_get, ptr @__kstrtabns_em_pd_get }, section "___ksymtab_gpl+em_pd_get", align 4
@__kstrtab_em_cpu_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_em_cpu_get = external dso_local constant [0 x i8], align 1
@__ksymtab_em_cpu_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em_cpu_get to i32), ptr @__kstrtab_em_cpu_get, ptr @__kstrtabns_em_cpu_get }, section "___ksymtab_gpl+em_cpu_get", align 4
@em_pd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @em_pd_mutex, i64 52), ptr getelementptr (i8, ptr @em_pd_mutex, i64 52) }, ptr @em_pd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@em_dev_register_perf_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EM: invalid CPU mask\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"em_dev_register_perf_domain\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/power/energy_model.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em_dev_register_perf_domain._entry_ptr = internal global ptr @em_dev_register_perf_domain._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@em_dev_register_perf_domain._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EM: exists for CPU%d\0A\00", [42 x i8] zeroinitializer }, align 32
@em_dev_register_perf_domain._entry_ptr.7 = internal global ptr @em_dev_register_perf_domain._entry.5, section ".printk_index", align 4
@em_dev_register_perf_domain._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"EM: CPUs of %*pbl must have the same capacity\0A\00", [49 x i8] zeroinitializer }, align 32
@em_dev_register_perf_domain._entry_ptr.10 = internal global ptr @em_dev_register_perf_domain._entry.8, section ".printk_index", align 4
@em_dev_register_perf_domain._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 391, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EM: created perf domain\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@em_dev_register_perf_domain._entry_ptr.14 = internal global ptr @em_dev_register_perf_domain._entry.11, section ".printk_index", align 4
@__kstrtab_em_dev_register_perf_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_em_dev_register_perf_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_em_dev_register_perf_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em_dev_register_perf_domain to i32), ptr @__kstrtab_em_dev_register_perf_domain, ptr @__kstrtabns_em_dev_register_perf_domain }, section "___ksymtab_gpl+em_dev_register_perf_domain", align 4
@__kstrtab_em_dev_unregister_perf_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_em_dev_unregister_perf_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_em_dev_unregister_perf_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em_dev_unregister_perf_domain to i32), ptr @__kstrtab_em_dev_unregister_perf_domain, ptr @__kstrtabns_em_dev_unregister_perf_domain }, section "___ksymtab_gpl+em_dev_unregister_perf_domain", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"energy_model\00", [19 x i8] zeroinitializer }, align 32
@rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em_pd_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"em_pd_mutex\00", [20 x i8] zeroinitializer }, align 32
@cpu_subsys = external dso_local global %struct.bus_type, align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em_create_perf_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EM: invalid perf. state: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em_create_perf_table\00", [43 x i8] zeroinitializer }, align 32
@em_create_perf_table._entry_ptr = internal global ptr @em_create_perf_table._entry, section ".printk_index", align 4
@em_create_perf_table._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EM: non-increasing freq: %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@em_create_perf_table._entry_ptr.22 = internal global ptr @em_create_perf_table._entry.20, section ".printk_index", align 4
@em_create_perf_table._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EM: invalid power: %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@em_create_perf_table._entry_ptr.25 = internal global ptr @em_create_perf_table._entry.23, section ".printk_index", align 4
@em_create_perf_table.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.19, ptr @.str.2, ptr @.str.26, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EM: OPP:%lu is inefficient\0A\00", [36 x i8] zeroinitializer }, align 32
@em_cpufreq_update_efficiencies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 248, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EM: Access to CPUFreq policy failed\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"em_cpufreq_update_efficiencies\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@em_cpufreq_update_efficiencies._entry_ptr = internal global ptr @em_cpufreq_update_efficiencies._entry, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpus\00", [27 x i8] zeroinitializer }, align 32
@em_debug_cpus_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @em_debug_cpus_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"units\00", [26 x i8] zeroinitializer }, align 32
@em_debug_units_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @em_debug_units_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skip-inefficiencies\00", [44 x i8] zeroinitializer }, align 32
@em_debug_skip_inefficiencies_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @em_debug_skip_inefficiencies_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*pbl\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"milliWatts\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bogoWatts\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ps:%lu\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frequency\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cost\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inefficient\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"em_pd_mutex\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 353, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 360, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 391, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 113, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [8 x i8] c"rootdir\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 32, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 24, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 144, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 154, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 164, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 182, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 248, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 89, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"em_debug_cpus_fops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 55, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 92, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"em_debug_units_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 67, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 93, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [34 x i8] c"em_debug_skip_inefficiencies_fops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 78, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 51, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 61, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 61, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 63, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 74, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 39, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 43, i32 23 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 44, i32 23 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [31 x i8] c"../kernel/power/energy_model.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 46, i32 23 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__initcall__kmod_energy_model__235_117_em_debug_init5, ptr @__ksymtab_em_cpu_get, ptr @__ksymtab_em_dev_register_perf_domain, ptr @__ksymtab_em_dev_unregister_perf_domain, ptr @__ksymtab_em_pd_get, ptr @em_cpufreq_update_efficiencies._entry, ptr @em_cpufreq_update_efficiencies._entry_ptr, ptr @em_create_perf_table._entry, ptr @em_create_perf_table._entry.20, ptr @em_create_perf_table._entry.23, ptr @em_create_perf_table._entry_ptr, ptr @em_create_perf_table._entry_ptr.22, ptr @em_create_perf_table._entry_ptr.25, ptr @em_dev_register_perf_domain._entry, ptr @em_dev_register_perf_domain._entry.11, ptr @em_dev_register_perf_domain._entry.5, ptr @em_dev_register_perf_domain._entry.8, ptr @em_dev_register_perf_domain._entry_ptr, ptr @em_dev_register_perf_domain._entry_ptr.10, ptr @em_dev_register_perf_domain._entry_ptr.14, ptr @em_dev_register_perf_domain._entry_ptr.7, ptr @em_pd_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @rootdir, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @em_debug_cpus_fops, ptr @.str.31, ptr @em_debug_units_fops, ptr @.str.32, ptr @em_debug_skip_inefficiencies_fops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_pd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_dev_register_perf_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_dev_register_perf_domain._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_dev_register_perf_domain._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_dev_register_perf_domain._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_create_perf_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_create_perf_table._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_create_perf_table._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_cpufreq_update_efficiencies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_debug_cpus_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_debug_units_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_debug_skip_inefficiencies_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef null) #11
  store ptr %call, ptr @rootdir, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @em_pd_get(ptr noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %em_pd = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_pd, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @em_cpu_get(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cpu_device(i32 noundef %cpu) #11
  %tobool.not = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %em_pd.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %em_pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_pd.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %1, %if.end.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em_dev_register_perf_domain(ptr noundef %dev, i32 noundef %nr_states, ptr noundef readonly %cb, ptr noundef %cpus, i1 noundef zeroext %milliwatts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_states)
  %tobool1.not = icmp eq i32 %nr_states, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %cb, null
  %or.cond64 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond64, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @em_pd_mutex, i32 noundef 0) #11
  %em_pd = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_pd, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end6, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end6:                                          ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %3, @cpu_subsys
  br i1 %cmp.i, label %if.then7, label %if.end6.if.else.i_crit_edge

if.end6.if.else.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then7:                                         ; preds = %if.end6
  %tobool8.not = icmp eq ptr %cpus, null
  br i1 %tobool8.not, label %do.end, label %if.then7.for.cond_crit_edge

if.then7.for.cond_crit_edge:                      ; preds = %if.then7
  br label %for.cond

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str) #14
  br label %unlock

for.cond:                                         ; preds = %if.end18.for.cond_crit_edge, %if.then7.for.cond_crit_edge
  %prev_cap.0 = phi i32 [ %11, %if.end18.for.cond_crit_edge ], [ 0, %if.then7.for.cond_crit_edge ]
  %cpu.0 = phi i32 [ %call11, %if.end18.for.cond_crit_edge ], [ -1, %if.then7.for.cond_crit_edge ]
  %call11 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull %cpus) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %4)
  %cmp = icmp ult i32 %call11, %4
  br i1 %cmp, label %for.body, label %if.end27

for.body:                                         ; preds = %for.cond
  %call.i = tail call ptr @get_cpu_device(i32 noundef %call11) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  %cmp.i.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i.i
  br i1 %or.cond.i, label %for.body.if.end18_crit_edge, label %em_cpu_get.exit

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

em_cpu_get.exit:                                  ; preds = %for.body
  %em_pd.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %em_pd.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %em_pd.i.i, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %em_cpu_get.exit.if.end18_crit_edge, label %do.end17

em_cpu_get.exit.if.end18_crit_edge:               ; preds = %em_cpu_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end17:                                         ; preds = %em_cpu_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.6, i32 noundef %call11) #14
  br label %unlock

if.end18:                                         ; preds = %em_cpu_get.exit.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @cpu_scale to i32)
  %9 = inttoptr i32 %add.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_cap.0)
  %tobool20.not = icmp eq i32 %prev_cap.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_cap.0, i32 %11)
  %cmp21.not = icmp eq i32 %prev_cap.0, %11
  %or.cond65 = select i1 %tobool20.not, i1 true, i1 %cmp21.not
  br i1 %or.cond65, label %if.end18.for.cond_crit_edge, label %do.end25

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.9, i32 noundef %12, ptr noundef nonnull %cpus) #14
  br label %unlock

if.end27:                                         ; preds = %for.cond
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %bus.i, align 8
  %cmp.i.i = icmp eq ptr %.pr, @cpu_subsys
  br i1 %cmp.i.i, label %if.end8.i.i.i, label %if.end27.if.else.i_crit_edge

if.end27.if.else.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end8.i.i.i:                                    ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %14, 31
  %15 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %15, 536870908
  %add.i66 = add nuw nsw i32 %mul.i.i, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i66, i32 noundef 3520) #16
  %tobool.not.i68 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i68, label %if.end8.i.i.i.unlock_crit_edge, label %if.end.i

if.end8.i.i.i.unlock_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.i:                                         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cpus4.i = getelementptr inbounds %struct.em_perf_domain, ptr %call9.i.i.i, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %16, 31
  %17 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %17, 536870908
  %18 = call ptr @memcpy(ptr %cpus4.i, ptr %cpus, i32 %mul.i.i.i)
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end27.if.else.i_crit_edge, %if.end6.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i40.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 12) #17
  %tobool6.not.i = icmp eq ptr %call7.i.i40.i, null
  br i1 %tobool6.not.i, label %if.else.i.unlock_crit_edge, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.else.i.unlock_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %if.end.i
  %pd.0.i = phi ptr [ %call9.i.i.i, %if.end.i ], [ %call7.i.i40.i, %if.else.i.if.end9.i_crit_edge ]
  %call10.i = tail call fastcc i32 @em_create_perf_table(ptr noundef %dev, ptr noundef nonnull %pd.0.i, i32 noundef %nr_states, ptr noundef %cb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %pd.0.i) #11
  br label %unlock

if.end13.i:                                       ; preds = %if.end9.i
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %cmp.i44.i = icmp eq ptr %21, @cpu_subsys
  br i1 %cmp.i44.i, label %for.cond.preheader.i, label %if.end13.i.if.end31_crit_edge

if.end13.i.if.end31_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.cond.preheader.i:                             ; preds = %if.end13.i
  %call1645.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpus) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1645.i, i32 %22)
  %cmp46.i = icmp ult i32 %call1645.i, %22
  br i1 %cmp46.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end31_crit_edge

for.cond.preheader.i.if.end31_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call1647.i = phi i32 [ %call16.i, %for.body.i.for.body.i_crit_edge ], [ %call1645.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call17.i = tail call ptr @get_cpu_device(i32 noundef %call1647.i) #11
  %em_pd.i = getelementptr inbounds %struct.device, ptr %call17.i, i32 0, i32 14
  %23 = ptrtoint ptr %em_pd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pd.0.i, ptr %em_pd.i, align 4
  %call16.i = tail call i32 @cpumask_next(i32 noundef %call1647.i, ptr noundef %cpus) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i69 = icmp ult i32 %call16.i, %24
  br i1 %cmp.i69, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end31_crit_edge

for.body.i.if.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end31:                                         ; preds = %for.body.i.if.end31_crit_edge, %for.cond.preheader.i.if.end31_crit_edge, %if.end13.i.if.end31_crit_edge
  %25 = ptrtoint ptr %em_pd to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pd.0.i, ptr %em_pd, align 4
  br i1 %milliwatts, label %if.then33, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %em_pd, align 4
  %flags = getelementptr inbounds %struct.em_perf_domain, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or = or i32 %29, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  tail call fastcc void @em_cpufreq_update_efficiencies(ptr noundef nonnull %dev)
  tail call fastcc void @em_debug_create_pd(ptr noundef nonnull %dev)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev, ptr noundef nonnull @.str.12) #14
  br label %unlock

unlock:                                           ; preds = %if.end35, %if.then12.i, %if.else.i.unlock_crit_edge, %if.end8.i.i.i.unlock_crit_edge, %do.end25, %do.end17, %do.end, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ -17, %do.end17 ], [ -22, %do.end25 ], [ 0, %if.end35 ], [ -22, %do.end ], [ -17, %if.end.unlock_crit_edge ], [ -12, %if.else.i.unlock_crit_edge ], [ -12, %if.end8.i.i.i.unlock_crit_edge ], [ %call10.i, %if.then12.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @em_pd_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em_cpufreq_update_efficiencies(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %em_pd = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_pd, align 4
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp ne ptr %3, @cpu_subsys
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpus = getelementptr inbounds %struct.em_perf_domain, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %cpus, i32 noundef %4) #11
  %call2 = tail call ptr @cpufreq_cpu_get(i32 noundef %call.i) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_perf_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41 = icmp sgt i32 %8, 0
  br i1 %cmp41, label %for.body.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %freq_table_sorted.i = getelementptr inbounds %struct.cpufreq_policy, ptr %call2, i32 0, i32 21
  %freq_table.i = getelementptr inbounds %struct.cpufreq_policy, ptr %call2, i32 0, i32 20
  %efficiencies_available.i = getelementptr inbounds %struct.cpufreq_policy, ptr %call2, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc.for.body_crit_edge ]
  %found.042 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.em_perf_state, ptr %6, i32 %i.043, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.em_perf_state, ptr %6, i32 %i.043
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i36 = icmp eq i32 %14, 0
  br i1 %cmp.i36, label %if.end9.for.inc_crit_edge, label %if.end.i

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %freq_table.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end.i
  %pos.0.i = phi ptr [ %16, %if.end.i ], [ %incdec.ptr.i, %for.inc.i ]
  %frequency1.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %frequency1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frequency1.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.else.i [
    i32 -2, label %for.cond.i.for.inc_crit_edge
    i32 -1, label %for.cond.i.for.inc.i_crit_edge
  ]

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp7.i = icmp eq i32 %18, %12
  br i1 %cmp7.i, label %20, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 1
  br label %for.cond.i

20:                                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.0.i, align 4
  %or.i = or i32 %22, 2
  store i32 %or.i, ptr %pos.0.i, align 4
  %23 = ptrtoint ptr %efficiencies_available.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %efficiencies_available.i, align 1
  %inc = add i32 %found.042, 1
  br label %for.inc

for.inc:                                          ; preds = %20, %for.cond.i.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1 = phi i32 [ %found.042, %for.body.for.inc_crit_edge ], [ %inc, %20 ], [ %found.042, %if.end9.for.inc_crit_edge ], [ %found.042, %for.cond.i.for.inc_crit_edge ]
  %inc15 = add nuw nsw i32 %i.043, 1
  %24 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_perf_states, align 4
  %cmp = icmp slt i32 %inc15, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool16.not = icmp eq i32 %found.1, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.end18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags19 = getelementptr inbounds %struct.em_perf_domain, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags19, align 4
  %or = or i32 %27, 2
  store i32 %or, ptr %flags19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em_debug_create_pd(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %name.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %4 = load ptr, ptr @rootdir, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %4) #11
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %6, @cpu_subsys
  br i1 %cmp.i, label %if.then, label %dev_name.exit.if.end_crit_edge

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %em_pd = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %em_pd, align 4
  %cpus = getelementptr inbounds %struct.em_perf_domain, ptr %8, i32 0, i32 3
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %cpus, ptr noundef nonnull @em_debug_cpus_fops) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  %em_pd4 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %em_pd4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %em_pd4, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %10, ptr noundef nonnull @em_debug_units_fops) #11
  %11 = ptrtoint ptr %em_pd4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %em_pd4, align 4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %12, ptr noundef nonnull @em_debug_skip_inefficiencies_fops) #11
  %13 = ptrtoint ptr %em_pd4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %em_pd4, align 4
  %nr_perf_states21 = getelementptr inbounds %struct.em_perf_domain, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %nr_perf_states21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_perf_states21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp sgt i32 %16, 0
  br i1 %cmp22, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %17 = phi ptr [ %24, %for.body.for.body_crit_edge ], [ %14, %if.end.for.body_crit_edge ]
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %arrayidx = getelementptr %struct.em_perf_state, ptr %19, i32 %i.023
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name.i) #11
  %20 = call ptr @memset(ptr %name.i, i32 255, i32 24)
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 24, ptr noundef nonnull @.str.38, i32 noundef %22) #11
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %call1) #11
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.39, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %arrayidx) #11
  %power.i = getelementptr %struct.em_perf_state, ptr %19, i32 %i.023, i32 1
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.40, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %power.i) #11
  %cost.i = getelementptr %struct.em_perf_state, ptr %19, i32 %i.023, i32 2
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %cost.i) #11
  %flags.i = getelementptr %struct.em_perf_state, ptr %19, i32 %i.023, i32 3
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.42, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %flags.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name.i) #11
  %inc = add nuw nsw i32 %i.023, 1
  %23 = ptrtoint ptr %em_pd4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %em_pd4, align 4
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_perf_states, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @em_dev_unregister_perf_domain(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %em_pd = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_pd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %cmp.i13 = icmp eq ptr %3, @cpu_subsys
  br i1 %cmp.i13, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @em_pd_mutex, i32 noundef 0) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.em_debug_remove_pd.exit_crit_edge

if.end3.em_debug_remove_pd.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %em_debug_remove_pd.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %em_debug_remove_pd.exit

em_debug_remove_pd.exit:                          ; preds = %if.end.i.i, %if.end3.em_debug_remove_pd.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end3.em_debug_remove_pd.exit_crit_edge ]
  %8 = load ptr, ptr @rootdir, align 4
  %call1.i = tail call ptr @debugfs_lookup(ptr noundef %retval.0.i.i, ptr noundef %8) #11
  tail call void @debugfs_remove(ptr noundef %call1.i) #11
  %9 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %em_pd, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %em_pd, align 4
  tail call void @kfree(ptr noundef %14) #11
  %15 = ptrtoint ptr %em_pd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %em_pd, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @em_pd_mutex) #11
  br label %return

return:                                           ; preds = %em_debug_remove_pd.exit, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em_create_perf_table(ptr noundef %dev, ptr nocapture noundef writeonly %pd, i32 noundef %nr_states, ptr nocapture noundef readonly %cb) unnamed_addr #2 align 64 {
entry:
  %power = alloca i32, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power) #11
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %power, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #11
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_states, i32 16) #11
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !103

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_states)
  %cmp111.not = icmp eq i32 %nr_states, 0
  br i1 %cmp111.not, label %for.cond.preheader.for.end59_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end59_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %prev_freq.0113 = phi i32 [ %8, %if.end17.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0112 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 4
  %call1 = call i32 %6(ptr noundef nonnull %power, ptr noundef nonnull %freq, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call1) #14
  br label %free_ps_table

if.end4:                                          ; preds = %for.body
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %prev_freq.0113)
  %cmp5.not = icmp ugt i32 %8, %prev_freq.0113
  br i1 %cmp5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %8) #14
  br label %free_ps_table

if.end10:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power, align 4
  %11 = add i32 %10, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %11)
  %12 = icmp ult i32 %11, -65535
  br i1 %12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %10) #14
  br label %free_ps_table

if.end17:                                         ; preds = %if.end10
  %arrayidx = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.0112
  %power18 = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.0112, i32 1
  %13 = ptrtoint ptr %power18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %power18, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %arrayidx, align 16
  %inc = add nuw nsw i32 %i.0112, 1
  %inc20 = add i32 %8, 1
  %15 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc20, ptr %freq, align 4
  %exitcond.not = icmp eq i32 %inc, %nr_states
  br i1 %exitcond.not, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end17
  %sub = add nsw i32 %nr_states, -1
  %arrayidx21 = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %sub
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 16
  %conv = zext i32 %17 to i64
  br i1 %cmp111.not, label %for.end.for.end59_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.body27:                                       ; preds = %if.end57.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %prev_cost.0117 = phi i32 [ %prev_cost.1, %if.end57.for.body27_crit_edge ], [ -1, %for.end.for.body27_crit_edge ]
  %i.1115 = phi i32 [ %dec, %if.end57.for.body27_crit_edge ], [ %sub, %for.end.for.body27_crit_edge ]
  %arrayidx28 = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.1115
  %power29 = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.1115, i32 1
  %18 = ptrtoint ptr %power29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power29, align 4
  %conv30 = zext i32 %19 to i64
  %mul = mul nuw i64 %conv30, %conv
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx28, align 16
  %conv33 = zext i32 %21 to i64
  %call34 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %conv33) #11
  %conv35 = trunc i64 %call34 to i32
  %cost = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.1115, i32 2
  %22 = ptrtoint ptr %cost to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv35, ptr %cost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_cost.0117, i32 %conv35)
  %cmp39.not = icmp ugt i32 %prev_cost.0117, %conv35
  br i1 %cmp39.not, label %for.body27.if.end57_crit_edge, label %if.then41

for.body27.if.end57_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then41:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr %struct.em_perf_state, ptr %call8.i.i, i32 %i.1115, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @em_create_perf_table.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@em_create_perf_table, %if.end57)) #11
          to label %if.then49 [label %if.end57], !srcloc !104

if.then49:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @em_create_perf_table.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %25) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.then41, %for.body27.if.end57_crit_edge
  %prev_cost.1 = phi i32 [ %prev_cost.0117, %if.then49 ], [ %conv35, %for.body27.if.end57_crit_edge ], [ %prev_cost.0117, %if.then41 ]
  %dec = add nsw i32 %i.1115, -1
  %cmp25 = icmp sgt i32 %i.1115, 0
  br i1 %cmp25, label %if.end57.for.body27_crit_edge, label %if.end57.for.end59_crit_edge

if.end57.for.end59_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

if.end57.for.body27_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27

for.end59:                                        ; preds = %if.end57.for.end59_crit_edge, %for.end.for.end59_crit_edge, %for.cond.preheader.for.end59_crit_edge
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i, ptr %pd, align 4
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %pd, i32 0, i32 1
  %27 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nr_states, ptr %nr_perf_states, align 4
  br label %cleanup

free_ps_table:                                    ; preds = %do.end16, %do.end9, %do.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_ps_table, %for.end59, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %free_ps_table ], [ 0, %for.end59 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_cpus_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @em_debug_cpus_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_cpus_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %0, ptr noundef %2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_units_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @em_debug_units_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_units_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.em_perf_domain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_skip_inefficiencies_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @em_debug_skip_inefficiencies_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_debug_skip_inefficiencies_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.em_perf_domain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = lshr i32 %3, 1
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %and.lobit) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_energy_model__235_117_em_debug_init5, !1, !"__initcall__kmod_energy_model__235_117_em_debug_init5", i1 false, i1 false}
!1 = !{!"../kernel/power/energy_model.c", i32 117, i32 1}
!2 = !{ptr @__ksymtab_em_pd_get, !3, !"__ksymtab_em_pd_get", i1 false, i1 false}
!3 = !{!"../kernel/power/energy_model.c", i32 286, i32 1}
!4 = !{ptr @__ksymtab_em_cpu_get, !5, !"__ksymtab_em_cpu_get", i1 false, i1 false}
!5 = !{!"../kernel/power/energy_model.c", i32 305, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/power/energy_model.c", i32 353, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @em_dev_register_perf_domain._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @em_dev_register_perf_domain._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/power/energy_model.c", i32 360, i32 5}
!16 = !{ptr @em_dev_register_perf_domain._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @em_dev_register_perf_domain._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/power/energy_model.c", i32 371, i32 5}
!20 = !{ptr @em_dev_register_perf_domain._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @em_dev_register_perf_domain._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/power/energy_model.c", i32 391, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @em_dev_register_perf_domain._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @em_dev_register_perf_domain._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_em_dev_register_perf_domain, !28, !"__ksymtab_em_dev_register_perf_domain", i1 false, i1 false}
!28 = !{!"../kernel/power/energy_model.c", i32 397, i32 1}
!29 = !{ptr @__ksymtab_em_dev_unregister_perf_domain, !30, !"__ksymtab_em_dev_unregister_perf_domain", i1 false, i1 false}
!30 = !{!"../kernel/power/energy_model.c", i32 426, i32 1}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/power/energy_model.c", i32 113, i32 31}
!33 = !{ptr @rootdir, !34, !"rootdir", i1 false, i1 false}
!34 = !{!"../kernel/power/energy_model.c", i32 32, i32 23}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/power/energy_model.c", i32 24, i32 8}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @em_pd_mutex, !36, !"em_pd_mutex", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/power/energy_model.c", i32 144, i32 4}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @em_create_perf_table._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @em_create_perf_table._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/power/energy_model.c", i32 154, i32 4}
!46 = !{ptr @em_create_perf_table._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @em_create_perf_table._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/power/energy_model.c", i32 164, i32 4}
!50 = !{ptr @em_create_perf_table._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @em_create_perf_table._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/power/energy_model.c", i32 182, i32 4}
!54 = !{ptr @em_create_perf_table.__UNIQUE_ID_ddebug236, !53, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/power/energy_model.c", i32 248, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @em_cpufreq_update_efficiencies._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @em_cpufreq_update_efficiencies._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/power/energy_model.c", i32 89, i32 23}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/power/energy_model.c", i32 92, i32 22}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/power/energy_model.c", i32 93, i32 22}
!67 = !{ptr @em_debug_cpus_fops, !68, !"em_debug_cpus_fops", i1 false, i1 false}
!68 = !{!"../kernel/power/energy_model.c", i32 55, i32 1}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/power/energy_model.c", i32 51, i32 16}
!71 = !{ptr @em_debug_units_fops, !72, !"em_debug_units_fops", i1 false, i1 false}
!72 = !{!"../kernel/power/energy_model.c", i32 67, i32 1}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/power/energy_model.c", i32 61, i32 3}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/power/energy_model.c", i32 61, i32 18}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/power/energy_model.c", i32 63, i32 16}
!79 = !{ptr @em_debug_skip_inefficiencies_fops, !80, !"em_debug_skip_inefficiencies_fops", i1 false, i1 false}
!80 = !{!"../kernel/power/energy_model.c", i32 78, i32 1}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/power/energy_model.c", i32 74, i32 16}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/power/energy_model.c", i32 39, i32 31}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/power/energy_model.c", i32 43, i32 23}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/power/energy_model.c", i32 44, i32 23}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/power/energy_model.c", i32 45, i32 23}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/power/energy_model.c", i32 46, i32 23}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2148298254, i64 2148298259, i64 2148298272, i64 2148298316, i64 2148298350, i64 2148298371}
