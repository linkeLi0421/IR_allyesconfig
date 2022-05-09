; ModuleID = '/llk/IR_all_yes/kernel/sched/cpufreq_schedutil.c_pt.bc'
source_filename = "../kernel/sched/cpufreq_schedutil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sugov_cpu = type { %struct.update_util_data, ptr, i32, i8, i32, i64, i32, i32, i32, i32 }
%struct.update_util_data = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.21, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.21 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.22, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.22 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.23, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.23 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.106 }
%union.anon.106 = type { i32 }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sugov_policy = type { ptr, ptr, %struct.list_head, %struct.raw_spinlock, i64, i64, i32, i32, %struct.irq_work, %struct.kthread_work, %struct.mutex, %struct.kthread_worker, ptr, i8, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.sugov_tunables = type { %struct.gov_attr_set, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }

@schedutil_gov = dso_local global { %struct.cpufreq_governor, [36 x i8] } { %struct.cpufreq_governor { [16 x i8] c"schedutil\00\00\00\00\00\00\00", ptr @sugov_init, ptr @sugov_exit, ptr @sugov_start, ptr @sugov_stop, ptr @sugov_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cpufreq_schedutil__532_837_schedutil_gov_init1 = internal global ptr @schedutil_gov_init, section ".initcall1.init", align 4
@rebuild_sd_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @rebuild_sd_work, i64 4), ptr getelementptr (i8, ptr @rebuild_sd_work, i64 4) }, ptr @rebuild_sd_workfn, %struct.lockdep_map { ptr @rebuild_sd_work, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__pcpu_unique_sugov_cpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sugov_cpu = weak dso_local global %struct.sugov_cpu zeroinitializer, section ".data..percpu", align 8
@global_tunables_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @global_tunables_lock, i64 52), ptr getelementptr (i8, ptr @global_tunables_lock, i64 52) }, ptr @global_tunables_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@global_tunables = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kernel/sched/cpufreq_schedutil.c\00", [63 x i8] zeroinitializer }, align 32
@sugov_tunables_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @sugov_tunables_free, ptr @governor_sysfs_ops, ptr null, ptr @sugov_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sugov_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cpufreq_schedutil: initialization failed (error %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sugov_init\00", [21 x i8] zeroinitializer }, align 32
@sugov_init._entry_ptr = internal global ptr @sugov_init._entry, section ".printk_index", align 4
@sugov_policy_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sg_policy->update_lock\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sugov_kthread_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&sg_policy->worker)->lock\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sugov:%d\00", [23 x i8] zeroinitializer }, align 32
@sugov_kthread_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cpufreq_schedutil: failed to create sugov thread: %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sugov_kthread_create\00", [43 x i8] zeroinitializer }, align 32
@sugov_kthread_create._entry_ptr = internal global ptr @sugov_kthread_create._entry, section ".printk_index", align 4
@sugov_kthread_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014cpufreq_schedutil: %s: failed to set SCHED_DEADLINE\0A\00", [41 x i8] zeroinitializer }, align 32
@sugov_kthread_create._entry_ptr.11 = internal global ptr @sugov_kthread_create._entry.9, section ".printk_index", align 4
@sugov_kthread_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sg_policy->work_lock\00", [42 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"global_tunables_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"global_tunables_lock\00", [43 x i8] zeroinitializer }, align 32
@governor_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@sugov_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sugov_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sugov_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sugov_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sugov_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rate_limit_us, ptr null], [24 x i8] zeroinitializer }, align 32
@rate_limit_us = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rate_limit_us_show, ptr @rate_limit_us_store }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rate_limit_us\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@sched_feat_keys = external dso_local global [25 x %struct.static_key], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rebuild_sd_work\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"schedutil_gov\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 819, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"rebuild_sd_work\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"global_tunables_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"global_tunables\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 499, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 681, i32 7 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"sugov_tunables_ktype\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 547, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 704, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 728, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 566, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 600, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 601, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 605, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 612, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 619, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 500, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"sugov_groups\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"sugov_group\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 538, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"sugov_attrs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 534, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"rate_limit_us\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 532, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 532, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 511, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [36 x i8] c"../kernel/sched/cpufreq_schedutil.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 844, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_cpufreq_schedutil__532_837_schedutil_gov_init1, ptr @sugov_init._entry, ptr @sugov_init._entry_ptr, ptr @sugov_kthread_create._entry, ptr @sugov_kthread_create._entry.9, ptr @sugov_kthread_create._entry_ptr, ptr @sugov_kthread_create._entry_ptr.11, ptr @schedutil_gov, ptr @rebuild_sd_work, ptr @global_tunables_lock, ptr @global_tunables, ptr @.str, ptr @sugov_tunables_ktype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sugov_policy_alloc.__key, ptr @.str.4, ptr @sugov_kthread_create.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @sugov_kthread_create.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sugov_groups, ptr @sugov_group, ptr @sugov_attrs, ptr @rate_limit_us, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedutil_gov to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rebuild_sd_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_tunables_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_tunables to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_tunables_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_policy_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_kthread_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_kthread_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_kthread_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_kthread_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sugov_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_limit_us to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sugov_init(ptr noundef %policy) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %attr.i = alloca %struct.sched_attr, align 8
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cpufreq_enable_fast_switch(ptr noundef %policy) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 296) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %disable_fast_switch, label %if.end3

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %policy, ptr %call7.i.i.i, align 8
  %update_lock.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %update_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @sugov_policy_alloc.__key, i16 noundef signext 2) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %attr.i) #12
  %4 = getelementptr inbounds i8, ptr %attr.i, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 56, ptr %attr.i, align 8
  %7 = getelementptr inbounds %struct.sched_attr, ptr %attr.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sched_attr, ptr %attr.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 268435456, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sched_attr, ptr %attr.i, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1000000, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sched_attr, ptr %attr.i, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 10000000, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sched_attr, ptr %attr.i, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 10000000, ptr %15, align 8
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i.i, align 8
  %fast_switch_enabled.i = getelementptr inbounds %struct.cpufreq_policy, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %fast_switch_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fast_switch_enabled.i, align 1, !range !67
  %tobool.not.i86 = icmp eq i8 %20, 0
  br i1 %tobool.not.i86, label %do.body.i, label %sugov_kthread_create.exit.thread

do.body.i:                                        ; preds = %if.end3
  %work.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 9
  %21 = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 12)
  %23 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %work.i, ptr %work.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %work.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sugov_work, ptr %21, align 8
  %worker.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 11
  tail call void @__kthread_init_worker(ptr noundef %worker.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @sugov_kthread_create.__key) #12
  %related_cpus.i = getelementptr inbounds %struct.cpufreq_policy, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %related_cpus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %related_cpus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %27, i32 noundef %28) #12
  %call8.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef %worker.i, i32 noundef -1, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #12
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sugov_kthread_create.exit, label %if.end17.i

if.end17.i:                                       ; preds = %do.body.i
  %call18.i = call i32 @sched_setattr_nocheck(ptr noundef %call8.i, ptr noundef nonnull %attr.i) #12
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end27.i, label %sugov_kthread_create.exit.thread93

sugov_kthread_create.exit.thread93:               ; preds = %if.end17.i
  %call21.i = call i32 @kthread_stop(ptr noundef %call8.i) #12
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attr.i) #12
  br label %free_sg_policy

if.end27.i:                                       ; preds = %if.end17.i
  %thread28.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %thread28.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i, ptr %thread28.i, align 8
  %30 = ptrtoint ptr %related_cpus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %related_cpus.i, align 4
  call void @kthread_bind_mask(ptr noundef %call8.i, ptr noundef %31) #12
  %irq_work.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %irq_work.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %irq_work.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sugov_irq_work, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %work_lock.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %work_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @sugov_kthread_create.__key.12) #12
  %call33.i = call i32 @wake_up_process(ptr noundef %call8.i) #12
  br label %sugov_kthread_create.exit.thread

sugov_kthread_create.exit.thread:                 ; preds = %if.end27.i, %if.end3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attr.i) #12
  call void @mutex_lock_nested(ptr noundef nonnull @global_tunables_lock, i32 noundef 0) #12
  %36 = load ptr, ptr @global_tunables, align 4
  %tobool8.not = icmp eq ptr %36, null
  br i1 %tobool8.not, label %if.end37, label %if.then9

sugov_kthread_create.exit:                        ; preds = %do.body.i
  %37 = ptrtoint ptr %call8.i to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %37) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attr.i) #12
  br label %free_sg_policy

if.then9:                                         ; preds = %sugov_kthread_create.exit.thread
  %call10 = call zeroext i1 @have_governor_per_policy() #12
  br i1 %call10, label %do.end, label %if.end34, !prof !68

do.end:                                           ; preds = %if.then9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #12
  br label %stop_kthread

if.end34:                                         ; preds = %if.then9
  %38 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %governor_data, align 4
  %39 = load ptr, ptr @global_tunables, align 4
  %tunables36 = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %tunables36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %tunables36, align 4
  %tunables_hook = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 2
  call void @gov_attr_set_get(ptr noundef %39, ptr noundef %tunables_hook) #12
  br label %out

if.end37:                                         ; preds = %sugov_kthread_create.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i87 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 244) #14
  %tobool.not.i88 = icmp eq ptr %call7.i.i.i87, null
  br i1 %tobool.not.i88, label %stop_kthread, label %if.then.i

if.then.i:                                        ; preds = %if.end37
  %tunables_hook.i = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 2
  call void @gov_attr_set_init(ptr noundef nonnull %call7.i.i.i87, ptr noundef %tunables_hook.i) #12
  %call1.i = call zeroext i1 @have_governor_per_policy() #12
  br i1 %call1.i, label %if.end41, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  store ptr %call7.i.i.i87, ptr @global_tunables, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then2.i, %if.then.i
  %call42 = call i32 @cpufreq_policy_transition_delay_us(ptr noundef %policy) #12
  %rate_limit_us = getelementptr inbounds %struct.sugov_tunables, ptr %call7.i.i.i87, i32 0, i32 1
  %42 = ptrtoint ptr %rate_limit_us to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call42, ptr %rate_limit_us, align 8
  %43 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %governor_data, align 4
  %tunables44 = getelementptr inbounds %struct.sugov_policy, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %tunables44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i87, ptr %tunables44, align 4
  %call46 = call ptr @get_governor_parent_kobj(ptr noundef %policy) #12
  %call47 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i87, ptr noundef nonnull @sugov_tunables_ktype, ptr noundef %call46, ptr noundef nonnull @.str.1, ptr noundef nonnull @schedutil_gov) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %out, label %fail

out:                                              ; preds = %if.end41, %if.end34
  call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  br label %cleanup

fail:                                             ; preds = %if.end41
  call void @kobject_put(ptr noundef nonnull %call7.i.i.i87) #12
  %45 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %governor_data, align 4
  %call.i = call zeroext i1 @have_governor_per_policy() #12
  br i1 %call.i, label %stop_kthread, label %if.then.i89

if.then.i89:                                      ; preds = %fail
  store ptr null, ptr @global_tunables, align 4
  br label %stop_kthread

stop_kthread:                                     ; preds = %if.then.i89, %fail, %if.end37, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -12, %if.end37 ], [ %call47, %fail ], [ %call47, %if.then.i89 ]
  call fastcc void @sugov_kthread_stop(ptr noundef nonnull %call7.i.i.i)
  call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  br label %free_sg_policy

free_sg_policy:                                   ; preds = %stop_kthread, %sugov_kthread_create.exit, %sugov_kthread_create.exit.thread93
  %ret.1 = phi i32 [ %37, %sugov_kthread_create.exit ], [ %ret.0, %stop_kthread ], [ %call18.i, %sugov_kthread_create.exit.thread93 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %disable_fast_switch

disable_fast_switch:                              ; preds = %free_sg_policy, %if.end
  %ret.2 = phi i32 [ %ret.1, %free_sg_policy ], [ -12, %if.end ]
  call void @cpufreq_disable_fast_switch(ptr noundef %policy) #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %ret.2) #15
  br label %cleanup

cleanup:                                          ; preds = %disable_fast_switch, %out, %entry
  %retval.0 = phi i32 [ %ret.2, %disable_fast_switch ], [ 0, %out ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_exit(ptr noundef %policy) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %tunables1 = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tunables1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunables1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @global_tunables_lock, i32 noundef 0) #12
  %tunables_hook = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 2
  %call = tail call i32 @gov_attr_set_put(ptr noundef %3, ptr noundef %tunables_hook) #12
  %4 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %governor_data, align 4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @have_governor_per_policy() #12
  br i1 %call.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %if.then
  store ptr null, ptr @global_tunables, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry
  tail call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %fast_switch_enabled.i = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %fast_switch_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fast_switch_enabled.i, align 1, !range !67
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %sugov_kthread_stop.exit

if.end.i:                                         ; preds = %if.end
  %worker.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 11
  tail call void @kthread_flush_worker(ptr noundef %worker.i) #12
  %thread.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread.i, align 8
  %call.i8 = tail call i32 @kthread_stop(ptr noundef %10) #12
  %work_lock.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %work_lock.i) #12
  br label %sugov_kthread_stop.exit

sugov_kthread_stop.exit:                          ; preds = %if.end.i, %if.end
  tail call void @kfree(ptr noundef %1) #12
  tail call void @cpufreq_disable_fast_switch(ptr noundef %policy) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sugov_start(ptr nocapture noundef readonly %policy) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %tunables = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tunables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunables, align 4
  %rate_limit_us = getelementptr inbounds %struct.sugov_tunables, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rate_limit_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate_limit_us, align 4
  %mul = mul i32 %5, 1000
  %conv = zext i32 %mul to i64
  %freq_update_delay_ns = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %freq_update_delay_ns to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %freq_update_delay_ns, align 8
  %last_freq_update_time = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %last_freq_update_time to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %last_freq_update_time, align 8
  %next_freq = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %next_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %next_freq, align 8
  %work_in_progress = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %work_in_progress to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %work_in_progress, align 4
  %limits_changed = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %limits_changed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %limits_changed, align 1
  %cached_raw_freq = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %cached_raw_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cached_raw_freq, align 4
  %call = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %need_freq_update = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %frombool = zext i1 %call to i8
  %12 = ptrtoint ptr %need_freq_update to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %need_freq_update, align 2
  %13 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %policy, align 4
  %call152 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %14) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp53 = icmp ult i32 %call152, %15
  br i1 %cmp53, label %for.body, label %if.end.i.i.i

for.body:                                         ; preds = %for.body, %entry
  %call154 = phi i32 [ %call1, %for.body ], [ %call152, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call154
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, ptrtoint (ptr @sugov_cpu to i32)
  %18 = inttoptr i32 %add to ptr
  %19 = call ptr @memset(ptr %18, i32 0, i32 48)
  %cpu4 = getelementptr inbounds %struct.sugov_cpu, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %cpu4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call154, ptr %cpu4, align 8
  %sg_policy5 = getelementptr inbounds %struct.sugov_cpu, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %sg_policy5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %sg_policy5, align 4
  %22 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %policy, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call154, ptr noundef %23) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %24
  br i1 %cmp, label %for.body, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body, %entry
  %.lcssa51 = phi ptr [ %14, %entry ], [ %23, %for.body ]
  %.lcssa = phi i32 [ %15, %entry ], [ %24, %for.body ]
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %.lcssa51, i32 noundef %.lcssa) #12
  %cmp.i = icmp ugt i32 %call4.i.i.i, 1
  br i1 %cmp.i, label %if.end12, label %if.else

if.else:                                          ; preds = %if.end.i.i.i
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 27
  %25 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call8 = tail call zeroext i1 @cpufreq_driver_has_adjust_perf() #12
  br i1 %call8, label %if.end12, label %if.else11

if.else11:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %land.lhs.true, %if.end.i.i.i
  %uu.0 = phi ptr [ @sugov_update_single_freq, %if.else11 ], [ @sugov_update_shared, %if.end.i.i.i ], [ @sugov_update_single_perf, %land.lhs.true ]
  %27 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %policy, align 4
  %call1556 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %28) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp1657 = icmp ult i32 %call1556, %29
  br i1 %cmp1657, label %for.body18, label %for.end29

for.body18:                                       ; preds = %for.body18, %if.end12
  %call1558 = phi i32 [ %call15, %for.body18 ], [ %call1556, %if.end12 ]
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1558
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %31, ptrtoint (ptr @sugov_cpu to i32)
  %32 = inttoptr i32 %add28 to ptr
  tail call void @cpufreq_add_update_util_hook(i32 noundef %call1558, ptr noundef %32, ptr noundef nonnull %uu.0) #12
  %33 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %policy, align 4
  %call15 = tail call i32 @cpumask_next(i32 noundef %call1558, ptr noundef %34) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call15, %35
  br i1 %cmp16, label %for.body18, label %for.end29

for.end29:                                        ; preds = %for.body18, %if.end12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_stop(ptr nocapture noundef readonly %policy) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %2 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %4
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %call9 = phi i32 [ %call, %for.body ], [ %call7, %entry ]
  tail call void @cpufreq_remove_update_util_hook(i32 noundef %call9) #12
  %5 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %policy, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef %6) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @synchronize_rcu() #12
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 27
  %8 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %irq_work = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 8
  tail call void @irq_work_sync(ptr noundef %irq_work) #12
  %work = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_limits(ptr noundef %policy) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 27
  %2 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %work_lock = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %work_lock, i32 noundef 0) #12
  %max.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i, align 4
  %cur.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %6 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur.i, align 4
  %cmp.i = icmp ult i32 %5, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %5, i32 noundef 5) #12
  br label %cpufreq_policy_apply_limits.exit

if.else.i:                                        ; preds = %if.then
  %min.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %8 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min.i, align 4
  %cmp3.i = icmp ugt i32 %9, %7
  br i1 %cmp3.i, label %if.then4.i, label %cpufreq_policy_apply_limits.exit

if.then4.i:                                       ; preds = %if.else.i
  %call6.i = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %9, i32 noundef 4) #12
  br label %cpufreq_policy_apply_limits.exit

cpufreq_policy_apply_limits.exit:                 ; preds = %if.then4.i, %if.else.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef %work_lock) #12
  br label %if.end

if.end:                                           ; preds = %cpufreq_policy_apply_limits.exit, %entry
  %limits_changed = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %limits_changed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %limits_changed, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @cpufreq_default_governor() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @schedutil_gov
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @schedutil_gov_init() #2 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @schedutil_gov) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_cpufreq_governor_change(ptr nocapture noundef readonly %policy, ptr noundef readnone %old_gov) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %old_gov, @schedutil_gov
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %governor = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 13
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %cmp1 = icmp eq ptr %1, @schedutil_gov
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @rebuild_sd_work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_enable_fast_switch(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @have_governor_per_policy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_policy_transition_delay_us(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_governor_parent_kobj(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sugov_kthread_stop(ptr noundef %sg_policy) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sg_policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_policy, align 8
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %worker = getelementptr inbounds %struct.sugov_policy, ptr %sg_policy, i32 0, i32 11
  tail call void @kthread_flush_worker(ptr noundef %worker) #12
  %thread = getelementptr inbounds %struct.sugov_policy, ptr %sg_policy, i32 0, i32 12
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread, align 8
  %call = tail call i32 @kthread_stop(ptr noundef %5) #12
  %work_lock = getelementptr inbounds %struct.sugov_policy, ptr %sg_policy, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %work_lock) #12
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_disable_fast_switch(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_work(ptr noundef %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %update_lock = getelementptr i8, ptr %work, i32 -88
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %update_lock) #12
  %next_freq = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %next_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_freq, align 8
  %work_in_progress = getelementptr i8, ptr %work, i32 188
  %2 = ptrtoint ptr %work_in_progress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %work_in_progress, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %update_lock, i32 noundef %call) #12
  %work_lock = getelementptr i8, ptr %work, i32 20
  tail call void @mutex_lock_nested(ptr noundef %work_lock, i32 noundef 0) #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %call11 = tail call i32 @__cpufreq_driver_target(ptr noundef %4, i32 noundef %1, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %work_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kthread_init_worker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_worker_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setattr_nocheck(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind_mask(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_irq_work(ptr noundef %irq_work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %worker = getelementptr i8, ptr %irq_work, i32 128
  %work = getelementptr i8, ptr %irq_work, i32 16
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %worker, ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_tunables_free(ptr noundef %kobj) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_limit_us_show(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_limit_us = getelementptr inbounds %struct.sugov_tunables, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %rate_limit_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate_limit_us, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_limit_us_store(ptr noundef %attr_set, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_limit_us = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_limit_us) #12
  %0 = ptrtoint ptr %rate_limit_us to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate_limit_us, align 4, !annotation !69
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %rate_limit_us) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %rate_limit_us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rate_limit_us, align 4
  %rate_limit_us2 = getelementptr inbounds %struct.sugov_tunables, ptr %attr_set, i32 0, i32 1
  %3 = ptrtoint ptr %rate_limit_us2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rate_limit_us2, align 4
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1
  %4 = ptrtoint ptr %policy_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn15 = load ptr, ptr %policy_list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %policy_list
  br i1 %cmp.not16, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %mul = mul i32 %2, 1000
  %conv = zext i32 %mul to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %.pn17 = phi ptr [ %.pn15, %for.body.lr.ph ], [ %.pn, %for.body ]
  %freq_update_delay_ns = getelementptr i8, ptr %.pn17, i32 64
  %5 = ptrtoint ptr %freq_update_delay_ns to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %freq_update_delay_ns, align 8
  %6 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %policy_list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %count, %if.end ], [ %count, %for.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_limit_us) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_worker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gov_attr_set_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_update_shared(ptr nocapture noundef %hook, i64 noundef %time, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_policy1 = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 1
  %0 = ptrtoint ptr %sg_policy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_policy1, align 4
  %update_lock = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %update_lock) #12
  %and.i = and i32 %flags, 1
  %tobool.not29.i = icmp eq i32 %and.i, 0
  %iowait_boost.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 4
  %2 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iowait_boost.i, align 8
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %last_update.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 5
  %4 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_update.i.i, align 8
  %sub.i.i = sub i64 %time, %5
  %cmp.i.i = icmp slt i64 %sub.i.i, 10000001
  br i1 %cmp.i.i, label %sugov_iowait_reset.exit.i, label %sugov_iowait_reset.exit.thread.i

sugov_iowait_reset.exit.thread.i:                 ; preds = %land.lhs.true.i
  %6 = trunc i32 %and.i to i8
  %7 = shl nuw nsw i32 %and.i, 7
  %8 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iowait_boost.i, align 8
  %iowait_boost_pending.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 3
  %9 = ptrtoint ptr %iowait_boost_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %iowait_boost_pending.i.i, align 4
  br label %sugov_iowait_boost.exit

sugov_iowait_reset.exit.i:                        ; preds = %land.lhs.true.i
  br i1 %tobool.not29.i, label %sugov_iowait_boost.exit, label %if.end5.i.thread

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not29.i, label %sugov_iowait_boost.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %iowait_boost_pending.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 3
  %10 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iowait_boost_pending.i, align 4, !range !67
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %if.end15.i, label %sugov_iowait_boost.exit

if.end5.i.thread:                                 ; preds = %sugov_iowait_reset.exit.i
  %iowait_boost_pending.i42 = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 3
  %12 = ptrtoint ptr %iowait_boost_pending.i42 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iowait_boost_pending.i42, align 4, !range !67
  %tobool6.not.i43 = icmp eq i8 %13, 0
  br i1 %tobool6.not.i43, label %if.then12.i, label %sugov_iowait_boost.exit

if.then12.i:                                      ; preds = %if.end5.i.thread
  %14 = ptrtoint ptr %iowait_boost_pending.i42 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %iowait_boost_pending.i42, align 4
  %shl.i = shl i32 %3, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 1024) #12
  %16 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %iowait_boost.i, align 8
  br label %sugov_iowait_boost.exit

if.end15.i:                                       ; preds = %if.end5.i
  %17 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %iowait_boost_pending.i, align 4
  %18 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %iowait_boost.i, align 8
  br label %sugov_iowait_boost.exit

sugov_iowait_boost.exit:                          ; preds = %if.end15.i, %if.then12.i, %if.end5.i.thread, %if.end5.i, %if.end.i, %sugov_iowait_reset.exit.i, %sugov_iowait_reset.exit.thread.i
  %last_update = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 5
  %19 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %time, ptr %last_update, align 8
  %cpu.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 2
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, ptrtoint (ptr @runqueues to i32)
  %24 = inttoptr i32 %add.i to ptr
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 16, i32 6
  %25 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %running_bw.i.i, align 8
  %27 = lshr i64 %26, 10
  %conv.i.i = trunc i64 %27 to i32
  %bw_dl.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 7
  %28 = ptrtoint ptr %bw_dl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bw_dl.i, align 4
  %cmp.i = icmp ult i32 %29, %conv.i.i
  br i1 %cmp.i, label %if.then.i, label %ignore_dl_rate_limit.exit

if.then.i:                                        ; preds = %sugov_iowait_boost.exit
  %30 = ptrtoint ptr %sg_policy1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg_policy1, align 4
  %limits_changed.i = getelementptr inbounds %struct.sugov_policy, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %limits_changed.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %limits_changed.i, align 1
  br label %ignore_dl_rate_limit.exit

ignore_dl_rate_limit.exit:                        ; preds = %if.then.i, %sugov_iowait_boost.exit
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call.i = tail call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %34) #12
  br i1 %call.i, label %if.end.i28, label %unlock

if.end.i28:                                       ; preds = %ignore_dl_rate_limit.exit
  %limits_changed.i27 = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %limits_changed.i27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %limits_changed.i27, align 1, !range !67
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %sugov_should_update_freq.exit, label %sugov_should_update_freq.exit.thread, !prof !70

sugov_should_update_freq.exit.thread:             ; preds = %if.end.i28
  %37 = ptrtoint ptr %limits_changed.i27 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %limits_changed.i27, align 1
  %need_freq_update.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %need_freq_update.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %need_freq_update.i, align 2
  br label %if.then

sugov_should_update_freq.exit:                    ; preds = %if.end.i28
  %last_freq_update_time.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %last_freq_update_time.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last_freq_update_time.i, align 8
  %sub.i = sub i64 %time, %40
  %freq_update_delay_ns.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %freq_update_delay_ns.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %freq_update_delay_ns.i, align 8
  %cmp.i29.not = icmp slt i64 %sub.i, %42
  br i1 %cmp.i29.not, label %unlock, label %if.then

if.then:                                          ; preds = %sugov_should_update_freq.exit, %sugov_should_update_freq.exit.thread
  %call2 = tail call fastcc i32 @sugov_next_freq_shared(ptr noundef %hook, i64 noundef %time)
  %need_freq_update.i31 = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %43 = ptrtoint ptr %need_freq_update.i31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %need_freq_update.i31, align 2, !range !67
  %tobool.not.i32 = icmp eq i8 %44, 0
  br i1 %tobool.not.i32, label %if.else.i, label %if.then.i34

if.then.i34:                                      ; preds = %if.then
  %call.i33 = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %frombool.i = zext i1 %call.i33 to i8
  %45 = ptrtoint ptr %need_freq_update.i31 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %need_freq_update.i31, align 2
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %next_freq2.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %next_freq2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %next_freq2.i, align 8
  %cmp.i35 = icmp eq i32 %47, %call2
  br i1 %cmp.i35, label %unlock, label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i34
  %next_freq5.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %next_freq5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call2, ptr %next_freq5.i, align 8
  %last_freq_update_time.i36 = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %last_freq_update_time.i36 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %time, ptr %last_freq_update_time.i36, align 8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %53, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @cpufreq_driver_fast_switch(ptr noundef %51, i32 noundef %call2) #12
  br label %unlock

if.else:                                          ; preds = %if.end
  %work_in_progress.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %work_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %work_in_progress.i, align 4, !range !67
  %tobool.not.i38 = icmp eq i8 %55, 0
  br i1 %tobool.not.i38, label %if.then.i40, label %unlock

if.then.i40:                                      ; preds = %if.else
  %56 = ptrtoint ptr %work_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %work_in_progress.i, align 4
  %irq_work.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 8
  %call.i39 = tail call zeroext i1 @irq_work_queue(ptr noundef %irq_work.i) #12
  br label %unlock

unlock:                                           ; preds = %if.then.i40, %if.else, %if.then5, %if.else.i, %sugov_should_update_freq.exit, %ignore_dl_rate_limit.exit
  tail call void @_raw_spin_unlock(ptr noundef %update_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_driver_has_adjust_perf() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_update_single_perf(ptr nocapture noundef %hook, i64 noundef %time, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sugov_update_single_freq(ptr noundef %hook, i64 noundef %time, i32 noundef %flags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sugov_update_single_freq(ptr nocapture noundef %hook, i64 noundef %time, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_policy1 = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 1
  %0 = ptrtoint ptr %sg_policy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_policy1, align 4
  %cached_raw_freq = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cached_raw_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cached_raw_freq, align 4
  %call = tail call fastcc zeroext i1 @sugov_update_single_common(ptr noundef %hook, i64 noundef %time, i32 noundef %flags)
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %util = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 6
  %4 = ptrtoint ptr %util to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %util, align 8
  %max = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 8
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %cur.i = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur.i, align 4
  %shr.i.i = lshr i32 %5, 2
  %add.i.i = add i32 %shr.i.i, %5
  %mul.i.i = mul i32 %11, %add.i.i
  %div.i.i = udiv i32 %mul.i.i, %7
  %12 = ptrtoint ptr %cached_raw_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_raw_freq, align 4
  %cmp.i = icmp eq i32 %div.i.i, %13
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %need_freq_update.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %need_freq_update.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %need_freq_update.i, align 2, !range !67
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %next_freq.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %next_freq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_freq.i, align 8
  br label %get_next_freq.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end
  %18 = ptrtoint ptr %cached_raw_freq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i.i, ptr %cached_raw_freq, align 4
  %call4.i = tail call i32 @cpufreq_driver_resolve_freq(ptr noundef %9, i32 noundef %div.i.i) #12
  br label %get_next_freq.exit

get_next_freq.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %17, %if.then.i ]
  %cpu.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 2
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 8
  %call.i = tail call i32 @tick_nohz_get_idle_calls_cpu(i32 noundef %20) #12
  %saved_idle_calls.i = getelementptr inbounds %struct.sugov_cpu, ptr %hook, i32 0, i32 9
  %21 = ptrtoint ptr %saved_idle_calls.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved_idle_calls.i, align 4
  %cmp.i36 = icmp eq i32 %call.i, %22
  store i32 %call.i, ptr %saved_idle_calls.i, align 4
  br i1 %cmp.i36, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %get_next_freq.exit
  %next_freq = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %next_freq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_freq, align 8
  %cmp = icmp ult i32 %retval.0.i, %24
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %25 = ptrtoint ptr %cached_raw_freq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %3, ptr %cached_raw_freq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %get_next_freq.exit
  %next_f.0 = phi i32 [ %24, %if.then4 ], [ %retval.0.i, %land.lhs.true ], [ %retval.0.i, %get_next_freq.exit ]
  %need_freq_update.i37 = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %need_freq_update.i37 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %need_freq_update.i37, align 2, !range !67
  %tobool.not.i38 = icmp eq i8 %27, 0
  br i1 %tobool.not.i38, label %if.else.i, label %if.then.i40

if.then.i40:                                      ; preds = %if.end7
  %call.i39 = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %frombool.i = zext i1 %call.i39 to i8
  %28 = ptrtoint ptr %need_freq_update.i37 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.i, ptr %need_freq_update.i37, align 2
  br label %if.end10

if.else.i:                                        ; preds = %if.end7
  %next_freq2.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %next_freq2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_freq2.i, align 8
  %cmp.i41 = icmp eq i32 %30, %next_f.0
  br i1 %cmp.i41, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.else.i, %if.then.i40
  %next_freq5.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %next_freq5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %next_f.0, ptr %next_freq5.i, align 8
  %last_freq_update_time.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %last_freq_update_time.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %time, ptr %last_freq_update_time.i, align 8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %fast_switch_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %fast_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fast_switch_enabled, align 1, !range !67
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end10
  %call13 = tail call i32 @cpufreq_driver_fast_switch(ptr noundef %34, i32 noundef %next_f.0) #12
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %update_lock = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %update_lock) #12
  %work_in_progress.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %work_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %work_in_progress.i, align 4, !range !67
  %tobool.not.i43 = icmp eq i8 %38, 0
  br i1 %tobool.not.i43, label %if.then.i45, label %sugov_deferred_update.exit

if.then.i45:                                      ; preds = %if.else
  %39 = ptrtoint ptr %work_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %work_in_progress.i, align 4
  %irq_work.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 8
  %call.i44 = tail call zeroext i1 @irq_work_queue(ptr noundef %irq_work.i) #12
  br label %sugov_deferred_update.exit

sugov_deferred_update.exit:                       ; preds = %if.then.i45, %if.else
  tail call void @_raw_spin_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %sugov_deferred_update.exit, %if.then11, %if.else.i, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_add_update_util_hook(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sugov_next_freq_shared(ptr nocapture noundef readonly %sg_cpu, i64 noundef %time) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_policy1 = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 1
  %0 = ptrtoint ptr %sg_policy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_policy1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %5) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp26 = icmp ult i32 %call25, %6
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %sugov_iowait_apply.exit, %entry
  %call29 = phi i32 [ %call, %sugov_iowait_apply.exit ], [ %call25, %entry ]
  %util.028 = phi i32 [ %spec.select19, %sugov_iowait_apply.exit ], [ 0, %entry ]
  %max.027 = phi i32 [ %spec.select, %sugov_iowait_apply.exit ], [ 1, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call29
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @sugov_cpu to i32)
  %9 = inttoptr i32 %add to ptr
  %cpu.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %add.i to ptr
  %add.i.i = add i32 %13, ptrtoint (ptr @cpu_scale to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %max3.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %max3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max3.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 16, i32 6
  %19 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %running_bw.i.i, align 8
  %21 = lshr i64 %20, 10
  %conv.i.i = trunc i64 %21 to i32
  %bw_dl.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 7
  %22 = ptrtoint ptr %bw_dl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i.i, ptr %bw_dl.i, align 4
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i17.i = add i32 %23, ptrtoint (ptr @runqueues to i32)
  %24 = inttoptr i32 %add.i17.i to ptr
  %util_avg.i.i = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 14, i32 17, i32 7
  %25 = ptrtoint ptr %util_avg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %util_avg.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 20), i32 1), ptr blockaddress(@sugov_next_freq_shared, %sugov_get_util.exit)) #12
          to label %if.then.i.i [label %sugov_get_util.exit], !srcloc !71

if.then.i.i:                                      ; preds = %for.body
  %util_est.i.i = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 14, i32 17, i32 9
  %27 = ptrtoint ptr %util_est.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %util_est.i.i, align 16
  %29 = tail call i32 @llvm.umax.i32(i32 %26, i32 %28) #12
  br label %sugov_get_util.exit

sugov_get_util.exit:                              ; preds = %if.then.i.i, %for.body
  %util.0.i.i = phi i32 [ %29, %if.then.i.i ], [ %26, %for.body ]
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i.i.i = add i32 %31, ptrtoint (ptr @runqueues to i32)
  %32 = inttoptr i32 %add.i.i.i to ptr
  %cpu_capacity_orig.i.i.i = getelementptr inbounds %struct.rq, ptr %32, i32 0, i32 38
  %33 = ptrtoint ptr %cpu_capacity_orig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu_capacity_orig.i.i.i, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %util.0.i.i, i32 %34) #12
  %call8.i = tail call i32 @effective_cpu_util(i32 noundef %11, i32 noundef %35, i32 noundef %17, i32 noundef 0, ptr noundef null) #12
  %util.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %util.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call8.i, ptr %util.i, align 8
  %iowait_boost.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 4
  %37 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iowait_boost.i, align 8
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %sugov_iowait_apply.exit, label %if.end.i

if.end.i:                                         ; preds = %sugov_get_util.exit
  %last_update.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 5
  %39 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last_update.i.i, align 8
  %sub.i.i = sub i64 %time, %40
  %cmp.i.i = icmp slt i64 %sub.i.i, 10000001
  br i1 %cmp.i.i, label %if.end2.i, label %sugov_iowait_reset.exit.thread.i

sugov_iowait_reset.exit.thread.i:                 ; preds = %if.end.i
  %41 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %iowait_boost.i, align 8
  %iowait_boost_pending.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 3
  %42 = ptrtoint ptr %iowait_boost_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %iowait_boost_pending.i.i, align 4
  br label %sugov_iowait_apply.exit

if.end2.i:                                        ; preds = %if.end.i
  %iowait_boost_pending.i = getelementptr inbounds %struct.sugov_cpu, ptr %9, i32 0, i32 3
  %43 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iowait_boost_pending.i, align 4, !range !67
  %tobool3.not.i = icmp eq i8 %44, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end10.i

if.then4.i:                                       ; preds = %if.end2.i
  %shr.i = lshr i32 %38, 1
  %45 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr.i, ptr %iowait_boost.i, align 8
  %cmp.i = icmp ult i32 %38, 256
  br i1 %cmp.i, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.then4.i
  %46 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %iowait_boost.i, align 8
  br label %sugov_iowait_apply.exit

if.end10.i:                                       ; preds = %if.then4.i, %if.end2.i
  %47 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %iowait_boost_pending.i, align 4
  %48 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iowait_boost.i, align 8
  %50 = ptrtoint ptr %max3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max3.i, align 8
  %mul.i = mul i32 %51, %49
  %shr13.i = lshr i32 %mul.i, 10
  %52 = ptrtoint ptr %util.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %util.i, align 8
  %cmp14.i = icmp ult i32 %53, %shr13.i
  br i1 %cmp14.i, label %if.then15.i, label %sugov_iowait_apply.exit

if.then15.i:                                      ; preds = %if.end10.i
  %54 = ptrtoint ptr %util.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr13.i, ptr %util.i, align 8
  br label %sugov_iowait_apply.exit

sugov_iowait_apply.exit:                          ; preds = %if.then15.i, %if.end10.i, %if.then7.i, %sugov_iowait_reset.exit.thread.i, %sugov_get_util.exit
  %55 = ptrtoint ptr %util.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %util.i, align 8
  %57 = ptrtoint ptr %max3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max3.i, align 8
  %mul = mul i32 %56, %max.027
  %mul6 = mul i32 %58, %util.028
  %cmp7 = icmp ugt i32 %mul, %mul6
  %spec.select = select i1 %cmp7, i32 %58, i32 %max.027
  %spec.select19 = select i1 %cmp7, i32 %56, i32 %util.028
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call29, ptr noundef %60) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %61
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %sugov_iowait_apply.exit, %entry
  %max.0.lcssa = phi i32 [ 1, %entry ], [ %spec.select, %sugov_iowait_apply.exit ]
  %util.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select19, %sugov_iowait_apply.exit ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %cur.i = getelementptr inbounds %struct.cpufreq_policy, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur.i, align 4
  %shr.i.i = lshr i32 %util.0.lcssa, 2
  %add.i.i21 = add i32 %shr.i.i, %util.0.lcssa
  %mul.i.i = mul i32 %65, %add.i.i21
  %div.i.i = udiv i32 %mul.i.i, %max.0.lcssa
  %cached_raw_freq.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %cached_raw_freq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cached_raw_freq.i, align 4
  %cmp.i22 = icmp eq i32 %div.i.i, %67
  br i1 %cmp.i22, label %land.lhs.true.i, label %if.end.i24

land.lhs.true.i:                                  ; preds = %for.end
  %need_freq_update.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 15
  %68 = ptrtoint ptr %need_freq_update.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %need_freq_update.i, align 2, !range !67
  %tobool.not.i23 = icmp eq i8 %69, 0
  br i1 %tobool.not.i23, label %if.then.i, label %if.end.i24

if.then.i:                                        ; preds = %land.lhs.true.i
  %next_freq.i = getelementptr inbounds %struct.sugov_policy, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %next_freq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next_freq.i, align 8
  br label %get_next_freq.exit

if.end.i24:                                       ; preds = %land.lhs.true.i, %for.end
  %72 = ptrtoint ptr %cached_raw_freq.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div.i.i, ptr %cached_raw_freq.i, align 4
  %call4.i = tail call i32 @cpufreq_driver_resolve_freq(ptr noundef %63, i32 noundef %div.i.i) #12
  br label %get_next_freq.exit

get_next_freq.exit:                               ; preds = %if.end.i24, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i24 ], [ %71, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_driver_fast_switch(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @effective_cpu_util(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_driver_resolve_freq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sugov_update_single_common(ptr nocapture noundef %sg_cpu, i64 noundef %time, i32 noundef %flags) unnamed_addr #10 align 64 {
entry:
  %and.i = and i32 %flags, 1
  %tobool.not29.i = icmp eq i32 %and.i, 0
  %iowait_boost.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 4
  %0 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iowait_boost.i, align 8
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %last_update.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 5
  %2 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_update.i.i, align 8
  %sub.i.i = sub i64 %time, %3
  %cmp.i.i = icmp slt i64 %sub.i.i, 10000001
  br i1 %cmp.i.i, label %sugov_iowait_reset.exit.i, label %sugov_iowait_reset.exit.thread.i

sugov_iowait_reset.exit.thread.i:                 ; preds = %land.lhs.true.i
  %4 = trunc i32 %and.i to i8
  %5 = shl nuw nsw i32 %and.i, 7
  %6 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iowait_boost.i, align 8
  %iowait_boost_pending.i.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 3
  %7 = ptrtoint ptr %iowait_boost_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %iowait_boost_pending.i.i, align 4
  br label %sugov_iowait_boost.exit

sugov_iowait_reset.exit.i:                        ; preds = %land.lhs.true.i
  br i1 %tobool.not29.i, label %sugov_iowait_boost.exit, label %if.end5.i.thread

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not29.i, label %sugov_iowait_boost.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %iowait_boost_pending.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 3
  %8 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iowait_boost_pending.i, align 4, !range !67
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %if.end15.i, label %sugov_iowait_boost.exit

if.end5.i.thread:                                 ; preds = %sugov_iowait_reset.exit.i
  %iowait_boost_pending.i31 = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 3
  %10 = ptrtoint ptr %iowait_boost_pending.i31 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iowait_boost_pending.i31, align 4, !range !67
  %tobool6.not.i32 = icmp eq i8 %11, 0
  br i1 %tobool6.not.i32, label %if.then12.i, label %sugov_iowait_boost.exit

if.then12.i:                                      ; preds = %if.end5.i.thread
  %12 = ptrtoint ptr %iowait_boost_pending.i31 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %iowait_boost_pending.i31, align 4
  %shl.i = shl i32 %1, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 1024) #12
  %14 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iowait_boost.i, align 8
  br label %sugov_iowait_boost.exit

if.end15.i:                                       ; preds = %if.end5.i
  %15 = ptrtoint ptr %iowait_boost_pending.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %iowait_boost_pending.i, align 4
  %16 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %iowait_boost.i, align 8
  br label %sugov_iowait_boost.exit

sugov_iowait_boost.exit:                          ; preds = %if.end15.i, %if.then12.i, %if.end5.i.thread, %if.end5.i, %if.end.i, %sugov_iowait_reset.exit.i, %sugov_iowait_reset.exit.thread.i
  %last_update = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 5
  %17 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %time, ptr %last_update, align 8
  %cpu.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 2
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, ptrtoint (ptr @runqueues to i32)
  %22 = inttoptr i32 %add.i to ptr
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 16, i32 6
  %23 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %running_bw.i.i, align 8
  %25 = lshr i64 %24, 10
  %conv.i.i = trunc i64 %25 to i32
  %bw_dl.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 7
  %26 = ptrtoint ptr %bw_dl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bw_dl.i, align 4
  %cmp.i = icmp ult i32 %27, %conv.i.i
  br i1 %cmp.i, label %if.then.i, label %ignore_dl_rate_limit.exit

if.then.i:                                        ; preds = %sugov_iowait_boost.exit
  %sg_policy.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 1
  %28 = ptrtoint ptr %sg_policy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg_policy.i, align 4
  %limits_changed.i = getelementptr inbounds %struct.sugov_policy, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %limits_changed.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %limits_changed.i, align 1
  br label %ignore_dl_rate_limit.exit

ignore_dl_rate_limit.exit:                        ; preds = %if.then.i, %sugov_iowait_boost.exit
  %sg_policy = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 1
  %31 = ptrtoint ptr %sg_policy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg_policy, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call.i = tail call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %34) #12
  br i1 %call.i, label %if.end.i11, label %return

if.end.i11:                                       ; preds = %ignore_dl_rate_limit.exit
  %limits_changed.i10 = getelementptr inbounds %struct.sugov_policy, ptr %32, i32 0, i32 14
  %35 = ptrtoint ptr %limits_changed.i10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %limits_changed.i10, align 1, !range !67
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %sugov_should_update_freq.exit, label %sugov_should_update_freq.exit.thread, !prof !70

sugov_should_update_freq.exit.thread:             ; preds = %if.end.i11
  %37 = ptrtoint ptr %limits_changed.i10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %limits_changed.i10, align 1
  %need_freq_update.i = getelementptr inbounds %struct.sugov_policy, ptr %32, i32 0, i32 15
  %38 = ptrtoint ptr %need_freq_update.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %need_freq_update.i, align 2
  br label %if.end

sugov_should_update_freq.exit:                    ; preds = %if.end.i11
  %last_freq_update_time.i = getelementptr inbounds %struct.sugov_policy, ptr %32, i32 0, i32 4
  %39 = ptrtoint ptr %last_freq_update_time.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last_freq_update_time.i, align 8
  %sub.i = sub i64 %time, %40
  %freq_update_delay_ns.i = getelementptr inbounds %struct.sugov_policy, ptr %32, i32 0, i32 5
  %41 = ptrtoint ptr %freq_update_delay_ns.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %freq_update_delay_ns.i, align 8
  %cmp.i12.not = icmp slt i64 %sub.i, %42
  br i1 %cmp.i12.not, label %return, label %if.end

if.end:                                           ; preds = %sugov_should_update_freq.exit, %sugov_should_update_freq.exit.thread
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 8
  %arrayidx.i15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i15, align 4
  %add.i16 = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %47 = inttoptr i32 %add.i16 to ptr
  %add.i.i = add i32 %46, ptrtoint (ptr @cpu_scale to i32)
  %48 = inttoptr i32 %add.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %max3.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 8
  %51 = ptrtoint ptr %max3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %max3.i, align 8
  %running_bw.i.i17 = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 16, i32 6
  %52 = ptrtoint ptr %running_bw.i.i17 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %running_bw.i.i17, align 8
  %54 = lshr i64 %53, 10
  %conv.i.i18 = trunc i64 %54 to i32
  %55 = ptrtoint ptr %bw_dl.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i.i18, ptr %bw_dl.i, align 4
  %56 = load i32, ptr %arrayidx.i15, align 4
  %add.i17.i = add i32 %56, ptrtoint (ptr @runqueues to i32)
  %57 = inttoptr i32 %add.i17.i to ptr
  %util_avg.i.i = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 14, i32 17, i32 7
  %58 = ptrtoint ptr %util_avg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %util_avg.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 20), i32 1), ptr blockaddress(@sugov_update_single_common, %sugov_get_util.exit)) #12
          to label %if.then.i.i [label %sugov_get_util.exit], !srcloc !71

if.then.i.i:                                      ; preds = %if.end
  %util_est.i.i = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 14, i32 17, i32 9
  %60 = ptrtoint ptr %util_est.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %util_est.i.i, align 16
  %62 = tail call i32 @llvm.umax.i32(i32 %59, i32 %61) #12
  br label %sugov_get_util.exit

sugov_get_util.exit:                              ; preds = %if.then.i.i, %if.end
  %util.0.i.i = phi i32 [ %62, %if.then.i.i ], [ %59, %if.end ]
  %63 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i15, align 4
  %add.i.i.i = add i32 %64, ptrtoint (ptr @runqueues to i32)
  %65 = inttoptr i32 %add.i.i.i to ptr
  %cpu_capacity_orig.i.i.i = getelementptr inbounds %struct.rq, ptr %65, i32 0, i32 38
  %66 = ptrtoint ptr %cpu_capacity_orig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu_capacity_orig.i.i.i, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %util.0.i.i, i32 %67) #12
  %call8.i = tail call i32 @effective_cpu_util(i32 noundef %44, i32 noundef %68, i32 noundef %50, i32 noundef 0, ptr noundef null) #12
  %util.i = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 6
  %69 = ptrtoint ptr %util.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call8.i, ptr %util.i, align 8
  %70 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iowait_boost.i, align 8
  %tobool.not.i21 = icmp eq i32 %71, 0
  br i1 %tobool.not.i21, label %return, label %if.end.i25

if.end.i25:                                       ; preds = %sugov_get_util.exit
  %72 = ptrtoint ptr %last_update to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %last_update, align 8
  %sub.i.i23 = sub i64 %time, %73
  %cmp.i.i24 = icmp slt i64 %sub.i.i23, 10000001
  br i1 %cmp.i.i24, label %if.end2.i, label %sugov_iowait_reset.exit.thread.i27

sugov_iowait_reset.exit.thread.i27:               ; preds = %if.end.i25
  %74 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %iowait_boost.i, align 8
  %iowait_boost_pending.i.i26 = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 3
  %75 = ptrtoint ptr %iowait_boost_pending.i.i26 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %iowait_boost_pending.i.i26, align 4
  br label %return

if.end2.i:                                        ; preds = %if.end.i25
  %iowait_boost_pending.i28 = getelementptr inbounds %struct.sugov_cpu, ptr %sg_cpu, i32 0, i32 3
  %76 = ptrtoint ptr %iowait_boost_pending.i28 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %iowait_boost_pending.i28, align 4, !range !67
  %tobool3.not.i = icmp eq i8 %77, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end10.i

if.then4.i:                                       ; preds = %if.end2.i
  %shr.i = lshr i32 %71, 1
  %78 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shr.i, ptr %iowait_boost.i, align 8
  %cmp.i29 = icmp ult i32 %71, 256
  br i1 %cmp.i29, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.then4.i
  %79 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %iowait_boost.i, align 8
  br label %return

if.end10.i:                                       ; preds = %if.then4.i, %if.end2.i
  %80 = ptrtoint ptr %iowait_boost_pending.i28 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %iowait_boost_pending.i28, align 4
  %81 = ptrtoint ptr %iowait_boost.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iowait_boost.i, align 8
  %83 = ptrtoint ptr %max3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max3.i, align 8
  %mul.i = mul i32 %84, %82
  %shr13.i = lshr i32 %mul.i, 10
  %cmp14.i = icmp ult i32 %call8.i, %shr13.i
  br i1 %cmp14.i, label %if.then15.i, label %return

if.then15.i:                                      ; preds = %if.end10.i
  %85 = ptrtoint ptr %util.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %shr13.i, ptr %util.i, align 8
  br label %return

return:                                           ; preds = %if.then15.i, %if.end10.i, %if.then7.i, %sugov_iowait_reset.exit.thread.i27, %sugov_get_util.exit, %sugov_should_update_freq.exit, %ignore_dl_rate_limit.exit
  %retval.0.i36 = phi i1 [ false, %sugov_should_update_freq.exit ], [ true, %sugov_get_util.exit ], [ true, %sugov_iowait_reset.exit.thread.i27 ], [ true, %if.then7.i ], [ true, %if.end10.i ], [ true, %if.then15.i ], [ false, %ignore_dl_rate_limit.exit ]
  ret i1 %retval.0.i36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_nohz_get_idle_calls_cpu(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_remove_update_util_hook(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rebuild_sd_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rebuild_sched_domains_energy() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rebuild_sched_domains_energy() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @schedutil_gov, !1, !"schedutil_gov", i1 false, i1 false}
!1 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 819, i32 25}
!2 = !{ptr @__initcall__kmod_cpufreq_schedutil__532_837_schedutil_gov_init1, !3, !"__initcall__kmod_cpufreq_schedutil__532_837_schedutil_gov_init1", i1 false, i1 false}
!3 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 837, i32 1}
!4 = !{ptr @__pcpu_unique_sugov_cpu, !5, !"__pcpu_unique_sugov_cpu", i1 false, i1 false}
!5 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 66, i32 8}
!6 = !{ptr @sugov_cpu, !5, !"sugov_cpu", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 681, i32 7}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 704, i32 42}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 728, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sugov_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @sugov_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @sugov_policy_alloc.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 566, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sugov_kthread_create.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 600, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 601, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 605, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sugov_kthread_create._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sugov_kthread_create._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 612, i32 3}
!31 = !{ptr @sugov_kthread_create._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sugov_kthread_create._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sugov_kthread_create.__key.12, !34, !"__key", i1 false, i1 false}
!34 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 619, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 500, i32 8}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @global_tunables_lock, !37, !"global_tunables_lock", i1 false, i1 false}
!40 = !{ptr @global_tunables, !41, !"global_tunables", i1 false, i1 false}
!41 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 499, i32 31}
!42 = !{ptr @sugov_tunables_ktype, !43, !"sugov_tunables_ktype", i1 false, i1 false}
!43 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 547, i32 25}
!44 = !{ptr @sugov_groups, !45, !"sugov_groups", i1 false, i1 false}
!45 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 538, i32 1}
!46 = !{ptr @sugov_group, !45, !"sugov_group", i1 false, i1 false}
!47 = !{ptr @sugov_attrs, !48, !"sugov_attrs", i1 false, i1 false}
!48 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 534, i32 26}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 532, i32 45}
!51 = !{ptr @rate_limit_us, !52, !"rate_limit_us", i1 false, i1 false}
!52 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 532, i32 29}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 511, i32 22}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/sched/cpufreq_schedutil.c", i32 844, i32 8}
!57 = !{ptr @rebuild_sd_work, !56, !"rebuild_sd_work", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148337436, i64 2148337441, i64 2148337454, i64 2148337498, i64 2148337532, i64 2148337553}
